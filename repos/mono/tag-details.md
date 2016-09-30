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
$ docker pull mono@sha256:e0600e200a9dc7427e373cd5db92388edc98dbc3481928a1012b7b80461887a5
```

-	Platforms:
	-	linux; amd64

### `mono:3.10.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124561066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9af732716b183e5ff989549c838b3f5ba0631f89e97602df4a7c190757f748`
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

## `mono:3.10`

```console
$ docker pull mono@sha256:e0600e200a9dc7427e373cd5db92388edc98dbc3481928a1012b7b80461887a5
```

-	Platforms:
	-	linux; amd64

### `mono:3.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124561066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9af732716b183e5ff989549c838b3f5ba0631f89e97602df4a7c190757f748`
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
$ docker pull mono@sha256:60364b679e399a3317413ad1c83524600a664dce86fac3374f975072021bef05
```

-	Platforms:
	-	linux; amd64

### `mono:3.10-onbuild` - linux; amd64

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

## `mono:3.12.1`

```console
$ docker pull mono@sha256:e1102eb23a925be5b3efb90f30767b5d06128cd29d23b7ef436b68c71a34f4be
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125600310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3113b2eaff728c712d279924c86412b73c3573e6034f7aa84ac02d77f7dcfe`
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
# Mon, 19 Sep 2016 20:14:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:65712670119ab4e92788d7735fd31c186e291329acfb78c0dfc60b68025a7ccf`  
		Last Modified: Wed, 21 Sep 2016 17:56:32 GMT  
		Size: 80.8 MB (80801932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.0`

```console
$ docker pull mono@sha256:e1102eb23a925be5b3efb90f30767b5d06128cd29d23b7ef436b68c71a34f4be
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125600310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3113b2eaff728c712d279924c86412b73c3573e6034f7aa84ac02d77f7dcfe`
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
# Mon, 19 Sep 2016 20:14:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:65712670119ab4e92788d7735fd31c186e291329acfb78c0dfc60b68025a7ccf`  
		Last Modified: Wed, 21 Sep 2016 17:56:32 GMT  
		Size: 80.8 MB (80801932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12`

```console
$ docker pull mono@sha256:e1102eb23a925be5b3efb90f30767b5d06128cd29d23b7ef436b68c71a34f4be
```

-	Platforms:
	-	linux; amd64

### `mono:3.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125600310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3113b2eaff728c712d279924c86412b73c3573e6034f7aa84ac02d77f7dcfe`
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
# Mon, 19 Sep 2016 20:14:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:65712670119ab4e92788d7735fd31c186e291329acfb78c0dfc60b68025a7ccf`  
		Last Modified: Wed, 21 Sep 2016 17:56:32 GMT  
		Size: 80.8 MB (80801932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3`

```console
$ docker pull mono@sha256:e1102eb23a925be5b3efb90f30767b5d06128cd29d23b7ef436b68c71a34f4be
```

-	Platforms:
	-	linux; amd64

### `mono:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125600310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3113b2eaff728c712d279924c86412b73c3573e6034f7aa84ac02d77f7dcfe`
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
# Mon, 19 Sep 2016 20:14:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:65712670119ab4e92788d7735fd31c186e291329acfb78c0dfc60b68025a7ccf`  
		Last Modified: Wed, 21 Sep 2016 17:56:32 GMT  
		Size: 80.8 MB (80801932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.1-onbuild`

```console
$ docker pull mono@sha256:71fbc21618549b775bb1b3bca8128025cb96c872c19669cec16f9215aa104c45
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125600474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc4e47a6ff1c888f1453d5c13bbc8c66704b896130152ec42992814cb42a092`
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
# Mon, 19 Sep 2016 20:14:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:14:56 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:14:57 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:14:57 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:14:58 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:14:58 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:14:58 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:14:58 GMT
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
	-	`sha256:65712670119ab4e92788d7735fd31c186e291329acfb78c0dfc60b68025a7ccf`  
		Last Modified: Wed, 21 Sep 2016 17:56:32 GMT  
		Size: 80.8 MB (80801932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7d13d9db6d6c8ba4a62a3a530540117640265d65a5bb196e7dcb312d193ab9`  
		Last Modified: Wed, 21 Sep 2016 17:57:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.0-onbuild`

```console
$ docker pull mono@sha256:71fbc21618549b775bb1b3bca8128025cb96c872c19669cec16f9215aa104c45
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125600474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc4e47a6ff1c888f1453d5c13bbc8c66704b896130152ec42992814cb42a092`
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
# Mon, 19 Sep 2016 20:14:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:14:56 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:14:57 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:14:57 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:14:58 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:14:58 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:14:58 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:14:58 GMT
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
	-	`sha256:65712670119ab4e92788d7735fd31c186e291329acfb78c0dfc60b68025a7ccf`  
		Last Modified: Wed, 21 Sep 2016 17:56:32 GMT  
		Size: 80.8 MB (80801932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7d13d9db6d6c8ba4a62a3a530540117640265d65a5bb196e7dcb312d193ab9`  
		Last Modified: Wed, 21 Sep 2016 17:57:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12-onbuild`

```console
$ docker pull mono@sha256:71fbc21618549b775bb1b3bca8128025cb96c872c19669cec16f9215aa104c45
```

-	Platforms:
	-	linux; amd64

### `mono:3.12-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125600474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc4e47a6ff1c888f1453d5c13bbc8c66704b896130152ec42992814cb42a092`
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
# Mon, 19 Sep 2016 20:14:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:14:56 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:14:57 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:14:57 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:14:58 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:14:58 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:14:58 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:14:58 GMT
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
	-	`sha256:65712670119ab4e92788d7735fd31c186e291329acfb78c0dfc60b68025a7ccf`  
		Last Modified: Wed, 21 Sep 2016 17:56:32 GMT  
		Size: 80.8 MB (80801932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7d13d9db6d6c8ba4a62a3a530540117640265d65a5bb196e7dcb312d193ab9`  
		Last Modified: Wed, 21 Sep 2016 17:57:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3-onbuild`

```console
$ docker pull mono@sha256:71fbc21618549b775bb1b3bca8128025cb96c872c19669cec16f9215aa104c45
```

-	Platforms:
	-	linux; amd64

### `mono:3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125600474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc4e47a6ff1c888f1453d5c13bbc8c66704b896130152ec42992814cb42a092`
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
# Mon, 19 Sep 2016 20:14:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:14:56 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:14:57 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:14:57 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:14:58 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:14:58 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:14:58 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:14:58 GMT
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
	-	`sha256:65712670119ab4e92788d7735fd31c186e291329acfb78c0dfc60b68025a7ccf`  
		Last Modified: Wed, 21 Sep 2016 17:56:32 GMT  
		Size: 80.8 MB (80801932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7d13d9db6d6c8ba4a62a3a530540117640265d65a5bb196e7dcb312d193ab9`  
		Last Modified: Wed, 21 Sep 2016 17:57:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8.0`

```console
$ docker pull mono@sha256:9d2c3dde72cea46189dd0456c1c9cf296e5bf631f54ca928fecb214da2904c26
```

-	Platforms:
	-	linux; amd64

### `mono:3.8.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122767270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d24bf75d17a3091585e1117460e6a198f06f485cc805aefab7e0e9a556dc4df`
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
# Mon, 19 Sep 2016 20:15:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:15:58 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Mon, 19 Sep 2016 20:15:59 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
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
	-	`sha256:559c9636532b6ecc3e6e9c9aebbddd1bd540d4edae20a81fdeb7d14a445b9a65`  
		Last Modified: Wed, 21 Sep 2016 17:58:22 GMT  
		Size: 77.7 MB (77686301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd99610df18239a31273948fa4fbfdb914636bda81f0d07c1199acb0904b02ea`  
		Last Modified: Wed, 21 Sep 2016 17:57:57 GMT  
		Size: 181.5 KB (181540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291cb4de8d403c08e89756d51b364be8ba78385f1bbf25186096ae9e0fd9a2a6`  
		Last Modified: Wed, 21 Sep 2016 17:57:54 GMT  
		Size: 101.1 KB (101051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8`

```console
$ docker pull mono@sha256:9d2c3dde72cea46189dd0456c1c9cf296e5bf631f54ca928fecb214da2904c26
```

-	Platforms:
	-	linux; amd64

### `mono:3.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122767270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d24bf75d17a3091585e1117460e6a198f06f485cc805aefab7e0e9a556dc4df`
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
# Mon, 19 Sep 2016 20:15:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:15:58 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Mon, 19 Sep 2016 20:15:59 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
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
	-	`sha256:559c9636532b6ecc3e6e9c9aebbddd1bd540d4edae20a81fdeb7d14a445b9a65`  
		Last Modified: Wed, 21 Sep 2016 17:58:22 GMT  
		Size: 77.7 MB (77686301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd99610df18239a31273948fa4fbfdb914636bda81f0d07c1199acb0904b02ea`  
		Last Modified: Wed, 21 Sep 2016 17:57:57 GMT  
		Size: 181.5 KB (181540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291cb4de8d403c08e89756d51b364be8ba78385f1bbf25186096ae9e0fd9a2a6`  
		Last Modified: Wed, 21 Sep 2016 17:57:54 GMT  
		Size: 101.1 KB (101051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8.0-onbuild`

```console
$ docker pull mono@sha256:a4ed3b112b1bd3f73485ebeb68dba14537405f4f957ba7c83183663db387b6e6
```

-	Platforms:
	-	linux; amd64

### `mono:3.8.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122767433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fc350f08414881a85e4d2069bc8a462bb8ac7cb29e2d55ae465859cd562e9d4`
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
# Mon, 19 Sep 2016 20:15:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:15:58 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Mon, 19 Sep 2016 20:15:59 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Mon, 19 Sep 2016 20:15:59 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:16:00 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:16:01 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:16:01 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:16:01 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:16:01 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:16:02 GMT
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
	-	`sha256:559c9636532b6ecc3e6e9c9aebbddd1bd540d4edae20a81fdeb7d14a445b9a65`  
		Last Modified: Wed, 21 Sep 2016 17:58:22 GMT  
		Size: 77.7 MB (77686301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd99610df18239a31273948fa4fbfdb914636bda81f0d07c1199acb0904b02ea`  
		Last Modified: Wed, 21 Sep 2016 17:57:57 GMT  
		Size: 181.5 KB (181540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291cb4de8d403c08e89756d51b364be8ba78385f1bbf25186096ae9e0fd9a2a6`  
		Last Modified: Wed, 21 Sep 2016 17:57:54 GMT  
		Size: 101.1 KB (101051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a362cafa3126a49b3590c3404e64b39021a554318d55bec72a90cc8bf2c449a`  
		Last Modified: Wed, 21 Sep 2016 17:58:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8-onbuild`

```console
$ docker pull mono@sha256:a4ed3b112b1bd3f73485ebeb68dba14537405f4f957ba7c83183663db387b6e6
```

-	Platforms:
	-	linux; amd64

### `mono:3.8-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122767433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fc350f08414881a85e4d2069bc8a462bb8ac7cb29e2d55ae465859cd562e9d4`
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
# Mon, 19 Sep 2016 20:15:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:15:58 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Mon, 19 Sep 2016 20:15:59 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Mon, 19 Sep 2016 20:15:59 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:16:00 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:16:01 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:16:01 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:16:01 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:16:01 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:16:02 GMT
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
	-	`sha256:559c9636532b6ecc3e6e9c9aebbddd1bd540d4edae20a81fdeb7d14a445b9a65`  
		Last Modified: Wed, 21 Sep 2016 17:58:22 GMT  
		Size: 77.7 MB (77686301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd99610df18239a31273948fa4fbfdb914636bda81f0d07c1199acb0904b02ea`  
		Last Modified: Wed, 21 Sep 2016 17:57:57 GMT  
		Size: 181.5 KB (181540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291cb4de8d403c08e89756d51b364be8ba78385f1bbf25186096ae9e0fd9a2a6`  
		Last Modified: Wed, 21 Sep 2016 17:57:54 GMT  
		Size: 101.1 KB (101051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a362cafa3126a49b3590c3404e64b39021a554318d55bec72a90cc8bf2c449a`  
		Last Modified: Wed, 21 Sep 2016 17:58:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5.1`

```console
$ docker pull mono@sha256:6979be70fb8b772550c13a9e5cf2225b54860434dd5446293fc195a073f18d98
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227575680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16db028492cbd9e9fe8b5742c12c702e3f7dbf668f3b192e34a7c5ca560aa7e6`
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
# Mon, 19 Sep 2016 20:17:30 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1da15f79311e902a20c7deb30b5b3cc32138e03d96d64d0d58c1640e60c52132`  
		Last Modified: Wed, 21 Sep 2016 18:00:14 GMT  
		Size: 182.8 MB (182777302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5`

```console
$ docker pull mono@sha256:6979be70fb8b772550c13a9e5cf2225b54860434dd5446293fc195a073f18d98
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227575680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16db028492cbd9e9fe8b5742c12c702e3f7dbf668f3b192e34a7c5ca560aa7e6`
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
# Mon, 19 Sep 2016 20:17:30 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1da15f79311e902a20c7deb30b5b3cc32138e03d96d64d0d58c1640e60c52132`  
		Last Modified: Wed, 21 Sep 2016 18:00:14 GMT  
		Size: 182.8 MB (182777302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0`

```console
$ docker pull mono@sha256:6979be70fb8b772550c13a9e5cf2225b54860434dd5446293fc195a073f18d98
```

-	Platforms:
	-	linux; amd64

### `mono:4.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227575680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16db028492cbd9e9fe8b5742c12c702e3f7dbf668f3b192e34a7c5ca560aa7e6`
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
# Mon, 19 Sep 2016 20:17:30 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1da15f79311e902a20c7deb30b5b3cc32138e03d96d64d0d58c1640e60c52132`  
		Last Modified: Wed, 21 Sep 2016 18:00:14 GMT  
		Size: 182.8 MB (182777302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5.1-onbuild`

```console
$ docker pull mono@sha256:cd038c26cde551f76148ac336779543c27b41015066166763a6aefc4b13780e9
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227575844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543f44129538c8407fab89bae7d07befcddb12c5043ca578c9d33a37b4d1dd61`
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
# Mon, 19 Sep 2016 20:17:30 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:17:31 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:17:32 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:17:32 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:17:33 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:17:33 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:17:33 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:17:34 GMT
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
	-	`sha256:1da15f79311e902a20c7deb30b5b3cc32138e03d96d64d0d58c1640e60c52132`  
		Last Modified: Wed, 21 Sep 2016 18:00:14 GMT  
		Size: 182.8 MB (182777302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35c0eaf62c9557361f10ad98561dfe4dd04679bbc8dc6fa818cdd43751cad60`  
		Last Modified: Wed, 21 Sep 2016 18:00:49 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5-onbuild`

```console
$ docker pull mono@sha256:cd038c26cde551f76148ac336779543c27b41015066166763a6aefc4b13780e9
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227575844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543f44129538c8407fab89bae7d07befcddb12c5043ca578c9d33a37b4d1dd61`
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
# Mon, 19 Sep 2016 20:17:30 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:17:31 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:17:32 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:17:32 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:17:33 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:17:33 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:17:33 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:17:34 GMT
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
	-	`sha256:1da15f79311e902a20c7deb30b5b3cc32138e03d96d64d0d58c1640e60c52132`  
		Last Modified: Wed, 21 Sep 2016 18:00:14 GMT  
		Size: 182.8 MB (182777302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35c0eaf62c9557361f10ad98561dfe4dd04679bbc8dc6fa818cdd43751cad60`  
		Last Modified: Wed, 21 Sep 2016 18:00:49 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0-onbuild`

```console
$ docker pull mono@sha256:cd038c26cde551f76148ac336779543c27b41015066166763a6aefc4b13780e9
```

-	Platforms:
	-	linux; amd64

### `mono:4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227575844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543f44129538c8407fab89bae7d07befcddb12c5043ca578c9d33a37b4d1dd61`
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
# Mon, 19 Sep 2016 20:17:30 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:17:31 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:17:32 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:17:32 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:17:33 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:17:33 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:17:33 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:17:34 GMT
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
	-	`sha256:1da15f79311e902a20c7deb30b5b3cc32138e03d96d64d0d58c1640e60c52132`  
		Last Modified: Wed, 21 Sep 2016 18:00:14 GMT  
		Size: 182.8 MB (182777302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35c0eaf62c9557361f10ad98561dfe4dd04679bbc8dc6fa818cdd43751cad60`  
		Last Modified: Wed, 21 Sep 2016 18:00:49 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1.102`

```console
$ docker pull mono@sha256:13ec4bf015c788e35af1060ccf9a4bbb5b2da415fb8997ab290fb95421cda35e
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1.102` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229453799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197fff312ed6d912a316105603e7036e43ee501a4d6ee6c8dfd4623faa664756`
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
# Mon, 19 Sep 2016 20:18:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:74df6a997fc5d76be98507be26029122fe2dfb919ad48a6f3382d2997e85ab26`  
		Last Modified: Wed, 21 Sep 2016 18:02:21 GMT  
		Size: 184.7 MB (184655421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1`

```console
$ docker pull mono@sha256:13ec4bf015c788e35af1060ccf9a4bbb5b2da415fb8997ab290fb95421cda35e
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229453799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197fff312ed6d912a316105603e7036e43ee501a4d6ee6c8dfd4623faa664756`
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
# Mon, 19 Sep 2016 20:18:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:74df6a997fc5d76be98507be26029122fe2dfb919ad48a6f3382d2997e85ab26`  
		Last Modified: Wed, 21 Sep 2016 18:02:21 GMT  
		Size: 184.7 MB (184655421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1.102-onbuild`

```console
$ docker pull mono@sha256:e585472a85329e1895c9af751550384eada6c5a6c9c5e29a2ede6486faf18c5b
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1.102-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229453964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f730733aceae4b0d8b8e3f11e6315128dcdb8fb4a17511a1ba9d08e96c1b4d4b`
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
# Mon, 19 Sep 2016 20:18:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:18:58 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:18:59 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:18:59 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:18:59 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:18:59 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:19:00 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:19:00 GMT
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
	-	`sha256:74df6a997fc5d76be98507be26029122fe2dfb919ad48a6f3382d2997e85ab26`  
		Last Modified: Wed, 21 Sep 2016 18:02:21 GMT  
		Size: 184.7 MB (184655421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dcb79377ac3f5930c7379b5f5f79f8259a007d53f194ed4a72652313f342d20`  
		Last Modified: Wed, 21 Sep 2016 18:02:46 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1-onbuild`

```console
$ docker pull mono@sha256:e585472a85329e1895c9af751550384eada6c5a6c9c5e29a2ede6486faf18c5b
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229453964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f730733aceae4b0d8b8e3f11e6315128dcdb8fb4a17511a1ba9d08e96c1b4d4b`
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
# Mon, 19 Sep 2016 20:18:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:18:58 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:18:59 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:18:59 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:18:59 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:18:59 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:19:00 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:19:00 GMT
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
	-	`sha256:74df6a997fc5d76be98507be26029122fe2dfb919ad48a6f3382d2997e85ab26`  
		Last Modified: Wed, 21 Sep 2016 18:02:21 GMT  
		Size: 184.7 MB (184655421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dcb79377ac3f5930c7379b5f5f79f8259a007d53f194ed4a72652313f342d20`  
		Last Modified: Wed, 21 Sep 2016 18:02:46 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2.30`

```console
$ docker pull mono@sha256:e58b516b016c83d2a87e5c1ca9b79fb92aa4475996fa5afbe14f2d9dd9897ab0
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2.30` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229475336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405fade6cf70994decee0fe268089272f5621c5bf6298de6c50efb7b7524f1c9`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:20:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d570358a85e404bc87d1364a51e8a0df1c6d515cc24234995c420fab01eb2b`  
		Last Modified: Wed, 21 Sep 2016 18:04:12 GMT  
		Size: 184.7 MB (184676957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2`

```console
$ docker pull mono@sha256:e58b516b016c83d2a87e5c1ca9b79fb92aa4475996fa5afbe14f2d9dd9897ab0
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229475336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405fade6cf70994decee0fe268089272f5621c5bf6298de6c50efb7b7524f1c9`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:20:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d570358a85e404bc87d1364a51e8a0df1c6d515cc24234995c420fab01eb2b`  
		Last Modified: Wed, 21 Sep 2016 18:04:12 GMT  
		Size: 184.7 MB (184676957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2.30-onbuild`

```console
$ docker pull mono@sha256:b5ce83ad94b3f4f16a716227cce313c5858c87fca6df104cfd6e5a1b47736446
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2.30-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229475500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cccd78fa68122e08b82bb187c4c63e6483d9302cb10946edfec7a48b20473250`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:20:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:20:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:20:30 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:20:30 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:20:30 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:20:30 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:20:31 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:20:31 GMT
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d570358a85e404bc87d1364a51e8a0df1c6d515cc24234995c420fab01eb2b`  
		Last Modified: Wed, 21 Sep 2016 18:04:12 GMT  
		Size: 184.7 MB (184676957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad3ee6fa87d030f392dd467eb38a84dcf20cbf06103819e1f608d5dcbf8afff`  
		Last Modified: Wed, 21 Sep 2016 18:04:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2-onbuild`

```console
$ docker pull mono@sha256:b5ce83ad94b3f4f16a716227cce313c5858c87fca6df104cfd6e5a1b47736446
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229475500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cccd78fa68122e08b82bb187c4c63e6483d9302cb10946edfec7a48b20473250`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:20:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:20:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:20:30 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:20:30 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:20:30 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:20:30 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:20:31 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:20:31 GMT
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d570358a85e404bc87d1364a51e8a0df1c6d515cc24234995c420fab01eb2b`  
		Last Modified: Wed, 21 Sep 2016 18:04:12 GMT  
		Size: 184.7 MB (184676957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad3ee6fa87d030f392dd467eb38a84dcf20cbf06103819e1f608d5dcbf8afff`  
		Last Modified: Wed, 21 Sep 2016 18:04:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3.4`

```console
$ docker pull mono@sha256:4afb519ca48c651aa1a7c840ae9f99e6efd33f11c6dd4253a121d81ce171f13a
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229485676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc123c1b8cb998c22cc1974d2456785f1e7067a4c5ee000f81ab85b63df4a9b`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:21:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffa45ff74c367dceca21d7823c873199faf78e667045d55ccea5d426f321fe4`  
		Last Modified: Wed, 21 Sep 2016 18:06:04 GMT  
		Size: 184.7 MB (184687297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3`

```console
$ docker pull mono@sha256:4afb519ca48c651aa1a7c840ae9f99e6efd33f11c6dd4253a121d81ce171f13a
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229485676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc123c1b8cb998c22cc1974d2456785f1e7067a4c5ee000f81ab85b63df4a9b`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:21:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffa45ff74c367dceca21d7823c873199faf78e667045d55ccea5d426f321fe4`  
		Last Modified: Wed, 21 Sep 2016 18:06:04 GMT  
		Size: 184.7 MB (184687297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3.4-onbuild`

```console
$ docker pull mono@sha256:8a67d584f11c8a2bb19e9e7581e3d2196a79fd860d8ef1061f0db684c796dc2a
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3.4-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229485840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd471aa29d13f8a660424267eadf794a49c8912fc36d1ab4636de1fc6a9ed7c`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:21:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:21:54 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:21:55 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:21:55 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:21:55 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:21:55 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:21:56 GMT
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffa45ff74c367dceca21d7823c873199faf78e667045d55ccea5d426f321fe4`  
		Last Modified: Wed, 21 Sep 2016 18:06:04 GMT  
		Size: 184.7 MB (184687297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062ed84ab54d01187bf024585d716d08c878562a835188540f8ad3f721d5ab13`  
		Last Modified: Wed, 21 Sep 2016 18:06:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3-onbuild`

```console
$ docker pull mono@sha256:8a67d584f11c8a2bb19e9e7581e3d2196a79fd860d8ef1061f0db684c796dc2a
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229485840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd471aa29d13f8a660424267eadf794a49c8912fc36d1ab4636de1fc6a9ed7c`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:21:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:21:54 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:21:55 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:21:55 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:21:55 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:21:55 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:21:56 GMT
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffa45ff74c367dceca21d7823c873199faf78e667045d55ccea5d426f321fe4`  
		Last Modified: Wed, 21 Sep 2016 18:06:04 GMT  
		Size: 184.7 MB (184687297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062ed84ab54d01187bf024585d716d08c878562a835188540f8ad3f721d5ab13`  
		Last Modified: Wed, 21 Sep 2016 18:06:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4.4`

```console
$ docker pull mono@sha256:d2b9d9ba48a35b9f95c96ddb19e39aca15f9629ee12aa1df01ff432120d63a41
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229490247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d2c3fae9e9c46de237b288922b68bd11bdff0f1c1988e76995f75869872749`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:23:11 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746ddbc5a7347449106e7659411615f2132319a24147d2ae76d2f5455218653`  
		Last Modified: Wed, 21 Sep 2016 18:07:53 GMT  
		Size: 184.7 MB (184691868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4`

```console
$ docker pull mono@sha256:d2b9d9ba48a35b9f95c96ddb19e39aca15f9629ee12aa1df01ff432120d63a41
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229490247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d2c3fae9e9c46de237b288922b68bd11bdff0f1c1988e76995f75869872749`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:23:11 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746ddbc5a7347449106e7659411615f2132319a24147d2ae76d2f5455218653`  
		Last Modified: Wed, 21 Sep 2016 18:07:53 GMT  
		Size: 184.7 MB (184691868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2`

```console
$ docker pull mono@sha256:d2b9d9ba48a35b9f95c96ddb19e39aca15f9629ee12aa1df01ff432120d63a41
```

-	Platforms:
	-	linux; amd64

### `mono:4.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229490247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d2c3fae9e9c46de237b288922b68bd11bdff0f1c1988e76995f75869872749`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:23:11 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746ddbc5a7347449106e7659411615f2132319a24147d2ae76d2f5455218653`  
		Last Modified: Wed, 21 Sep 2016 18:07:53 GMT  
		Size: 184.7 MB (184691868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4.4-onbuild`

```console
$ docker pull mono@sha256:d7111646b5973fe76bdd38d4deadbed2b042e224f4fa62d059b36e69968b3c86
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4.4-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229490412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7be975ba4496eb1a5e49728a4be4601b3761bf931eb8bd23473d8183a33ab5`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:23:11 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:23:12 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:23:13 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:23:13 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:23:14 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:23:14 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:23:14 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:23:14 GMT
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746ddbc5a7347449106e7659411615f2132319a24147d2ae76d2f5455218653`  
		Last Modified: Wed, 21 Sep 2016 18:07:53 GMT  
		Size: 184.7 MB (184691868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8b2992446434769a73d81cf6733530fb328d729de5bef06036fdc68e93fd1a`  
		Last Modified: Wed, 21 Sep 2016 18:08:26 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4-onbuild`

```console
$ docker pull mono@sha256:d7111646b5973fe76bdd38d4deadbed2b042e224f4fa62d059b36e69968b3c86
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229490412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7be975ba4496eb1a5e49728a4be4601b3761bf931eb8bd23473d8183a33ab5`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:23:11 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:23:12 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:23:13 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:23:13 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:23:14 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:23:14 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:23:14 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:23:14 GMT
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746ddbc5a7347449106e7659411615f2132319a24147d2ae76d2f5455218653`  
		Last Modified: Wed, 21 Sep 2016 18:07:53 GMT  
		Size: 184.7 MB (184691868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8b2992446434769a73d81cf6733530fb328d729de5bef06036fdc68e93fd1a`  
		Last Modified: Wed, 21 Sep 2016 18:08:26 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2-onbuild`

```console
$ docker pull mono@sha256:d7111646b5973fe76bdd38d4deadbed2b042e224f4fa62d059b36e69968b3c86
```

-	Platforms:
	-	linux; amd64

### `mono:4.2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229490412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7be975ba4496eb1a5e49728a4be4601b3761bf931eb8bd23473d8183a33ab5`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 20:23:11 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:23:12 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 20:23:13 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 20:23:13 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 20:23:14 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 20:23:14 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 20:23:14 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 20:23:14 GMT
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746ddbc5a7347449106e7659411615f2132319a24147d2ae76d2f5455218653`  
		Last Modified: Wed, 21 Sep 2016 18:07:53 GMT  
		Size: 184.7 MB (184691868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8b2992446434769a73d81cf6733530fb328d729de5bef06036fdc68e93fd1a`  
		Last Modified: Wed, 21 Sep 2016 18:08:26 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0.182`

```console
$ docker pull mono@sha256:1712618ed0b88d658d7c007e615d778b81f8080d44b260c5d789110b6531429d
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0.182` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250593515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19bd98b938aa1330c81cc0fafd4e43193840ac0871340c11ec7c396ea4ede9c`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 21:05:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbaebfb9fdb8a3d6a7dbbe0f4ab096f98306eb940a474e73c81a0eaebe5227db`  
		Last Modified: Wed, 21 Sep 2016 18:10:06 GMT  
		Size: 205.8 MB (205795136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0`

```console
$ docker pull mono@sha256:1712618ed0b88d658d7c007e615d778b81f8080d44b260c5d789110b6531429d
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250593515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19bd98b938aa1330c81cc0fafd4e43193840ac0871340c11ec7c396ea4ede9c`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 21:05:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbaebfb9fdb8a3d6a7dbbe0f4ab096f98306eb940a474e73c81a0eaebe5227db`  
		Last Modified: Wed, 21 Sep 2016 18:10:06 GMT  
		Size: 205.8 MB (205795136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0.182-onbuild`

```console
$ docker pull mono@sha256:0e02c548e8d5b6dcb6ecb11f480b48d7d5f3a31b86574c6c1dde350e4ae857b8
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0.182-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250593678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83cc3339e9a4ef00df72c019ae457ccff7f323a9d1af0119f32bab89d42cb249`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 21:05:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 19 Sep 2016 21:05:22 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:23 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 21:05:23 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 21:05:23 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 21:05:23 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 21:05:24 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 21:05:24 GMT
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbaebfb9fdb8a3d6a7dbbe0f4ab096f98306eb940a474e73c81a0eaebe5227db`  
		Last Modified: Wed, 21 Sep 2016 18:10:06 GMT  
		Size: 205.8 MB (205795136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e64934f3ed2e94abaf9ccf71b33c5f390b6195d0721452bd734e62327d4ed2`  
		Last Modified: Wed, 21 Sep 2016 18:10:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0-onbuild`

```console
$ docker pull mono@sha256:0e02c548e8d5b6dcb6ecb11f480b48d7d5f3a31b86574c6c1dde350e4ae857b8
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250593678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83cc3339e9a4ef00df72c019ae457ccff7f323a9d1af0119f32bab89d42cb249`
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
# Mon, 19 Sep 2016 20:19:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 21:05:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 19 Sep 2016 21:05:22 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:23 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 21:05:23 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 21:05:23 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 21:05:23 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 21:05:24 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 21:05:24 GMT
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
	-	`sha256:eecea79af8ceb3132d8dfd9932dc53a6d08183fab0f89dbca0a3da481360c1c0`  
		Last Modified: Wed, 21 Sep 2016 18:03:08 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbaebfb9fdb8a3d6a7dbbe0f4ab096f98306eb940a474e73c81a0eaebe5227db`  
		Last Modified: Wed, 21 Sep 2016 18:10:06 GMT  
		Size: 205.8 MB (205795136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e64934f3ed2e94abaf9ccf71b33c5f390b6195d0721452bd734e62327d4ed2`  
		Last Modified: Wed, 21 Sep 2016 18:10:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1.0`

```console
$ docker pull mono@sha256:f072d2811eb7491ddf860f916fb29ad98b8f2877a43166b92fae2821884b00a1
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250612652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d73fe112fdae957f725e7bca5bc52d2931ea6ded764880b1c8081cd37c4288d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 21:07:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f9157d2974d9519ea04726a4218490a48b7518284adae5342083403b816fc8`  
		Last Modified: Wed, 21 Sep 2016 18:12:02 GMT  
		Size: 205.8 MB (205814270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1`

```console
$ docker pull mono@sha256:f072d2811eb7491ddf860f916fb29ad98b8f2877a43166b92fae2821884b00a1
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250612652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d73fe112fdae957f725e7bca5bc52d2931ea6ded764880b1c8081cd37c4288d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 21:07:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f9157d2974d9519ea04726a4218490a48b7518284adae5342083403b816fc8`  
		Last Modified: Wed, 21 Sep 2016 18:12:02 GMT  
		Size: 205.8 MB (205814270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1.0-onbuild`

```console
$ docker pull mono@sha256:f2cdfed8390c896f6e175477c09f3d51fb50b3b7610704386982afa6330c5d27
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250612815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e55f78f486549bcc931515facc06d87ec1a434564fc9c3b966193d9a0ef3ffb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 21:07:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 19 Sep 2016 21:07:14 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:07:15 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 21:07:15 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 21:07:15 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 21:07:16 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 21:07:16 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 21:07:16 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f9157d2974d9519ea04726a4218490a48b7518284adae5342083403b816fc8`  
		Last Modified: Wed, 21 Sep 2016 18:12:02 GMT  
		Size: 205.8 MB (205814270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f808e01eb89d12193069408bf05060e36bb9195c40873731294cc021daf391`  
		Last Modified: Wed, 21 Sep 2016 18:12:33 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1-onbuild`

```console
$ docker pull mono@sha256:f2cdfed8390c896f6e175477c09f3d51fb50b3b7610704386982afa6330c5d27
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250612815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e55f78f486549bcc931515facc06d87ec1a434564fc9c3b966193d9a0ef3ffb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 21:07:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 19 Sep 2016 21:07:14 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:07:15 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Mon, 19 Sep 2016 21:07:15 GMT
WORKDIR /usr/src/app/source
# Mon, 19 Sep 2016 21:07:15 GMT
ONBUILD COPY . /usr/src/app/source
# Mon, 19 Sep 2016 21:07:16 GMT
ONBUILD RUN nuget restore -NonInteractive
# Mon, 19 Sep 2016 21:07:16 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Mon, 19 Sep 2016 21:07:16 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f9157d2974d9519ea04726a4218490a48b7518284adae5342083403b816fc8`  
		Last Modified: Wed, 21 Sep 2016 18:12:02 GMT  
		Size: 205.8 MB (205814270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f808e01eb89d12193069408bf05060e36bb9195c40873731294cc021daf391`  
		Last Modified: Wed, 21 Sep 2016 18:12:33 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2.11`

```console
$ docker pull mono@sha256:f9a8e11c28655164b4085fac12c4e304dde85011a5eee632afae9a2748299655
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250739388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a925e0881092ede9e5077afe254d7c127175dd29f8c6d0bbe2f6157e0a5bebbf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 23:14:18 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3e2800c4f56072a8020a0e8bba4284afa28ff3398faf62b66144c79b8b6312`  
		Last Modified: Wed, 21 Sep 2016 18:14:02 GMT  
		Size: 205.9 MB (205941006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2`

```console
$ docker pull mono@sha256:f9a8e11c28655164b4085fac12c4e304dde85011a5eee632afae9a2748299655
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250739388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a925e0881092ede9e5077afe254d7c127175dd29f8c6d0bbe2f6157e0a5bebbf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 23:14:18 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3e2800c4f56072a8020a0e8bba4284afa28ff3398faf62b66144c79b8b6312`  
		Last Modified: Wed, 21 Sep 2016 18:14:02 GMT  
		Size: 205.9 MB (205941006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4`

```console
$ docker pull mono@sha256:f9a8e11c28655164b4085fac12c4e304dde85011a5eee632afae9a2748299655
```

-	Platforms:
	-	linux; amd64

### `mono:4.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250739388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a925e0881092ede9e5077afe254d7c127175dd29f8c6d0bbe2f6157e0a5bebbf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 23:14:18 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3e2800c4f56072a8020a0e8bba4284afa28ff3398faf62b66144c79b8b6312`  
		Last Modified: Wed, 21 Sep 2016 18:14:02 GMT  
		Size: 205.9 MB (205941006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2.11-onbuild`

```console
$ docker pull mono@sha256:d59610f71bdeba50c01d16fab4030de679b888c5767ea336027817538c360b33
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2.11-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250739551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de63e9ba10bc313154a1b6b73f7db4a1f405fcf7a7fa39cf4d3e66b94a42da94`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 23:14:18 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 20 Sep 2016 00:04:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 20 Sep 2016 00:04:29 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 20 Sep 2016 00:04:29 GMT
WORKDIR /usr/src/app/source
# Tue, 20 Sep 2016 00:04:29 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 20 Sep 2016 00:04:29 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 20 Sep 2016 00:04:30 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 20 Sep 2016 00:04:30 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3e2800c4f56072a8020a0e8bba4284afa28ff3398faf62b66144c79b8b6312`  
		Last Modified: Wed, 21 Sep 2016 18:14:02 GMT  
		Size: 205.9 MB (205941006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe487aac5af0828d97d35798b926d6a4434c52c8b6f97aa460d5d90e697ebcf4`  
		Last Modified: Wed, 21 Sep 2016 18:14:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2-onbuild`

```console
$ docker pull mono@sha256:d59610f71bdeba50c01d16fab4030de679b888c5767ea336027817538c360b33
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250739551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de63e9ba10bc313154a1b6b73f7db4a1f405fcf7a7fa39cf4d3e66b94a42da94`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 23:14:18 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 20 Sep 2016 00:04:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 20 Sep 2016 00:04:29 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 20 Sep 2016 00:04:29 GMT
WORKDIR /usr/src/app/source
# Tue, 20 Sep 2016 00:04:29 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 20 Sep 2016 00:04:29 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 20 Sep 2016 00:04:30 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 20 Sep 2016 00:04:30 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3e2800c4f56072a8020a0e8bba4284afa28ff3398faf62b66144c79b8b6312`  
		Last Modified: Wed, 21 Sep 2016 18:14:02 GMT  
		Size: 205.9 MB (205941006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe487aac5af0828d97d35798b926d6a4434c52c8b6f97aa460d5d90e697ebcf4`  
		Last Modified: Wed, 21 Sep 2016 18:14:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4-onbuild`

```console
$ docker pull mono@sha256:d59610f71bdeba50c01d16fab4030de679b888c5767ea336027817538c360b33
```

-	Platforms:
	-	linux; amd64

### `mono:4.4-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250739551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de63e9ba10bc313154a1b6b73f7db4a1f405fcf7a7fa39cf4d3e66b94a42da94`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Sep 2016 23:14:18 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 20 Sep 2016 00:04:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 20 Sep 2016 00:04:29 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 20 Sep 2016 00:04:29 GMT
WORKDIR /usr/src/app/source
# Tue, 20 Sep 2016 00:04:29 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 20 Sep 2016 00:04:29 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 20 Sep 2016 00:04:30 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 20 Sep 2016 00:04:30 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3e2800c4f56072a8020a0e8bba4284afa28ff3398faf62b66144c79b8b6312`  
		Last Modified: Wed, 21 Sep 2016 18:14:02 GMT  
		Size: 205.9 MB (205941006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe487aac5af0828d97d35798b926d6a4434c52c8b6f97aa460d5d90e697ebcf4`  
		Last Modified: Wed, 21 Sep 2016 18:14:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0.245`

```console
$ docker pull mono@sha256:83a92fec61cb97750248e12accd8f54a337ed98a67779be9679b4fefe882113d
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0.245` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142875794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a4e90ac8a1dda8893f82170ae820b51f37268ea5247a605207eeb66e27be9f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Sep 2016 17:54:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0466fd115c268705db8b345b93c53d7da55719bb6001095ef65e1ff25c0f35`  
		Last Modified: Wed, 21 Sep 2016 18:15:39 GMT  
		Size: 98.1 MB (98077412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0`

```console
$ docker pull mono@sha256:83a92fec61cb97750248e12accd8f54a337ed98a67779be9679b4fefe882113d
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142875794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a4e90ac8a1dda8893f82170ae820b51f37268ea5247a605207eeb66e27be9f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Sep 2016 17:54:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0466fd115c268705db8b345b93c53d7da55719bb6001095ef65e1ff25c0f35`  
		Last Modified: Wed, 21 Sep 2016 18:15:39 GMT  
		Size: 98.1 MB (98077412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0.245-onbuild`

```console
$ docker pull mono@sha256:0f1b519e8ff8504fa7e87779462e7964fe4c5608949d212efccdb9703bb47e82
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0.245-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142875958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1684881bc7515d222720373079ec422dafabc64e9f1a38dd9ecffd7c4ea573de`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Sep 2016 17:54:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 21 Sep 2016 17:54:35 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 21 Sep 2016 17:54:36 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 21 Sep 2016 17:54:36 GMT
WORKDIR /usr/src/app/source
# Wed, 21 Sep 2016 17:54:36 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 21 Sep 2016 17:54:36 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 21 Sep 2016 17:54:37 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 21 Sep 2016 17:54:37 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0466fd115c268705db8b345b93c53d7da55719bb6001095ef65e1ff25c0f35`  
		Last Modified: Wed, 21 Sep 2016 18:15:39 GMT  
		Size: 98.1 MB (98077412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9cb54eaaf237db57b0cc3f7efa728493b7e4c15d6610d97fffa49f8389b7d0`  
		Last Modified: Wed, 21 Sep 2016 18:16:26 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0-onbuild`

```console
$ docker pull mono@sha256:0f1b519e8ff8504fa7e87779462e7964fe4c5608949d212efccdb9703bb47e82
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142875958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1684881bc7515d222720373079ec422dafabc64e9f1a38dd9ecffd7c4ea573de`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Sep 2016 17:54:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 21 Sep 2016 17:54:35 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 21 Sep 2016 17:54:36 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Wed, 21 Sep 2016 17:54:36 GMT
WORKDIR /usr/src/app/source
# Wed, 21 Sep 2016 17:54:36 GMT
ONBUILD COPY . /usr/src/app/source
# Wed, 21 Sep 2016 17:54:36 GMT
ONBUILD RUN nuget restore -NonInteractive
# Wed, 21 Sep 2016 17:54:37 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Wed, 21 Sep 2016 17:54:37 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0466fd115c268705db8b345b93c53d7da55719bb6001095ef65e1ff25c0f35`  
		Last Modified: Wed, 21 Sep 2016 18:15:39 GMT  
		Size: 98.1 MB (98077412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9cb54eaaf237db57b0cc3f7efa728493b7e4c15d6610d97fffa49f8389b7d0`  
		Last Modified: Wed, 21 Sep 2016 18:16:26 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1.3`

```console
$ docker pull mono@sha256:af8c88cc0855e3c8f4633413cbb24c72bb8e209e44ee7befe6bf0ee1ae8f14d1
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143029657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a744e3446a923e467f09fa90ff1fb51742ba9f2bc479d17a2f953648f69263e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 30 Sep 2016 17:01:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3330d0c1fdc2172fdf91485e0f923b76d294d7fd46f4314febc2f1fbb73d43f9`  
		Last Modified: Fri, 30 Sep 2016 17:11:59 GMT  
		Size: 98.2 MB (98231275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1`

```console
$ docker pull mono@sha256:af8c88cc0855e3c8f4633413cbb24c72bb8e209e44ee7befe6bf0ee1ae8f14d1
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143029657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a744e3446a923e467f09fa90ff1fb51742ba9f2bc479d17a2f953648f69263e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 30 Sep 2016 17:01:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3330d0c1fdc2172fdf91485e0f923b76d294d7fd46f4314febc2f1fbb73d43f9`  
		Last Modified: Fri, 30 Sep 2016 17:11:59 GMT  
		Size: 98.2 MB (98231275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6`

```console
$ docker pull mono@sha256:af8c88cc0855e3c8f4633413cbb24c72bb8e209e44ee7befe6bf0ee1ae8f14d1
```

-	Platforms:
	-	linux; amd64

### `mono:4.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143029657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a744e3446a923e467f09fa90ff1fb51742ba9f2bc479d17a2f953648f69263e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 30 Sep 2016 17:01:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3330d0c1fdc2172fdf91485e0f923b76d294d7fd46f4314febc2f1fbb73d43f9`  
		Last Modified: Fri, 30 Sep 2016 17:11:59 GMT  
		Size: 98.2 MB (98231275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4`

```console
$ docker pull mono@sha256:af8c88cc0855e3c8f4633413cbb24c72bb8e209e44ee7befe6bf0ee1ae8f14d1
```

-	Platforms:
	-	linux; amd64

### `mono:4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143029657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a744e3446a923e467f09fa90ff1fb51742ba9f2bc479d17a2f953648f69263e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 30 Sep 2016 17:01:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3330d0c1fdc2172fdf91485e0f923b76d294d7fd46f4314febc2f1fbb73d43f9`  
		Last Modified: Fri, 30 Sep 2016 17:11:59 GMT  
		Size: 98.2 MB (98231275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:af8c88cc0855e3c8f4633413cbb24c72bb8e209e44ee7befe6bf0ee1ae8f14d1
```

-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143029657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a744e3446a923e467f09fa90ff1fb51742ba9f2bc479d17a2f953648f69263e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 30 Sep 2016 17:01:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3330d0c1fdc2172fdf91485e0f923b76d294d7fd46f4314febc2f1fbb73d43f9`  
		Last Modified: Fri, 30 Sep 2016 17:11:59 GMT  
		Size: 98.2 MB (98231275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1.3-onbuild`

```console
$ docker pull mono@sha256:fa792ab6bf5e6e04761151eea7715c98766c4cf6c6e1400b3bba07b85fa795fe
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1.3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143029821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd402b5f7b4ed63c80b556319a47f09e2839946c2cef30392cc72b111d7ca3d8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 30 Sep 2016 17:01:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 30 Sep 2016 17:01:52 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 30 Sep 2016 17:01:53 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 30 Sep 2016 17:01:54 GMT
WORKDIR /usr/src/app/source
# Fri, 30 Sep 2016 17:01:54 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 30 Sep 2016 17:01:54 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 30 Sep 2016 17:01:55 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 30 Sep 2016 17:01:55 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3330d0c1fdc2172fdf91485e0f923b76d294d7fd46f4314febc2f1fbb73d43f9`  
		Last Modified: Fri, 30 Sep 2016 17:11:59 GMT  
		Size: 98.2 MB (98231275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae963cce83f924ec5c84565bd51b1517d74d731440668690532b8a88d563de7b`  
		Last Modified: Fri, 30 Sep 2016 17:12:54 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1-onbuild`

```console
$ docker pull mono@sha256:fa792ab6bf5e6e04761151eea7715c98766c4cf6c6e1400b3bba07b85fa795fe
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143029821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd402b5f7b4ed63c80b556319a47f09e2839946c2cef30392cc72b111d7ca3d8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 30 Sep 2016 17:01:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 30 Sep 2016 17:01:52 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 30 Sep 2016 17:01:53 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 30 Sep 2016 17:01:54 GMT
WORKDIR /usr/src/app/source
# Fri, 30 Sep 2016 17:01:54 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 30 Sep 2016 17:01:54 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 30 Sep 2016 17:01:55 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 30 Sep 2016 17:01:55 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3330d0c1fdc2172fdf91485e0f923b76d294d7fd46f4314febc2f1fbb73d43f9`  
		Last Modified: Fri, 30 Sep 2016 17:11:59 GMT  
		Size: 98.2 MB (98231275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae963cce83f924ec5c84565bd51b1517d74d731440668690532b8a88d563de7b`  
		Last Modified: Fri, 30 Sep 2016 17:12:54 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6-onbuild`

```console
$ docker pull mono@sha256:fa792ab6bf5e6e04761151eea7715c98766c4cf6c6e1400b3bba07b85fa795fe
```

-	Platforms:
	-	linux; amd64

### `mono:4.6-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143029821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd402b5f7b4ed63c80b556319a47f09e2839946c2cef30392cc72b111d7ca3d8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 30 Sep 2016 17:01:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 30 Sep 2016 17:01:52 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 30 Sep 2016 17:01:53 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 30 Sep 2016 17:01:54 GMT
WORKDIR /usr/src/app/source
# Fri, 30 Sep 2016 17:01:54 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 30 Sep 2016 17:01:54 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 30 Sep 2016 17:01:55 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 30 Sep 2016 17:01:55 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3330d0c1fdc2172fdf91485e0f923b76d294d7fd46f4314febc2f1fbb73d43f9`  
		Last Modified: Fri, 30 Sep 2016 17:11:59 GMT  
		Size: 98.2 MB (98231275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae963cce83f924ec5c84565bd51b1517d74d731440668690532b8a88d563de7b`  
		Last Modified: Fri, 30 Sep 2016 17:12:54 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4-onbuild`

```console
$ docker pull mono@sha256:fa792ab6bf5e6e04761151eea7715c98766c4cf6c6e1400b3bba07b85fa795fe
```

-	Platforms:
	-	linux; amd64

### `mono:4-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143029821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd402b5f7b4ed63c80b556319a47f09e2839946c2cef30392cc72b111d7ca3d8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 30 Sep 2016 17:01:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 30 Sep 2016 17:01:52 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 30 Sep 2016 17:01:53 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 30 Sep 2016 17:01:54 GMT
WORKDIR /usr/src/app/source
# Fri, 30 Sep 2016 17:01:54 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 30 Sep 2016 17:01:54 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 30 Sep 2016 17:01:55 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 30 Sep 2016 17:01:55 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3330d0c1fdc2172fdf91485e0f923b76d294d7fd46f4314febc2f1fbb73d43f9`  
		Last Modified: Fri, 30 Sep 2016 17:11:59 GMT  
		Size: 98.2 MB (98231275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae963cce83f924ec5c84565bd51b1517d74d731440668690532b8a88d563de7b`  
		Last Modified: Fri, 30 Sep 2016 17:12:54 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:onbuild`

```console
$ docker pull mono@sha256:fa792ab6bf5e6e04761151eea7715c98766c4cf6c6e1400b3bba07b85fa795fe
```

-	Platforms:
	-	linux; amd64

### `mono:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143029821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd402b5f7b4ed63c80b556319a47f09e2839946c2cef30392cc72b111d7ca3d8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:12:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 19 Sep 2016 21:05:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 21:05:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 30 Sep 2016 17:01:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 30 Sep 2016 17:01:52 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 30 Sep 2016 17:01:53 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Fri, 30 Sep 2016 17:01:54 GMT
WORKDIR /usr/src/app/source
# Fri, 30 Sep 2016 17:01:54 GMT
ONBUILD COPY . /usr/src/app/source
# Fri, 30 Sep 2016 17:01:54 GMT
ONBUILD RUN nuget restore -NonInteractive
# Fri, 30 Sep 2016 17:01:55 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Fri, 30 Sep 2016 17:01:55 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd4fae63c6a077b6d7e08b60cc62ac59c8674e444bf60eaaac99c8c202d4215`  
		Last Modified: Wed, 21 Sep 2016 18:10:58 GMT  
		Size: 7.6 MB (7554530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577c85bbb02e0673e738fb5e6e43a949778ca01877d1eb21ad13ecf754f31516`  
		Last Modified: Wed, 21 Sep 2016 18:10:57 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3330d0c1fdc2172fdf91485e0f923b76d294d7fd46f4314febc2f1fbb73d43f9`  
		Last Modified: Fri, 30 Sep 2016 17:11:59 GMT  
		Size: 98.2 MB (98231275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae963cce83f924ec5c84565bd51b1517d74d731440668690532b8a88d563de7b`  
		Last Modified: Fri, 30 Sep 2016 17:12:54 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
