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
-	[`mono:4.6.2.16`](#mono46216)
-	[`mono:4.6.2`](#mono462)
-	[`mono:4.6`](#mono46)
-	[`mono:4`](#mono4)
-	[`mono:latest`](#monolatest)
-	[`mono:4.6.2.16-onbuild`](#mono46216-onbuild)
-	[`mono:4.6.2-onbuild`](#mono462-onbuild)
-	[`mono:4.6-onbuild`](#mono46-onbuild)
-	[`mono:4-onbuild`](#mono4-onbuild)
-	[`mono:onbuild`](#monoonbuild)
-	[`mono:4.6.2.7`](#mono4627)
-	[`mono:4.6.2.7-onbuild`](#mono4627-onbuild)

## `mono:3.10.0`

```console
$ docker pull mono@sha256:f55b98abe53656a6b85625c70b9068307f91b8e30ef651308d4308569ab9c1e9
```

-	Platforms:
	-	linux; amd64

### `mono:3.10.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124796300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53523d7310475e9045e3b9b7206c4eaf285815c65a3f2c9b375adb3664fb2e3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:23:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:23:27 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 17 Jan 2017 17:23:28 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653c4d9753347801bc476059ceec0a2df1d7cc1f62d5309e97ad3304e5b8c11e`  
		Last Modified: Wed, 18 Jan 2017 04:38:29 GMT  
		Size: 79.6 MB (79552968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec058aa333ad488f859e807ecc7b866020a0b972f7358090e28657a773949e4`  
		Last Modified: Wed, 18 Jan 2017 04:37:53 GMT  
		Size: 181.5 KB (181537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2c21e05b4ca82a58770007359f147487dfb479a5060bd1e52ecda319b0ce30`  
		Last Modified: Wed, 18 Jan 2017 04:37:53 GMT  
		Size: 101.1 KB (101053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.10`

```console
$ docker pull mono@sha256:f55b98abe53656a6b85625c70b9068307f91b8e30ef651308d4308569ab9c1e9
```

-	Platforms:
	-	linux; amd64

### `mono:3.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124796300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53523d7310475e9045e3b9b7206c4eaf285815c65a3f2c9b375adb3664fb2e3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:23:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:23:27 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 17 Jan 2017 17:23:28 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653c4d9753347801bc476059ceec0a2df1d7cc1f62d5309e97ad3304e5b8c11e`  
		Last Modified: Wed, 18 Jan 2017 04:38:29 GMT  
		Size: 79.6 MB (79552968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec058aa333ad488f859e807ecc7b866020a0b972f7358090e28657a773949e4`  
		Last Modified: Wed, 18 Jan 2017 04:37:53 GMT  
		Size: 181.5 KB (181537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2c21e05b4ca82a58770007359f147487dfb479a5060bd1e52ecda319b0ce30`  
		Last Modified: Wed, 18 Jan 2017 04:37:53 GMT  
		Size: 101.1 KB (101053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.10.0-onbuild`

```console
$ docker pull mono@sha256:ca80b705597a2d863fbec749f05fdc51f104eb7eca169d0f0e630f6346cf019f
```

-	Platforms:
	-	linux; amd64

### `mono:3.10.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124796464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71647f01297fb254fb1ed066f4b483de5188664a36034024d6f7b1406d0fc7bf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:23:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:23:27 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 17 Jan 2017 17:23:28 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Tue, 17 Jan 2017 17:23:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:23:30 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:23:31 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:23:31 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:23:31 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:23:31 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:23:32 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653c4d9753347801bc476059ceec0a2df1d7cc1f62d5309e97ad3304e5b8c11e`  
		Last Modified: Wed, 18 Jan 2017 04:38:29 GMT  
		Size: 79.6 MB (79552968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec058aa333ad488f859e807ecc7b866020a0b972f7358090e28657a773949e4`  
		Last Modified: Wed, 18 Jan 2017 04:37:53 GMT  
		Size: 181.5 KB (181537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2c21e05b4ca82a58770007359f147487dfb479a5060bd1e52ecda319b0ce30`  
		Last Modified: Wed, 18 Jan 2017 04:37:53 GMT  
		Size: 101.1 KB (101053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa8ba90c47378bf01c09ba866096858b73993ce7a2913fcd254b810b0ca7ec`  
		Last Modified: Wed, 18 Jan 2017 04:39:04 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.10-onbuild`

```console
$ docker pull mono@sha256:ca80b705597a2d863fbec749f05fdc51f104eb7eca169d0f0e630f6346cf019f
```

-	Platforms:
	-	linux; amd64

### `mono:3.10-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124796464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71647f01297fb254fb1ed066f4b483de5188664a36034024d6f7b1406d0fc7bf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:23:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.10.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 310-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:23:27 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 17 Jan 2017 17:23:28 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Tue, 17 Jan 2017 17:23:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:23:30 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:23:31 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:23:31 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:23:31 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:23:31 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:23:32 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653c4d9753347801bc476059ceec0a2df1d7cc1f62d5309e97ad3304e5b8c11e`  
		Last Modified: Wed, 18 Jan 2017 04:38:29 GMT  
		Size: 79.6 MB (79552968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec058aa333ad488f859e807ecc7b866020a0b972f7358090e28657a773949e4`  
		Last Modified: Wed, 18 Jan 2017 04:37:53 GMT  
		Size: 181.5 KB (181537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2c21e05b4ca82a58770007359f147487dfb479a5060bd1e52ecda319b0ce30`  
		Last Modified: Wed, 18 Jan 2017 04:37:53 GMT  
		Size: 101.1 KB (101053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa8ba90c47378bf01c09ba866096858b73993ce7a2913fcd254b810b0ca7ec`  
		Last Modified: Wed, 18 Jan 2017 04:39:04 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.1`

```console
$ docker pull mono@sha256:e506420df30c12db3ca6aadf5cf2f9cc9b6fb39f9940af46d3104fd5c63bcd7b
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125838668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f3ab6b552bd5ee08ff7c0cb3390f5db570720f7a13360af6a413e151d17ef3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:22:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcca8679b6170f1797855353f60011e62f39f1ecfb6ecabf69ef646ed7f61d6d`  
		Last Modified: Wed, 18 Jan 2017 04:40:11 GMT  
		Size: 80.9 MB (80877926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.0`

```console
$ docker pull mono@sha256:e506420df30c12db3ca6aadf5cf2f9cc9b6fb39f9940af46d3104fd5c63bcd7b
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125838668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f3ab6b552bd5ee08ff7c0cb3390f5db570720f7a13360af6a413e151d17ef3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:22:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcca8679b6170f1797855353f60011e62f39f1ecfb6ecabf69ef646ed7f61d6d`  
		Last Modified: Wed, 18 Jan 2017 04:40:11 GMT  
		Size: 80.9 MB (80877926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12`

```console
$ docker pull mono@sha256:e506420df30c12db3ca6aadf5cf2f9cc9b6fb39f9940af46d3104fd5c63bcd7b
```

-	Platforms:
	-	linux; amd64

### `mono:3.12` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125838668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f3ab6b552bd5ee08ff7c0cb3390f5db570720f7a13360af6a413e151d17ef3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:22:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcca8679b6170f1797855353f60011e62f39f1ecfb6ecabf69ef646ed7f61d6d`  
		Last Modified: Wed, 18 Jan 2017 04:40:11 GMT  
		Size: 80.9 MB (80877926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3`

```console
$ docker pull mono@sha256:e506420df30c12db3ca6aadf5cf2f9cc9b6fb39f9940af46d3104fd5c63bcd7b
```

-	Platforms:
	-	linux; amd64

### `mono:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125838668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f3ab6b552bd5ee08ff7c0cb3390f5db570720f7a13360af6a413e151d17ef3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:22:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcca8679b6170f1797855353f60011e62f39f1ecfb6ecabf69ef646ed7f61d6d`  
		Last Modified: Wed, 18 Jan 2017 04:40:11 GMT  
		Size: 80.9 MB (80877926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.1-onbuild`

```console
$ docker pull mono@sha256:2e419e736dcccc3f1e696c5813f4f3f339d3a9c3d3283297a91efcf8e498f5d0
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125838832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8152a41b80c954a105cb39349f937317400f4f54eb2de56422e534052b6c57`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:22:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:50 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:22:50 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:22:50 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:22:51 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:22:51 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:22:51 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcca8679b6170f1797855353f60011e62f39f1ecfb6ecabf69ef646ed7f61d6d`  
		Last Modified: Wed, 18 Jan 2017 04:40:11 GMT  
		Size: 80.9 MB (80877926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0ebafc884426811b597ecdfb608833e5d969e166a715f9a54d812579a17463`  
		Last Modified: Wed, 18 Jan 2017 04:41:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.0-onbuild`

```console
$ docker pull mono@sha256:2e419e736dcccc3f1e696c5813f4f3f339d3a9c3d3283297a91efcf8e498f5d0
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125838832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8152a41b80c954a105cb39349f937317400f4f54eb2de56422e534052b6c57`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:22:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:50 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:22:50 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:22:50 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:22:51 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:22:51 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:22:51 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcca8679b6170f1797855353f60011e62f39f1ecfb6ecabf69ef646ed7f61d6d`  
		Last Modified: Wed, 18 Jan 2017 04:40:11 GMT  
		Size: 80.9 MB (80877926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0ebafc884426811b597ecdfb608833e5d969e166a715f9a54d812579a17463`  
		Last Modified: Wed, 18 Jan 2017 04:41:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12-onbuild`

```console
$ docker pull mono@sha256:2e419e736dcccc3f1e696c5813f4f3f339d3a9c3d3283297a91efcf8e498f5d0
```

-	Platforms:
	-	linux; amd64

### `mono:3.12-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125838832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8152a41b80c954a105cb39349f937317400f4f54eb2de56422e534052b6c57`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:22:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:50 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:22:50 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:22:50 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:22:51 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:22:51 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:22:51 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcca8679b6170f1797855353f60011e62f39f1ecfb6ecabf69ef646ed7f61d6d`  
		Last Modified: Wed, 18 Jan 2017 04:40:11 GMT  
		Size: 80.9 MB (80877926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0ebafc884426811b597ecdfb608833e5d969e166a715f9a54d812579a17463`  
		Last Modified: Wed, 18 Jan 2017 04:41:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3-onbuild`

```console
$ docker pull mono@sha256:2e419e736dcccc3f1e696c5813f4f3f339d3a9c3d3283297a91efcf8e498f5d0
```

-	Platforms:
	-	linux; amd64

### `mono:3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125838832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8152a41b80c954a105cb39349f937317400f4f54eb2de56422e534052b6c57`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:22:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:50 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:22:50 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:22:50 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:22:51 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:22:51 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:22:51 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcca8679b6170f1797855353f60011e62f39f1ecfb6ecabf69ef646ed7f61d6d`  
		Last Modified: Wed, 18 Jan 2017 04:40:11 GMT  
		Size: 80.9 MB (80877926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0ebafc884426811b597ecdfb608833e5d969e166a715f9a54d812579a17463`  
		Last Modified: Wed, 18 Jan 2017 04:41:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8.0`

```console
$ docker pull mono@sha256:79d65189be7838ec69c77ddb9e34e39d0ffd09fc94626b5f02eb79a7e708e8d4
```

-	Platforms:
	-	linux; amd64

### `mono:3.8.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123004098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f3377880feb7e354456686e2be9b15f6c59aafae767e5c2350545c5e447d2b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:24:10 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:24:12 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 17 Jan 2017 17:24:13 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046ec9576fd65eb7cea0d770aba0028d5f48f39755221aa968943d35b7790ddb`  
		Last Modified: Wed, 18 Jan 2017 04:42:49 GMT  
		Size: 77.8 MB (77760762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b20765473688f9f145d3328956012753997ef4fcf83dbf52b625645c38b476`  
		Last Modified: Wed, 18 Jan 2017 04:42:16 GMT  
		Size: 181.5 KB (181536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c8dadcf51a5b9ef3d74ac6229165c2d4a5d1ddd4e19489840f0a2d2526d2a0`  
		Last Modified: Wed, 18 Jan 2017 04:42:16 GMT  
		Size: 101.1 KB (101058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8`

```console
$ docker pull mono@sha256:79d65189be7838ec69c77ddb9e34e39d0ffd09fc94626b5f02eb79a7e708e8d4
```

-	Platforms:
	-	linux; amd64

### `mono:3.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123004098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f3377880feb7e354456686e2be9b15f6c59aafae767e5c2350545c5e447d2b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:24:10 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:24:12 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 17 Jan 2017 17:24:13 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046ec9576fd65eb7cea0d770aba0028d5f48f39755221aa968943d35b7790ddb`  
		Last Modified: Wed, 18 Jan 2017 04:42:49 GMT  
		Size: 77.8 MB (77760762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b20765473688f9f145d3328956012753997ef4fcf83dbf52b625645c38b476`  
		Last Modified: Wed, 18 Jan 2017 04:42:16 GMT  
		Size: 181.5 KB (181536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c8dadcf51a5b9ef3d74ac6229165c2d4a5d1ddd4e19489840f0a2d2526d2a0`  
		Last Modified: Wed, 18 Jan 2017 04:42:16 GMT  
		Size: 101.1 KB (101058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8.0-onbuild`

```console
$ docker pull mono@sha256:a798f2f4b71c8c0fb4df8c6e0f4a4ab7ce2ecc9f4cccf40b0063ad10203560e2
```

-	Platforms:
	-	linux; amd64

### `mono:3.8.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123004262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c430a28b8537bf536150503b41f31b5d3aeddf13eb200348cda155e92db258b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:24:10 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:24:12 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 17 Jan 2017 17:24:13 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Tue, 17 Jan 2017 17:24:13 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:24:14 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:24:14 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:24:15 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:24:15 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:24:15 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:24:15 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046ec9576fd65eb7cea0d770aba0028d5f48f39755221aa968943d35b7790ddb`  
		Last Modified: Wed, 18 Jan 2017 04:42:49 GMT  
		Size: 77.8 MB (77760762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b20765473688f9f145d3328956012753997ef4fcf83dbf52b625645c38b476`  
		Last Modified: Wed, 18 Jan 2017 04:42:16 GMT  
		Size: 181.5 KB (181536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c8dadcf51a5b9ef3d74ac6229165c2d4a5d1ddd4e19489840f0a2d2526d2a0`  
		Last Modified: Wed, 18 Jan 2017 04:42:16 GMT  
		Size: 101.1 KB (101058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39577e81afd1b110e7300189d900de6afa58e5f599a2e2713e1975663e0f5186`  
		Last Modified: Wed, 18 Jan 2017 04:43:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.8-onbuild`

```console
$ docker pull mono@sha256:a798f2f4b71c8c0fb4df8c6e0f4a4ab7ce2ecc9f4cccf40b0063ad10203560e2
```

-	Platforms:
	-	linux; amd64

### `mono:3.8-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123004262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c430a28b8537bf536150503b41f31b5d3aeddf13eb200348cda155e92db258b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:24:10 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.8.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 38-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:24:12 GMT
RUN curl -L -o /tmp/certdata.txt https://hg.mozilla.org/releases/mozilla-release/raw-file/5d447d9abfdf/security/nss/lib/ckfw/builtins/certdata.txt
# Tue, 17 Jan 2017 17:24:13 GMT
RUN mozroots --machine --import --sync --quiet --file /tmp/certdata.txt
# Tue, 17 Jan 2017 17:24:13 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:24:14 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:24:14 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:24:15 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:24:15 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:24:15 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:24:15 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046ec9576fd65eb7cea0d770aba0028d5f48f39755221aa968943d35b7790ddb`  
		Last Modified: Wed, 18 Jan 2017 04:42:49 GMT  
		Size: 77.8 MB (77760762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b20765473688f9f145d3328956012753997ef4fcf83dbf52b625645c38b476`  
		Last Modified: Wed, 18 Jan 2017 04:42:16 GMT  
		Size: 181.5 KB (181536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c8dadcf51a5b9ef3d74ac6229165c2d4a5d1ddd4e19489840f0a2d2526d2a0`  
		Last Modified: Wed, 18 Jan 2017 04:42:16 GMT  
		Size: 101.1 KB (101058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39577e81afd1b110e7300189d900de6afa58e5f599a2e2713e1975663e0f5186`  
		Last Modified: Wed, 18 Jan 2017 04:43:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5.1`

```console
$ docker pull mono@sha256:4e4f325d0395052d66f31657d2a64ba42825e78822b1aacce0d1c141551e871c
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.8 MB (227815124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0616fc843ce24b039a2a714d047c3a06333e56eedadb373b21c58a0b66bbf3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:27:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a166d7e19d61d90806a7ed833a74b7944b043c6a632acedae480c4b0e398b49`  
		Last Modified: Wed, 18 Jan 2017 04:45:16 GMT  
		Size: 182.9 MB (182854382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5`

```console
$ docker pull mono@sha256:4e4f325d0395052d66f31657d2a64ba42825e78822b1aacce0d1c141551e871c
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.8 MB (227815124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0616fc843ce24b039a2a714d047c3a06333e56eedadb373b21c58a0b66bbf3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:27:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a166d7e19d61d90806a7ed833a74b7944b043c6a632acedae480c4b0e398b49`  
		Last Modified: Wed, 18 Jan 2017 04:45:16 GMT  
		Size: 182.9 MB (182854382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0`

```console
$ docker pull mono@sha256:4e4f325d0395052d66f31657d2a64ba42825e78822b1aacce0d1c141551e871c
```

-	Platforms:
	-	linux; amd64

### `mono:4.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.8 MB (227815124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0616fc843ce24b039a2a714d047c3a06333e56eedadb373b21c58a0b66bbf3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:27:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a166d7e19d61d90806a7ed833a74b7944b043c6a632acedae480c4b0e398b49`  
		Last Modified: Wed, 18 Jan 2017 04:45:16 GMT  
		Size: 182.9 MB (182854382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5.1-onbuild`

```console
$ docker pull mono@sha256:f6eb2856945ab6df1af0217d79a35dc816b7b556bb9935c2929d6acabd7f105d
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.8 MB (227815288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1699948fc3efaf953bfae2e7836cfd0813300c0bc1a1ddc7b11361fbea167fb7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:27:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:11 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:27:11 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:27:12 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:27:12 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:27:12 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:27:13 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:27:13 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a166d7e19d61d90806a7ed833a74b7944b043c6a632acedae480c4b0e398b49`  
		Last Modified: Wed, 18 Jan 2017 04:45:16 GMT  
		Size: 182.9 MB (182854382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2774727481d895f60867a359a7768b1fdfa6f5501267452598cc72ad43ae5`  
		Last Modified: Wed, 18 Jan 2017 04:46:04 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0.5-onbuild`

```console
$ docker pull mono@sha256:f6eb2856945ab6df1af0217d79a35dc816b7b556bb9935c2929d6acabd7f105d
```

-	Platforms:
	-	linux; amd64

### `mono:4.0.5-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.8 MB (227815288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1699948fc3efaf953bfae2e7836cfd0813300c0bc1a1ddc7b11361fbea167fb7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:27:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:11 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:27:11 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:27:12 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:27:12 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:27:12 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:27:13 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:27:13 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a166d7e19d61d90806a7ed833a74b7944b043c6a632acedae480c4b0e398b49`  
		Last Modified: Wed, 18 Jan 2017 04:45:16 GMT  
		Size: 182.9 MB (182854382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2774727481d895f60867a359a7768b1fdfa6f5501267452598cc72ad43ae5`  
		Last Modified: Wed, 18 Jan 2017 04:46:04 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.0-onbuild`

```console
$ docker pull mono@sha256:f6eb2856945ab6df1af0217d79a35dc816b7b556bb9935c2929d6acabd7f105d
```

-	Platforms:
	-	linux; amd64

### `mono:4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.8 MB (227815288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1699948fc3efaf953bfae2e7836cfd0813300c0bc1a1ddc7b11361fbea167fb7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:27:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.0.5.1 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 40-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:11 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:27:11 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:27:12 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:27:12 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:27:12 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:27:13 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:27:13 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a166d7e19d61d90806a7ed833a74b7944b043c6a632acedae480c4b0e398b49`  
		Last Modified: Wed, 18 Jan 2017 04:45:16 GMT  
		Size: 182.9 MB (182854382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2774727481d895f60867a359a7768b1fdfa6f5501267452598cc72ad43ae5`  
		Last Modified: Wed, 18 Jan 2017 04:46:04 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1.102`

```console
$ docker pull mono@sha256:030822a6f4e59bebbfb2a6f46764929f662e3dff7d8c2c7a126b62fbb73bfdee
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1.102` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229705499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac30759224c26a43f599a8fe6aaf07fd018b35f01617f096d93eb0b9d5d5c4ac`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:30:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f38563b32ee8c4f5fd8456d2fe3bd1f7007672f30ee5fd345efd852f05d8c4`  
		Last Modified: Wed, 18 Jan 2017 04:48:09 GMT  
		Size: 184.7 MB (184744757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1`

```console
$ docker pull mono@sha256:030822a6f4e59bebbfb2a6f46764929f662e3dff7d8c2c7a126b62fbb73bfdee
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229705499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac30759224c26a43f599a8fe6aaf07fd018b35f01617f096d93eb0b9d5d5c4ac`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:30:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f38563b32ee8c4f5fd8456d2fe3bd1f7007672f30ee5fd345efd852f05d8c4`  
		Last Modified: Wed, 18 Jan 2017 04:48:09 GMT  
		Size: 184.7 MB (184744757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1.102-onbuild`

```console
$ docker pull mono@sha256:dfe113d222c9c1b31fe807936412fdb82fe5fcea130370ef799368e165926061
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1.102-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229705663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1b4e661741662bb1e3250a16e3dd9c76ca1ad943b69505ce8457f094f7fd74`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:30:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:30:21 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:30:22 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:30:23 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:30:23 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:30:23 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:30:24 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:30:24 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f38563b32ee8c4f5fd8456d2fe3bd1f7007672f30ee5fd345efd852f05d8c4`  
		Last Modified: Wed, 18 Jan 2017 04:48:09 GMT  
		Size: 184.7 MB (184744757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c3288906fb5ec9361e6feb0a2e8438871b34b5d3e102dc681137dbaf18ef88`  
		Last Modified: Wed, 18 Jan 2017 04:48:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.1-onbuild`

```console
$ docker pull mono@sha256:dfe113d222c9c1b31fe807936412fdb82fe5fcea130370ef799368e165926061
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229705663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1b4e661741662bb1e3250a16e3dd9c76ca1ad943b69505ce8457f094f7fd74`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:22:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:30:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.1.102 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:30:21 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:30:22 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:30:23 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:30:23 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:30:23 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:30:24 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:30:24 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4071b8e0bc98f91bd86cbddd7f60b7df19f8aa5c1ff78e8725eb68fe9d22a2`  
		Last Modified: Wed, 18 Jan 2017 04:37:54 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f38563b32ee8c4f5fd8456d2fe3bd1f7007672f30ee5fd345efd852f05d8c4`  
		Last Modified: Wed, 18 Jan 2017 04:48:09 GMT  
		Size: 184.7 MB (184744757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c3288906fb5ec9361e6feb0a2e8438871b34b5d3e102dc681137dbaf18ef88`  
		Last Modified: Wed, 18 Jan 2017 04:48:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2.30`

```console
$ docker pull mono@sha256:f3dd2f17a3ddfc4bc7b0f23eacf0815f8695696b5b9c9c3b0a877ff42b41559f
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2.30` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229728133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:362b4ec62f5e7ba0b1805d7dd54a06413904f8488352fd31f03ce02bf2ba79d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:31:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf3437af6bbcd5175d1790de7ac680419eb6853f16b99fe80642c40cc61074a`  
		Last Modified: Wed, 18 Jan 2017 04:50:49 GMT  
		Size: 184.8 MB (184767386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2`

```console
$ docker pull mono@sha256:f3dd2f17a3ddfc4bc7b0f23eacf0815f8695696b5b9c9c3b0a877ff42b41559f
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229728133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:362b4ec62f5e7ba0b1805d7dd54a06413904f8488352fd31f03ce02bf2ba79d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:31:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf3437af6bbcd5175d1790de7ac680419eb6853f16b99fe80642c40cc61074a`  
		Last Modified: Wed, 18 Jan 2017 04:50:49 GMT  
		Size: 184.8 MB (184767386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2.30-onbuild`

```console
$ docker pull mono@sha256:6f53779743dce1f2784feeb5cd44bb11680757f95ae86047abf14961dd476a1b
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2.30-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229728297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed48d6bd5bbdf4d00606be591d46042a0a32cc9c69949c06614111366cbb94b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:31:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:31:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:31:55 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:31:56 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:31:56 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:31:56 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:31:57 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:31:57 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf3437af6bbcd5175d1790de7ac680419eb6853f16b99fe80642c40cc61074a`  
		Last Modified: Wed, 18 Jan 2017 04:50:49 GMT  
		Size: 184.8 MB (184767386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590dd5caa9307e47a62a760fc779c391a755819b26314453e3d3eb6612c213ae`  
		Last Modified: Wed, 18 Jan 2017 04:51:26 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.2-onbuild`

```console
$ docker pull mono@sha256:6f53779743dce1f2784feeb5cd44bb11680757f95ae86047abf14961dd476a1b
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229728297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed48d6bd5bbdf4d00606be591d46042a0a32cc9c69949c06614111366cbb94b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:31:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.2.30 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:31:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:31:55 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:31:56 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:31:56 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:31:56 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:31:57 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:31:57 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf3437af6bbcd5175d1790de7ac680419eb6853f16b99fe80642c40cc61074a`  
		Last Modified: Wed, 18 Jan 2017 04:50:49 GMT  
		Size: 184.8 MB (184767386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590dd5caa9307e47a62a760fc779c391a755819b26314453e3d3eb6612c213ae`  
		Last Modified: Wed, 18 Jan 2017 04:51:26 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3.4`

```console
$ docker pull mono@sha256:89e646731c938cc3342222102ab701266360fdfc0aac506f1ca4ffc4259df0b0
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229732845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c085472f0e6123e0b01a907e7dd240bb074f96ed8d2081ab54dc036959f557ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:33:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33db7f422f1595675fe88e51f343243b5fefed92b883c32c017dc299b8c324d4`  
		Last Modified: Wed, 18 Jan 2017 04:53:05 GMT  
		Size: 184.8 MB (184772098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3`

```console
$ docker pull mono@sha256:89e646731c938cc3342222102ab701266360fdfc0aac506f1ca4ffc4259df0b0
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229732845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c085472f0e6123e0b01a907e7dd240bb074f96ed8d2081ab54dc036959f557ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:33:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33db7f422f1595675fe88e51f343243b5fefed92b883c32c017dc299b8c324d4`  
		Last Modified: Wed, 18 Jan 2017 04:53:05 GMT  
		Size: 184.8 MB (184772098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3.4-onbuild`

```console
$ docker pull mono@sha256:3118852b677c7d81ddf499dff49e986462efddc692c9d48adde9649715d62b55
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229733010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd797791b8812fbb9b2dce985a346d2f6d51df906fa409e69c3eb26cd0d26b4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:33:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:29 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:33:30 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:33:30 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:33:30 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:33:31 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:33:31 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33db7f422f1595675fe88e51f343243b5fefed92b883c32c017dc299b8c324d4`  
		Last Modified: Wed, 18 Jan 2017 04:53:05 GMT  
		Size: 184.8 MB (184772098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7bb77aa3b613bdb8b0636c74114a242479415e3d0f331e9e7fd10e596d35fb`  
		Last Modified: Wed, 18 Jan 2017 04:53:42 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.3-onbuild`

```console
$ docker pull mono@sha256:3118852b677c7d81ddf499dff49e986462efddc692c9d48adde9649715d62b55
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229733010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd797791b8812fbb9b2dce985a346d2f6d51df906fa409e69c3eb26cd0d26b4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:33:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.3.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:29 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:33:30 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:33:30 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:33:30 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:33:31 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:33:31 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33db7f422f1595675fe88e51f343243b5fefed92b883c32c017dc299b8c324d4`  
		Last Modified: Wed, 18 Jan 2017 04:53:05 GMT  
		Size: 184.8 MB (184772098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7bb77aa3b613bdb8b0636c74114a242479415e3d0f331e9e7fd10e596d35fb`  
		Last Modified: Wed, 18 Jan 2017 04:53:42 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4.4`

```console
$ docker pull mono@sha256:8982d5537978aa19fc3cb95db30aef20db7049bc4f6b49bb5c10638f98b063ff
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229734609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a92c705cb3e27f75dc624e7103b50badd7b23db8051c59fa9aa0e25902aba0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:28:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa97408f87b50adc64b7c723e2573f528a339d06af5f930dfec48c49dbc493b3`  
		Last Modified: Wed, 18 Jan 2017 04:55:26 GMT  
		Size: 184.8 MB (184773862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4`

```console
$ docker pull mono@sha256:8982d5537978aa19fc3cb95db30aef20db7049bc4f6b49bb5c10638f98b063ff
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229734609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a92c705cb3e27f75dc624e7103b50badd7b23db8051c59fa9aa0e25902aba0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:28:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa97408f87b50adc64b7c723e2573f528a339d06af5f930dfec48c49dbc493b3`  
		Last Modified: Wed, 18 Jan 2017 04:55:26 GMT  
		Size: 184.8 MB (184773862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2`

```console
$ docker pull mono@sha256:8982d5537978aa19fc3cb95db30aef20db7049bc4f6b49bb5c10638f98b063ff
```

-	Platforms:
	-	linux; amd64

### `mono:4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229734609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a92c705cb3e27f75dc624e7103b50badd7b23db8051c59fa9aa0e25902aba0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:28:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa97408f87b50adc64b7c723e2573f528a339d06af5f930dfec48c49dbc493b3`  
		Last Modified: Wed, 18 Jan 2017 04:55:26 GMT  
		Size: 184.8 MB (184773862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4.4-onbuild`

```console
$ docker pull mono@sha256:0536db0c8db2d649a7b3a49cbc04560435367b4c09662c9c9c287e16ce869c35
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229734773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8298bbf52d5c5613fb7d965bafb4f6a875c0082a6d8f683688a119c3098dc740`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:28:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:28:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:28:50 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:28:50 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:28:51 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:28:51 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:28:51 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:28:51 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa97408f87b50adc64b7c723e2573f528a339d06af5f930dfec48c49dbc493b3`  
		Last Modified: Wed, 18 Jan 2017 04:55:26 GMT  
		Size: 184.8 MB (184773862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9399559ba49076924fe3259808a5b0d07d913084b69b0c1717990bb866d5c96`  
		Last Modified: Wed, 18 Jan 2017 04:56:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2.4-onbuild`

```console
$ docker pull mono@sha256:0536db0c8db2d649a7b3a49cbc04560435367b4c09662c9c9c287e16ce869c35
```

-	Platforms:
	-	linux; amd64

### `mono:4.2.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229734773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8298bbf52d5c5613fb7d965bafb4f6a875c0082a6d8f683688a119c3098dc740`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:28:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:28:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:28:50 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:28:50 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:28:51 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:28:51 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:28:51 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:28:51 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa97408f87b50adc64b7c723e2573f528a339d06af5f930dfec48c49dbc493b3`  
		Last Modified: Wed, 18 Jan 2017 04:55:26 GMT  
		Size: 184.8 MB (184773862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9399559ba49076924fe3259808a5b0d07d913084b69b0c1717990bb866d5c96`  
		Last Modified: Wed, 18 Jan 2017 04:56:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.2-onbuild`

```console
$ docker pull mono@sha256:0536db0c8db2d649a7b3a49cbc04560435367b4c09662c9c9c287e16ce869c35
```

-	Platforms:
	-	linux; amd64

### `mono:4.2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229734773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8298bbf52d5c5613fb7d965bafb4f6a875c0082a6d8f683688a119c3098dc740`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:28:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.2.4.4 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:28:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:28:50 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:28:50 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:28:51 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:28:51 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:28:51 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:28:51 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa97408f87b50adc64b7c723e2573f528a339d06af5f930dfec48c49dbc493b3`  
		Last Modified: Wed, 18 Jan 2017 04:55:26 GMT  
		Size: 184.8 MB (184773862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9399559ba49076924fe3259808a5b0d07d913084b69b0c1717990bb866d5c96`  
		Last Modified: Wed, 18 Jan 2017 04:56:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0.182`

```console
$ docker pull mono@sha256:56c1f3f6c6204c3612bd240ae30371c58c4ba6025ddcb1c8cf59fb4f2266d931
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0.182` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250847102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57185ed423a4faeb0a18c3c41e3ea4e9424a25d018bf8b200a3072ad5ed6b25a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:58:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8460c15acc639b77d9a18e1f01a679c0cef62a71cc786eebe2832928365f1da`  
		Last Modified: Wed, 18 Jan 2017 04:58:19 GMT  
		Size: 205.9 MB (205886355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0`

```console
$ docker pull mono@sha256:56c1f3f6c6204c3612bd240ae30371c58c4ba6025ddcb1c8cf59fb4f2266d931
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250847102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57185ed423a4faeb0a18c3c41e3ea4e9424a25d018bf8b200a3072ad5ed6b25a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:58:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8460c15acc639b77d9a18e1f01a679c0cef62a71cc786eebe2832928365f1da`  
		Last Modified: Wed, 18 Jan 2017 04:58:19 GMT  
		Size: 205.9 MB (205886355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0.182-onbuild`

```console
$ docker pull mono@sha256:d3a45bf9aa7e31188c1a17b33af3b8674e3d1315afaf430edcfda2e02b71387a
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0.182-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250847267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f73f7075be23cc1f9c2d0ba05523772d506dcf11bc78da943b611f047a971b66`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:58:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 17:58:47 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:58:48 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:58:48 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:58:49 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:58:49 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:58:49 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:58:50 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8460c15acc639b77d9a18e1f01a679c0cef62a71cc786eebe2832928365f1da`  
		Last Modified: Wed, 18 Jan 2017 04:58:19 GMT  
		Size: 205.9 MB (205886355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe21dcf85a6f1be37b243f8906f86bdae600bdd751540e734e462f5e3ab601ee`  
		Last Modified: Wed, 18 Jan 2017 04:58:57 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.0-onbuild`

```console
$ docker pull mono@sha256:d3a45bf9aa7e31188c1a17b33af3b8674e3d1315afaf430edcfda2e02b71387a
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250847267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f73f7075be23cc1f9c2d0ba05523772d506dcf11bc78da943b611f047a971b66`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:22:04 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:27:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:58:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.0.182 main" > /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl 	&& rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 17:58:47 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:58:48 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:58:48 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:58:49 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:58:49 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:58:49 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:58:50 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bc8293e418cfdbc0f1fa0190d11dce0424e4c9110ebf4dc2ed8bb61bfe36d`  
		Last Modified: Wed, 18 Jan 2017 04:37:56 GMT  
		Size: 7.6 MB (7646357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6de1ec0c71f6ff8c27e7890e5a70799e54ab3b677911d73dc2d2d93693cafac`  
		Last Modified: Wed, 18 Jan 2017 04:49:31 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8460c15acc639b77d9a18e1f01a679c0cef62a71cc786eebe2832928365f1da`  
		Last Modified: Wed, 18 Jan 2017 04:58:19 GMT  
		Size: 205.9 MB (205886355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe21dcf85a6f1be37b243f8906f86bdae600bdd751540e734e462f5e3ab601ee`  
		Last Modified: Wed, 18 Jan 2017 04:58:57 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1.0`

```console
$ docker pull mono@sha256:a56b3f1dc78d628bf4ea6624ad043d43a5a96cc9b27b6e360b91a07e3972685b
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250841567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f43b2813d0a5335f0f1098605564e9f1045437c6ed9b40a393459ab2c5def5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:00:18 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439b8d36e4c126bee45213b26b07dbbe298e035717fc5d56a647e6cb06cfffc7`  
		Last Modified: Wed, 18 Jan 2017 05:00:45 GMT  
		Size: 205.9 MB (205880862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1`

```console
$ docker pull mono@sha256:a56b3f1dc78d628bf4ea6624ad043d43a5a96cc9b27b6e360b91a07e3972685b
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250841567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f43b2813d0a5335f0f1098605564e9f1045437c6ed9b40a393459ab2c5def5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:00:18 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439b8d36e4c126bee45213b26b07dbbe298e035717fc5d56a647e6cb06cfffc7`  
		Last Modified: Wed, 18 Jan 2017 05:00:45 GMT  
		Size: 205.9 MB (205880862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1.0-onbuild`

```console
$ docker pull mono@sha256:5aacd061a9c3f36d59aa5ea73b4bdc9b505a22453c80a13f2da917229b869d8d
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250841730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af76b68ab0ef608add1e55ec0323db1348cf045da5496a33e6afb570df610d04`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:00:18 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 18:00:19 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 18:00:20 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 18:00:20 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 18:00:21 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 18:00:21 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 18:00:21 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 18:00:22 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439b8d36e4c126bee45213b26b07dbbe298e035717fc5d56a647e6cb06cfffc7`  
		Last Modified: Wed, 18 Jan 2017 05:00:45 GMT  
		Size: 205.9 MB (205880862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe035be638cacb31df80052b89e44d593ee781d5658f2bd1c1df64790fc03bc9`  
		Last Modified: Wed, 18 Jan 2017 05:01:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.1-onbuild`

```console
$ docker pull mono@sha256:5aacd061a9c3f36d59aa5ea73b4bdc9b505a22453c80a13f2da917229b869d8d
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250841730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af76b68ab0ef608add1e55ec0323db1348cf045da5496a33e6afb570df610d04`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:00:18 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.1.0 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 18:00:19 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 18:00:20 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 18:00:20 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 18:00:21 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 18:00:21 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 18:00:21 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 18:00:22 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439b8d36e4c126bee45213b26b07dbbe298e035717fc5d56a647e6cb06cfffc7`  
		Last Modified: Wed, 18 Jan 2017 05:00:45 GMT  
		Size: 205.9 MB (205880862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe035be638cacb31df80052b89e44d593ee781d5658f2bd1c1df64790fc03bc9`  
		Last Modified: Wed, 18 Jan 2017 05:01:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2.11`

```console
$ docker pull mono@sha256:2975511f9a93ae8ead56c7ea330f01887750917364ec5c411245d90869520d1f
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (250981442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604c3b38f05c537e778eb1783b2cf4dc97ebb43b688fee74123ffcef2418d799`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:35:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957142c1c50434bd765b76af1c9e84c33bd43041d4a5b037f0e2a29ef5cc2296`  
		Last Modified: Wed, 18 Jan 2017 05:03:16 GMT  
		Size: 206.0 MB (206020737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2`

```console
$ docker pull mono@sha256:2975511f9a93ae8ead56c7ea330f01887750917364ec5c411245d90869520d1f
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (250981442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604c3b38f05c537e778eb1783b2cf4dc97ebb43b688fee74123ffcef2418d799`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:35:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957142c1c50434bd765b76af1c9e84c33bd43041d4a5b037f0e2a29ef5cc2296`  
		Last Modified: Wed, 18 Jan 2017 05:03:16 GMT  
		Size: 206.0 MB (206020737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4`

```console
$ docker pull mono@sha256:2975511f9a93ae8ead56c7ea330f01887750917364ec5c411245d90869520d1f
```

-	Platforms:
	-	linux; amd64

### `mono:4.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (250981442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604c3b38f05c537e778eb1783b2cf4dc97ebb43b688fee74123ffcef2418d799`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:35:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957142c1c50434bd765b76af1c9e84c33bd43041d4a5b037f0e2a29ef5cc2296`  
		Last Modified: Wed, 18 Jan 2017 05:03:16 GMT  
		Size: 206.0 MB (206020737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2.11-onbuild`

```console
$ docker pull mono@sha256:e89762a8124b122e4456bb537cb4c4b97955205eb67a8bec4df841dc3ed75be3
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2.11-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (250981606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618ce15f594e6f0c72bfc0bcdef69419331b0c10eeb2e027c4ee680cd40c6c1b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:35:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 17:35:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:35:30 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:35:30 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:35:30 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:35:31 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:35:31 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:35:31 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957142c1c50434bd765b76af1c9e84c33bd43041d4a5b037f0e2a29ef5cc2296`  
		Last Modified: Wed, 18 Jan 2017 05:03:16 GMT  
		Size: 206.0 MB (206020737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259bc5d566eca1391123108cd905239a6817f7c471c21e13a23c517e67091524`  
		Last Modified: Wed, 18 Jan 2017 05:04:05 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4.2-onbuild`

```console
$ docker pull mono@sha256:e89762a8124b122e4456bb537cb4c4b97955205eb67a8bec4df841dc3ed75be3
```

-	Platforms:
	-	linux; amd64

### `mono:4.4.2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (250981606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618ce15f594e6f0c72bfc0bcdef69419331b0c10eeb2e027c4ee680cd40c6c1b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:35:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 17:35:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:35:30 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:35:30 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:35:30 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:35:31 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:35:31 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:35:31 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957142c1c50434bd765b76af1c9e84c33bd43041d4a5b037f0e2a29ef5cc2296`  
		Last Modified: Wed, 18 Jan 2017 05:03:16 GMT  
		Size: 206.0 MB (206020737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259bc5d566eca1391123108cd905239a6817f7c471c21e13a23c517e67091524`  
		Last Modified: Wed, 18 Jan 2017 05:04:05 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.4-onbuild`

```console
$ docker pull mono@sha256:e89762a8124b122e4456bb537cb4c4b97955205eb67a8bec4df841dc3ed75be3
```

-	Platforms:
	-	linux; amd64

### `mono:4.4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (250981606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618ce15f594e6f0c72bfc0bcdef69419331b0c10eeb2e027c4ee680cd40c6c1b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:35:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 17:35:29 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:35:30 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:35:30 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:35:30 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:35:31 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:35:31 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:35:31 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957142c1c50434bd765b76af1c9e84c33bd43041d4a5b037f0e2a29ef5cc2296`  
		Last Modified: Wed, 18 Jan 2017 05:03:16 GMT  
		Size: 206.0 MB (206020737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259bc5d566eca1391123108cd905239a6817f7c471c21e13a23c517e67091524`  
		Last Modified: Wed, 18 Jan 2017 05:04:05 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0.245`

```console
$ docker pull mono@sha256:3057303a287feb24d9270cfd37612e61c8f70a6506cae0220e78a51906e76eee
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0.245` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143264977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48190bea366f8a7cd6209f7003622b19e6c086f606f3c06d932a3e3d70861cf9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:01:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a3e2aae275cfb7f11d3149889fc551bedf2844c1cbf94cddad9da29a43a119`  
		Last Modified: Wed, 18 Jan 2017 05:05:34 GMT  
		Size: 98.3 MB (98304272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0`

```console
$ docker pull mono@sha256:3057303a287feb24d9270cfd37612e61c8f70a6506cae0220e78a51906e76eee
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143264977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48190bea366f8a7cd6209f7003622b19e6c086f606f3c06d932a3e3d70861cf9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:01:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a3e2aae275cfb7f11d3149889fc551bedf2844c1cbf94cddad9da29a43a119`  
		Last Modified: Wed, 18 Jan 2017 05:05:34 GMT  
		Size: 98.3 MB (98304272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0.245-onbuild`

```console
$ docker pull mono@sha256:42c6c91f50e5c9c9d33147eecf268961e90a17447603a80cc1b53ed37dd0b3ca
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0.245-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143265140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39e3d29d27ce84cbd0546b972373c8f8f136d4235a38d21ef36048b31c49e69e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:01:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 18:01:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 18:01:09 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 18:01:10 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 18:01:10 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 18:01:10 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 18:01:11 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 18:01:11 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a3e2aae275cfb7f11d3149889fc551bedf2844c1cbf94cddad9da29a43a119`  
		Last Modified: Wed, 18 Jan 2017 05:05:34 GMT  
		Size: 98.3 MB (98304272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22f47ba2864fcb06f88664ecf111cdc0334b487c5bbffdc7a4b7972ffb2bcc2`  
		Last Modified: Wed, 18 Jan 2017 05:06:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.0-onbuild`

```console
$ docker pull mono@sha256:42c6c91f50e5c9c9d33147eecf268961e90a17447603a80cc1b53ed37dd0b3ca
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143265140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39e3d29d27ce84cbd0546b972373c8f8f136d4235a38d21ef36048b31c49e69e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:01:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.0.245 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 18:01:08 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 18:01:09 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 18:01:10 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 18:01:10 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 18:01:10 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 18:01:11 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 18:01:11 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a3e2aae275cfb7f11d3149889fc551bedf2844c1cbf94cddad9da29a43a119`  
		Last Modified: Wed, 18 Jan 2017 05:05:34 GMT  
		Size: 98.3 MB (98304272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22f47ba2864fcb06f88664ecf111cdc0334b487c5bbffdc7a4b7972ffb2bcc2`  
		Last Modified: Wed, 18 Jan 2017 05:06:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1.3`

```console
$ docker pull mono@sha256:68ad3d8cc9b12eb7b0872aeae0c8b13333a92c7dc0ac60ece88ca218a1119bfa
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143265035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93ce416ee86f8e0408637c89d47b01dd475152cf609a7261b9fefec6e985df1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:02:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b04346cab44b2464ba5b57737dd7b01b92c3c28d74b99f2a073a4e8329f0620`  
		Last Modified: Wed, 18 Jan 2017 05:07:22 GMT  
		Size: 98.3 MB (98304330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1.3-onbuild`

```console
$ docker pull mono@sha256:3bdbd53f4c2b11a8810ef27918b605b7d0bee0cf0297241f62cf7daef1211bb8
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143265199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fce46998d8b82ef4ab5dd6e8bc939e2a33d934a06676b5555d00967e9718194`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:02:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.3 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 18:02:47 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 18:02:48 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 18:02:48 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 18:02:48 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 18:02:49 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 18:02:49 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 18:02:49 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b04346cab44b2464ba5b57737dd7b01b92c3c28d74b99f2a073a4e8329f0620`  
		Last Modified: Wed, 18 Jan 2017 05:07:22 GMT  
		Size: 98.3 MB (98304330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6a5d7d265930c40834bd27bf6fcb3e4efc7d770ecba959f475b32049ec31cb`  
		Last Modified: Wed, 18 Jan 2017 05:07:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1.5`

```console
$ docker pull mono@sha256:73218e2c8e82053cd8bc5a009027c2e2f3143333b24d6c4d3547eb33808a514a
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143265859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9973f8d18103385046298eee9e88298a2dbc39b24c219fcc65ebb0bf40b288b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:02:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.5 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a872e6a11bf01f01d7c8fc11982760e6f51ac60bb1b1c60c1c7bb56e3bc57ce`  
		Last Modified: Wed, 18 Jan 2017 05:08:52 GMT  
		Size: 98.3 MB (98305154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1`

```console
$ docker pull mono@sha256:73218e2c8e82053cd8bc5a009027c2e2f3143333b24d6c4d3547eb33808a514a
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143265859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9973f8d18103385046298eee9e88298a2dbc39b24c219fcc65ebb0bf40b288b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:02:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.5 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a872e6a11bf01f01d7c8fc11982760e6f51ac60bb1b1c60c1c7bb56e3bc57ce`  
		Last Modified: Wed, 18 Jan 2017 05:08:52 GMT  
		Size: 98.3 MB (98305154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1.5-onbuild`

```console
$ docker pull mono@sha256:6b92947c285fa700aa8e3b89a2e20ae6f58f3ff87e9088ef3e6aae88331758ea
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1.5-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143266022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3bcc841b62ebaef6081d1272ceb955b06dd9ba09ebed5774f83f5e71a8d58a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:02:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.5 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 18:02:01 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 18:02:02 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 18:02:02 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 18:02:02 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 18:02:03 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 18:02:03 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 18:02:03 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a872e6a11bf01f01d7c8fc11982760e6f51ac60bb1b1c60c1c7bb56e3bc57ce`  
		Last Modified: Wed, 18 Jan 2017 05:08:52 GMT  
		Size: 98.3 MB (98305154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43405a2123014ff324d4b67f6e36ea1bc6903f52aed1631706df69bbc3f6d7f9`  
		Last Modified: Wed, 18 Jan 2017 05:09:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.1-onbuild`

```console
$ docker pull mono@sha256:6b92947c285fa700aa8e3b89a2e20ae6f58f3ff87e9088ef3e6aae88331758ea
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.1-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143266022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3bcc841b62ebaef6081d1272ceb955b06dd9ba09ebed5774f83f5e71a8d58a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:33:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:02:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.6.1.5 main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 18:02:01 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 18:02:02 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 18:02:02 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 18:02:02 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 18:02:03 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 18:02:03 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 18:02:03 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992c208fa09293bcee0159a0fe8b6d3249eb94b4988f29a8e90fbfb867ffb97c`  
		Last Modified: Wed, 18 Jan 2017 04:59:34 GMT  
		Size: 7.6 MB (7646316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aeef6957b6cff36403671ce0dcff97569c394a2ca1ce9b03dd510d6d7f5bf`  
		Last Modified: Wed, 18 Jan 2017 04:59:32 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a872e6a11bf01f01d7c8fc11982760e6f51ac60bb1b1c60c1c7bb56e3bc57ce`  
		Last Modified: Wed, 18 Jan 2017 05:08:52 GMT  
		Size: 98.3 MB (98305154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43405a2123014ff324d4b67f6e36ea1bc6903f52aed1631706df69bbc3f6d7f9`  
		Last Modified: Wed, 18 Jan 2017 05:09:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.2.16`

```console
$ docker pull mono@sha256:cfd083cdff270123c375fb807b5eb2621d93aa847aface84f7f32fcdf509b732
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.2.16` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143294440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a2ffb664a90d26c55b3ff0fcf37346160589e082f6beaecb1ad0388d5bfb69`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:24:16 GMT
ENV MONO_VERSION=4.6.2.16
# Tue, 17 Jan 2017 17:24:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:24:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:25:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d2e0e48fd8f989292433afd6c4c7ebbed4071619385bdd3b99e14ea12b3f1`  
		Last Modified: Wed, 18 Jan 2017 05:10:01 GMT  
		Size: 7.6 MB (7646355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861fa64f85c6712fe96b3f40582669d3adbf3e8948ed4f5be77c3fb087a8da52`  
		Last Modified: Wed, 18 Jan 2017 05:09:59 GMT  
		Size: 29.9 KB (29912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e485ff35adffbfea8a6b8bf23f21bb09868b84d969652480b99629b675ebe`  
		Last Modified: Wed, 18 Jan 2017 05:10:45 GMT  
		Size: 98.3 MB (98333688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.2`

```console
$ docker pull mono@sha256:cfd083cdff270123c375fb807b5eb2621d93aa847aface84f7f32fcdf509b732
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143294440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a2ffb664a90d26c55b3ff0fcf37346160589e082f6beaecb1ad0388d5bfb69`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:24:16 GMT
ENV MONO_VERSION=4.6.2.16
# Tue, 17 Jan 2017 17:24:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:24:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:25:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d2e0e48fd8f989292433afd6c4c7ebbed4071619385bdd3b99e14ea12b3f1`  
		Last Modified: Wed, 18 Jan 2017 05:10:01 GMT  
		Size: 7.6 MB (7646355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861fa64f85c6712fe96b3f40582669d3adbf3e8948ed4f5be77c3fb087a8da52`  
		Last Modified: Wed, 18 Jan 2017 05:09:59 GMT  
		Size: 29.9 KB (29912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e485ff35adffbfea8a6b8bf23f21bb09868b84d969652480b99629b675ebe`  
		Last Modified: Wed, 18 Jan 2017 05:10:45 GMT  
		Size: 98.3 MB (98333688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6`

```console
$ docker pull mono@sha256:cfd083cdff270123c375fb807b5eb2621d93aa847aface84f7f32fcdf509b732
```

-	Platforms:
	-	linux; amd64

### `mono:4.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143294440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a2ffb664a90d26c55b3ff0fcf37346160589e082f6beaecb1ad0388d5bfb69`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:24:16 GMT
ENV MONO_VERSION=4.6.2.16
# Tue, 17 Jan 2017 17:24:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:24:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:25:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d2e0e48fd8f989292433afd6c4c7ebbed4071619385bdd3b99e14ea12b3f1`  
		Last Modified: Wed, 18 Jan 2017 05:10:01 GMT  
		Size: 7.6 MB (7646355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861fa64f85c6712fe96b3f40582669d3adbf3e8948ed4f5be77c3fb087a8da52`  
		Last Modified: Wed, 18 Jan 2017 05:09:59 GMT  
		Size: 29.9 KB (29912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e485ff35adffbfea8a6b8bf23f21bb09868b84d969652480b99629b675ebe`  
		Last Modified: Wed, 18 Jan 2017 05:10:45 GMT  
		Size: 98.3 MB (98333688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4`

```console
$ docker pull mono@sha256:cfd083cdff270123c375fb807b5eb2621d93aa847aface84f7f32fcdf509b732
```

-	Platforms:
	-	linux; amd64

### `mono:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143294440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a2ffb664a90d26c55b3ff0fcf37346160589e082f6beaecb1ad0388d5bfb69`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:24:16 GMT
ENV MONO_VERSION=4.6.2.16
# Tue, 17 Jan 2017 17:24:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:24:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:25:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d2e0e48fd8f989292433afd6c4c7ebbed4071619385bdd3b99e14ea12b3f1`  
		Last Modified: Wed, 18 Jan 2017 05:10:01 GMT  
		Size: 7.6 MB (7646355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861fa64f85c6712fe96b3f40582669d3adbf3e8948ed4f5be77c3fb087a8da52`  
		Last Modified: Wed, 18 Jan 2017 05:09:59 GMT  
		Size: 29.9 KB (29912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e485ff35adffbfea8a6b8bf23f21bb09868b84d969652480b99629b675ebe`  
		Last Modified: Wed, 18 Jan 2017 05:10:45 GMT  
		Size: 98.3 MB (98333688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:cfd083cdff270123c375fb807b5eb2621d93aa847aface84f7f32fcdf509b732
```

-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143294440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a2ffb664a90d26c55b3ff0fcf37346160589e082f6beaecb1ad0388d5bfb69`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:24:16 GMT
ENV MONO_VERSION=4.6.2.16
# Tue, 17 Jan 2017 17:24:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:24:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:25:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d2e0e48fd8f989292433afd6c4c7ebbed4071619385bdd3b99e14ea12b3f1`  
		Last Modified: Wed, 18 Jan 2017 05:10:01 GMT  
		Size: 7.6 MB (7646355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861fa64f85c6712fe96b3f40582669d3adbf3e8948ed4f5be77c3fb087a8da52`  
		Last Modified: Wed, 18 Jan 2017 05:09:59 GMT  
		Size: 29.9 KB (29912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e485ff35adffbfea8a6b8bf23f21bb09868b84d969652480b99629b675ebe`  
		Last Modified: Wed, 18 Jan 2017 05:10:45 GMT  
		Size: 98.3 MB (98333688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.2.16-onbuild`

```console
$ docker pull mono@sha256:f9dda340bba01329934ff4e6f45389f9e769fe6591a250b11d9d6ae999fa4eb2
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.2.16-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143294604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3289185728af67feb4eade305bead054586fa39663394b996bcbc2f2c49106e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:24:16 GMT
ENV MONO_VERSION=4.6.2.16
# Tue, 17 Jan 2017 17:24:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:24:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:25:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 17:25:18 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:25:19 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:25:20 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d2e0e48fd8f989292433afd6c4c7ebbed4071619385bdd3b99e14ea12b3f1`  
		Last Modified: Wed, 18 Jan 2017 05:10:01 GMT  
		Size: 7.6 MB (7646355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861fa64f85c6712fe96b3f40582669d3adbf3e8948ed4f5be77c3fb087a8da52`  
		Last Modified: Wed, 18 Jan 2017 05:09:59 GMT  
		Size: 29.9 KB (29912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e485ff35adffbfea8a6b8bf23f21bb09868b84d969652480b99629b675ebe`  
		Last Modified: Wed, 18 Jan 2017 05:10:45 GMT  
		Size: 98.3 MB (98333688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c120f74ed94eb384eb948cc5538dd09d8d0c424e1912ec00ce345341cf8c85`  
		Last Modified: Wed, 18 Jan 2017 05:12:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.2-onbuild`

```console
$ docker pull mono@sha256:f9dda340bba01329934ff4e6f45389f9e769fe6591a250b11d9d6ae999fa4eb2
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143294604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3289185728af67feb4eade305bead054586fa39663394b996bcbc2f2c49106e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:24:16 GMT
ENV MONO_VERSION=4.6.2.16
# Tue, 17 Jan 2017 17:24:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:24:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:25:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 17:25:18 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:25:19 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:25:20 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d2e0e48fd8f989292433afd6c4c7ebbed4071619385bdd3b99e14ea12b3f1`  
		Last Modified: Wed, 18 Jan 2017 05:10:01 GMT  
		Size: 7.6 MB (7646355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861fa64f85c6712fe96b3f40582669d3adbf3e8948ed4f5be77c3fb087a8da52`  
		Last Modified: Wed, 18 Jan 2017 05:09:59 GMT  
		Size: 29.9 KB (29912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e485ff35adffbfea8a6b8bf23f21bb09868b84d969652480b99629b675ebe`  
		Last Modified: Wed, 18 Jan 2017 05:10:45 GMT  
		Size: 98.3 MB (98333688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c120f74ed94eb384eb948cc5538dd09d8d0c424e1912ec00ce345341cf8c85`  
		Last Modified: Wed, 18 Jan 2017 05:12:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6-onbuild`

```console
$ docker pull mono@sha256:f9dda340bba01329934ff4e6f45389f9e769fe6591a250b11d9d6ae999fa4eb2
```

-	Platforms:
	-	linux; amd64

### `mono:4.6-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143294604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3289185728af67feb4eade305bead054586fa39663394b996bcbc2f2c49106e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:24:16 GMT
ENV MONO_VERSION=4.6.2.16
# Tue, 17 Jan 2017 17:24:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:24:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:25:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 17:25:18 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:25:19 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:25:20 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d2e0e48fd8f989292433afd6c4c7ebbed4071619385bdd3b99e14ea12b3f1`  
		Last Modified: Wed, 18 Jan 2017 05:10:01 GMT  
		Size: 7.6 MB (7646355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861fa64f85c6712fe96b3f40582669d3adbf3e8948ed4f5be77c3fb087a8da52`  
		Last Modified: Wed, 18 Jan 2017 05:09:59 GMT  
		Size: 29.9 KB (29912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e485ff35adffbfea8a6b8bf23f21bb09868b84d969652480b99629b675ebe`  
		Last Modified: Wed, 18 Jan 2017 05:10:45 GMT  
		Size: 98.3 MB (98333688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c120f74ed94eb384eb948cc5538dd09d8d0c424e1912ec00ce345341cf8c85`  
		Last Modified: Wed, 18 Jan 2017 05:12:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4-onbuild`

```console
$ docker pull mono@sha256:f9dda340bba01329934ff4e6f45389f9e769fe6591a250b11d9d6ae999fa4eb2
```

-	Platforms:
	-	linux; amd64

### `mono:4-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143294604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3289185728af67feb4eade305bead054586fa39663394b996bcbc2f2c49106e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:24:16 GMT
ENV MONO_VERSION=4.6.2.16
# Tue, 17 Jan 2017 17:24:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:24:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:25:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 17:25:18 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:25:19 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:25:20 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d2e0e48fd8f989292433afd6c4c7ebbed4071619385bdd3b99e14ea12b3f1`  
		Last Modified: Wed, 18 Jan 2017 05:10:01 GMT  
		Size: 7.6 MB (7646355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861fa64f85c6712fe96b3f40582669d3adbf3e8948ed4f5be77c3fb087a8da52`  
		Last Modified: Wed, 18 Jan 2017 05:09:59 GMT  
		Size: 29.9 KB (29912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e485ff35adffbfea8a6b8bf23f21bb09868b84d969652480b99629b675ebe`  
		Last Modified: Wed, 18 Jan 2017 05:10:45 GMT  
		Size: 98.3 MB (98333688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c120f74ed94eb384eb948cc5538dd09d8d0c424e1912ec00ce345341cf8c85`  
		Last Modified: Wed, 18 Jan 2017 05:12:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:onbuild`

```console
$ docker pull mono@sha256:f9dda340bba01329934ff4e6f45389f9e769fe6591a250b11d9d6ae999fa4eb2
```

-	Platforms:
	-	linux; amd64

### `mono:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143294604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3289185728af67feb4eade305bead054586fa39663394b996bcbc2f2c49106e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:24:16 GMT
ENV MONO_VERSION=4.6.2.16
# Tue, 17 Jan 2017 17:24:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:24:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 17:25:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 17:25:18 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 17:25:19 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 17:25:20 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 17:25:21 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d2e0e48fd8f989292433afd6c4c7ebbed4071619385bdd3b99e14ea12b3f1`  
		Last Modified: Wed, 18 Jan 2017 05:10:01 GMT  
		Size: 7.6 MB (7646355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861fa64f85c6712fe96b3f40582669d3adbf3e8948ed4f5be77c3fb087a8da52`  
		Last Modified: Wed, 18 Jan 2017 05:09:59 GMT  
		Size: 29.9 KB (29912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37e485ff35adffbfea8a6b8bf23f21bb09868b84d969652480b99629b675ebe`  
		Last Modified: Wed, 18 Jan 2017 05:10:45 GMT  
		Size: 98.3 MB (98333688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c120f74ed94eb384eb948cc5538dd09d8d0c424e1912ec00ce345341cf8c85`  
		Last Modified: Wed, 18 Jan 2017 05:12:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.2.7`

```console
$ docker pull mono@sha256:33ea6c8f86f760c8be6988f7930f4fc7e5c934f12f31a32d74b7b64ab9587de4
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.2.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143293528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9f4e1c757d3860191db100fecfd8aa3810ce9ff6d6b31206f82871e3dd3ed0a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 18:02:50 GMT
ENV MONO_VERSION=4.6.2.7
# Tue, 17 Jan 2017 18:03:00 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:04:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922784f7d9dd40d3ce267c8b0b9056834f8ce303778f7cd60806e95729262a99`  
		Last Modified: Wed, 18 Jan 2017 05:13:22 GMT  
		Size: 7.6 MB (7646241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97e060acb8b0c198f645c653b6f54944cb4e3e2794e6d14e53a04df82fa137b`  
		Last Modified: Wed, 18 Jan 2017 05:13:19 GMT  
		Size: 29.9 KB (29899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83a40125c867a0f5182ad88df01e06b328a79388f8337237a2dfdba72fa5dc9`  
		Last Modified: Wed, 18 Jan 2017 05:14:29 GMT  
		Size: 98.3 MB (98332903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.6.2.7-onbuild`

```console
$ docker pull mono@sha256:c6613110a149582638bfa1874ab148c6258cf67b8456378e58ba03ffe7c34aef
```

-	Platforms:
	-	linux; amd64

### `mono:4.6.2.7-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143293692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ba365dd2935584c95be8c9676ef79e087eab728f38027a3dbc7d58bb2f4dca`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:21:54 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 18:02:50 GMT
ENV MONO_VERSION=4.6.2.7
# Tue, 17 Jan 2017 18:03:00 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jan 2017 18:04:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jan 2017 18:04:14 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jan 2017 18:04:15 GMT
RUN mkdir -p /usr/src/app/source /usr/src/app/build
# Tue, 17 Jan 2017 18:04:15 GMT
WORKDIR /usr/src/app/source
# Tue, 17 Jan 2017 18:04:16 GMT
ONBUILD COPY . /usr/src/app/source
# Tue, 17 Jan 2017 18:04:16 GMT
ONBUILD RUN nuget restore -NonInteractive
# Tue, 17 Jan 2017 18:04:17 GMT
ONBUILD RUN xbuild /property:Configuration=Release /property:OutDir=/usr/src/app/build/
# Tue, 17 Jan 2017 18:04:17 GMT
ONBUILD WORKDIR /usr/src/app/build
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922784f7d9dd40d3ce267c8b0b9056834f8ce303778f7cd60806e95729262a99`  
		Last Modified: Wed, 18 Jan 2017 05:13:22 GMT  
		Size: 7.6 MB (7646241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97e060acb8b0c198f645c653b6f54944cb4e3e2794e6d14e53a04df82fa137b`  
		Last Modified: Wed, 18 Jan 2017 05:13:19 GMT  
		Size: 29.9 KB (29899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83a40125c867a0f5182ad88df01e06b328a79388f8337237a2dfdba72fa5dc9`  
		Last Modified: Wed, 18 Jan 2017 05:14:29 GMT  
		Size: 98.3 MB (98332903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b75baf2fb5d86e9c84e3871f5e69ef5695f7c5890e8bb931a0b84ebeea8da5`  
		Last Modified: Wed, 18 Jan 2017 05:14:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
