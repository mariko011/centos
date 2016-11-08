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
$ docker pull mono@sha256:7f798272d55c0cd46c6e59552da49fe88e2597a060590a032c4bcead9175ffa2
```

-	Platforms:
	-	linux; amd64

### `mono:3.10.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124573604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8eb2f9107d674b02e07910da0cc7c7fae2dfbc9b2fe0fc6e7c65ac0315cf396`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:46:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:46:35 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 08 Nov 2016 20:46:36 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679764cea63f251f8c12fd7802d157418b507c89f8c7d0e727c68dac36e72685`  
		Last Modified: Tue, 08 Nov 2016 20:47:11 GMT  
		Size: 79.5 MB (79482462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23309b8eacbdab83ebe5f46c4d9b3044d467584c93c9b14264962fa364aac032`  
		Last Modified: Tue, 08 Nov 2016 20:46:48 GMT  
		Size: 181.5 KB (181538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b21c8102869b796fb1eea257f3b7401cb463132257639e5c6f5610a112cea1`  
		Last Modified: Tue, 08 Nov 2016 20:46:51 GMT  
		Size: 101.1 KB (101053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.10`

```console
$ docker pull mono@sha256:7f798272d55c0cd46c6e59552da49fe88e2597a060590a032c4bcead9175ffa2
```

-	Platforms:
	-	linux; amd64

### `mono:3.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124573604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8eb2f9107d674b02e07910da0cc7c7fae2dfbc9b2fe0fc6e7c65ac0315cf396`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:46:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:46:35 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 08 Nov 2016 20:46:36 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679764cea63f251f8c12fd7802d157418b507c89f8c7d0e727c68dac36e72685`  
		Last Modified: Tue, 08 Nov 2016 20:47:11 GMT  
		Size: 79.5 MB (79482462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23309b8eacbdab83ebe5f46c4d9b3044d467584c93c9b14264962fa364aac032`  
		Last Modified: Tue, 08 Nov 2016 20:46:48 GMT  
		Size: 181.5 KB (181538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b21c8102869b796fb1eea257f3b7401cb463132257639e5c6f5610a112cea1`  
		Last Modified: Tue, 08 Nov 2016 20:46:51 GMT  
		Size: 101.1 KB (101053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.10.0-onbuild`

```console
$ docker pull mono@sha256:d1614d9591b6538728dc96bea661cbfd5ee7a9a6aa3e51ff7e1da898cdedb46d
```

-	Platforms:
	-	linux; amd64

### `mono:3.10.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124573767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5c368f62ef3a9669edd407838e866f40b4a821192f9dc49359f7630738a8be5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:46:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:46:35 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 08 Nov 2016 20:46:36 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Tue, 08 Nov 2016 20:47:34 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:47:35 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:47:35 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:47:36 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:47:36 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:47:36 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:47:37 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679764cea63f251f8c12fd7802d157418b507c89f8c7d0e727c68dac36e72685`  
		Last Modified: Tue, 08 Nov 2016 20:47:11 GMT  
		Size: 79.5 MB (79482462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23309b8eacbdab83ebe5f46c4d9b3044d467584c93c9b14264962fa364aac032`  
		Last Modified: Tue, 08 Nov 2016 20:46:48 GMT  
		Size: 181.5 KB (181538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b21c8102869b796fb1eea257f3b7401cb463132257639e5c6f5610a112cea1`  
		Last Modified: Tue, 08 Nov 2016 20:46:51 GMT  
		Size: 101.1 KB (101053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc09aa1a0a60d0851e860c8ff1dd4204047a53c528417116e8ff6c9fa203dd3`  
		Last Modified: Tue, 08 Nov 2016 20:47:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.10-onbuild`

```console
$ docker pull mono@sha256:d1614d9591b6538728dc96bea661cbfd5ee7a9a6aa3e51ff7e1da898cdedb46d
```

-	Platforms:
	-	linux; amd64

### `mono:3.10-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124573767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5c368f62ef3a9669edd407838e866f40b4a821192f9dc49359f7630738a8be5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:46:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:46:35 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 08 Nov 2016 20:46:36 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Tue, 08 Nov 2016 20:47:34 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:47:35 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:47:35 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:47:36 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:47:36 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:47:36 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:47:37 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679764cea63f251f8c12fd7802d157418b507c89f8c7d0e727c68dac36e72685`  
		Last Modified: Tue, 08 Nov 2016 20:47:11 GMT  
		Size: 79.5 MB (79482462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23309b8eacbdab83ebe5f46c4d9b3044d467584c93c9b14264962fa364aac032`  
		Last Modified: Tue, 08 Nov 2016 20:46:48 GMT  
		Size: 181.5 KB (181538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b21c8102869b796fb1eea257f3b7401cb463132257639e5c6f5610a112cea1`  
		Last Modified: Tue, 08 Nov 2016 20:46:51 GMT  
		Size: 101.1 KB (101053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc09aa1a0a60d0851e860c8ff1dd4204047a53c528417116e8ff6c9fa203dd3`  
		Last Modified: Tue, 08 Nov 2016 20:47:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.1`

```console
$ docker pull mono@sha256:805b407fc4f1644d2b646b4b50a25d5ed2a6ac441eb2823f6a8edcf6df81feff
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125613490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f6557020bf4fa0f56f3835af85ae4e962eb6492b166ec4718653da38eebd7b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:43:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904ddc00ab51f9a6dcc0518fa247e43979b9b3aa666625bcb39d54637fa1b970`  
		Last Modified: Tue, 08 Nov 2016 20:43:55 GMT  
		Size: 80.8 MB (80804939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.0`

```console
$ docker pull mono@sha256:805b407fc4f1644d2b646b4b50a25d5ed2a6ac441eb2823f6a8edcf6df81feff
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125613490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f6557020bf4fa0f56f3835af85ae4e962eb6492b166ec4718653da38eebd7b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:43:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904ddc00ab51f9a6dcc0518fa247e43979b9b3aa666625bcb39d54637fa1b970`  
		Last Modified: Tue, 08 Nov 2016 20:43:55 GMT  
		Size: 80.8 MB (80804939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12`

```console
$ docker pull mono@sha256:805b407fc4f1644d2b646b4b50a25d5ed2a6ac441eb2823f6a8edcf6df81feff
```

-	Platforms:
	-	linux; amd64

### `mono:3.12` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125613490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f6557020bf4fa0f56f3835af85ae4e962eb6492b166ec4718653da38eebd7b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:43:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904ddc00ab51f9a6dcc0518fa247e43979b9b3aa666625bcb39d54637fa1b970`  
		Last Modified: Tue, 08 Nov 2016 20:43:55 GMT  
		Size: 80.8 MB (80804939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3`

```console
$ docker pull mono@sha256:805b407fc4f1644d2b646b4b50a25d5ed2a6ac441eb2823f6a8edcf6df81feff
```

-	Platforms:
	-	linux; amd64

### `mono:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125613490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f6557020bf4fa0f56f3835af85ae4e962eb6492b166ec4718653da38eebd7b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:43:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904ddc00ab51f9a6dcc0518fa247e43979b9b3aa666625bcb39d54637fa1b970`  
		Last Modified: Tue, 08 Nov 2016 20:43:55 GMT  
		Size: 80.8 MB (80804939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.1-onbuild`

```console
$ docker pull mono@sha256:eb3f6d4527a2c5e72bb473d2d85f2aeb71e3f5fed891950a606db39f741783ca
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125613653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f845ce722b368e74de283db1f8630c674525a97e63b3cff1c249b99c464d61f1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:43:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:44:43 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:44:44 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:44:45 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:44:45 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:44:45 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:44:46 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:44:46 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904ddc00ab51f9a6dcc0518fa247e43979b9b3aa666625bcb39d54637fa1b970`  
		Last Modified: Tue, 08 Nov 2016 20:43:55 GMT  
		Size: 80.8 MB (80804939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989ba680ef129a3cc4c8ffb385f7e770d16efd205ae62489142f2247c080d517`  
		Last Modified: Tue, 08 Nov 2016 20:44:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.0-onbuild`

```console
$ docker pull mono@sha256:eb3f6d4527a2c5e72bb473d2d85f2aeb71e3f5fed891950a606db39f741783ca
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125613653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f845ce722b368e74de283db1f8630c674525a97e63b3cff1c249b99c464d61f1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:43:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:44:43 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:44:44 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:44:45 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:44:45 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:44:45 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:44:46 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:44:46 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904ddc00ab51f9a6dcc0518fa247e43979b9b3aa666625bcb39d54637fa1b970`  
		Last Modified: Tue, 08 Nov 2016 20:43:55 GMT  
		Size: 80.8 MB (80804939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989ba680ef129a3cc4c8ffb385f7e770d16efd205ae62489142f2247c080d517`  
		Last Modified: Tue, 08 Nov 2016 20:44:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12-onbuild`

```console
$ docker pull mono@sha256:eb3f6d4527a2c5e72bb473d2d85f2aeb71e3f5fed891950a606db39f741783ca
```

-	Platforms:
	-	linux; amd64

### `mono:3.12-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125613653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f845ce722b368e74de283db1f8630c674525a97e63b3cff1c249b99c464d61f1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:43:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:44:43 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:44:44 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:44:45 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:44:45 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:44:45 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:44:46 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:44:46 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904ddc00ab51f9a6dcc0518fa247e43979b9b3aa666625bcb39d54637fa1b970`  
		Last Modified: Tue, 08 Nov 2016 20:43:55 GMT  
		Size: 80.8 MB (80804939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989ba680ef129a3cc4c8ffb385f7e770d16efd205ae62489142f2247c080d517`  
		Last Modified: Tue, 08 Nov 2016 20:44:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3-onbuild`

```console
$ docker pull mono@sha256:eb3f6d4527a2c5e72bb473d2d85f2aeb71e3f5fed891950a606db39f741783ca
```

-	Platforms:
	-	linux; amd64

### `mono:3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125613653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f845ce722b368e74de283db1f8630c674525a97e63b3cff1c249b99c464d61f1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:43:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:44:43 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:44:44 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:44:45 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:44:45 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:44:45 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:44:46 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:44:46 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904ddc00ab51f9a6dcc0518fa247e43979b9b3aa666625bcb39d54637fa1b970`  
		Last Modified: Tue, 08 Nov 2016 20:43:55 GMT  
		Size: 80.8 MB (80804939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989ba680ef129a3cc4c8ffb385f7e770d16efd205ae62489142f2247c080d517`  
		Last Modified: Tue, 08 Nov 2016 20:44:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8.0`

```console
$ docker pull mono@sha256:93790e4ed67e26b714c2f5627f50cf6e4710e60c9125b439324662e4be7b2ec0
```

-	Platforms:
	-	linux; amd64

### `mono:3.8.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122780694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70994b0dc08ecd6a145d9b67969320f68d13563270d750ce66fe3e8ba3e587e5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:49:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:49:03 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 08 Nov 2016 20:49:04 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50c31a1f57a88f90cef5900de3551d74dc610cb36d328e4c5c24cf0ccf3226a`  
		Last Modified: Tue, 08 Nov 2016 20:49:39 GMT  
		Size: 77.7 MB (77689548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683079fe352f413ce4dab1e1f0f6728a25db208d7f378bb899e47ae2b39ffe2`  
		Last Modified: Tue, 08 Nov 2016 20:49:16 GMT  
		Size: 181.5 KB (181541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a165f1e7f6e87230e08c84277ab3f72c1f7e6b1f76a3f8bf311ac7dff3c24872`  
		Last Modified: Tue, 08 Nov 2016 20:49:15 GMT  
		Size: 101.1 KB (101054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8`

```console
$ docker pull mono@sha256:93790e4ed67e26b714c2f5627f50cf6e4710e60c9125b439324662e4be7b2ec0
```

-	Platforms:
	-	linux; amd64

### `mono:3.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122780694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70994b0dc08ecd6a145d9b67969320f68d13563270d750ce66fe3e8ba3e587e5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:49:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:49:03 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 08 Nov 2016 20:49:04 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50c31a1f57a88f90cef5900de3551d74dc610cb36d328e4c5c24cf0ccf3226a`  
		Last Modified: Tue, 08 Nov 2016 20:49:39 GMT  
		Size: 77.7 MB (77689548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683079fe352f413ce4dab1e1f0f6728a25db208d7f378bb899e47ae2b39ffe2`  
		Last Modified: Tue, 08 Nov 2016 20:49:16 GMT  
		Size: 181.5 KB (181541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a165f1e7f6e87230e08c84277ab3f72c1f7e6b1f76a3f8bf311ac7dff3c24872`  
		Last Modified: Tue, 08 Nov 2016 20:49:15 GMT  
		Size: 101.1 KB (101054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8.0-onbuild`

```console
$ docker pull mono@sha256:86975d3b6a987061b62b06fded53b3ddcc5e959d26b79eb1c6866a018874b923
```

-	Platforms:
	-	linux; amd64

### `mono:3.8.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122780857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bad98481441f0fdc7c4877613b966de21d8d545f1cde864dfe78022f7f37f19`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:49:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:49:03 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 08 Nov 2016 20:49:04 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Tue, 08 Nov 2016 20:50:00 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:50:01 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:50:02 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:50:02 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:50:02 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:50:03 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:50:03 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50c31a1f57a88f90cef5900de3551d74dc610cb36d328e4c5c24cf0ccf3226a`  
		Last Modified: Tue, 08 Nov 2016 20:49:39 GMT  
		Size: 77.7 MB (77689548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683079fe352f413ce4dab1e1f0f6728a25db208d7f378bb899e47ae2b39ffe2`  
		Last Modified: Tue, 08 Nov 2016 20:49:16 GMT  
		Size: 181.5 KB (181541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a165f1e7f6e87230e08c84277ab3f72c1f7e6b1f76a3f8bf311ac7dff3c24872`  
		Last Modified: Tue, 08 Nov 2016 20:49:15 GMT  
		Size: 101.1 KB (101054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69b221e00ef6f5e93b00643b62224bd3eeb4bd06c4d5c0996d64e9a9b4a07b2`  
		Last Modified: Tue, 08 Nov 2016 20:50:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8-onbuild`

```console
$ docker pull mono@sha256:86975d3b6a987061b62b06fded53b3ddcc5e959d26b79eb1c6866a018874b923
```

-	Platforms:
	-	linux; amd64

### `mono:3.8-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122780857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bad98481441f0fdc7c4877613b966de21d8d545f1cde864dfe78022f7f37f19`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:49:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:49:03 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 08 Nov 2016 20:49:04 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Tue, 08 Nov 2016 20:50:00 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:50:01 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:50:02 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:50:02 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:50:02 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:50:03 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:50:03 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50c31a1f57a88f90cef5900de3551d74dc610cb36d328e4c5c24cf0ccf3226a`  
		Last Modified: Tue, 08 Nov 2016 20:49:39 GMT  
		Size: 77.7 MB (77689548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683079fe352f413ce4dab1e1f0f6728a25db208d7f378bb899e47ae2b39ffe2`  
		Last Modified: Tue, 08 Nov 2016 20:49:16 GMT  
		Size: 181.5 KB (181541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a165f1e7f6e87230e08c84277ab3f72c1f7e6b1f76a3f8bf311ac7dff3c24872`  
		Last Modified: Tue, 08 Nov 2016 20:49:15 GMT  
		Size: 101.1 KB (101054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69b221e00ef6f5e93b00643b62224bd3eeb4bd06c4d5c0996d64e9a9b4a07b2`  
		Last Modified: Tue, 08 Nov 2016 20:50:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5.1`

```console
$ docker pull mono@sha256:8ebf3bd7a7859d89353ac7536f45da1855f857bf1dec370a355a0b5e98887bad
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227591908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f255a2269b799b5641bd5fb945e9ae3b7200ab955f5606930e0210e5192b6b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:56:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d0f26a875f15cfc5332c203e9c5f0b9ff883ce6e4589c41c2bb91895850191`  
		Last Modified: Tue, 08 Nov 2016 20:57:17 GMT  
		Size: 182.8 MB (182783357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5`

```console
$ docker pull mono@sha256:8ebf3bd7a7859d89353ac7536f45da1855f857bf1dec370a355a0b5e98887bad
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227591908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f255a2269b799b5641bd5fb945e9ae3b7200ab955f5606930e0210e5192b6b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:56:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d0f26a875f15cfc5332c203e9c5f0b9ff883ce6e4589c41c2bb91895850191`  
		Last Modified: Tue, 08 Nov 2016 20:57:17 GMT  
		Size: 182.8 MB (182783357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0`

```console
$ docker pull mono@sha256:8ebf3bd7a7859d89353ac7536f45da1855f857bf1dec370a355a0b5e98887bad
```

-	Platforms:
	-	linux; amd64

### `mono:4.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227591908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f255a2269b799b5641bd5fb945e9ae3b7200ab955f5606930e0210e5192b6b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:56:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d0f26a875f15cfc5332c203e9c5f0b9ff883ce6e4589c41c2bb91895850191`  
		Last Modified: Tue, 08 Nov 2016 20:57:17 GMT  
		Size: 182.8 MB (182783357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5.1-onbuild`

```console
$ docker pull mono@sha256:145bc0c07cbd36258fda1b1c78351b5180374137d56db9e098f67a107c83be65
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227592071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f38452b160bef8a7666443775ec18e6ad127ff20c4dbe4463ed3bdc8e73755a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:56:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:57:53 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:57:54 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:57:54 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:57:54 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:57:55 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:57:55 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:57:55 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d0f26a875f15cfc5332c203e9c5f0b9ff883ce6e4589c41c2bb91895850191`  
		Last Modified: Tue, 08 Nov 2016 20:57:17 GMT  
		Size: 182.8 MB (182783357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cdb9906f139644b3c59834634280079f873661faef54d34bedb1d355076f0a9`  
		Last Modified: Tue, 08 Nov 2016 20:58:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5-onbuild`

```console
$ docker pull mono@sha256:145bc0c07cbd36258fda1b1c78351b5180374137d56db9e098f67a107c83be65
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227592071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f38452b160bef8a7666443775ec18e6ad127ff20c4dbe4463ed3bdc8e73755a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:56:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:57:53 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:57:54 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:57:54 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:57:54 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:57:55 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:57:55 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:57:55 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d0f26a875f15cfc5332c203e9c5f0b9ff883ce6e4589c41c2bb91895850191`  
		Last Modified: Tue, 08 Nov 2016 20:57:17 GMT  
		Size: 182.8 MB (182783357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cdb9906f139644b3c59834634280079f873661faef54d34bedb1d355076f0a9`  
		Last Modified: Tue, 08 Nov 2016 20:58:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0-onbuild`

```console
$ docker pull mono@sha256:145bc0c07cbd36258fda1b1c78351b5180374137d56db9e098f67a107c83be65
```

-	Platforms:
	-	linux; amd64

### `mono:4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227592071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f38452b160bef8a7666443775ec18e6ad127ff20c4dbe4463ed3bdc8e73755a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:56:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:57:53 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:57:54 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:57:54 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:57:54 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:57:55 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:57:55 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:57:55 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d0f26a875f15cfc5332c203e9c5f0b9ff883ce6e4589c41c2bb91895850191`  
		Last Modified: Tue, 08 Nov 2016 20:57:17 GMT  
		Size: 182.8 MB (182783357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cdb9906f139644b3c59834634280079f873661faef54d34bedb1d355076f0a9`  
		Last Modified: Tue, 08 Nov 2016 20:58:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1.102`

```console
$ docker pull mono@sha256:9e4140d373ec177672fd6af21a90364e1042150eaee066639657fcbcc5f17a60
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1.102` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229481269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3135be0ebaf0a3cb9bf501f96912a4ab260710ce554d147d923d08595a989013`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:04:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7c55fd5791b284c33d7349c8fda5466c7099574652d307010374a56f4dbf6`  
		Last Modified: Tue, 08 Nov 2016 21:05:27 GMT  
		Size: 184.7 MB (184672718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1`

```console
$ docker pull mono@sha256:9e4140d373ec177672fd6af21a90364e1042150eaee066639657fcbcc5f17a60
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229481269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3135be0ebaf0a3cb9bf501f96912a4ab260710ce554d147d923d08595a989013`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:04:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7c55fd5791b284c33d7349c8fda5466c7099574652d307010374a56f4dbf6`  
		Last Modified: Tue, 08 Nov 2016 21:05:27 GMT  
		Size: 184.7 MB (184672718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1.102-onbuild`

```console
$ docker pull mono@sha256:d55150dd05362abe6e60988ae62a88e8d9c83ce34260f682b42145afbba96d0e
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1.102-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229481433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b04a6a76fbc4eddbf48da8df70ce9b90deb1edbbead214634b73592195d0752`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:04:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:05:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 21:05:50 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 21:05:50 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 21:05:51 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 21:05:51 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 21:05:51 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 21:05:52 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7c55fd5791b284c33d7349c8fda5466c7099574652d307010374a56f4dbf6`  
		Last Modified: Tue, 08 Nov 2016 21:05:27 GMT  
		Size: 184.7 MB (184672718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22169efb5f88b8b47c0a10aa553700af567861b8bc3a73447050eb5e4ca6b4bc`  
		Last Modified: Tue, 08 Nov 2016 21:06:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1-onbuild`

```console
$ docker pull mono@sha256:d55150dd05362abe6e60988ae62a88e8d9c83ce34260f682b42145afbba96d0e
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229481433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b04a6a76fbc4eddbf48da8df70ce9b90deb1edbbead214634b73592195d0752`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:42:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:04:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:05:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 21:05:50 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 21:05:50 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 21:05:51 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 21:05:51 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 21:05:51 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 21:05:52 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17f395963244717ef7d334b1e23a21956642e9cfcfd7824f330fe88a036d68`  
		Last Modified: Tue, 08 Nov 2016 20:43:29 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7c55fd5791b284c33d7349c8fda5466c7099574652d307010374a56f4dbf6`  
		Last Modified: Tue, 08 Nov 2016 21:05:27 GMT  
		Size: 184.7 MB (184672718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22169efb5f88b8b47c0a10aa553700af567861b8bc3a73447050eb5e4ca6b4bc`  
		Last Modified: Tue, 08 Nov 2016 21:06:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2.30`

```console
$ docker pull mono@sha256:baa51ebac36d77906e936501ae3d6b87d528e12b1b05b102244a8f09dd579c92
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2.30` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229501617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0a561cdb39e0bc3e13b2cf92a65d0aaa2341860bb1cd01f2eff6013728c266`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:07:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58820c2e54c01ba57b46ae516d819a3da415436e75791bfb31bafa06d436abc3`  
		Last Modified: Tue, 08 Nov 2016 21:09:01 GMT  
		Size: 184.7 MB (184693065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2`

```console
$ docker pull mono@sha256:baa51ebac36d77906e936501ae3d6b87d528e12b1b05b102244a8f09dd579c92
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229501617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0a561cdb39e0bc3e13b2cf92a65d0aaa2341860bb1cd01f2eff6013728c266`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:07:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58820c2e54c01ba57b46ae516d819a3da415436e75791bfb31bafa06d436abc3`  
		Last Modified: Tue, 08 Nov 2016 21:09:01 GMT  
		Size: 184.7 MB (184693065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2.30-onbuild`

```console
$ docker pull mono@sha256:3c17d5f4a819172f7dba0464a838108a06df0342e9f4e7a56a589a297ffec581
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2.30-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229501780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457a2c9f9c1f4327e3c216cec83cb943f2f49a86e45326843632e597820af2b0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:07:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:09:22 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 21:09:23 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 21:09:24 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 21:09:24 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 21:09:25 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 21:09:25 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 21:09:25 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58820c2e54c01ba57b46ae516d819a3da415436e75791bfb31bafa06d436abc3`  
		Last Modified: Tue, 08 Nov 2016 21:09:01 GMT  
		Size: 184.7 MB (184693065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bab6e65e717ea9965ee41e052beff5ec9ed19a80a0107628095d7890abd31c`  
		Last Modified: Tue, 08 Nov 2016 21:09:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2-onbuild`

```console
$ docker pull mono@sha256:3c17d5f4a819172f7dba0464a838108a06df0342e9f4e7a56a589a297ffec581
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229501780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457a2c9f9c1f4327e3c216cec83cb943f2f49a86e45326843632e597820af2b0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:07:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:09:22 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 21:09:23 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 21:09:24 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 21:09:24 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 21:09:25 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 21:09:25 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 21:09:25 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58820c2e54c01ba57b46ae516d819a3da415436e75791bfb31bafa06d436abc3`  
		Last Modified: Tue, 08 Nov 2016 21:09:01 GMT  
		Size: 184.7 MB (184693065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bab6e65e717ea9965ee41e052beff5ec9ed19a80a0107628095d7890abd31c`  
		Last Modified: Tue, 08 Nov 2016 21:09:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3.4`

```console
$ docker pull mono@sha256:ba208e6dc83a168a7d01e2a0133a48841f1e0298544c8e69d4d98b66a9d0417c
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229505535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:537dc34af69f2efa6eda94f8344b20f93746c759b001b90d761a0ec0126882c4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:44:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3089c7d76857284c9db5344f5ff641a73fcf0f0e9f4b2959776f0d4fa51e05de`  
		Last Modified: Tue, 08 Nov 2016 21:45:40 GMT  
		Size: 184.7 MB (184696983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3`

```console
$ docker pull mono@sha256:ba208e6dc83a168a7d01e2a0133a48841f1e0298544c8e69d4d98b66a9d0417c
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229505535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:537dc34af69f2efa6eda94f8344b20f93746c759b001b90d761a0ec0126882c4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:44:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3089c7d76857284c9db5344f5ff641a73fcf0f0e9f4b2959776f0d4fa51e05de`  
		Last Modified: Tue, 08 Nov 2016 21:45:40 GMT  
		Size: 184.7 MB (184696983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3.4-onbuild`

```console
$ docker pull mono@sha256:9a729394edd396ef6c3e95133fc6d02c7f02f5fa369684eb6582d8c8e188c36d
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229505698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31166cdb1e6bf4eb2df8acdd37555278b2eb7552ea1dd3ea4643f029cccab26`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:44:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:46:02 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 21:46:03 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 21:46:04 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 21:46:04 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 21:46:04 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 21:46:05 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 21:46:05 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3089c7d76857284c9db5344f5ff641a73fcf0f0e9f4b2959776f0d4fa51e05de`  
		Last Modified: Tue, 08 Nov 2016 21:45:40 GMT  
		Size: 184.7 MB (184696983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729af9ba0bdc8388e73a266fa32990316c5d23cade5e68a527f734f630c7f9b0`  
		Last Modified: Tue, 08 Nov 2016 21:46:17 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3-onbuild`

```console
$ docker pull mono@sha256:9a729394edd396ef6c3e95133fc6d02c7f02f5fa369684eb6582d8c8e188c36d
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229505698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31166cdb1e6bf4eb2df8acdd37555278b2eb7552ea1dd3ea4643f029cccab26`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:44:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:46:02 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 21:46:03 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 21:46:04 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 21:46:04 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 21:46:04 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 21:46:05 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 21:46:05 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3089c7d76857284c9db5344f5ff641a73fcf0f0e9f4b2959776f0d4fa51e05de`  
		Last Modified: Tue, 08 Nov 2016 21:45:40 GMT  
		Size: 184.7 MB (184696983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729af9ba0bdc8388e73a266fa32990316c5d23cade5e68a527f734f630c7f9b0`  
		Last Modified: Tue, 08 Nov 2016 21:46:17 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4.4`

```console
$ docker pull mono@sha256:ef2124d785ed3673977038c74a65a5448d65b73ba830ba3e1056edb6954cda7b
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229508113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c95921656bf44f15d0c3fcc75d8a613d038cf60ddc406e528df506ed3d7f631`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:59:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ef62b7b333dc3a2ab381722246c55e72530b2959e9bdfb7543b026d1feb52e`  
		Last Modified: Tue, 08 Nov 2016 21:01:02 GMT  
		Size: 184.7 MB (184699561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4`

```console
$ docker pull mono@sha256:ef2124d785ed3673977038c74a65a5448d65b73ba830ba3e1056edb6954cda7b
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229508113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c95921656bf44f15d0c3fcc75d8a613d038cf60ddc406e528df506ed3d7f631`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:59:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ef62b7b333dc3a2ab381722246c55e72530b2959e9bdfb7543b026d1feb52e`  
		Last Modified: Tue, 08 Nov 2016 21:01:02 GMT  
		Size: 184.7 MB (184699561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2`

```console
$ docker pull mono@sha256:ef2124d785ed3673977038c74a65a5448d65b73ba830ba3e1056edb6954cda7b
```

-	Platforms:
	-	linux; amd64

### `mono:4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229508113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c95921656bf44f15d0c3fcc75d8a613d038cf60ddc406e528df506ed3d7f631`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:59:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ef62b7b333dc3a2ab381722246c55e72530b2959e9bdfb7543b026d1feb52e`  
		Last Modified: Tue, 08 Nov 2016 21:01:02 GMT  
		Size: 184.7 MB (184699561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4.4-onbuild`

```console
$ docker pull mono@sha256:5453dd3a15c5702273cfdf204aba909580d27b36c6af233c9abbe319474148f1
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229508276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411ae1ac201bad95ee1baa134588eb79907ded0083b93d8c02b6b56b7866b23b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:59:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:02:04 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 21:02:05 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 21:02:05 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 21:02:05 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 21:02:06 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 21:02:06 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 21:02:07 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ef62b7b333dc3a2ab381722246c55e72530b2959e9bdfb7543b026d1feb52e`  
		Last Modified: Tue, 08 Nov 2016 21:01:02 GMT  
		Size: 184.7 MB (184699561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426a197947945283768e8ac7cc461939c9754d5fe1d812da34b0520284004bac`  
		Last Modified: Tue, 08 Nov 2016 21:02:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4-onbuild`

```console
$ docker pull mono@sha256:5453dd3a15c5702273cfdf204aba909580d27b36c6af233c9abbe319474148f1
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229508276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411ae1ac201bad95ee1baa134588eb79907ded0083b93d8c02b6b56b7866b23b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:59:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:02:04 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 21:02:05 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 21:02:05 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 21:02:05 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 21:02:06 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 21:02:06 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 21:02:07 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ef62b7b333dc3a2ab381722246c55e72530b2959e9bdfb7543b026d1feb52e`  
		Last Modified: Tue, 08 Nov 2016 21:01:02 GMT  
		Size: 184.7 MB (184699561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426a197947945283768e8ac7cc461939c9754d5fe1d812da34b0520284004bac`  
		Last Modified: Tue, 08 Nov 2016 21:02:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2-onbuild`

```console
$ docker pull mono@sha256:5453dd3a15c5702273cfdf204aba909580d27b36c6af233c9abbe319474148f1
```

-	Platforms:
	-	linux; amd64

### `mono:4.2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229508276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411ae1ac201bad95ee1baa134588eb79907ded0083b93d8c02b6b56b7866b23b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 20:59:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:02:04 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 21:02:05 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 21:02:05 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 21:02:05 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 21:02:06 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 21:02:06 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 21:02:07 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ef62b7b333dc3a2ab381722246c55e72530b2959e9bdfb7543b026d1feb52e`  
		Last Modified: Tue, 08 Nov 2016 21:01:02 GMT  
		Size: 184.7 MB (184699561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426a197947945283768e8ac7cc461939c9754d5fe1d812da34b0520284004bac`  
		Last Modified: Tue, 08 Nov 2016 21:02:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0.182`

```console
$ docker pull mono@sha256:4b22fbfe7be40d400b17d7ce6ae7154d96b2d91b5622a3bff5ff24c37b3404ec
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0.182` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250618862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdfed0a9242c8837e4852e4fbd9664470aa2d9c7fdd6a535a29863f1423d57d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:52:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e01c4a7caabda912c2d0a35c2cbab98e46a4110c850d2d4d9a3c80e15473232`  
		Last Modified: Tue, 08 Nov 2016 21:53:57 GMT  
		Size: 205.8 MB (205810310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0`

```console
$ docker pull mono@sha256:4b22fbfe7be40d400b17d7ce6ae7154d96b2d91b5622a3bff5ff24c37b3404ec
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250618862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdfed0a9242c8837e4852e4fbd9664470aa2d9c7fdd6a535a29863f1423d57d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:52:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e01c4a7caabda912c2d0a35c2cbab98e46a4110c850d2d4d9a3c80e15473232`  
		Last Modified: Tue, 08 Nov 2016 21:53:57 GMT  
		Size: 205.8 MB (205810310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0.182-onbuild`

```console
$ docker pull mono@sha256:71bb3099cb35286171e11c481e80507be0eb758dc640db7e297c66418cd76a50
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0.182-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250619025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4795e8a23361eeab58a247251999748b945a3deb41f750729b59eabdfefc589a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:52:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 08 Nov 2016 21:54:25 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 21:54:26 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 21:54:26 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 21:54:26 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 21:54:27 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 21:54:27 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 21:54:27 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e01c4a7caabda912c2d0a35c2cbab98e46a4110c850d2d4d9a3c80e15473232`  
		Last Modified: Tue, 08 Nov 2016 21:53:57 GMT  
		Size: 205.8 MB (205810310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a73b682c574f66b0d6b61b3c4af81106c3a338ebe6639d2dc56f124fd05d0e8`  
		Last Modified: Tue, 08 Nov 2016 21:54:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0-onbuild`

```console
$ docker pull mono@sha256:71bb3099cb35286171e11c481e80507be0eb758dc640db7e297c66418cd76a50
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250619025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4795e8a23361eeab58a247251999748b945a3deb41f750729b59eabdfefc589a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 20:41:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:42:08 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 20:58:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 08 Nov 2016 21:52:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 08 Nov 2016 21:54:25 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 21:54:26 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 21:54:26 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 21:54:26 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 21:54:27 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 21:54:27 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 21:54:27 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868fcd8e200118f36af5941d1d754ad5fbe03821e195b2235864bf3061d9ee3`  
		Last Modified: Tue, 08 Nov 2016 20:43:32 GMT  
		Size: 7.6 MB (7570640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3670898aec5d6c36e68ab31565b972cf8406b1a74864218a7bf7d1c0c43243cd`  
		Last Modified: Tue, 08 Nov 2016 21:00:11 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e01c4a7caabda912c2d0a35c2cbab98e46a4110c850d2d4d9a3c80e15473232`  
		Last Modified: Tue, 08 Nov 2016 21:53:57 GMT  
		Size: 205.8 MB (205810310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a73b682c574f66b0d6b61b3c4af81106c3a338ebe6639d2dc56f124fd05d0e8`  
		Last Modified: Tue, 08 Nov 2016 21:54:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1.0`

```console
$ docker pull mono@sha256:cc13d234ccab7a5e2f73da858379f0fe9b455e7f2a7b997c6c3bbd125521aab8
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250624941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b9b629ccc840f11e216c278a96a41d76c9cd68086d3343988b353b10388029`
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
# Tue, 08 Nov 2016 21:56:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
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
	-	`sha256:39ae25ee8574029004ad418ebcf2f00354aab7c91aef407ea974b00f5026a7c4`  
		Last Modified: Tue, 08 Nov 2016 21:58:14 GMT  
		Size: 205.8 MB (205816392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1`

```console
$ docker pull mono@sha256:cc13d234ccab7a5e2f73da858379f0fe9b455e7f2a7b997c6c3bbd125521aab8
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250624941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b9b629ccc840f11e216c278a96a41d76c9cd68086d3343988b353b10388029`
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
# Tue, 08 Nov 2016 21:56:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
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
	-	`sha256:39ae25ee8574029004ad418ebcf2f00354aab7c91aef407ea974b00f5026a7c4`  
		Last Modified: Tue, 08 Nov 2016 21:58:14 GMT  
		Size: 205.8 MB (205816392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1.0-onbuild`

```console
$ docker pull mono@sha256:fb4e6e73c7bac15f5ea44b494f2cc315f04b1ae8e902fdefb906c2fd4231e96a
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250625104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49fbb55e0e09930042a3ff5f82145f3be287c0582446792f726934c4ae0f364`
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
# Tue, 08 Nov 2016 21:56:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 08 Nov 2016 21:58:42 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 21:58:43 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 21:58:43 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 21:58:44 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 21:58:44 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 21:58:44 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 21:58:45 GMT
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
	-	`sha256:39ae25ee8574029004ad418ebcf2f00354aab7c91aef407ea974b00f5026a7c4`  
		Last Modified: Tue, 08 Nov 2016 21:58:14 GMT  
		Size: 205.8 MB (205816392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1247203abbf02baab564e971b548d15dd7cb6701b268b9b8be0b03ac3b00b350`  
		Last Modified: Tue, 08 Nov 2016 21:58:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1-onbuild`

```console
$ docker pull mono@sha256:fb4e6e73c7bac15f5ea44b494f2cc315f04b1ae8e902fdefb906c2fd4231e96a
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250625104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49fbb55e0e09930042a3ff5f82145f3be287c0582446792f726934c4ae0f364`
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
# Tue, 08 Nov 2016 21:56:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 08 Nov 2016 21:58:42 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 21:58:43 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 21:58:43 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 21:58:44 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 21:58:44 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 21:58:44 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 21:58:45 GMT
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
	-	`sha256:39ae25ee8574029004ad418ebcf2f00354aab7c91aef407ea974b00f5026a7c4`  
		Last Modified: Tue, 08 Nov 2016 21:58:14 GMT  
		Size: 205.8 MB (205816392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1247203abbf02baab564e971b548d15dd7cb6701b268b9b8be0b03ac3b00b350`  
		Last Modified: Tue, 08 Nov 2016 21:58:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2.11`

```console
$ docker pull mono@sha256:86e0cd2e2f18ac847e9fa7c44a94b30c6f082db624f15a42e212c92823a2de0e
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250752075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6efadd6ce57d937734174e39cae185763fe13d041f7d6615d9510e71e2cbb5`
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

## `mono:4.4.2`

```console
$ docker pull mono@sha256:86e0cd2e2f18ac847e9fa7c44a94b30c6f082db624f15a42e212c92823a2de0e
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250752075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6efadd6ce57d937734174e39cae185763fe13d041f7d6615d9510e71e2cbb5`
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

## `mono:4.4`

```console
$ docker pull mono@sha256:86e0cd2e2f18ac847e9fa7c44a94b30c6f082db624f15a42e212c92823a2de0e
```

-	Platforms:
	-	linux; amd64

### `mono:4.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250752075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6efadd6ce57d937734174e39cae185763fe13d041f7d6615d9510e71e2cbb5`
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

## `mono:4.4.2.11-onbuild`

```console
$ docker pull mono@sha256:f7a047ca896f379c1141c945ceaf3641733d97a0325c283f992977da58387cf8
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2.11-onbuild` - linux; amd64

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

## `mono:4.4.2-onbuild`

```console
$ docker pull mono@sha256:f7a047ca896f379c1141c945ceaf3641733d97a0325c283f992977da58387cf8
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2-onbuild` - linux; amd64

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
$ docker pull mono@sha256:75b85a4c5ed9c199e49b95567bc4781bf8496a7b1e31d242b529df68a3105ff7
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0.245` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143040547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c3f22da5e48c1e5d9370e1202dafcd95ad82ebeb8e9b1391f4afdfd8616e8f`
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

## `mono:4.6.0`

```console
$ docker pull mono@sha256:75b85a4c5ed9c199e49b95567bc4781bf8496a7b1e31d242b529df68a3105ff7
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143040547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c3f22da5e48c1e5d9370e1202dafcd95ad82ebeb8e9b1391f4afdfd8616e8f`
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

## `mono:4.6.0.245-onbuild`

```console
$ docker pull mono@sha256:ac240ba98709c29230b797a2e6f0dc7aee0313d1eaa43ced8d194a59b4d561a2
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0.245-onbuild` - linux; amd64

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
$ docker pull mono@sha256:9a24e8780a95758ea3ad8221c43c4fd0b4688290f0aad6fbcbdce3fe3e539811
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143040549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f710498dc158423cd2f0171af2ae51d9ccfa8887eacae776e3f056018bdb8c30`
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
# Tue, 08 Nov 2016 20:51:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
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
	-	`sha256:fb627ac5bf901c71e9bace7a2454cf4694f5fafe8b3b6d383ed26c581b45422f`  
		Last Modified: Tue, 08 Nov 2016 20:52:29 GMT  
		Size: 98.2 MB (98232000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1`

```console
$ docker pull mono@sha256:9a24e8780a95758ea3ad8221c43c4fd0b4688290f0aad6fbcbdce3fe3e539811
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143040549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f710498dc158423cd2f0171af2ae51d9ccfa8887eacae776e3f056018bdb8c30`
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
# Tue, 08 Nov 2016 20:51:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
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
	-	`sha256:fb627ac5bf901c71e9bace7a2454cf4694f5fafe8b3b6d383ed26c581b45422f`  
		Last Modified: Tue, 08 Nov 2016 20:52:29 GMT  
		Size: 98.2 MB (98232000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6`

```console
$ docker pull mono@sha256:9a24e8780a95758ea3ad8221c43c4fd0b4688290f0aad6fbcbdce3fe3e539811
```

-	Platforms:
	-	linux; amd64

### `mono:4.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143040549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f710498dc158423cd2f0171af2ae51d9ccfa8887eacae776e3f056018bdb8c30`
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
# Tue, 08 Nov 2016 20:51:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
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
	-	`sha256:fb627ac5bf901c71e9bace7a2454cf4694f5fafe8b3b6d383ed26c581b45422f`  
		Last Modified: Tue, 08 Nov 2016 20:52:29 GMT  
		Size: 98.2 MB (98232000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4`

```console
$ docker pull mono@sha256:9a24e8780a95758ea3ad8221c43c4fd0b4688290f0aad6fbcbdce3fe3e539811
```

-	Platforms:
	-	linux; amd64

### `mono:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143040549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f710498dc158423cd2f0171af2ae51d9ccfa8887eacae776e3f056018bdb8c30`
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
# Tue, 08 Nov 2016 20:51:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
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
	-	`sha256:fb627ac5bf901c71e9bace7a2454cf4694f5fafe8b3b6d383ed26c581b45422f`  
		Last Modified: Tue, 08 Nov 2016 20:52:29 GMT  
		Size: 98.2 MB (98232000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:9a24e8780a95758ea3ad8221c43c4fd0b4688290f0aad6fbcbdce3fe3e539811
```

-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143040549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f710498dc158423cd2f0171af2ae51d9ccfa8887eacae776e3f056018bdb8c30`
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
# Tue, 08 Nov 2016 20:51:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
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
	-	`sha256:fb627ac5bf901c71e9bace7a2454cf4694f5fafe8b3b6d383ed26c581b45422f`  
		Last Modified: Tue, 08 Nov 2016 20:52:29 GMT  
		Size: 98.2 MB (98232000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1.3-onbuild`

```console
$ docker pull mono@sha256:63510481afbea428e4cdfd23eff088e60c0265ca03839e86622b6d38109ceff5
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143040712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee00ebfa2b73ad85f4481bf979a69274ea02744003c75706885980af036d3221`
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
# Tue, 08 Nov 2016 20:51:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 08 Nov 2016 20:53:26 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:53:27 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:53:27 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:53:27 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:53:28 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:53:28 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:53:29 GMT
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
	-	`sha256:fb627ac5bf901c71e9bace7a2454cf4694f5fafe8b3b6d383ed26c581b45422f`  
		Last Modified: Tue, 08 Nov 2016 20:52:29 GMT  
		Size: 98.2 MB (98232000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39a4ac35360b8e39a42afa3add8c3b875388e256318fe4ceddce22e497886b5`  
		Last Modified: Tue, 08 Nov 2016 20:53:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1-onbuild`

```console
$ docker pull mono@sha256:63510481afbea428e4cdfd23eff088e60c0265ca03839e86622b6d38109ceff5
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143040712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee00ebfa2b73ad85f4481bf979a69274ea02744003c75706885980af036d3221`
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
# Tue, 08 Nov 2016 20:51:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 08 Nov 2016 20:53:26 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:53:27 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:53:27 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:53:27 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:53:28 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:53:28 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:53:29 GMT
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
	-	`sha256:fb627ac5bf901c71e9bace7a2454cf4694f5fafe8b3b6d383ed26c581b45422f`  
		Last Modified: Tue, 08 Nov 2016 20:52:29 GMT  
		Size: 98.2 MB (98232000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39a4ac35360b8e39a42afa3add8c3b875388e256318fe4ceddce22e497886b5`  
		Last Modified: Tue, 08 Nov 2016 20:53:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6-onbuild`

```console
$ docker pull mono@sha256:63510481afbea428e4cdfd23eff088e60c0265ca03839e86622b6d38109ceff5
```

-	Platforms:
	-	linux; amd64

### `mono:4.6-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143040712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee00ebfa2b73ad85f4481bf979a69274ea02744003c75706885980af036d3221`
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
# Tue, 08 Nov 2016 20:51:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 08 Nov 2016 20:53:26 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:53:27 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:53:27 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:53:27 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:53:28 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:53:28 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:53:29 GMT
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
	-	`sha256:fb627ac5bf901c71e9bace7a2454cf4694f5fafe8b3b6d383ed26c581b45422f`  
		Last Modified: Tue, 08 Nov 2016 20:52:29 GMT  
		Size: 98.2 MB (98232000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39a4ac35360b8e39a42afa3add8c3b875388e256318fe4ceddce22e497886b5`  
		Last Modified: Tue, 08 Nov 2016 20:53:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4-onbuild`

```console
$ docker pull mono@sha256:63510481afbea428e4cdfd23eff088e60c0265ca03839e86622b6d38109ceff5
```

-	Platforms:
	-	linux; amd64

### `mono:4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143040712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee00ebfa2b73ad85f4481bf979a69274ea02744003c75706885980af036d3221`
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
# Tue, 08 Nov 2016 20:51:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 08 Nov 2016 20:53:26 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:53:27 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:53:27 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:53:27 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:53:28 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:53:28 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:53:29 GMT
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
	-	`sha256:fb627ac5bf901c71e9bace7a2454cf4694f5fafe8b3b6d383ed26c581b45422f`  
		Last Modified: Tue, 08 Nov 2016 20:52:29 GMT  
		Size: 98.2 MB (98232000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39a4ac35360b8e39a42afa3add8c3b875388e256318fe4ceddce22e497886b5`  
		Last Modified: Tue, 08 Nov 2016 20:53:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:onbuild`

```console
$ docker pull mono@sha256:63510481afbea428e4cdfd23eff088e60c0265ca03839e86622b6d38109ceff5
```

-	Platforms:
	-	linux; amd64

### `mono:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143040712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee00ebfa2b73ad85f4481bf979a69274ea02744003c75706885980af036d3221`
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
# Tue, 08 Nov 2016 20:51:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 08 Nov 2016 20:53:26 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 08 Nov 2016 20:53:27 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 08 Nov 2016 20:53:27 GMT
WORKDIR /usr/src/app/source
# Tue, 08 Nov 2016 20:53:27 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 08 Nov 2016 20:53:28 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 08 Nov 2016 20:53:28 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 08 Nov 2016 20:53:29 GMT
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
	-	`sha256:fb627ac5bf901c71e9bace7a2454cf4694f5fafe8b3b6d383ed26c581b45422f`  
		Last Modified: Tue, 08 Nov 2016 20:52:29 GMT  
		Size: 98.2 MB (98232000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39a4ac35360b8e39a42afa3add8c3b875388e256318fe4ceddce22e497886b5`  
		Last Modified: Tue, 08 Nov 2016 20:53:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
