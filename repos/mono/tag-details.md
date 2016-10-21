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
-	[`mono:4.6.1`](#mono461)
-	[`mono:4.6`](#mono46)
-	[`mono:4`](#mono4)
-	[`mono:latest`](#monolatest)
-	[`mono:4.6.1.3-onbuild`](#mono4613-onbuild)
-	[`mono:4.6.1-onbuild`](#mono461-onbuild)
-	[`mono:4.6-onbuild`](#mono46-onbuild)
-	[`mono:4-onbuild`](#mono4-onbuild)
-	[`mono:onbuild`](#monoonbuild)

## `mono:3.10.0`

```console
$ docker pull mono@sha256:5cb4c4a8d31f47f989866911e20d76c02a0e6a74c042e347376a27102eb4e2e6
```

-	Platforms:
	-	linux; amd64

### `mono:3.10.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124575899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1386ebf22e9ce69ccbc3102ca971a804c48a393150f32786df91695de59b06aa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:54:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:54:02 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Fri, 21 Oct 2016 20:54:03 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4886bdb2d0734b1a94596b43ef10c0d6e832f71f7679d687e180589534612b92`  
		Last Modified: Fri, 21 Oct 2016 20:54:37 GMT  
		Size: 79.5 MB (79479819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2752ce2d984ce21a139f8ee5dbace53b8a8a72e51cede983d44b367c805c24`  
		Last Modified: Fri, 21 Oct 2016 20:54:15 GMT  
		Size: 181.5 KB (181537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b8df3c527c50dab884d954cc42b3c1ac06984116ab12db7e9e2db264f0d89`  
		Last Modified: Fri, 21 Oct 2016 20:54:13 GMT  
		Size: 101.1 KB (101056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.10`

```console
$ docker pull mono@sha256:5cb4c4a8d31f47f989866911e20d76c02a0e6a74c042e347376a27102eb4e2e6
```

-	Platforms:
	-	linux; amd64

### `mono:3.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124575899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1386ebf22e9ce69ccbc3102ca971a804c48a393150f32786df91695de59b06aa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:54:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:54:02 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Fri, 21 Oct 2016 20:54:03 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4886bdb2d0734b1a94596b43ef10c0d6e832f71f7679d687e180589534612b92`  
		Last Modified: Fri, 21 Oct 2016 20:54:37 GMT  
		Size: 79.5 MB (79479819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2752ce2d984ce21a139f8ee5dbace53b8a8a72e51cede983d44b367c805c24`  
		Last Modified: Fri, 21 Oct 2016 20:54:15 GMT  
		Size: 181.5 KB (181537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b8df3c527c50dab884d954cc42b3c1ac06984116ab12db7e9e2db264f0d89`  
		Last Modified: Fri, 21 Oct 2016 20:54:13 GMT  
		Size: 101.1 KB (101056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.10.0-onbuild`

```console
$ docker pull mono@sha256:60364b679e399a3317413ad1c83524600a664dce86fac3374f975072021bef05
```

-	Platforms:
	-	linux; amd64

### `mono:3.10.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124561230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84f1d6dd0cf0db47e84e2a3574dc27d50d6997480f0765c3e4c6bdc6dfa6184`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:12:53 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:12:55 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:13:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:13:53 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Mon, 19 Sep 2016 20:13:54 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Mon, 19 Sep 2016 20:13:55 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:13:56 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:13:56 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:13:57 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:13:57 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:13:58 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:13:58 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4108b1bf47289b169ca3592a05ab76964fcdd284dea1d08d23825d8ca6e81179`  
		Last Modified: Wed, 21 Sep 2016 17:54:49 GMT  
		Size: 7.6 MB (7554528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1976f254995345b055384d35cd86b4316054404f380d9509d6e1650338faccfe`  
		Last Modified: Wed, 21 Sep 2016 17:54:47 GMT  
		Size: 29.3 KB (29328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b662d26ed55d7b12bb77fe2785a06dd598e8967e73d1404836a0db84d79d8aa`  
		Last Modified: Wed, 21 Sep 2016 17:55:17 GMT  
		Size: 79.5 MB (79480095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f8cb5a475f4e765efd5676b5ec4e0b5f33ff86720a5ab3f1e9352512062682`  
		Last Modified: Wed, 21 Sep 2016 17:54:47 GMT  
		Size: 181.5 KB (181538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea147b53b935145815fa0b17d972fdf88788d9c98f8e8ed3ba5dc4f94dadd845`  
		Last Modified: Wed, 21 Sep 2016 17:54:46 GMT  
		Size: 101.1 KB (101055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdf7bc0ab407acd993d69f4c9e7096ea3d9ebfa3e46e5b5a627cfd4c9b52dc7`  
		Last Modified: Wed, 21 Sep 2016 17:55:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.10-onbuild`

```console
$ docker pull mono@sha256:d84fd42fd967b4ac95e88d73ba9c96f34ac74cf0af1edfada9689172ba23ec51
```

-	Platforms:
	-	linux; amd64

### `mono:3.10-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124576063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e2600620faa2b37afafe748b425d9edfea2855f209498587af150a400d1135`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:54:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:54:02 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Fri, 21 Oct 2016 20:54:03 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Fri, 21 Oct 2016 20:54:57 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:54:58 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 20:54:58 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 20:54:58 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 20:54:59 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 20:54:59 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 20:55:00 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4886bdb2d0734b1a94596b43ef10c0d6e832f71f7679d687e180589534612b92`  
		Last Modified: Fri, 21 Oct 2016 20:54:37 GMT  
		Size: 79.5 MB (79479819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2752ce2d984ce21a139f8ee5dbace53b8a8a72e51cede983d44b367c805c24`  
		Last Modified: Fri, 21 Oct 2016 20:54:15 GMT  
		Size: 181.5 KB (181537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b8df3c527c50dab884d954cc42b3c1ac06984116ab12db7e9e2db264f0d89`  
		Last Modified: Fri, 21 Oct 2016 20:54:13 GMT  
		Size: 101.1 KB (101056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecf8b6e2a29a518a141e649b3352ab9c9bf1347d46aea045304c95981199bbd`  
		Last Modified: Fri, 21 Oct 2016 20:55:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.1`

```console
$ docker pull mono@sha256:b8fe4c015d614c0415a5cfa530c85eda3849a2832e5df2524dd71b0153ab79b3
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125616967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d73976b002ded31913dda4a275439e202f5a04370fe95509a7568425a35759`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:50:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1acf31fc0001c13c0df7ae8ba0920955efc7c5d5ea5cde69210b53b373c6e1d`  
		Last Modified: Fri, 21 Oct 2016 20:51:06 GMT  
		Size: 80.8 MB (80803480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.0`

```console
$ docker pull mono@sha256:b8fe4c015d614c0415a5cfa530c85eda3849a2832e5df2524dd71b0153ab79b3
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125616967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d73976b002ded31913dda4a275439e202f5a04370fe95509a7568425a35759`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:50:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1acf31fc0001c13c0df7ae8ba0920955efc7c5d5ea5cde69210b53b373c6e1d`  
		Last Modified: Fri, 21 Oct 2016 20:51:06 GMT  
		Size: 80.8 MB (80803480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12`

```console
$ docker pull mono@sha256:b8fe4c015d614c0415a5cfa530c85eda3849a2832e5df2524dd71b0153ab79b3
```

-	Platforms:
	-	linux; amd64

### `mono:3.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125616967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d73976b002ded31913dda4a275439e202f5a04370fe95509a7568425a35759`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:50:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1acf31fc0001c13c0df7ae8ba0920955efc7c5d5ea5cde69210b53b373c6e1d`  
		Last Modified: Fri, 21 Oct 2016 20:51:06 GMT  
		Size: 80.8 MB (80803480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3`

```console
$ docker pull mono@sha256:b8fe4c015d614c0415a5cfa530c85eda3849a2832e5df2524dd71b0153ab79b3
```

-	Platforms:
	-	linux; amd64

### `mono:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125616967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18d73976b002ded31913dda4a275439e202f5a04370fe95509a7568425a35759`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:50:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1acf31fc0001c13c0df7ae8ba0920955efc7c5d5ea5cde69210b53b373c6e1d`  
		Last Modified: Fri, 21 Oct 2016 20:51:06 GMT  
		Size: 80.8 MB (80803480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.1-onbuild`

```console
$ docker pull mono@sha256:6289a26c7df06ba9eacbea685379db7127a4dc60961522404ddcf134fe9702ef
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125617131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79fc3b758300778132f15fcbf9d2804506b1aa45102fbc29721937b5522b7064`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:50:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:51:45 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:51:46 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 20:51:47 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 20:51:47 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 20:51:47 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 20:51:48 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 20:51:48 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1acf31fc0001c13c0df7ae8ba0920955efc7c5d5ea5cde69210b53b373c6e1d`  
		Last Modified: Fri, 21 Oct 2016 20:51:06 GMT  
		Size: 80.8 MB (80803480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daeb3b77cfa63977f6cc2f88ec41ba20443357ac98d4dc7368dd99ee7b8f793`  
		Last Modified: Fri, 21 Oct 2016 20:51:57 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.0-onbuild`

```console
$ docker pull mono@sha256:6289a26c7df06ba9eacbea685379db7127a4dc60961522404ddcf134fe9702ef
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125617131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79fc3b758300778132f15fcbf9d2804506b1aa45102fbc29721937b5522b7064`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:50:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:51:45 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:51:46 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 20:51:47 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 20:51:47 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 20:51:47 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 20:51:48 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 20:51:48 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1acf31fc0001c13c0df7ae8ba0920955efc7c5d5ea5cde69210b53b373c6e1d`  
		Last Modified: Fri, 21 Oct 2016 20:51:06 GMT  
		Size: 80.8 MB (80803480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daeb3b77cfa63977f6cc2f88ec41ba20443357ac98d4dc7368dd99ee7b8f793`  
		Last Modified: Fri, 21 Oct 2016 20:51:57 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12-onbuild`

```console
$ docker pull mono@sha256:6289a26c7df06ba9eacbea685379db7127a4dc60961522404ddcf134fe9702ef
```

-	Platforms:
	-	linux; amd64

### `mono:3.12-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125617131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79fc3b758300778132f15fcbf9d2804506b1aa45102fbc29721937b5522b7064`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:50:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:51:45 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:51:46 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 20:51:47 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 20:51:47 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 20:51:47 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 20:51:48 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 20:51:48 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1acf31fc0001c13c0df7ae8ba0920955efc7c5d5ea5cde69210b53b373c6e1d`  
		Last Modified: Fri, 21 Oct 2016 20:51:06 GMT  
		Size: 80.8 MB (80803480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daeb3b77cfa63977f6cc2f88ec41ba20443357ac98d4dc7368dd99ee7b8f793`  
		Last Modified: Fri, 21 Oct 2016 20:51:57 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3-onbuild`

```console
$ docker pull mono@sha256:6289a26c7df06ba9eacbea685379db7127a4dc60961522404ddcf134fe9702ef
```

-	Platforms:
	-	linux; amd64

### `mono:3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125617131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79fc3b758300778132f15fcbf9d2804506b1aa45102fbc29721937b5522b7064`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:50:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:51:45 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:51:46 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 20:51:47 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 20:51:47 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 20:51:47 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 20:51:48 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 20:51:48 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1acf31fc0001c13c0df7ae8ba0920955efc7c5d5ea5cde69210b53b373c6e1d`  
		Last Modified: Fri, 21 Oct 2016 20:51:06 GMT  
		Size: 80.8 MB (80803480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daeb3b77cfa63977f6cc2f88ec41ba20443357ac98d4dc7368dd99ee7b8f793`  
		Last Modified: Fri, 21 Oct 2016 20:51:57 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8.0`

```console
$ docker pull mono@sha256:6b36f5ec0af157394460e068df3e003db9d7f6c75c084bbdcdf34069a31232ac
```

-	Platforms:
	-	linux; amd64

### `mono:3.8.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122782274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0226ae66fa28bd2c78db603bfd2cd55887b13cf8b190438784f9980652c86ae7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:56:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:56:50 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Fri, 21 Oct 2016 20:56:51 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bdcaabdde2b78a12be35a1c131cd62e89a775ff64fd57c51407347a46e72a6`  
		Last Modified: Fri, 21 Oct 2016 20:57:24 GMT  
		Size: 77.7 MB (77686198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad7f4da01c00532004fb3fc2dac7ecb4b8b566288f4a1426fe0262a40f7030d`  
		Last Modified: Fri, 21 Oct 2016 20:57:01 GMT  
		Size: 181.5 KB (181538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc37c69b314e0c19b267bdf1117677fbc2d971bccbf4145c4107ce5383b463a`  
		Last Modified: Fri, 21 Oct 2016 20:57:01 GMT  
		Size: 101.1 KB (101051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8`

```console
$ docker pull mono@sha256:6b36f5ec0af157394460e068df3e003db9d7f6c75c084bbdcdf34069a31232ac
```

-	Platforms:
	-	linux; amd64

### `mono:3.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122782274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0226ae66fa28bd2c78db603bfd2cd55887b13cf8b190438784f9980652c86ae7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:56:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:56:50 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Fri, 21 Oct 2016 20:56:51 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bdcaabdde2b78a12be35a1c131cd62e89a775ff64fd57c51407347a46e72a6`  
		Last Modified: Fri, 21 Oct 2016 20:57:24 GMT  
		Size: 77.7 MB (77686198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad7f4da01c00532004fb3fc2dac7ecb4b8b566288f4a1426fe0262a40f7030d`  
		Last Modified: Fri, 21 Oct 2016 20:57:01 GMT  
		Size: 181.5 KB (181538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc37c69b314e0c19b267bdf1117677fbc2d971bccbf4145c4107ce5383b463a`  
		Last Modified: Fri, 21 Oct 2016 20:57:01 GMT  
		Size: 101.1 KB (101051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8.0-onbuild`

```console
$ docker pull mono@sha256:5d59f2a70c5f42148747362398a7fcb036317e24a0f5c80a29eeefbf3e976f77
```

-	Platforms:
	-	linux; amd64

### `mono:3.8.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122782438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a749800ad0fca39aa3a5132f15eed1fd742c834e6269117d40d356a27743884d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:56:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:56:50 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Fri, 21 Oct 2016 20:56:51 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Fri, 21 Oct 2016 20:57:43 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:57:44 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 20:57:45 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 20:57:45 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 20:57:45 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 20:57:46 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 20:57:46 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bdcaabdde2b78a12be35a1c131cd62e89a775ff64fd57c51407347a46e72a6`  
		Last Modified: Fri, 21 Oct 2016 20:57:24 GMT  
		Size: 77.7 MB (77686198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad7f4da01c00532004fb3fc2dac7ecb4b8b566288f4a1426fe0262a40f7030d`  
		Last Modified: Fri, 21 Oct 2016 20:57:01 GMT  
		Size: 181.5 KB (181538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc37c69b314e0c19b267bdf1117677fbc2d971bccbf4145c4107ce5383b463a`  
		Last Modified: Fri, 21 Oct 2016 20:57:01 GMT  
		Size: 101.1 KB (101051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a280d066e16c50b826d18237d7f6c7e01e32d85b95ad4aac2e35fa409454128`  
		Last Modified: Fri, 21 Oct 2016 20:57:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8-onbuild`

```console
$ docker pull mono@sha256:5d59f2a70c5f42148747362398a7fcb036317e24a0f5c80a29eeefbf3e976f77
```

-	Platforms:
	-	linux; amd64

### `mono:3.8-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122782438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a749800ad0fca39aa3a5132f15eed1fd742c834e6269117d40d356a27743884d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 20:56:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:56:50 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Fri, 21 Oct 2016 20:56:51 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Fri, 21 Oct 2016 20:57:43 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:57:44 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 20:57:45 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 20:57:45 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 20:57:45 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 20:57:46 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 20:57:46 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bdcaabdde2b78a12be35a1c131cd62e89a775ff64fd57c51407347a46e72a6`  
		Last Modified: Fri, 21 Oct 2016 20:57:24 GMT  
		Size: 77.7 MB (77686198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad7f4da01c00532004fb3fc2dac7ecb4b8b566288f4a1426fe0262a40f7030d`  
		Last Modified: Fri, 21 Oct 2016 20:57:01 GMT  
		Size: 181.5 KB (181538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc37c69b314e0c19b267bdf1117677fbc2d971bccbf4145c4107ce5383b463a`  
		Last Modified: Fri, 21 Oct 2016 20:57:01 GMT  
		Size: 101.1 KB (101051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a280d066e16c50b826d18237d7f6c7e01e32d85b95ad4aac2e35fa409454128`  
		Last Modified: Fri, 21 Oct 2016 20:57:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5.1`

```console
$ docker pull mono@sha256:77f773a2d2980fa14d3fdfe5b2702ead85162d0b3f0bdaf75de4ac4587fe3a68
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227594239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e1b4e5a2dbe8a6eac1cdedd7f99625e11b714582ea8eb1de56ff6ab43b9f26`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:05:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cf8df258cc829a9d671d6a915e94d6407aa4203aea2521c306ce2849c8b4b1`  
		Last Modified: Fri, 21 Oct 2016 21:06:03 GMT  
		Size: 182.8 MB (182780752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5`

```console
$ docker pull mono@sha256:77f773a2d2980fa14d3fdfe5b2702ead85162d0b3f0bdaf75de4ac4587fe3a68
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227594239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e1b4e5a2dbe8a6eac1cdedd7f99625e11b714582ea8eb1de56ff6ab43b9f26`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:05:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cf8df258cc829a9d671d6a915e94d6407aa4203aea2521c306ce2849c8b4b1`  
		Last Modified: Fri, 21 Oct 2016 21:06:03 GMT  
		Size: 182.8 MB (182780752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0`

```console
$ docker pull mono@sha256:77f773a2d2980fa14d3fdfe5b2702ead85162d0b3f0bdaf75de4ac4587fe3a68
```

-	Platforms:
	-	linux; amd64

### `mono:4.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227594239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e1b4e5a2dbe8a6eac1cdedd7f99625e11b714582ea8eb1de56ff6ab43b9f26`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:05:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cf8df258cc829a9d671d6a915e94d6407aa4203aea2521c306ce2849c8b4b1`  
		Last Modified: Fri, 21 Oct 2016 21:06:03 GMT  
		Size: 182.8 MB (182780752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5.1-onbuild`

```console
$ docker pull mono@sha256:8ef42e665bc0991847b0a00f9c67998669b92913341216891b0469dd44b8d1f1
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227594403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f0ea86326e4657771130543abd09d578d7562322d2289e495bc6b8a297dcf6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:05:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:06:40 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:06:41 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:06:41 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:06:41 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:06:42 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:06:42 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:06:43 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cf8df258cc829a9d671d6a915e94d6407aa4203aea2521c306ce2849c8b4b1`  
		Last Modified: Fri, 21 Oct 2016 21:06:03 GMT  
		Size: 182.8 MB (182780752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f56b538a2df8323eb0e7aae17c0d56667771fea8b9d25851be5b56853d621ed`  
		Last Modified: Fri, 21 Oct 2016 21:06:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5-onbuild`

```console
$ docker pull mono@sha256:8ef42e665bc0991847b0a00f9c67998669b92913341216891b0469dd44b8d1f1
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227594403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f0ea86326e4657771130543abd09d578d7562322d2289e495bc6b8a297dcf6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:05:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:06:40 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:06:41 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:06:41 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:06:41 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:06:42 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:06:42 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:06:43 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cf8df258cc829a9d671d6a915e94d6407aa4203aea2521c306ce2849c8b4b1`  
		Last Modified: Fri, 21 Oct 2016 21:06:03 GMT  
		Size: 182.8 MB (182780752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f56b538a2df8323eb0e7aae17c0d56667771fea8b9d25851be5b56853d621ed`  
		Last Modified: Fri, 21 Oct 2016 21:06:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0-onbuild`

```console
$ docker pull mono@sha256:8ef42e665bc0991847b0a00f9c67998669b92913341216891b0469dd44b8d1f1
```

-	Platforms:
	-	linux; amd64

### `mono:4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227594403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f0ea86326e4657771130543abd09d578d7562322d2289e495bc6b8a297dcf6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:05:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:06:40 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:06:41 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:06:41 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:06:41 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:06:42 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:06:42 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:06:43 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cf8df258cc829a9d671d6a915e94d6407aa4203aea2521c306ce2849c8b4b1`  
		Last Modified: Fri, 21 Oct 2016 21:06:03 GMT  
		Size: 182.8 MB (182780752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f56b538a2df8323eb0e7aae17c0d56667771fea8b9d25851be5b56853d621ed`  
		Last Modified: Fri, 21 Oct 2016 21:06:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1.102`

```console
$ docker pull mono@sha256:b74002dead0c2431c1253c2d529d1e3080a9379d5c0fc9acf0267b1eb08906ab
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1.102` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229482599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7a44e257e4eac23dc135f423ceb177b9b7ea2b2abe1c75ead4934792b02d37`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:26:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeb6965aa99500ce3be3e2629af3a5748b4f2a6ed783540be57687eea7bfb8c`  
		Last Modified: Fri, 21 Oct 2016 21:27:24 GMT  
		Size: 184.7 MB (184669112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1`

```console
$ docker pull mono@sha256:b74002dead0c2431c1253c2d529d1e3080a9379d5c0fc9acf0267b1eb08906ab
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229482599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7a44e257e4eac23dc135f423ceb177b9b7ea2b2abe1c75ead4934792b02d37`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:26:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeb6965aa99500ce3be3e2629af3a5748b4f2a6ed783540be57687eea7bfb8c`  
		Last Modified: Fri, 21 Oct 2016 21:27:24 GMT  
		Size: 184.7 MB (184669112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1.102-onbuild`

```console
$ docker pull mono@sha256:b7ebdd5f1f732c0058076d131821c17b19686bad5b33f1a5bda12587376c22be
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1.102-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229482763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0194b35b31e280e83c7ec6e725ba7b5c599020447a1410cc1551dfb8e94e277`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:26:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:27:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:27:45 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:27:45 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:27:46 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:27:46 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:27:47 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:27:47 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeb6965aa99500ce3be3e2629af3a5748b4f2a6ed783540be57687eea7bfb8c`  
		Last Modified: Fri, 21 Oct 2016 21:27:24 GMT  
		Size: 184.7 MB (184669112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556980a7dbf70d51e8bf4cb513380e30ea0f40e56a667584ad81323567665a3f`  
		Last Modified: Fri, 21 Oct 2016 21:27:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1-onbuild`

```console
$ docker pull mono@sha256:b7ebdd5f1f732c0058076d131821c17b19686bad5b33f1a5bda12587376c22be
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229482763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0194b35b31e280e83c7ec6e725ba7b5c599020447a1410cc1551dfb8e94e277`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:48:20 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:26:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:27:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:27:45 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:27:45 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:27:46 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:27:46 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:27:47 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:27:47 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136fdf75c47d8a39c89bd146af368da372787cc00a0d709673bfcf4f42b44202`  
		Last Modified: Fri, 21 Oct 2016 20:50:42 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aeb6965aa99500ce3be3e2629af3a5748b4f2a6ed783540be57687eea7bfb8c`  
		Last Modified: Fri, 21 Oct 2016 21:27:24 GMT  
		Size: 184.7 MB (184669112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556980a7dbf70d51e8bf4cb513380e30ea0f40e56a667584ad81323567665a3f`  
		Last Modified: Fri, 21 Oct 2016 21:27:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2.30`

```console
$ docker pull mono@sha256:3bf36651892b4f7a281e3cced017e85f231f35bd9b55d7789963c80d3bef1e44
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2.30` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229504048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dcaa6d941e5a4684e0e9393e0adbf1a1daf77bdbef0cb7901efa7b25cd97baa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:29:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9a57e15dbff52b4a560dac519a17c3a1856b1a197c2cfe16bbdf24da6b1deb`  
		Last Modified: Fri, 21 Oct 2016 21:30:39 GMT  
		Size: 184.7 MB (184690560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2`

```console
$ docker pull mono@sha256:3bf36651892b4f7a281e3cced017e85f231f35bd9b55d7789963c80d3bef1e44
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229504048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dcaa6d941e5a4684e0e9393e0adbf1a1daf77bdbef0cb7901efa7b25cd97baa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:29:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9a57e15dbff52b4a560dac519a17c3a1856b1a197c2cfe16bbdf24da6b1deb`  
		Last Modified: Fri, 21 Oct 2016 21:30:39 GMT  
		Size: 184.7 MB (184690560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2.30-onbuild`

```console
$ docker pull mono@sha256:92b184046605c36ec3ce3551870e4a36fab8daed5903f0782001c45095d4e7ef
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2.30-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229504211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d3d28ac32fc2a3b91bc18d3391b1b340a9a842851e4529088b0fdf9e6b33ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:29:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:31:00 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:31:01 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:31:01 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:31:02 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:31:02 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:31:02 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:31:03 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9a57e15dbff52b4a560dac519a17c3a1856b1a197c2cfe16bbdf24da6b1deb`  
		Last Modified: Fri, 21 Oct 2016 21:30:39 GMT  
		Size: 184.7 MB (184690560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563bf55a89808ec100b3bbd7339629d8b57383666c3bafe8dcbdb6a623537c02`  
		Last Modified: Fri, 21 Oct 2016 21:31:12 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2-onbuild`

```console
$ docker pull mono@sha256:92b184046605c36ec3ce3551870e4a36fab8daed5903f0782001c45095d4e7ef
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229504211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d3d28ac32fc2a3b91bc18d3391b1b340a9a842851e4529088b0fdf9e6b33ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:29:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:31:00 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:31:01 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:31:01 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:31:02 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:31:02 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:31:02 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:31:03 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9a57e15dbff52b4a560dac519a17c3a1856b1a197c2cfe16bbdf24da6b1deb`  
		Last Modified: Fri, 21 Oct 2016 21:30:39 GMT  
		Size: 184.7 MB (184690560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563bf55a89808ec100b3bbd7339629d8b57383666c3bafe8dcbdb6a623537c02`  
		Last Modified: Fri, 21 Oct 2016 21:31:12 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3.4`

```console
$ docker pull mono@sha256:06de9cc65706649cd94e1923604201813e0725843ce3d6c5b8469a362fb0404e
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229507779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbdf31e03d39f95bc1cb820c7423164cc8c0098a700c87c4df8db94287c90cca`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:32:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9422382cb3cad5cedefbafdb1908c9ef61f39e6498edc5f90f3e8e4d2821c641`  
		Last Modified: Fri, 21 Oct 2016 21:33:55 GMT  
		Size: 184.7 MB (184694291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3`

```console
$ docker pull mono@sha256:06de9cc65706649cd94e1923604201813e0725843ce3d6c5b8469a362fb0404e
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229507779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbdf31e03d39f95bc1cb820c7423164cc8c0098a700c87c4df8db94287c90cca`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:32:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9422382cb3cad5cedefbafdb1908c9ef61f39e6498edc5f90f3e8e4d2821c641`  
		Last Modified: Fri, 21 Oct 2016 21:33:55 GMT  
		Size: 184.7 MB (184694291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3.4-onbuild`

```console
$ docker pull mono@sha256:5b22a453dab6ad91fcdf8386205adb9931dfb136156c2e4ae694b0ddc346072e
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3.4-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229507942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e046492fd84990976347e4d5d4cf7ad34b34a66acfd759cacdbca5583983974a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:32:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:34:16 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:34:17 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:34:18 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:34:18 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:34:19 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:34:19 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:34:19 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9422382cb3cad5cedefbafdb1908c9ef61f39e6498edc5f90f3e8e4d2821c641`  
		Last Modified: Fri, 21 Oct 2016 21:33:55 GMT  
		Size: 184.7 MB (184694291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b2e692b25e98469ac3906585943b5aa589c2ced6b0fd7f2b21bcd8eae21805`  
		Last Modified: Fri, 21 Oct 2016 21:34:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3-onbuild`

```console
$ docker pull mono@sha256:5b22a453dab6ad91fcdf8386205adb9931dfb136156c2e4ae694b0ddc346072e
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229507942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e046492fd84990976347e4d5d4cf7ad34b34a66acfd759cacdbca5583983974a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:32:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:34:16 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:34:17 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:34:18 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:34:18 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:34:19 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:34:19 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:34:19 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9422382cb3cad5cedefbafdb1908c9ef61f39e6498edc5f90f3e8e4d2821c641`  
		Last Modified: Fri, 21 Oct 2016 21:33:55 GMT  
		Size: 184.7 MB (184694291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b2e692b25e98469ac3906585943b5aa589c2ced6b0fd7f2b21bcd8eae21805`  
		Last Modified: Fri, 21 Oct 2016 21:34:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4.4`

```console
$ docker pull mono@sha256:33798e29798e34638623936d416e37530cdf6a41360beba24be5b3e29ec63341
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229509226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc8cc0bc9fcc40e43cad12ef612c71b5223a7a2263b75d613889a8966553fe3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:22:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae99217571e41ef4909de818b8eb1057c4dcd1cf862f23e63c4d447385a9192`  
		Last Modified: Fri, 21 Oct 2016 21:23:45 GMT  
		Size: 184.7 MB (184695738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4`

```console
$ docker pull mono@sha256:33798e29798e34638623936d416e37530cdf6a41360beba24be5b3e29ec63341
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229509226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc8cc0bc9fcc40e43cad12ef612c71b5223a7a2263b75d613889a8966553fe3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:22:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae99217571e41ef4909de818b8eb1057c4dcd1cf862f23e63c4d447385a9192`  
		Last Modified: Fri, 21 Oct 2016 21:23:45 GMT  
		Size: 184.7 MB (184695738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2`

```console
$ docker pull mono@sha256:33798e29798e34638623936d416e37530cdf6a41360beba24be5b3e29ec63341
```

-	Platforms:
	-	linux; amd64

### `mono:4.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229509226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc8cc0bc9fcc40e43cad12ef612c71b5223a7a2263b75d613889a8966553fe3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:22:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae99217571e41ef4909de818b8eb1057c4dcd1cf862f23e63c4d447385a9192`  
		Last Modified: Fri, 21 Oct 2016 21:23:45 GMT  
		Size: 184.7 MB (184695738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4.4-onbuild`

```console
$ docker pull mono@sha256:bb6142e5c5060417127e5baa6615882230e544c0c736bc7b358520d8d69d1342
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4.4-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229509389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601bf493cde9912865306915f97b7709cd4e8181218cef4196bd798cc19d5f45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:22:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:24:18 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:24:19 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:24:19 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:24:19 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:24:20 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:24:20 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:24:21 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae99217571e41ef4909de818b8eb1057c4dcd1cf862f23e63c4d447385a9192`  
		Last Modified: Fri, 21 Oct 2016 21:23:45 GMT  
		Size: 184.7 MB (184695738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f3bb86ee1e3c048706feb0dc4216c69a6b83395090c7e09ccba27968e696f`  
		Last Modified: Fri, 21 Oct 2016 21:24:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4-onbuild`

```console
$ docker pull mono@sha256:bb6142e5c5060417127e5baa6615882230e544c0c736bc7b358520d8d69d1342
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229509389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601bf493cde9912865306915f97b7709cd4e8181218cef4196bd798cc19d5f45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:22:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:24:18 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:24:19 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:24:19 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:24:19 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:24:20 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:24:20 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:24:21 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae99217571e41ef4909de818b8eb1057c4dcd1cf862f23e63c4d447385a9192`  
		Last Modified: Fri, 21 Oct 2016 21:23:45 GMT  
		Size: 184.7 MB (184695738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f3bb86ee1e3c048706feb0dc4216c69a6b83395090c7e09ccba27968e696f`  
		Last Modified: Fri, 21 Oct 2016 21:24:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2-onbuild`

```console
$ docker pull mono@sha256:bb6142e5c5060417127e5baa6615882230e544c0c736bc7b358520d8d69d1342
```

-	Platforms:
	-	linux; amd64

### `mono:4.2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229509389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601bf493cde9912865306915f97b7709cd4e8181218cef4196bd798cc19d5f45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:22:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:24:18 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:24:19 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:24:19 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:24:19 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:24:20 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:24:20 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:24:21 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae99217571e41ef4909de818b8eb1057c4dcd1cf862f23e63c4d447385a9192`  
		Last Modified: Fri, 21 Oct 2016 21:23:45 GMT  
		Size: 184.7 MB (184695738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f3bb86ee1e3c048706feb0dc4216c69a6b83395090c7e09ccba27968e696f`  
		Last Modified: Fri, 21 Oct 2016 21:24:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0.182`

```console
$ docker pull mono@sha256:a299c9d6c99f84768f7aced58a8b47ae8708baa89d4013e97c3d788502920926
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0.182` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250621172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18fba359ca19d93bbc688be6104cc5e9576b3cb99ca4ca2953d3bbdd3f98834d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:40:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880116fe3dd596d46cd6f6d807729391429bd8a797191a0fc58cd8810070b57e`  
		Last Modified: Fri, 21 Oct 2016 21:41:37 GMT  
		Size: 205.8 MB (205807684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0`

```console
$ docker pull mono@sha256:a299c9d6c99f84768f7aced58a8b47ae8708baa89d4013e97c3d788502920926
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250621172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18fba359ca19d93bbc688be6104cc5e9576b3cb99ca4ca2953d3bbdd3f98834d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:40:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880116fe3dd596d46cd6f6d807729391429bd8a797191a0fc58cd8810070b57e`  
		Last Modified: Fri, 21 Oct 2016 21:41:37 GMT  
		Size: 205.8 MB (205807684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0.182-onbuild`

```console
$ docker pull mono@sha256:abc2075852a6ffa2fe3a8d6c52d80e77250633a7081d5fcdf0baab53db1f80c1
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0.182-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250621336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a9102ac16fee6e5346ccd6fbca86af50f47995acd895bad86ee9ba933c9912`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:40:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 21:41:57 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:41:58 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:41:58 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:41:59 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:41:59 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:41:59 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:42:00 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880116fe3dd596d46cd6f6d807729391429bd8a797191a0fc58cd8810070b57e`  
		Last Modified: Fri, 21 Oct 2016 21:41:37 GMT  
		Size: 205.8 MB (205807684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b5fc791e75370ce34668c4afb4ef641be23552ba4e1755c12881909567fba4`  
		Last Modified: Fri, 21 Oct 2016 21:42:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0-onbuild`

```console
$ docker pull mono@sha256:abc2075852a6ffa2fe3a8d6c52d80e77250633a7081d5fcdf0baab53db1f80c1
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250621336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a9102ac16fee6e5346ccd6fbca86af50f47995acd895bad86ee9ba933c9912`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:48:18 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 21:07:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:40:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 21:41:57 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:41:58 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:41:58 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:41:59 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:41:59 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:41:59 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:42:00 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf26c66e0d1a1c6cf1e90c9adafff6091b26afe93ec24c15b6691856b61f1ab`  
		Last Modified: Fri, 21 Oct 2016 20:50:43 GMT  
		Size: 7.6 MB (7569018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014300d3ab44c65e6559c3229f9696ae71b23e14539078446661ddf7988bb271`  
		Last Modified: Fri, 21 Oct 2016 21:22:53 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880116fe3dd596d46cd6f6d807729391429bd8a797191a0fc58cd8810070b57e`  
		Last Modified: Fri, 21 Oct 2016 21:41:37 GMT  
		Size: 205.8 MB (205807684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b5fc791e75370ce34668c4afb4ef641be23552ba4e1755c12881909567fba4`  
		Last Modified: Fri, 21 Oct 2016 21:42:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1.0`

```console
$ docker pull mono@sha256:b9900839056671cc988635a358c83dba3f1ffbd40cb248325f1682c0afc86f92
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250626782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4461a8fa62ce9645b3f8b79ef21fa37b274b7ba8e020d62be71fc86ba8fbc884`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:57:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcff8ed029f28df3289b74a92e32e473e3119d3954f4a41a5eea7fe2b2d8c9c5`  
		Last Modified: Fri, 21 Oct 2016 21:58:45 GMT  
		Size: 205.8 MB (205813233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1`

```console
$ docker pull mono@sha256:b9900839056671cc988635a358c83dba3f1ffbd40cb248325f1682c0afc86f92
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250626782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4461a8fa62ce9645b3f8b79ef21fa37b274b7ba8e020d62be71fc86ba8fbc884`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:57:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcff8ed029f28df3289b74a92e32e473e3119d3954f4a41a5eea7fe2b2d8c9c5`  
		Last Modified: Fri, 21 Oct 2016 21:58:45 GMT  
		Size: 205.8 MB (205813233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1.0-onbuild`

```console
$ docker pull mono@sha256:a594d1c4087a5aed82369d46b24b1218e652eba06de98d363293c08a3f66d724
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250626945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f96be0e6144d85df94af349376e68a656bfee563753debbf6cd6cc862a7267`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:57:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 21:59:06 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:59:07 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:59:07 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:59:08 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:59:08 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:59:08 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:59:09 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcff8ed029f28df3289b74a92e32e473e3119d3954f4a41a5eea7fe2b2d8c9c5`  
		Last Modified: Fri, 21 Oct 2016 21:58:45 GMT  
		Size: 205.8 MB (205813233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345d5317b1ba5bb25f0be04b48d70c50812db19d42b659e75679d807d7f801a7`  
		Last Modified: Fri, 21 Oct 2016 21:59:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1-onbuild`

```console
$ docker pull mono@sha256:a594d1c4087a5aed82369d46b24b1218e652eba06de98d363293c08a3f66d724
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250626945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f96be0e6144d85df94af349376e68a656bfee563753debbf6cd6cc862a7267`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:57:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 21:59:06 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:59:07 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:59:07 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:59:08 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:59:08 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:59:08 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:59:09 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcff8ed029f28df3289b74a92e32e473e3119d3954f4a41a5eea7fe2b2d8c9c5`  
		Last Modified: Fri, 21 Oct 2016 21:58:45 GMT  
		Size: 205.8 MB (205813233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345d5317b1ba5bb25f0be04b48d70c50812db19d42b659e75679d807d7f801a7`  
		Last Modified: Fri, 21 Oct 2016 21:59:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2.11`

```console
$ docker pull mono@sha256:ba69d3f93f0c00a9e01ca0a8dadce4e0988d897b6d3e4c993cf3bb6381fa1e86
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250755696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c9eeea4069096965d30f1c2097e96bae076ce572cccf293409ad899ad72efa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:36:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8a34050051260d606b1f1fb5d143a934276938c11fe1c2a431b802dd261659`  
		Last Modified: Fri, 21 Oct 2016 21:37:40 GMT  
		Size: 205.9 MB (205942147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2`

```console
$ docker pull mono@sha256:ba69d3f93f0c00a9e01ca0a8dadce4e0988d897b6d3e4c993cf3bb6381fa1e86
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250755696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c9eeea4069096965d30f1c2097e96bae076ce572cccf293409ad899ad72efa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:36:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8a34050051260d606b1f1fb5d143a934276938c11fe1c2a431b802dd261659`  
		Last Modified: Fri, 21 Oct 2016 21:37:40 GMT  
		Size: 205.9 MB (205942147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4`

```console
$ docker pull mono@sha256:ba69d3f93f0c00a9e01ca0a8dadce4e0988d897b6d3e4c993cf3bb6381fa1e86
```

-	Platforms:
	-	linux; amd64

### `mono:4.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250755696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c9eeea4069096965d30f1c2097e96bae076ce572cccf293409ad899ad72efa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:36:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8a34050051260d606b1f1fb5d143a934276938c11fe1c2a431b802dd261659`  
		Last Modified: Fri, 21 Oct 2016 21:37:40 GMT  
		Size: 205.9 MB (205942147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2.11-onbuild`

```console
$ docker pull mono@sha256:59c632c0dc0f5be29f02f6ed052289e01124ac8404cd78d9da35ab555c99a055
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2.11-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250755859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d9e820af01bdad758e64e2f29dc113c4ac701b6c982b5b75e3c43ecc88eaec6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:36:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 21:38:10 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:38:12 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:38:12 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:38:12 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:38:13 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:38:13 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:38:14 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8a34050051260d606b1f1fb5d143a934276938c11fe1c2a431b802dd261659`  
		Last Modified: Fri, 21 Oct 2016 21:37:40 GMT  
		Size: 205.9 MB (205942147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3552638753438350c4def6a7e93bf0b2d5c88f1d977e69bfdcefb75937895e1a`  
		Last Modified: Fri, 21 Oct 2016 21:38:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2-onbuild`

```console
$ docker pull mono@sha256:59c632c0dc0f5be29f02f6ed052289e01124ac8404cd78d9da35ab555c99a055
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250755859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d9e820af01bdad758e64e2f29dc113c4ac701b6c982b5b75e3c43ecc88eaec6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:36:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 21:38:10 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:38:12 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:38:12 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:38:12 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:38:13 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:38:13 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:38:14 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8a34050051260d606b1f1fb5d143a934276938c11fe1c2a431b802dd261659`  
		Last Modified: Fri, 21 Oct 2016 21:37:40 GMT  
		Size: 205.9 MB (205942147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3552638753438350c4def6a7e93bf0b2d5c88f1d977e69bfdcefb75937895e1a`  
		Last Modified: Fri, 21 Oct 2016 21:38:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4-onbuild`

```console
$ docker pull mono@sha256:59c632c0dc0f5be29f02f6ed052289e01124ac8404cd78d9da35ab555c99a055
```

-	Platforms:
	-	linux; amd64

### `mono:4.4-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250755859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d9e820af01bdad758e64e2f29dc113c4ac701b6c982b5b75e3c43ecc88eaec6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:36:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 21:38:10 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:38:12 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:38:12 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:38:12 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:38:13 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:38:13 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:38:14 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8a34050051260d606b1f1fb5d143a934276938c11fe1c2a431b802dd261659`  
		Last Modified: Fri, 21 Oct 2016 21:37:40 GMT  
		Size: 205.9 MB (205942147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3552638753438350c4def6a7e93bf0b2d5c88f1d977e69bfdcefb75937895e1a`  
		Last Modified: Fri, 21 Oct 2016 21:38:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0.245`

```console
$ docker pull mono@sha256:4ff035d0c325ea5574501b15bc3aaacb6d8776c904934325f24165f2196eb214
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0.245` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d28b832d53437598f62292ff69b34d8e43b6fcd37ced8e220df7d1277e2210`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 22:00:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7b291c33fe3a1b9a5af7b5bc34bc4020ae687833185a9c483b428cb4de6e65`  
		Last Modified: Fri, 21 Oct 2016 22:00:58 GMT  
		Size: 98.2 MB (98229618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0`

```console
$ docker pull mono@sha256:4ff035d0c325ea5574501b15bc3aaacb6d8776c904934325f24165f2196eb214
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d28b832d53437598f62292ff69b34d8e43b6fcd37ced8e220df7d1277e2210`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 22:00:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7b291c33fe3a1b9a5af7b5bc34bc4020ae687833185a9c483b428cb4de6e65`  
		Last Modified: Fri, 21 Oct 2016 22:00:58 GMT  
		Size: 98.2 MB (98229618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0.245-onbuild`

```console
$ docker pull mono@sha256:6d6d59e0b437a4024112ea9409a38a38aa7e6cc43d1bfe3cecacddcac8c074b7
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0.245-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2e7c2ff22f00b40e87ad98051a79f43e126ddd95fa001e54234954589207638`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 22:00:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 22:01:19 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 22:01:20 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 22:01:20 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 22:01:21 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 22:01:21 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 22:01:22 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 22:01:22 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7b291c33fe3a1b9a5af7b5bc34bc4020ae687833185a9c483b428cb4de6e65`  
		Last Modified: Fri, 21 Oct 2016 22:00:58 GMT  
		Size: 98.2 MB (98229618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41341cd4c1ad64fefe693543c5335d701f5f52c677bf61f8b0de39304e52ee`  
		Last Modified: Fri, 21 Oct 2016 22:01:31 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0-onbuild`

```console
$ docker pull mono@sha256:6d6d59e0b437a4024112ea9409a38a38aa7e6cc43d1bfe3cecacddcac8c074b7
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2e7c2ff22f00b40e87ad98051a79f43e126ddd95fa001e54234954589207638`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 22:00:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 22:01:19 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 22:01:20 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 22:01:20 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 22:01:21 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 22:01:21 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 22:01:22 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 22:01:22 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7b291c33fe3a1b9a5af7b5bc34bc4020ae687833185a9c483b428cb4de6e65`  
		Last Modified: Fri, 21 Oct 2016 22:00:58 GMT  
		Size: 98.2 MB (98229618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41341cd4c1ad64fefe693543c5335d701f5f52c677bf61f8b0de39304e52ee`  
		Last Modified: Fri, 21 Oct 2016 22:01:31 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1.3`

```console
$ docker pull mono@sha256:b6e54334dcd8f555e8117a2d8376677ecf2ffc44ab28580d6917ba6d3bf4fe21
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f78100b208c9a5f6fc140f43e69f1682b58d5c841e95e6ef3da90222de161df`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:00:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533ee40911bb7542df86a009dc47667e5f66c1e2d445eda949df92ea1fedb71`  
		Last Modified: Fri, 21 Oct 2016 21:00:56 GMT  
		Size: 98.2 MB (98229879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1`

```console
$ docker pull mono@sha256:b6e54334dcd8f555e8117a2d8376677ecf2ffc44ab28580d6917ba6d3bf4fe21
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f78100b208c9a5f6fc140f43e69f1682b58d5c841e95e6ef3da90222de161df`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:00:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533ee40911bb7542df86a009dc47667e5f66c1e2d445eda949df92ea1fedb71`  
		Last Modified: Fri, 21 Oct 2016 21:00:56 GMT  
		Size: 98.2 MB (98229879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6`

```console
$ docker pull mono@sha256:b6e54334dcd8f555e8117a2d8376677ecf2ffc44ab28580d6917ba6d3bf4fe21
```

-	Platforms:
	-	linux; amd64

### `mono:4.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f78100b208c9a5f6fc140f43e69f1682b58d5c841e95e6ef3da90222de161df`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:00:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533ee40911bb7542df86a009dc47667e5f66c1e2d445eda949df92ea1fedb71`  
		Last Modified: Fri, 21 Oct 2016 21:00:56 GMT  
		Size: 98.2 MB (98229879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4`

```console
$ docker pull mono@sha256:b6e54334dcd8f555e8117a2d8376677ecf2ffc44ab28580d6917ba6d3bf4fe21
```

-	Platforms:
	-	linux; amd64

### `mono:4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f78100b208c9a5f6fc140f43e69f1682b58d5c841e95e6ef3da90222de161df`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:00:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533ee40911bb7542df86a009dc47667e5f66c1e2d445eda949df92ea1fedb71`  
		Last Modified: Fri, 21 Oct 2016 21:00:56 GMT  
		Size: 98.2 MB (98229879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:b6e54334dcd8f555e8117a2d8376677ecf2ffc44ab28580d6917ba6d3bf4fe21
```

-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f78100b208c9a5f6fc140f43e69f1682b58d5c841e95e6ef3da90222de161df`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:00:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533ee40911bb7542df86a009dc47667e5f66c1e2d445eda949df92ea1fedb71`  
		Last Modified: Fri, 21 Oct 2016 21:00:56 GMT  
		Size: 98.2 MB (98229879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1.3-onbuild`

```console
$ docker pull mono@sha256:d82c560b86e9cfb4707d303b8ae909f5c9eba64e152bea11713a1b69a6fecfbb
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1.3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a0c23a9f56e1e244d48f9c6b6230b06dba546dd3e6abc7ab2ec834bb51fd45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:00:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 21:01:47 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:01:47 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:01:48 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:01:48 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533ee40911bb7542df86a009dc47667e5f66c1e2d445eda949df92ea1fedb71`  
		Last Modified: Fri, 21 Oct 2016 21:00:56 GMT  
		Size: 98.2 MB (98229879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92564c722dde7632d00a5f9ad3479f516cb95e18117d01aeba8572d7bfb990ab`  
		Last Modified: Fri, 21 Oct 2016 21:01:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1-onbuild`

```console
$ docker pull mono@sha256:d82c560b86e9cfb4707d303b8ae909f5c9eba64e152bea11713a1b69a6fecfbb
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a0c23a9f56e1e244d48f9c6b6230b06dba546dd3e6abc7ab2ec834bb51fd45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:00:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 21:01:47 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:01:47 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:01:48 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:01:48 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533ee40911bb7542df86a009dc47667e5f66c1e2d445eda949df92ea1fedb71`  
		Last Modified: Fri, 21 Oct 2016 21:00:56 GMT  
		Size: 98.2 MB (98229879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92564c722dde7632d00a5f9ad3479f516cb95e18117d01aeba8572d7bfb990ab`  
		Last Modified: Fri, 21 Oct 2016 21:01:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6-onbuild`

```console
$ docker pull mono@sha256:d82c560b86e9cfb4707d303b8ae909f5c9eba64e152bea11713a1b69a6fecfbb
```

-	Platforms:
	-	linux; amd64

### `mono:4.6-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a0c23a9f56e1e244d48f9c6b6230b06dba546dd3e6abc7ab2ec834bb51fd45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:00:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 21:01:47 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:01:47 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:01:48 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:01:48 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533ee40911bb7542df86a009dc47667e5f66c1e2d445eda949df92ea1fedb71`  
		Last Modified: Fri, 21 Oct 2016 21:00:56 GMT  
		Size: 98.2 MB (98229879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92564c722dde7632d00a5f9ad3479f516cb95e18117d01aeba8572d7bfb990ab`  
		Last Modified: Fri, 21 Oct 2016 21:01:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4-onbuild`

```console
$ docker pull mono@sha256:d82c560b86e9cfb4707d303b8ae909f5c9eba64e152bea11713a1b69a6fecfbb
```

-	Platforms:
	-	linux; amd64

### `mono:4-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a0c23a9f56e1e244d48f9c6b6230b06dba546dd3e6abc7ab2ec834bb51fd45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:00:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 21:01:47 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:01:47 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:01:48 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:01:48 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533ee40911bb7542df86a009dc47667e5f66c1e2d445eda949df92ea1fedb71`  
		Last Modified: Fri, 21 Oct 2016 21:00:56 GMT  
		Size: 98.2 MB (98229879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92564c722dde7632d00a5f9ad3479f516cb95e18117d01aeba8572d7bfb990ab`  
		Last Modified: Fri, 21 Oct 2016 21:01:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:onbuild`

```console
$ docker pull mono@sha256:d82c560b86e9cfb4707d303b8ae909f5c9eba64e152bea11713a1b69a6fecfbb
```

-	Platforms:
	-	linux; amd64

### `mono:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143043591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a0c23a9f56e1e244d48f9c6b6230b06dba546dd3e6abc7ab2ec834bb51fd45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:48:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 20:58:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:58:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 21 Oct 2016 21:00:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 21 Oct 2016 21:01:47 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 21 Oct 2016 21:01:47 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 21 Oct 2016 21:01:48 GMT
WORKDIR /usr/src/app/source
# Fri, 21 Oct 2016 21:01:48 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 21 Oct 2016 21:01:49 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487b1349db6cd00a9ce385db71e9a958ab1516c5b1605afac4ff675992566007`  
		Last Modified: Fri, 21 Oct 2016 21:00:29 GMT  
		Size: 7.6 MB (7569078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c310e4ed961b9ffdaaad6f239b57c710caac2542e9afb6013551cf76bd74e`  
		Last Modified: Fri, 21 Oct 2016 21:00:27 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3533ee40911bb7542df86a009dc47667e5f66c1e2d445eda949df92ea1fedb71`  
		Last Modified: Fri, 21 Oct 2016 21:00:56 GMT  
		Size: 98.2 MB (98229879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92564c722dde7632d00a5f9ad3479f516cb95e18117d01aeba8572d7bfb990ab`  
		Last Modified: Fri, 21 Oct 2016 21:01:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
