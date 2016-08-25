<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `fsharp`

-	[`fsharp:4.0.0.4`](#fsharp4004)
-	[`fsharp:4.0.1.1`](#fsharp4011)
-	[`fsharp:latest`](#fsharplatest)

## `fsharp:4.0.0.4`

```console
$ docker pull fsharp@sha256:2b3d2135db18b524917f4bb0701209aa0a13b243d004b8d2a0a516ed22cbdd83
```

-	Platforms:
	-	linux; amd64

### `fsharp:4.0.0.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.3 MB (268272093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea4dcc23398d229413d39402017a357a34f748bb993ac2f0c3bbc04f61b28669`
-	Default Command: `["fsharpi"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 18:57:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:59:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:48:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Aug 2016 20:03:33 GMT
MAINTAINER Henrik Feldt
# Thu, 25 Aug 2016 20:03:33 GMT
ENV MONO_VERSION=4.4.2.11
# Thu, 25 Aug 2016 20:03:52 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Thu, 25 Aug 2016 20:03:53 GMT
ENV MONO_THREADS_PER_CPU=50
# Thu, 25 Aug 2016 20:05:39 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Thu, 25 Aug 2016 20:05:40 GMT
ENV FSHARP_VERSION=4.0.0.4
# Thu, 25 Aug 2016 20:05:40 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.0.4 FSHARP_ARCHIVE=4.0.0.4.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.0.4.tar.gz
# Thu, 25 Aug 2016 20:12:50 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Thu, 25 Aug 2016 20:12:51 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d986e0269ededfc3b013b4cc2314761bc61a0d47ea714d0f9b3958b252bef2e`  
		Last Modified: Thu, 11 Aug 2016 18:57:38 GMT  
		Size: 4.6 MB (4598680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b286a223155781a4ddf47929166eb4a6c8259c6bee54de3a6e357d294d097`  
		Last Modified: Thu, 11 Aug 2016 18:59:36 GMT  
		Size: 29.0 MB (29004946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efd0f3ceb9fb1ac4ebda51c4a0c6df786d040bd2b55df822b4fa00636accac5`  
		Last Modified: Wed, 24 Aug 2016 17:00:20 GMT  
		Size: 100.2 MB (100192221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81930baa63d6ebe0ce638324c23e739c941a734b32a0a649f966a294dfde4190`  
		Last Modified: Thu, 25 Aug 2016 20:13:02 GMT  
		Size: 13.5 KB (13536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5782ece287799bc30fd34968cce7ce0cd605c1ffe0d9ca1c348e08da7ea0e386`  
		Last Modified: Thu, 25 Aug 2016 20:13:23 GMT  
		Size: 59.6 MB (59635971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2aee74884cf05f519c06738bc58420bd12de4a2946c40b6ddd5fa0ef73e4d25`  
		Last Modified: Thu, 25 Aug 2016 20:13:06 GMT  
		Size: 9.1 MB (9054195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.1.1`

```console
$ docker pull fsharp@sha256:0f3befa852d535284857614ee6951580eb7f76064dcc4ea8fe7885c1cf2d565c
```

-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269527613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:673ff605a78113a704d5cf1bce43ab7fbbc3ca153ee23d384dcb96d892d887aa`
-	Default Command: `["fsharpi"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 18:57:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:59:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:48:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Aug 2016 20:03:33 GMT
MAINTAINER Henrik Feldt
# Thu, 25 Aug 2016 20:03:33 GMT
ENV MONO_VERSION=4.4.2.11
# Thu, 25 Aug 2016 20:03:52 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Thu, 25 Aug 2016 20:03:53 GMT
ENV MONO_THREADS_PER_CPU=50
# Thu, 25 Aug 2016 20:05:39 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Thu, 25 Aug 2016 20:13:32 GMT
ENV FSHARP_VERSION=4.0.1.1
# Thu, 25 Aug 2016 20:13:32 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Thu, 25 Aug 2016 20:20:43 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Thu, 25 Aug 2016 20:20:44 GMT
WORKDIR /root
# Thu, 25 Aug 2016 20:20:44 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d986e0269ededfc3b013b4cc2314761bc61a0d47ea714d0f9b3958b252bef2e`  
		Last Modified: Thu, 11 Aug 2016 18:57:38 GMT  
		Size: 4.6 MB (4598680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b286a223155781a4ddf47929166eb4a6c8259c6bee54de3a6e357d294d097`  
		Last Modified: Thu, 11 Aug 2016 18:59:36 GMT  
		Size: 29.0 MB (29004946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efd0f3ceb9fb1ac4ebda51c4a0c6df786d040bd2b55df822b4fa00636accac5`  
		Last Modified: Wed, 24 Aug 2016 17:00:20 GMT  
		Size: 100.2 MB (100192221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81930baa63d6ebe0ce638324c23e739c941a734b32a0a649f966a294dfde4190`  
		Last Modified: Thu, 25 Aug 2016 20:13:02 GMT  
		Size: 13.5 KB (13536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5782ece287799bc30fd34968cce7ce0cd605c1ffe0d9ca1c348e08da7ea0e386`  
		Last Modified: Thu, 25 Aug 2016 20:13:23 GMT  
		Size: 59.6 MB (59635971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744b899d2f14346f0727abf67f3ee171b303997d612e749f5e4e6e96416936b9`  
		Last Modified: Thu, 25 Aug 2016 20:20:59 GMT  
		Size: 10.3 MB (10309715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:latest`

```console
$ docker pull fsharp@sha256:0f3befa852d535284857614ee6951580eb7f76064dcc4ea8fe7885c1cf2d565c
```

-	Platforms:
	-	linux; amd64

### `fsharp:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269527613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:673ff605a78113a704d5cf1bce43ab7fbbc3ca153ee23d384dcb96d892d887aa`
-	Default Command: `["fsharpi"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 18:57:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:59:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:48:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Aug 2016 20:03:33 GMT
MAINTAINER Henrik Feldt
# Thu, 25 Aug 2016 20:03:33 GMT
ENV MONO_VERSION=4.4.2.11
# Thu, 25 Aug 2016 20:03:52 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Thu, 25 Aug 2016 20:03:53 GMT
ENV MONO_THREADS_PER_CPU=50
# Thu, 25 Aug 2016 20:05:39 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Thu, 25 Aug 2016 20:13:32 GMT
ENV FSHARP_VERSION=4.0.1.1
# Thu, 25 Aug 2016 20:13:32 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Thu, 25 Aug 2016 20:20:43 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Thu, 25 Aug 2016 20:20:44 GMT
WORKDIR /root
# Thu, 25 Aug 2016 20:20:44 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d986e0269ededfc3b013b4cc2314761bc61a0d47ea714d0f9b3958b252bef2e`  
		Last Modified: Thu, 11 Aug 2016 18:57:38 GMT  
		Size: 4.6 MB (4598680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b286a223155781a4ddf47929166eb4a6c8259c6bee54de3a6e357d294d097`  
		Last Modified: Thu, 11 Aug 2016 18:59:36 GMT  
		Size: 29.0 MB (29004946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efd0f3ceb9fb1ac4ebda51c4a0c6df786d040bd2b55df822b4fa00636accac5`  
		Last Modified: Wed, 24 Aug 2016 17:00:20 GMT  
		Size: 100.2 MB (100192221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81930baa63d6ebe0ce638324c23e739c941a734b32a0a649f966a294dfde4190`  
		Last Modified: Thu, 25 Aug 2016 20:13:02 GMT  
		Size: 13.5 KB (13536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5782ece287799bc30fd34968cce7ce0cd605c1ffe0d9ca1c348e08da7ea0e386`  
		Last Modified: Thu, 25 Aug 2016 20:13:23 GMT  
		Size: 59.6 MB (59635971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744b899d2f14346f0727abf67f3ee171b303997d612e749f5e4e6e96416936b9`  
		Last Modified: Thu, 25 Aug 2016 20:20:59 GMT  
		Size: 10.3 MB (10309715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
