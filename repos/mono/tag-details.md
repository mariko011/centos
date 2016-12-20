<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mono`

-	[`mono:3.10.0`](#mono3100)
-	[`mono:3.10`](#mono310)
-	[`mono:3.10.0-onbuild`](#mono3100-onbuild)
-	[`mono:3.10-onbuild`](#mono310-onbuild)
-	[`mono:3.12.1`](#mono3121)
-	[`mono:3.12.0`](#mono3120)
-	[`mono:3.12`](#mono312)
-	[`mono:3`](#mono3)
-	[`mono:3.12.1-onbuild`](#mono3121-onbuild)
-	[`mono:3.12.0-onbuild`](#mono3120-onbuild)
-	[`mono:3.12-onbuild`](#mono312-onbuild)
-	[`mono:3-onbuild`](#mono3-onbuild)
-	[`mono:3.8.0`](#mono380)
-	[`mono:3.8`](#mono38)
-	[`mono:3.8.0-onbuild`](#mono380-onbuild)
-	[`mono:3.8-onbuild`](#mono38-onbuild)
-	[`mono:4.0.5.1`](#mono4051)
-	[`mono:4.0.5`](#mono405)
-	[`mono:4.0`](#mono40)
-	[`mono:4.0.5.1-onbuild`](#mono4051-onbuild)
-	[`mono:4.0.5-onbuild`](#mono405-onbuild)
-	[`mono:4.0-onbuild`](#mono40-onbuild)
-	[`mono:4.2.1.102`](#mono421102)
-	[`mono:4.2.1`](#mono421)
-	[`mono:4.2.1.102-onbuild`](#mono421102-onbuild)
-	[`mono:4.2.1-onbuild`](#mono421-onbuild)
-	[`mono:4.2.2.30`](#mono42230)
-	[`mono:4.2.2`](#mono422)
-	[`mono:4.2.2.30-onbuild`](#mono42230-onbuild)
-	[`mono:4.2.2-onbuild`](#mono422-onbuild)
-	[`mono:4.2.3.4`](#mono4234)
-	[`mono:4.2.3`](#mono423)
-	[`mono:4.2.3.4-onbuild`](#mono4234-onbuild)
-	[`mono:4.2.3-onbuild`](#mono423-onbuild)
-	[`mono:4.2.4.4`](#mono4244)
-	[`mono:4.2.4`](#mono424)
-	[`mono:4.2`](#mono42)
-	[`mono:4.2.4.4-onbuild`](#mono4244-onbuild)
-	[`mono:4.2.4-onbuild`](#mono424-onbuild)
-	[`mono:4.2-onbuild`](#mono42-onbuild)
-	[`mono:4.4.0.182`](#mono440182)
-	[`mono:4.4.0`](#mono440)
-	[`mono:4.4.0.182-onbuild`](#mono440182-onbuild)
-	[`mono:4.4.0-onbuild`](#mono440-onbuild)
-	[`mono:4.4.1.0`](#mono4410)
-	[`mono:4.4.1`](#mono441)
-	[`mono:4.4.1.0-onbuild`](#mono4410-onbuild)
-	[`mono:4.4.1-onbuild`](#mono441-onbuild)
-	[`mono:4.4.2.11`](#mono44211)
-	[`mono:4.4.2`](#mono442)
-	[`mono:4.4`](#mono44)
-	[`mono:4.4.2.11-onbuild`](#mono44211-onbuild)
-	[`mono:4.4.2-onbuild`](#mono442-onbuild)
-	[`mono:4.4-onbuild`](#mono44-onbuild)
-	[`mono:4.6.0.245`](#mono460245)
-	[`mono:4.6.0`](#mono460)
-	[`mono:4.6.0.245-onbuild`](#mono460245-onbuild)
-	[`mono:4.6.0-onbuild`](#mono460-onbuild)
-	[`mono:4.6.1.3`](#mono4613)
-	[`mono:4.6.1.3-onbuild`](#mono4613-onbuild)
-	[`mono:4.6.1.5`](#mono4615)
-	[`mono:4.6.1`](#mono461)
-	[`mono:4.6.1.5-onbuild`](#mono4615-onbuild)
-	[`mono:4.6.1-onbuild`](#mono461-onbuild)
-	[`mono:4.6.2.7`](#mono4627)
-	[`mono:4.6.2`](#mono462)
-	[`mono:4.6`](#mono46)
-	[`mono:4`](#mono4)
-	[`mono:latest`](#monolatest)
-	[`mono:4.6.2.7-onbuild`](#mono4627-onbuild)
-	[`mono:4.6.2-onbuild`](#mono462-onbuild)
-	[`mono:4.6-onbuild`](#mono46-onbuild)
-	[`mono:4-onbuild`](#mono4-onbuild)
-	[`mono:onbuild`](#monoonbuild)

## `mono:3.10.0`

```console
$ docker pull mono@sha256:4a4a356c513515fff737dd2c770b3a186c6a5c71d83f8c9fb74da5046ddff4f9
```

-	Platforms:
	-	linux; amd64

### `mono:3.10.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124795030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:800cfc85a67fe7e4249c83c8a06227c1df2358522a98bc75ee906cf0b82576a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:07:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:07:52 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Wed, 14 Dec 2016 01:07:53 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c1915bbb62c1801ddfe2b839cb4e107e581192dcd1160a1369a4093a4d6b66`  
		Last Modified: Tue, 20 Dec 2016 00:03:17 GMT  
		Size: 79.6 MB (79552718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4281c1bac11bb4d3d06c69350a66982a4faa19e0c59e07b1698c948fff2cfdf0`  
		Last Modified: Tue, 20 Dec 2016 00:02:41 GMT  
		Size: 181.5 KB (181537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de140ab588bddbed4f174ce450d8f925c0f1f94c3159d8d5774fef7daa39e12`  
		Last Modified: Tue, 20 Dec 2016 00:02:42 GMT  
		Size: 101.1 KB (101055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.10`

```console
$ docker pull mono@sha256:4a4a356c513515fff737dd2c770b3a186c6a5c71d83f8c9fb74da5046ddff4f9
```

-	Platforms:
	-	linux; amd64

### `mono:3.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124795030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:800cfc85a67fe7e4249c83c8a06227c1df2358522a98bc75ee906cf0b82576a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:07:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:07:52 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Wed, 14 Dec 2016 01:07:53 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c1915bbb62c1801ddfe2b839cb4e107e581192dcd1160a1369a4093a4d6b66`  
		Last Modified: Tue, 20 Dec 2016 00:03:17 GMT  
		Size: 79.6 MB (79552718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4281c1bac11bb4d3d06c69350a66982a4faa19e0c59e07b1698c948fff2cfdf0`  
		Last Modified: Tue, 20 Dec 2016 00:02:41 GMT  
		Size: 181.5 KB (181537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de140ab588bddbed4f174ce450d8f925c0f1f94c3159d8d5774fef7daa39e12`  
		Last Modified: Tue, 20 Dec 2016 00:02:42 GMT  
		Size: 101.1 KB (101055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.10.0-onbuild`

```console
$ docker pull mono@sha256:58a979cd33caf2c978039196f84a48c0b668cbe48c26e812577b5a646c580327
```

-	Platforms:
	-	linux; amd64

### `mono:3.10.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124795193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8fd08ce99af809e87e4548f30664bd860ef1f62749f7913ae7d08e8198ab36`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:07:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:07:52 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Wed, 14 Dec 2016 01:07:53 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Wed, 14 Dec 2016 01:07:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:07:54 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:07:55 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:07:55 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:07:55 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:07:56 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:07:56 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c1915bbb62c1801ddfe2b839cb4e107e581192dcd1160a1369a4093a4d6b66`  
		Last Modified: Tue, 20 Dec 2016 00:03:17 GMT  
		Size: 79.6 MB (79552718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4281c1bac11bb4d3d06c69350a66982a4faa19e0c59e07b1698c948fff2cfdf0`  
		Last Modified: Tue, 20 Dec 2016 00:02:41 GMT  
		Size: 181.5 KB (181537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de140ab588bddbed4f174ce450d8f925c0f1f94c3159d8d5774fef7daa39e12`  
		Last Modified: Tue, 20 Dec 2016 00:02:42 GMT  
		Size: 101.1 KB (101055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c852b84520763c2bbb8440f188220517b0d7a0d0e102b00b36ffe7c6ec4563d8`  
		Last Modified: Tue, 20 Dec 2016 00:04:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.10-onbuild`

```console
$ docker pull mono@sha256:58a979cd33caf2c978039196f84a48c0b668cbe48c26e812577b5a646c580327
```

-	Platforms:
	-	linux; amd64

### `mono:3.10-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124795193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8fd08ce99af809e87e4548f30664bd860ef1f62749f7913ae7d08e8198ab36`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:07:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:07:52 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Wed, 14 Dec 2016 01:07:53 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Wed, 14 Dec 2016 01:07:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:07:54 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:07:55 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:07:55 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:07:55 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:07:56 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:07:56 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c1915bbb62c1801ddfe2b839cb4e107e581192dcd1160a1369a4093a4d6b66`  
		Last Modified: Tue, 20 Dec 2016 00:03:17 GMT  
		Size: 79.6 MB (79552718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4281c1bac11bb4d3d06c69350a66982a4faa19e0c59e07b1698c948fff2cfdf0`  
		Last Modified: Tue, 20 Dec 2016 00:02:41 GMT  
		Size: 181.5 KB (181537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de140ab588bddbed4f174ce450d8f925c0f1f94c3159d8d5774fef7daa39e12`  
		Last Modified: Tue, 20 Dec 2016 00:02:42 GMT  
		Size: 101.1 KB (101055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c852b84520763c2bbb8440f188220517b0d7a0d0e102b00b36ffe7c6ec4563d8`  
		Last Modified: Tue, 20 Dec 2016 00:04:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.1`

```console
$ docker pull mono@sha256:3fc585878592d925565758543cbeeea64e26c500b74b145ab3f622760a607f3f
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125836695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab464caabca4e190486ceae6835e769c7c81990a62f2f23e15c6703105526737`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:06:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b37c688220510ac64cc5980e2896fb9c191e030ae2833aadcd4ffc859b27ea`  
		Last Modified: Tue, 20 Dec 2016 00:05:21 GMT  
		Size: 80.9 MB (80876975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.0`

```console
$ docker pull mono@sha256:3fc585878592d925565758543cbeeea64e26c500b74b145ab3f622760a607f3f
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125836695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab464caabca4e190486ceae6835e769c7c81990a62f2f23e15c6703105526737`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:06:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b37c688220510ac64cc5980e2896fb9c191e030ae2833aadcd4ffc859b27ea`  
		Last Modified: Tue, 20 Dec 2016 00:05:21 GMT  
		Size: 80.9 MB (80876975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12`

```console
$ docker pull mono@sha256:3fc585878592d925565758543cbeeea64e26c500b74b145ab3f622760a607f3f
```

-	Platforms:
	-	linux; amd64

### `mono:3.12` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125836695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab464caabca4e190486ceae6835e769c7c81990a62f2f23e15c6703105526737`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:06:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b37c688220510ac64cc5980e2896fb9c191e030ae2833aadcd4ffc859b27ea`  
		Last Modified: Tue, 20 Dec 2016 00:05:21 GMT  
		Size: 80.9 MB (80876975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3`

```console
$ docker pull mono@sha256:3fc585878592d925565758543cbeeea64e26c500b74b145ab3f622760a607f3f
```

-	Platforms:
	-	linux; amd64

### `mono:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125836695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab464caabca4e190486ceae6835e769c7c81990a62f2f23e15c6703105526737`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:06:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b37c688220510ac64cc5980e2896fb9c191e030ae2833aadcd4ffc859b27ea`  
		Last Modified: Tue, 20 Dec 2016 00:05:21 GMT  
		Size: 80.9 MB (80876975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.1-onbuild`

```console
$ docker pull mono@sha256:e7b47ab20dbe43dc9010790dd95a7c841346644d3e56b9590e1565ca3bf42132
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125836859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf91be7e3f715af0aad79e69f009b21896d28da9ece676648b700da3dfe55710`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:06:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:06:48 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:06:49 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:06:49 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:06:50 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:06:50 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:06:50 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:06:51 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b37c688220510ac64cc5980e2896fb9c191e030ae2833aadcd4ffc859b27ea`  
		Last Modified: Tue, 20 Dec 2016 00:05:21 GMT  
		Size: 80.9 MB (80876975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79949ec4bfce1ad457009f5d94fafd5774eaad5075a40cbf1931624f6403886`  
		Last Modified: Tue, 20 Dec 2016 00:06:48 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.0-onbuild`

```console
$ docker pull mono@sha256:e7b47ab20dbe43dc9010790dd95a7c841346644d3e56b9590e1565ca3bf42132
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125836859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf91be7e3f715af0aad79e69f009b21896d28da9ece676648b700da3dfe55710`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:06:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:06:48 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:06:49 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:06:49 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:06:50 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:06:50 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:06:50 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:06:51 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b37c688220510ac64cc5980e2896fb9c191e030ae2833aadcd4ffc859b27ea`  
		Last Modified: Tue, 20 Dec 2016 00:05:21 GMT  
		Size: 80.9 MB (80876975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79949ec4bfce1ad457009f5d94fafd5774eaad5075a40cbf1931624f6403886`  
		Last Modified: Tue, 20 Dec 2016 00:06:48 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12-onbuild`

```console
$ docker pull mono@sha256:e7b47ab20dbe43dc9010790dd95a7c841346644d3e56b9590e1565ca3bf42132
```

-	Platforms:
	-	linux; amd64

### `mono:3.12-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125836859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf91be7e3f715af0aad79e69f009b21896d28da9ece676648b700da3dfe55710`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:06:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:06:48 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:06:49 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:06:49 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:06:50 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:06:50 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:06:50 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:06:51 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b37c688220510ac64cc5980e2896fb9c191e030ae2833aadcd4ffc859b27ea`  
		Last Modified: Tue, 20 Dec 2016 00:05:21 GMT  
		Size: 80.9 MB (80876975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79949ec4bfce1ad457009f5d94fafd5774eaad5075a40cbf1931624f6403886`  
		Last Modified: Tue, 20 Dec 2016 00:06:48 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3-onbuild`

```console
$ docker pull mono@sha256:e7b47ab20dbe43dc9010790dd95a7c841346644d3e56b9590e1565ca3bf42132
```

-	Platforms:
	-	linux; amd64

### `mono:3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125836859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf91be7e3f715af0aad79e69f009b21896d28da9ece676648b700da3dfe55710`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:06:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:06:48 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:06:49 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:06:49 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:06:50 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:06:50 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:06:50 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:06:51 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b37c688220510ac64cc5980e2896fb9c191e030ae2833aadcd4ffc859b27ea`  
		Last Modified: Tue, 20 Dec 2016 00:05:21 GMT  
		Size: 80.9 MB (80876975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79949ec4bfce1ad457009f5d94fafd5774eaad5075a40cbf1931624f6403886`  
		Last Modified: Tue, 20 Dec 2016 00:06:48 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8.0`

```console
$ docker pull mono@sha256:871f679c5153c0252a3ca5643c173029948f8dba8cd5175c87cd09a67e17ac2e
```

-	Platforms:
	-	linux; amd64

### `mono:3.8.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123002367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba6acafc082488381016b6ff8fe33756da878b4fe314a2b4676dd4b11c110885`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:09:05 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:06 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Wed, 14 Dec 2016 01:09:07 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bbca4ea53270f55cb1a29a9f22ddcedbdd2dda0f0e8a9d3039e827a27a50d9`  
		Last Modified: Tue, 20 Dec 2016 00:08:44 GMT  
		Size: 77.8 MB (77760045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302aaa9ade3564b2ec10d316a2745bea00f653bdf8a6c6b9a5614a914d667dcf`  
		Last Modified: Tue, 20 Dec 2016 00:08:13 GMT  
		Size: 181.5 KB (181538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6865d0a28ec56dce54777e29d07c71a964450988e31efd378003801416d27d`  
		Last Modified: Tue, 20 Dec 2016 00:08:13 GMT  
		Size: 101.1 KB (101064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8`

```console
$ docker pull mono@sha256:871f679c5153c0252a3ca5643c173029948f8dba8cd5175c87cd09a67e17ac2e
```

-	Platforms:
	-	linux; amd64

### `mono:3.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123002367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba6acafc082488381016b6ff8fe33756da878b4fe314a2b4676dd4b11c110885`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:09:05 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:06 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Wed, 14 Dec 2016 01:09:07 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bbca4ea53270f55cb1a29a9f22ddcedbdd2dda0f0e8a9d3039e827a27a50d9`  
		Last Modified: Tue, 20 Dec 2016 00:08:44 GMT  
		Size: 77.8 MB (77760045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302aaa9ade3564b2ec10d316a2745bea00f653bdf8a6c6b9a5614a914d667dcf`  
		Last Modified: Tue, 20 Dec 2016 00:08:13 GMT  
		Size: 181.5 KB (181538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6865d0a28ec56dce54777e29d07c71a964450988e31efd378003801416d27d`  
		Last Modified: Tue, 20 Dec 2016 00:08:13 GMT  
		Size: 101.1 KB (101064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8.0-onbuild`

```console
$ docker pull mono@sha256:5266e05c0d38f9a92c4ea2586a63603dd632a466cddc4e2a03da702cb24e9394
```

-	Platforms:
	-	linux; amd64

### `mono:3.8.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123002531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8332057e1004b1702447e1b6d98d5a27319c6b09f28953b3d534328999922804`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:09:05 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:06 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Wed, 14 Dec 2016 01:09:07 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Wed, 14 Dec 2016 01:09:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:09 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:09:09 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:09:10 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:09:10 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:09:11 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:09:11 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bbca4ea53270f55cb1a29a9f22ddcedbdd2dda0f0e8a9d3039e827a27a50d9`  
		Last Modified: Tue, 20 Dec 2016 00:08:44 GMT  
		Size: 77.8 MB (77760045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302aaa9ade3564b2ec10d316a2745bea00f653bdf8a6c6b9a5614a914d667dcf`  
		Last Modified: Tue, 20 Dec 2016 00:08:13 GMT  
		Size: 181.5 KB (181538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6865d0a28ec56dce54777e29d07c71a964450988e31efd378003801416d27d`  
		Last Modified: Tue, 20 Dec 2016 00:08:13 GMT  
		Size: 101.1 KB (101064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4d8f1c0b7c2b98afe4188f1c7618351fa8b7c7392765f48d152a637a2c7351`  
		Last Modified: Tue, 20 Dec 2016 00:09:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8-onbuild`

```console
$ docker pull mono@sha256:5266e05c0d38f9a92c4ea2586a63603dd632a466cddc4e2a03da702cb24e9394
```

-	Platforms:
	-	linux; amd64

### `mono:3.8-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123002531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8332057e1004b1702447e1b6d98d5a27319c6b09f28953b3d534328999922804`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:09:05 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:06 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Wed, 14 Dec 2016 01:09:07 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Wed, 14 Dec 2016 01:09:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:09 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:09:09 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:09:10 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:09:10 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:09:11 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:09:11 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bbca4ea53270f55cb1a29a9f22ddcedbdd2dda0f0e8a9d3039e827a27a50d9`  
		Last Modified: Tue, 20 Dec 2016 00:08:44 GMT  
		Size: 77.8 MB (77760045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302aaa9ade3564b2ec10d316a2745bea00f653bdf8a6c6b9a5614a914d667dcf`  
		Last Modified: Tue, 20 Dec 2016 00:08:13 GMT  
		Size: 181.5 KB (181538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6865d0a28ec56dce54777e29d07c71a964450988e31efd378003801416d27d`  
		Last Modified: Tue, 20 Dec 2016 00:08:13 GMT  
		Size: 101.1 KB (101064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4d8f1c0b7c2b98afe4188f1c7618351fa8b7c7392765f48d152a637a2c7351`  
		Last Modified: Tue, 20 Dec 2016 00:09:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5.1`

```console
$ docker pull mono@sha256:d37506f3484f12059d020d1f7fbd8770e1da8df2596c60a067c8f68bd6a42f42
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.8 MB (227813018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0cf9516a57306104c5303061ddc6e6e035c97061d82400f3e4736570391544`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:11:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2514e775738f9c726390bfd2de97177b35472af1bb07427be1ed93c1766b18`  
		Last Modified: Tue, 20 Dec 2016 00:11:22 GMT  
		Size: 182.9 MB (182853298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5`

```console
$ docker pull mono@sha256:d37506f3484f12059d020d1f7fbd8770e1da8df2596c60a067c8f68bd6a42f42
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.8 MB (227813018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0cf9516a57306104c5303061ddc6e6e035c97061d82400f3e4736570391544`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:11:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2514e775738f9c726390bfd2de97177b35472af1bb07427be1ed93c1766b18`  
		Last Modified: Tue, 20 Dec 2016 00:11:22 GMT  
		Size: 182.9 MB (182853298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0`

```console
$ docker pull mono@sha256:d37506f3484f12059d020d1f7fbd8770e1da8df2596c60a067c8f68bd6a42f42
```

-	Platforms:
	-	linux; amd64

### `mono:4.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.8 MB (227813018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0cf9516a57306104c5303061ddc6e6e035c97061d82400f3e4736570391544`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:11:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2514e775738f9c726390bfd2de97177b35472af1bb07427be1ed93c1766b18`  
		Last Modified: Tue, 20 Dec 2016 00:11:22 GMT  
		Size: 182.9 MB (182853298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5.1-onbuild`

```console
$ docker pull mono@sha256:7935af3a2b632bf5e4e1d5e65e128b4a0c6230faaf7bad142e1e99bbf0bd9899
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.8 MB (227813181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ba68494d9c5c075c50ba947b44e7585a412e8b17fa0a701ce059dfe543490d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:11:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:32 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:11:32 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:11:33 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:11:33 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:11:33 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:11:34 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:11:35 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2514e775738f9c726390bfd2de97177b35472af1bb07427be1ed93c1766b18`  
		Last Modified: Tue, 20 Dec 2016 00:11:22 GMT  
		Size: 182.9 MB (182853298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d1d7a5b6d5eca9c6797027fb9c912fdbf616875c275af2c4c48345d5438f95`  
		Last Modified: Tue, 20 Dec 2016 00:12:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5-onbuild`

```console
$ docker pull mono@sha256:7935af3a2b632bf5e4e1d5e65e128b4a0c6230faaf7bad142e1e99bbf0bd9899
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.8 MB (227813181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ba68494d9c5c075c50ba947b44e7585a412e8b17fa0a701ce059dfe543490d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:11:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:32 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:11:32 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:11:33 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:11:33 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:11:33 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:11:34 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:11:35 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2514e775738f9c726390bfd2de97177b35472af1bb07427be1ed93c1766b18`  
		Last Modified: Tue, 20 Dec 2016 00:11:22 GMT  
		Size: 182.9 MB (182853298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d1d7a5b6d5eca9c6797027fb9c912fdbf616875c275af2c4c48345d5438f95`  
		Last Modified: Tue, 20 Dec 2016 00:12:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0-onbuild`

```console
$ docker pull mono@sha256:7935af3a2b632bf5e4e1d5e65e128b4a0c6230faaf7bad142e1e99bbf0bd9899
```

-	Platforms:
	-	linux; amd64

### `mono:4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.8 MB (227813181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ba68494d9c5c075c50ba947b44e7585a412e8b17fa0a701ce059dfe543490d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:11:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:32 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:11:32 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:11:33 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:11:33 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:11:33 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:11:34 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:11:35 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2514e775738f9c726390bfd2de97177b35472af1bb07427be1ed93c1766b18`  
		Last Modified: Tue, 20 Dec 2016 00:11:22 GMT  
		Size: 182.9 MB (182853298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d1d7a5b6d5eca9c6797027fb9c912fdbf616875c275af2c4c48345d5438f95`  
		Last Modified: Tue, 20 Dec 2016 00:12:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1.102`

```console
$ docker pull mono@sha256:7994c3b2eaa19af49a5df0985b9f3a25afcae7f7a1a3ef0c600e0fc7a22d3f4e
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1.102` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229702921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6ac6af16e8e4942c353d6542522e35605f0724099e941d914905149b55009c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:14:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56668a56f55811780baf4fd7112131acb0d4082fb1cfc997ace7be2e6e546ac`  
		Last Modified: Tue, 20 Dec 2016 00:14:29 GMT  
		Size: 184.7 MB (184743201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1`

```console
$ docker pull mono@sha256:7994c3b2eaa19af49a5df0985b9f3a25afcae7f7a1a3ef0c600e0fc7a22d3f4e
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229702921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6ac6af16e8e4942c353d6542522e35605f0724099e941d914905149b55009c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:14:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56668a56f55811780baf4fd7112131acb0d4082fb1cfc997ace7be2e6e546ac`  
		Last Modified: Tue, 20 Dec 2016 00:14:29 GMT  
		Size: 184.7 MB (184743201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1.102-onbuild`

```console
$ docker pull mono@sha256:7448d1620afe2e95f630b569804268be79315501432fe278eee30d0ab2a9f0d7
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1.102-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229703085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406362a39b2f44c972caef3b56bc9d18c7e416383dd2fe3fdad3e646ea883871`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:14:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:14:35 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:14:36 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:14:36 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:14:37 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:14:37 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:14:37 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:14:38 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56668a56f55811780baf4fd7112131acb0d4082fb1cfc997ace7be2e6e546ac`  
		Last Modified: Tue, 20 Dec 2016 00:14:29 GMT  
		Size: 184.7 MB (184743201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226ad7a8bf33fe5b3989f48a04928dac1e628666822388f89765213687a3e3ea`  
		Last Modified: Tue, 20 Dec 2016 00:15:08 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1-onbuild`

```console
$ docker pull mono@sha256:7448d1620afe2e95f630b569804268be79315501432fe278eee30d0ab2a9f0d7
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229703085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406362a39b2f44c972caef3b56bc9d18c7e416383dd2fe3fdad3e646ea883871`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:05:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:14:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:14:35 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:14:36 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:14:36 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:14:37 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:14:37 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:14:37 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:14:38 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d8730859bd86b96f9d871a0ae7d609b3ae9f3545a64701f66a4a2d2cf18161`  
		Last Modified: Tue, 20 Dec 2016 00:02:43 GMT  
		Size: 29.9 KB (29890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56668a56f55811780baf4fd7112131acb0d4082fb1cfc997ace7be2e6e546ac`  
		Last Modified: Tue, 20 Dec 2016 00:14:29 GMT  
		Size: 184.7 MB (184743201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226ad7a8bf33fe5b3989f48a04928dac1e628666822388f89765213687a3e3ea`  
		Last Modified: Tue, 20 Dec 2016 00:15:08 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2.30`

```console
$ docker pull mono@sha256:ed1f9483aac82678b7dceffbd79e7d9cd8950065979fea9423948b5bed468c65
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2.30` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229726365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae7716338e67545636feca407ed309ab709f7be10fca59bbc7a0ed807aa9902`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:16:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1c3f7570e05981d0d5ef40ea25d6a4c79bc5b706023d5b9f5e64fbbed593d7`  
		Last Modified: Tue, 20 Dec 2016 00:16:59 GMT  
		Size: 184.8 MB (184766633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2`

```console
$ docker pull mono@sha256:ed1f9483aac82678b7dceffbd79e7d9cd8950065979fea9423948b5bed468c65
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229726365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae7716338e67545636feca407ed309ab709f7be10fca59bbc7a0ed807aa9902`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:16:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1c3f7570e05981d0d5ef40ea25d6a4c79bc5b706023d5b9f5e64fbbed593d7`  
		Last Modified: Tue, 20 Dec 2016 00:16:59 GMT  
		Size: 184.8 MB (184766633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2.30-onbuild`

```console
$ docker pull mono@sha256:3431b8d3b06fae366609f7b6c826d7ee38e38feacfaf0ce72d42f3d48003f993
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2.30-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229726529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73de792b8b9c81fafd4933dc0a60caf46652c953de28ea0899de1b2958e373da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:16:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:16:02 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:16:03 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:16:04 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:16:04 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:16:04 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:16:05 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:16:05 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1c3f7570e05981d0d5ef40ea25d6a4c79bc5b706023d5b9f5e64fbbed593d7`  
		Last Modified: Tue, 20 Dec 2016 00:16:59 GMT  
		Size: 184.8 MB (184766633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dbfaa2ac5ef07e90dc3ba20637534f3211477b53551ba593216b615b08cd31`  
		Last Modified: Tue, 20 Dec 2016 00:17:43 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2-onbuild`

```console
$ docker pull mono@sha256:3431b8d3b06fae366609f7b6c826d7ee38e38feacfaf0ce72d42f3d48003f993
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229726529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73de792b8b9c81fafd4933dc0a60caf46652c953de28ea0899de1b2958e373da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:16:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:16:02 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:16:03 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:16:04 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:16:04 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:16:04 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:16:05 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:16:05 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1c3f7570e05981d0d5ef40ea25d6a4c79bc5b706023d5b9f5e64fbbed593d7`  
		Last Modified: Tue, 20 Dec 2016 00:16:59 GMT  
		Size: 184.8 MB (184766633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dbfaa2ac5ef07e90dc3ba20637534f3211477b53551ba593216b615b08cd31`  
		Last Modified: Tue, 20 Dec 2016 00:17:43 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3.4`

```console
$ docker pull mono@sha256:7d04b02799d425bd8dd814e2423c54045409e5bb6fb96afee9b76181f88e5de2
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229731635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230b061ff04ba826fda1e9f93512641b10b4c39ce06e8ab06174f0c1bb63db21`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:17:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddc4cd1a9a97e18498edd4ed06676db010bc515ced6a6df608c0073a8e7e62c`  
		Last Modified: Tue, 20 Dec 2016 00:21:11 GMT  
		Size: 184.8 MB (184771903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3`

```console
$ docker pull mono@sha256:7d04b02799d425bd8dd814e2423c54045409e5bb6fb96afee9b76181f88e5de2
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229731635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230b061ff04ba826fda1e9f93512641b10b4c39ce06e8ab06174f0c1bb63db21`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:17:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddc4cd1a9a97e18498edd4ed06676db010bc515ced6a6df608c0073a8e7e62c`  
		Last Modified: Tue, 20 Dec 2016 00:21:11 GMT  
		Size: 184.8 MB (184771903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3.4-onbuild`

```console
$ docker pull mono@sha256:9c307ac454486c4b5a57a3b3c4f073b604f5b6e02bca06cac00e33fa488fac8e
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229731797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4545ad7d9291927ad6a0a10810d5999c82569d6835204dbed034666955d77f11`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:17:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:17:36 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:17:37 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:17:37 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:17:38 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:17:38 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:17:38 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:17:39 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddc4cd1a9a97e18498edd4ed06676db010bc515ced6a6df608c0073a8e7e62c`  
		Last Modified: Tue, 20 Dec 2016 00:21:11 GMT  
		Size: 184.8 MB (184771903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc525fd70998971e4bc4900c91c3699cbe84702563cc7d840ffcdc6bf88b3df8`  
		Last Modified: Tue, 20 Dec 2016 00:22:00 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3-onbuild`

```console
$ docker pull mono@sha256:9c307ac454486c4b5a57a3b3c4f073b604f5b6e02bca06cac00e33fa488fac8e
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229731797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4545ad7d9291927ad6a0a10810d5999c82569d6835204dbed034666955d77f11`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:17:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:17:36 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:17:37 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:17:37 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:17:38 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:17:38 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:17:38 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:17:39 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddc4cd1a9a97e18498edd4ed06676db010bc515ced6a6df608c0073a8e7e62c`  
		Last Modified: Tue, 20 Dec 2016 00:21:11 GMT  
		Size: 184.8 MB (184771903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc525fd70998971e4bc4900c91c3699cbe84702563cc7d840ffcdc6bf88b3df8`  
		Last Modified: Tue, 20 Dec 2016 00:22:00 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4.4`

```console
$ docker pull mono@sha256:7dd4e290f3f2573200a8fe2fbba92f7ae68e7bf099be825a4d0eb950a4adb770
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229731764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c2de1bc48b3bba94304885fdf123075cef04184ac63cf32a9058823e6a81d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:13:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0126f4112cf0938a70b2a245cd8e4f007a380036830f1c92185929297a4c09`  
		Last Modified: Tue, 20 Dec 2016 00:23:51 GMT  
		Size: 184.8 MB (184772032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4`

```console
$ docker pull mono@sha256:7dd4e290f3f2573200a8fe2fbba92f7ae68e7bf099be825a4d0eb950a4adb770
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229731764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c2de1bc48b3bba94304885fdf123075cef04184ac63cf32a9058823e6a81d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:13:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0126f4112cf0938a70b2a245cd8e4f007a380036830f1c92185929297a4c09`  
		Last Modified: Tue, 20 Dec 2016 00:23:51 GMT  
		Size: 184.8 MB (184772032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2`

```console
$ docker pull mono@sha256:7dd4e290f3f2573200a8fe2fbba92f7ae68e7bf099be825a4d0eb950a4adb770
```

-	Platforms:
	-	linux; amd64

### `mono:4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229731764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c2de1bc48b3bba94304885fdf123075cef04184ac63cf32a9058823e6a81d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:13:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0126f4112cf0938a70b2a245cd8e4f007a380036830f1c92185929297a4c09`  
		Last Modified: Tue, 20 Dec 2016 00:23:51 GMT  
		Size: 184.8 MB (184772032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4.4-onbuild`

```console
$ docker pull mono@sha256:50788bd625bf4b4405ad88343477a98e9ae47764e75edfc45e08e3824b4ad1a2
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229731928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727e237b91e79b140ed4f9b57df78b26457001d9f3e60a106adeaf068c6a7412`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:13:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:13:09 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:13:10 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:13:10 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:13:10 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:13:11 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:13:11 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:13:11 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0126f4112cf0938a70b2a245cd8e4f007a380036830f1c92185929297a4c09`  
		Last Modified: Tue, 20 Dec 2016 00:23:51 GMT  
		Size: 184.8 MB (184772032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce12b77fec351e4b2f77f549563f6c487227a4f67048971bb322912bdff8f1c`  
		Last Modified: Tue, 20 Dec 2016 00:25:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4-onbuild`

```console
$ docker pull mono@sha256:50788bd625bf4b4405ad88343477a98e9ae47764e75edfc45e08e3824b4ad1a2
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229731928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727e237b91e79b140ed4f9b57df78b26457001d9f3e60a106adeaf068c6a7412`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:13:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:13:09 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:13:10 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:13:10 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:13:10 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:13:11 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:13:11 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:13:11 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0126f4112cf0938a70b2a245cd8e4f007a380036830f1c92185929297a4c09`  
		Last Modified: Tue, 20 Dec 2016 00:23:51 GMT  
		Size: 184.8 MB (184772032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce12b77fec351e4b2f77f549563f6c487227a4f67048971bb322912bdff8f1c`  
		Last Modified: Tue, 20 Dec 2016 00:25:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2-onbuild`

```console
$ docker pull mono@sha256:50788bd625bf4b4405ad88343477a98e9ae47764e75edfc45e08e3824b4ad1a2
```

-	Platforms:
	-	linux; amd64

### `mono:4.2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229731928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727e237b91e79b140ed4f9b57df78b26457001d9f3e60a106adeaf068c6a7412`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:13:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:13:09 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:13:10 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:13:10 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:13:10 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:13:11 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:13:11 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:13:11 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0126f4112cf0938a70b2a245cd8e4f007a380036830f1c92185929297a4c09`  
		Last Modified: Tue, 20 Dec 2016 00:23:51 GMT  
		Size: 184.8 MB (184772032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce12b77fec351e4b2f77f549563f6c487227a4f67048971bb322912bdff8f1c`  
		Last Modified: Tue, 20 Dec 2016 00:25:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0.182`

```console
$ docker pull mono@sha256:e19ad846d5a63ba72c3aa53fc9a0897af4fc9553012f42cdec290dd003c099d9
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0.182` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250843959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5174684474b761ad2883856345d13b4e3f21e3321eb3a640b79f98ed01fc4a7f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db74910e2393ef4ecb8ec06db246323cbafd36eb0e7717881a5d576476d5364`  
		Last Modified: Tue, 20 Dec 2016 00:27:18 GMT  
		Size: 205.9 MB (205884227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0`

```console
$ docker pull mono@sha256:e19ad846d5a63ba72c3aa53fc9a0897af4fc9553012f42cdec290dd003c099d9
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250843959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5174684474b761ad2883856345d13b4e3f21e3321eb3a640b79f98ed01fc4a7f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db74910e2393ef4ecb8ec06db246323cbafd36eb0e7717881a5d576476d5364`  
		Last Modified: Tue, 20 Dec 2016 00:27:18 GMT  
		Size: 205.9 MB (205884227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0.182-onbuild`

```console
$ docker pull mono@sha256:0f3c2fb29c5a83b1fb25707f28baa8cdb40836e1892d4caf7c12f4bb906c4d8f
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0.182-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250844123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2098a0439b124dce72958c2bef73de86f17950345f3248ea35acd09174e706e8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 02:42:21 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 02:42:22 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 02:42:22 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 02:42:23 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 02:42:23 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 02:42:24 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 02:42:24 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db74910e2393ef4ecb8ec06db246323cbafd36eb0e7717881a5d576476d5364`  
		Last Modified: Tue, 20 Dec 2016 00:27:18 GMT  
		Size: 205.9 MB (205884227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132fd225637ce4580e0639fa4b381dfc3cb4f3eb6d9ebc6b323f3841ebf0cdfa`  
		Last Modified: Tue, 20 Dec 2016 00:28:05 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0-onbuild`

```console
$ docker pull mono@sha256:0f3c2fb29c5a83b1fb25707f28baa8cdb40836e1892d4caf7c12f4bb906c4d8f
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250844123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2098a0439b124dce72958c2bef73de86f17950345f3248ea35acd09174e706e8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:05:41 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:11:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 02:42:21 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 02:42:22 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 02:42:22 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 02:42:23 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 02:42:23 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 02:42:24 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 02:42:24 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d46c13659b9d95958f863bb4169e59f32f9662f602593bb9b8a97ce55abbe`  
		Last Modified: Tue, 20 Dec 2016 00:02:44 GMT  
		Size: 7.6 MB (7645683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee463aefd36e6f5fa3e5e5b33b090f049493d883abf5b1cd36c6257da1d609a`  
		Last Modified: Tue, 20 Dec 2016 00:15:44 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db74910e2393ef4ecb8ec06db246323cbafd36eb0e7717881a5d576476d5364`  
		Last Modified: Tue, 20 Dec 2016 00:27:18 GMT  
		Size: 205.9 MB (205884227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132fd225637ce4580e0639fa4b381dfc3cb4f3eb6d9ebc6b323f3841ebf0cdfa`  
		Last Modified: Tue, 20 Dec 2016 00:28:05 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1.0`

```console
$ docker pull mono@sha256:622441da4969cab2c5a8e9e9ca025f2cae734b11b3628a3b9c1a283c63d0274f
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250844216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a93358a325106930c68f14c3af98772a761e9c576c3a9627e6006460abcd4b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:44:11 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24a5474ae692df4bfcef5818452d3342a8a3ca178cf19bc05f4f4ae9083fd5c`  
		Last Modified: Tue, 20 Dec 2016 00:29:56 GMT  
		Size: 205.9 MB (205884471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1`

```console
$ docker pull mono@sha256:622441da4969cab2c5a8e9e9ca025f2cae734b11b3628a3b9c1a283c63d0274f
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250844216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a93358a325106930c68f14c3af98772a761e9c576c3a9627e6006460abcd4b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:44:11 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24a5474ae692df4bfcef5818452d3342a8a3ca178cf19bc05f4f4ae9083fd5c`  
		Last Modified: Tue, 20 Dec 2016 00:29:56 GMT  
		Size: 205.9 MB (205884471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1.0-onbuild`

```console
$ docker pull mono@sha256:a8536eebec16bcc8635dfb14ec8cebad50cf2300a7cb62280d62e2902df8582f
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250844380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4500633c94f5538d1e718f79c9814b5a581c55461477e82579ff431003052151`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:44:11 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 02:44:20 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 02:44:21 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 02:44:22 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 02:44:22 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 02:44:22 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 02:44:23 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 02:44:23 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24a5474ae692df4bfcef5818452d3342a8a3ca178cf19bc05f4f4ae9083fd5c`  
		Last Modified: Tue, 20 Dec 2016 00:29:56 GMT  
		Size: 205.9 MB (205884471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:963b3dd8139be33ff05ffb984d8a329961e92380278f60a02570acf5d823f0b6`  
		Last Modified: Tue, 20 Dec 2016 00:30:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1-onbuild`

```console
$ docker pull mono@sha256:a8536eebec16bcc8635dfb14ec8cebad50cf2300a7cb62280d62e2902df8582f
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250844380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4500633c94f5538d1e718f79c9814b5a581c55461477e82579ff431003052151`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:44:11 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 02:44:20 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 02:44:21 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 02:44:22 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 02:44:22 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 02:44:22 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 02:44:23 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 02:44:23 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24a5474ae692df4bfcef5818452d3342a8a3ca178cf19bc05f4f4ae9083fd5c`  
		Last Modified: Tue, 20 Dec 2016 00:29:56 GMT  
		Size: 205.9 MB (205884471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:963b3dd8139be33ff05ffb984d8a329961e92380278f60a02570acf5d823f0b6`  
		Last Modified: Tue, 20 Dec 2016 00:30:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2.11`

```console
$ docker pull mono@sha256:5693bd34d6ad33ff1e50e730a837d8015e4a53a7007cfe60fd8ea0d09498d9c0
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (250974930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d36178dd199ee633ecb7fdfc18183fe42283d3da5778693f12f83e2d440f428`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:40:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92b2cef20ec54eb128c7286d59bb7b2d72879877e083021b5dc037a83059587`  
		Last Modified: Tue, 20 Dec 2016 00:32:39 GMT  
		Size: 206.0 MB (206015185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2`

```console
$ docker pull mono@sha256:5693bd34d6ad33ff1e50e730a837d8015e4a53a7007cfe60fd8ea0d09498d9c0
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (250974930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d36178dd199ee633ecb7fdfc18183fe42283d3da5778693f12f83e2d440f428`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:40:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92b2cef20ec54eb128c7286d59bb7b2d72879877e083021b5dc037a83059587`  
		Last Modified: Tue, 20 Dec 2016 00:32:39 GMT  
		Size: 206.0 MB (206015185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4`

```console
$ docker pull mono@sha256:5693bd34d6ad33ff1e50e730a837d8015e4a53a7007cfe60fd8ea0d09498d9c0
```

-	Platforms:
	-	linux; amd64

### `mono:4.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (250974930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d36178dd199ee633ecb7fdfc18183fe42283d3da5778693f12f83e2d440f428`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:40:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92b2cef20ec54eb128c7286d59bb7b2d72879877e083021b5dc037a83059587`  
		Last Modified: Tue, 20 Dec 2016 00:32:39 GMT  
		Size: 206.0 MB (206015185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2.11-onbuild`

```console
$ docker pull mono@sha256:9527f85dd7dcff474a2e150d851753d5820a85d92e0f3fcf7ad2681ec882bf0a
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2.11-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (250975093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b550325e0e02f2c7c1877f2bae0da25b7777680d86f807e4f5da9a8080ec19`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:40:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 02:40:32 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 02:40:33 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 02:40:34 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 02:40:34 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 02:40:35 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 02:40:35 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 02:40:36 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92b2cef20ec54eb128c7286d59bb7b2d72879877e083021b5dc037a83059587`  
		Last Modified: Tue, 20 Dec 2016 00:32:39 GMT  
		Size: 206.0 MB (206015185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdb7a77d059471378764013bd2cc8f3a00644eacdf0adeadc12896f0ec7d594`  
		Last Modified: Tue, 20 Dec 2016 00:33:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2-onbuild`

```console
$ docker pull mono@sha256:9527f85dd7dcff474a2e150d851753d5820a85d92e0f3fcf7ad2681ec882bf0a
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (250975093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b550325e0e02f2c7c1877f2bae0da25b7777680d86f807e4f5da9a8080ec19`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:40:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 02:40:32 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 02:40:33 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 02:40:34 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 02:40:34 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 02:40:35 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 02:40:35 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 02:40:36 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92b2cef20ec54eb128c7286d59bb7b2d72879877e083021b5dc037a83059587`  
		Last Modified: Tue, 20 Dec 2016 00:32:39 GMT  
		Size: 206.0 MB (206015185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdb7a77d059471378764013bd2cc8f3a00644eacdf0adeadc12896f0ec7d594`  
		Last Modified: Tue, 20 Dec 2016 00:33:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4-onbuild`

```console
$ docker pull mono@sha256:f7a047ca896f379c1141c945ceaf3641733d97a0325c283f992977da58387cf8
```

-	Platforms:
	-	linux; amd64

### `mono:4.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250752239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa4d31dbe8c86ddcba6dd57a40c6cb0ae2a9f8415ba3841833e70794fdf953a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:50:44 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:50:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:48:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 08 Nov 2016 21:50:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 21:50:30 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 21:50:30 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 21:50:30 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 21:50:31 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 21:50:31 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 21:50:31 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d541abfbbc01335a620179134d1a01d86aebbb38f2a90ae0895fa12bcbf1888e`  
		Last Modified: Tue, 08 Nov 2016 20:52:01 GMT  
		Size: 7.6 MB (7570637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda78b4f741477e207964122ffda987099c38940ff1532a2c5c52bee288f1d76`  
		Last Modified: Tue, 08 Nov 2016 20:52:00 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05610db8d56f18b1c011319597ac1b0e1e5cf90eb643c1eb20b494fea818bca2`  
		Last Modified: Tue, 08 Nov 2016 21:49:52 GMT  
		Size: 205.9 MB (205943526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de079b8dfb1caee1a910c72b82348e947b6476388593990eda05d3aa12e5d161`  
		Last Modified: Tue, 08 Nov 2016 21:50:43 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0.245`

```console
$ docker pull mono@sha256:508cdbb84a1a0ae51ade787e6901b013314a34cc55549ed839d8488e39edb10b
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0.245` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143263928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:677a0f712b2b70a35f4268e205aa9d7249d7c415a8798b73b7b153f2b773728f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:45:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0c7e204647f99c7f2496efda3210eb20e6137c93361dca1cc8b23519cec1ac`  
		Last Modified: Tue, 20 Dec 2016 00:35:26 GMT  
		Size: 98.3 MB (98304183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0`

```console
$ docker pull mono@sha256:508cdbb84a1a0ae51ade787e6901b013314a34cc55549ed839d8488e39edb10b
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143263928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:677a0f712b2b70a35f4268e205aa9d7249d7c415a8798b73b7b153f2b773728f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:45:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0c7e204647f99c7f2496efda3210eb20e6137c93361dca1cc8b23519cec1ac`  
		Last Modified: Tue, 20 Dec 2016 00:35:26 GMT  
		Size: 98.3 MB (98304183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0.245-onbuild`

```console
$ docker pull mono@sha256:5e852f9f9d154ce7fdc7204900db9c095b7adf1f52eaa24ff51ded3e33c9930e
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0.245-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143264092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dbc7f6b76ed43c7f42352792b64d688ac836688dad6b70bbbf75a26a802ccd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:45:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 02:45:31 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 02:45:32 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 02:45:33 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 02:45:33 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 02:45:33 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 02:45:34 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 02:45:34 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0c7e204647f99c7f2496efda3210eb20e6137c93361dca1cc8b23519cec1ac`  
		Last Modified: Tue, 20 Dec 2016 00:35:26 GMT  
		Size: 98.3 MB (98304183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bb3be8e3672a4659592133bd52f5c6e6d2f2818ac253a0768153f091f24a75`  
		Last Modified: Tue, 20 Dec 2016 00:36:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0-onbuild`

```console
$ docker pull mono@sha256:ac240ba98709c29230b797a2e6f0dc7aee0313d1eaa43ced8d194a59b4d561a2
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143040710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b530a5c7b1dd7ed3479c6f70f61ef225b897921d3f1db23079b50c7d0bda352e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:50:44 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:50:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 22:00:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 08 Nov 2016 22:01:12 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 22:01:13 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 22:01:13 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 22:01:13 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 22:01:14 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 22:01:14 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 22:01:14 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d541abfbbc01335a620179134d1a01d86aebbb38f2a90ae0895fa12bcbf1888e`  
		Last Modified: Tue, 08 Nov 2016 20:52:01 GMT  
		Size: 7.6 MB (7570637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda78b4f741477e207964122ffda987099c38940ff1532a2c5c52bee288f1d76`  
		Last Modified: Tue, 08 Nov 2016 20:52:00 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e766d1155f0b307cd5f76fd846417c1bccfd89c1e6a1ba601e903e4ed212`  
		Last Modified: Tue, 08 Nov 2016 22:00:43 GMT  
		Size: 98.2 MB (98231998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7155d624e279500dc326807d3f1b4cfdd6bc8fae2f20dabcfffd5ad8776d14`  
		Last Modified: Tue, 08 Nov 2016 22:01:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1.3`

```console
$ docker pull mono@sha256:d497250a405c27c7fb59b61e6d642600e0dbcc14bdb41cf14d554cad722a7893
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143264265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ba24ec9b779d701fcac18f53648f7465194967cce0e0d1d38563ad9912fec9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:47:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167c48af4e46934ac9a7f4cdb353e3023cd8127255d85971e32b229722e59c84`  
		Last Modified: Tue, 20 Dec 2016 00:37:32 GMT  
		Size: 98.3 MB (98304520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1.3-onbuild`

```console
$ docker pull mono@sha256:67707b04b23eb331dee5176a5fd4bebdcc72912cad735dfd4e048f36efa74738
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143264429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526e6be464705484de0b02ef53b7f5e1ae515af20872be857180bd5c5ab05aef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:47:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 02:47:35 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 02:47:36 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 02:47:36 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 02:47:37 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 02:47:37 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 02:47:38 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 02:47:38 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167c48af4e46934ac9a7f4cdb353e3023cd8127255d85971e32b229722e59c84`  
		Last Modified: Tue, 20 Dec 2016 00:37:32 GMT  
		Size: 98.3 MB (98304520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b70a4b15c0ffa917199593ff155ddca48fe1ae355eacc2022f41e57fd94ca81`  
		Last Modified: Tue, 20 Dec 2016 00:38:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1.5`

```console
$ docker pull mono@sha256:86140d34000bc2421e79dd3639e0b3a1e1d02558729f03a963139f7a94002358
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143264182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a2c4591b60907f49ca2e1acbf9f31fe90018211f925a07d79e24a0e8d7b1a84`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:46:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.5 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792f992483de277325157439f075fe1bf0296d10dbbfa23204e2488d4047991c`  
		Last Modified: Tue, 20 Dec 2016 00:39:04 GMT  
		Size: 98.3 MB (98304437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1`

```console
$ docker pull mono@sha256:86140d34000bc2421e79dd3639e0b3a1e1d02558729f03a963139f7a94002358
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143264182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a2c4591b60907f49ca2e1acbf9f31fe90018211f925a07d79e24a0e8d7b1a84`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:46:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.5 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792f992483de277325157439f075fe1bf0296d10dbbfa23204e2488d4047991c`  
		Last Modified: Tue, 20 Dec 2016 00:39:04 GMT  
		Size: 98.3 MB (98304437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1.5-onbuild`

```console
$ docker pull mono@sha256:9373b86bf9bb51163e7fb92f4dc978abbf7fbe96bb14a55e7b1e9b512ab5093d
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1.5-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143264346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7007c498148f07b15e3fd8c5c82607e6e4fc2b9e473de1ccd5d407f788d1e8c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:46:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.5 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 02:46:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 02:46:42 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 02:46:43 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 02:46:43 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 02:46:44 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 02:46:44 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 02:46:45 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792f992483de277325157439f075fe1bf0296d10dbbfa23204e2488d4047991c`  
		Last Modified: Tue, 20 Dec 2016 00:39:04 GMT  
		Size: 98.3 MB (98304437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb86089c3b11822dcd7bf110bfeb76829e1d2edfcad0562b1418c83705a28e56`  
		Last Modified: Tue, 20 Dec 2016 00:39:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1-onbuild`

```console
$ docker pull mono@sha256:9373b86bf9bb51163e7fb92f4dc978abbf7fbe96bb14a55e7b1e9b512ab5093d
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143264346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7007c498148f07b15e3fd8c5c82607e6e4fc2b9e473de1ccd5d407f788d1e8c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 02:46:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.5 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 02:46:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 02:46:42 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 02:46:43 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 02:46:43 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 02:46:44 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 02:46:44 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 02:46:45 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792f992483de277325157439f075fe1bf0296d10dbbfa23204e2488d4047991c`  
		Last Modified: Tue, 20 Dec 2016 00:39:04 GMT  
		Size: 98.3 MB (98304437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb86089c3b11822dcd7bf110bfeb76829e1d2edfcad0562b1418c83705a28e56`  
		Last Modified: Tue, 20 Dec 2016 00:39:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.2.7`

```console
$ docker pull mono@sha256:3e670646c6c316826238db461f0804bf6ac71f7a41065e045e74376762a14267
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.2.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143291063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8d60c401f825219901dc8524ac45ce5c7e8b29f06db64d7e571dcd16c54ce7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:10:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.2.7 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a9678f6e8bf2d3c1c7a25772c6fd465967ee053aa3ce12055f14265327798`  
		Last Modified: Tue, 20 Dec 2016 00:41:12 GMT  
		Size: 98.3 MB (98331318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.2`

```console
$ docker pull mono@sha256:3e670646c6c316826238db461f0804bf6ac71f7a41065e045e74376762a14267
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143291063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8d60c401f825219901dc8524ac45ce5c7e8b29f06db64d7e571dcd16c54ce7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:10:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.2.7 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a9678f6e8bf2d3c1c7a25772c6fd465967ee053aa3ce12055f14265327798`  
		Last Modified: Tue, 20 Dec 2016 00:41:12 GMT  
		Size: 98.3 MB (98331318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6`

```console
$ docker pull mono@sha256:3e670646c6c316826238db461f0804bf6ac71f7a41065e045e74376762a14267
```

-	Platforms:
	-	linux; amd64

### `mono:4.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143291063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8d60c401f825219901dc8524ac45ce5c7e8b29f06db64d7e571dcd16c54ce7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:10:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.2.7 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a9678f6e8bf2d3c1c7a25772c6fd465967ee053aa3ce12055f14265327798`  
		Last Modified: Tue, 20 Dec 2016 00:41:12 GMT  
		Size: 98.3 MB (98331318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4`

```console
$ docker pull mono@sha256:3e670646c6c316826238db461f0804bf6ac71f7a41065e045e74376762a14267
```

-	Platforms:
	-	linux; amd64

### `mono:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143291063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8d60c401f825219901dc8524ac45ce5c7e8b29f06db64d7e571dcd16c54ce7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:10:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.2.7 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a9678f6e8bf2d3c1c7a25772c6fd465967ee053aa3ce12055f14265327798`  
		Last Modified: Tue, 20 Dec 2016 00:41:12 GMT  
		Size: 98.3 MB (98331318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:3e670646c6c316826238db461f0804bf6ac71f7a41065e045e74376762a14267
```

-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143291063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8d60c401f825219901dc8524ac45ce5c7e8b29f06db64d7e571dcd16c54ce7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:10:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.2.7 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a9678f6e8bf2d3c1c7a25772c6fd465967ee053aa3ce12055f14265327798`  
		Last Modified: Tue, 20 Dec 2016 00:41:12 GMT  
		Size: 98.3 MB (98331318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.2.7-onbuild`

```console
$ docker pull mono@sha256:23d27cff3fdcef03eb17fb494a7ef04ec512fbb4a8a012d573238d4f3bc572d5
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.2.7-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143291226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0dc75deaa0c24f611f1abf441246dd423a96c983607a21727cd4091f6c5a15`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:10:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.2.7 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 01:10:05 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:10:06 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:10:06 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:10:06 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a9678f6e8bf2d3c1c7a25772c6fd465967ee053aa3ce12055f14265327798`  
		Last Modified: Tue, 20 Dec 2016 00:41:12 GMT  
		Size: 98.3 MB (98331318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbbee504edb5d00402b96e0d618d2482dff03720ca4de7f813f6eb7084ed90`  
		Last Modified: Tue, 20 Dec 2016 00:42:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.2-onbuild`

```console
$ docker pull mono@sha256:23d27cff3fdcef03eb17fb494a7ef04ec512fbb4a8a012d573238d4f3bc572d5
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143291226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0dc75deaa0c24f611f1abf441246dd423a96c983607a21727cd4091f6c5a15`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:10:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.2.7 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 01:10:05 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:10:06 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:10:06 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:10:06 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a9678f6e8bf2d3c1c7a25772c6fd465967ee053aa3ce12055f14265327798`  
		Last Modified: Tue, 20 Dec 2016 00:41:12 GMT  
		Size: 98.3 MB (98331318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbbee504edb5d00402b96e0d618d2482dff03720ca4de7f813f6eb7084ed90`  
		Last Modified: Tue, 20 Dec 2016 00:42:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6-onbuild`

```console
$ docker pull mono@sha256:23d27cff3fdcef03eb17fb494a7ef04ec512fbb4a8a012d573238d4f3bc572d5
```

-	Platforms:
	-	linux; amd64

### `mono:4.6-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143291226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0dc75deaa0c24f611f1abf441246dd423a96c983607a21727cd4091f6c5a15`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:10:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.2.7 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 01:10:05 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:10:06 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:10:06 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:10:06 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a9678f6e8bf2d3c1c7a25772c6fd465967ee053aa3ce12055f14265327798`  
		Last Modified: Tue, 20 Dec 2016 00:41:12 GMT  
		Size: 98.3 MB (98331318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbbee504edb5d00402b96e0d618d2482dff03720ca4de7f813f6eb7084ed90`  
		Last Modified: Tue, 20 Dec 2016 00:42:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4-onbuild`

```console
$ docker pull mono@sha256:23d27cff3fdcef03eb17fb494a7ef04ec512fbb4a8a012d573238d4f3bc572d5
```

-	Platforms:
	-	linux; amd64

### `mono:4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143291226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0dc75deaa0c24f611f1abf441246dd423a96c983607a21727cd4091f6c5a15`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:10:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.2.7 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 01:10:05 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:10:06 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:10:06 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:10:06 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a9678f6e8bf2d3c1c7a25772c6fd465967ee053aa3ce12055f14265327798`  
		Last Modified: Tue, 20 Dec 2016 00:41:12 GMT  
		Size: 98.3 MB (98331318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbbee504edb5d00402b96e0d618d2482dff03720ca4de7f813f6eb7084ed90`  
		Last Modified: Tue, 20 Dec 2016 00:42:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:onbuild`

```console
$ docker pull mono@sha256:23d27cff3fdcef03eb17fb494a7ef04ec512fbb4a8a012d573238d4f3bc572d5
```

-	Platforms:
	-	linux; amd64

### `mono:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143291226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0dc75deaa0c24f611f1abf441246dd423a96c983607a21727cd4091f6c5a15`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:05:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:09:22 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:09:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Dec 2016 01:10:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.2.7 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Dec 2016 01:10:05 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Dec 2016 01:10:06 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 14 Dec 2016 01:10:06 GMT
WORKDIR /usr/src/app/source
# Wed, 14 Dec 2016 01:10:06 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 14 Dec 2016 01:10:07 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01dee2c2658398012a65a93594245096e2edb014fb1b4d405cb8ba4af13d443`  
		Last Modified: Tue, 20 Dec 2016 00:28:50 GMT  
		Size: 7.6 MB (7645696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320a72438b28c03f76ad8bab43878fe7a7db326ffe466aa8fb8a6169f70ab231`  
		Last Modified: Tue, 20 Dec 2016 00:28:47 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a9678f6e8bf2d3c1c7a25772c6fd465967ee053aa3ce12055f14265327798`  
		Last Modified: Tue, 20 Dec 2016 00:41:12 GMT  
		Size: 98.3 MB (98331318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbbbee504edb5d00402b96e0d618d2482dff03720ca4de7f813f6eb7084ed90`  
		Last Modified: Tue, 20 Dec 2016 00:42:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
