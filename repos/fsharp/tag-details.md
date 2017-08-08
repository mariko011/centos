<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `fsharp`

-	[`fsharp:latest`](#fsharplatest)
-	[`fsharp:4`](#fsharp4)
-	[`fsharp:4.1`](#fsharp41)
-	[`fsharp:4.1.25`](#fsharp4125)
-	[`fsharp:4.1.18`](#fsharp4118)
-	[`fsharp:4.1.0.1`](#fsharp4101)
-	[`fsharp:4.0`](#fsharp40)
-	[`fsharp:4.0.1`](#fsharp401)
-	[`fsharp:4.0.1.1`](#fsharp4011)
-	[`fsharp:4.0.0.4`](#fsharp4004)

## `fsharp:latest`

```console
$ docker pull fsharp@sha256:b08e34babc35581d8c029cba13eace4cd5808f956f8496fe86eac082d57d33f0
```

-	Platforms:
	-	linux; amd64

### `fsharp:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178865291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202e75cfedd2f6d714abb7e780a5fb079e749f5adb6b8d66f29ca86d0742bba7`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 08 Aug 2017 17:59:34 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 08 Aug 2017 17:59:34 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 08 Aug 2017 18:15:26 GMT
RUN MONO_VERSION=5.0.1.1 &&     FSHARP_VERSION=4.1.25 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Tue, 08 Aug 2017 18:17:10 GMT
WORKDIR /root
# Tue, 08 Aug 2017 18:17:11 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079c0cc0bf9f665e957fc923b482a813ef4ffd0fa96bdeb40e90585e6a237aa6`  
		Last Modified: Tue, 08 Aug 2017 18:17:45 GMT  
		Size: 148.7 MB (148743573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4`

```console
$ docker pull fsharp@sha256:b08e34babc35581d8c029cba13eace4cd5808f956f8496fe86eac082d57d33f0
```

-	Platforms:
	-	linux; amd64

### `fsharp:4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178865291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202e75cfedd2f6d714abb7e780a5fb079e749f5adb6b8d66f29ca86d0742bba7`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 08 Aug 2017 17:59:34 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 08 Aug 2017 17:59:34 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 08 Aug 2017 18:15:26 GMT
RUN MONO_VERSION=5.0.1.1 &&     FSHARP_VERSION=4.1.25 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Tue, 08 Aug 2017 18:17:10 GMT
WORKDIR /root
# Tue, 08 Aug 2017 18:17:11 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079c0cc0bf9f665e957fc923b482a813ef4ffd0fa96bdeb40e90585e6a237aa6`  
		Last Modified: Tue, 08 Aug 2017 18:17:45 GMT  
		Size: 148.7 MB (148743573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1`

```console
$ docker pull fsharp@sha256:b08e34babc35581d8c029cba13eace4cd5808f956f8496fe86eac082d57d33f0
```

-	Platforms:
	-	linux; amd64

### `fsharp:4.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178865291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202e75cfedd2f6d714abb7e780a5fb079e749f5adb6b8d66f29ca86d0742bba7`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 08 Aug 2017 17:59:34 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 08 Aug 2017 17:59:34 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 08 Aug 2017 18:15:26 GMT
RUN MONO_VERSION=5.0.1.1 &&     FSHARP_VERSION=4.1.25 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Tue, 08 Aug 2017 18:17:10 GMT
WORKDIR /root
# Tue, 08 Aug 2017 18:17:11 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079c0cc0bf9f665e957fc923b482a813ef4ffd0fa96bdeb40e90585e6a237aa6`  
		Last Modified: Tue, 08 Aug 2017 18:17:45 GMT  
		Size: 148.7 MB (148743573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1.25`

```console
$ docker pull fsharp@sha256:b08e34babc35581d8c029cba13eace4cd5808f956f8496fe86eac082d57d33f0
```

-	Platforms:
	-	linux; amd64

### `fsharp:4.1.25` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178865291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202e75cfedd2f6d714abb7e780a5fb079e749f5adb6b8d66f29ca86d0742bba7`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Tue, 08 Aug 2017 17:59:34 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 08 Aug 2017 17:59:34 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 08 Aug 2017 18:15:26 GMT
RUN MONO_VERSION=5.0.1.1 &&     FSHARP_VERSION=4.1.25 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Tue, 08 Aug 2017 18:17:10 GMT
WORKDIR /root
# Tue, 08 Aug 2017 18:17:11 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079c0cc0bf9f665e957fc923b482a813ef4ffd0fa96bdeb40e90585e6a237aa6`  
		Last Modified: Tue, 08 Aug 2017 18:17:45 GMT  
		Size: 148.7 MB (148743573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1.18`

```console
$ docker pull fsharp@sha256:8a453d6ea21d64a36e8c01df2e209da3f693c4b688d26465a84c869f48b0048b
```

-	Platforms:
	-	linux; amd64

### `fsharp:4.1.18` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276140143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0241929a890399b9f7d9f236631547cc6d29cfcec33391dffc2f0d5ea04014`
-	Default Command: `["fsharpi"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 17:42:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:42:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 20 Jul 2017 17:43:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:50:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 18:47:32 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Thu, 20 Jul 2017 19:09:45 GMT
ENV MONO_THREADS_PER_CPU=50
# Thu, 20 Jul 2017 19:17:42 GMT
RUN MONO_VERSION=4.8.1.0 &&     FSHARP_VERSION=4.1.18 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     curl -LO $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local
# Thu, 20 Jul 2017 19:17:43 GMT
WORKDIR /root
# Thu, 20 Jul 2017 19:17:43 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e117ccda8f90b8a78a6ba514cc96512129b5f4674bf3c0dfa2222b39bba14c`  
		Last Modified: Thu, 20 Jul 2017 17:56:21 GMT  
		Size: 4.7 MB (4705370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6651fd8dfd6ba32382e589c8a0213714cef87d920765160a340d3539c849d441`  
		Last Modified: Thu, 20 Jul 2017 17:56:53 GMT  
		Size: 29.5 MB (29545294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ccb15b5755f82ade69dc399df9035d3e8ec2892f6b422ed1b496cd201697a3`  
		Last Modified: Thu, 20 Jul 2017 18:01:51 GMT  
		Size: 105.4 MB (105365432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb296656a6c359b6e47e91e8a9aac92bf5667494448d7d9711f9e3d40853d8a`  
		Last Modified: Thu, 20 Jul 2017 19:19:40 GMT  
		Size: 69.3 MB (69335407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1.0.1`

```console
$ docker pull fsharp@sha256:fb19bf167d615e7422b3f2f73f94c99efaed5a28bb9775080483899b74b280ce
```

-	Platforms:
	-	linux; amd64

### `fsharp:4.1.0.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.0 MB (320013934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdbbf475b59c332fd386969859c2c748eaa385e5345a7349fb9adbf9ee6fca30`
-	Default Command: `["fsharpi"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 17:42:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:42:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 20 Jul 2017 17:43:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:50:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 18:47:32 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Thu, 20 Jul 2017 18:47:33 GMT
ENV MONO_VERSION=4.8.0.495
# Thu, 20 Jul 2017 18:47:35 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Thu, 20 Jul 2017 18:47:36 GMT
ENV MONO_THREADS_PER_CPU=50
# Thu, 20 Jul 2017 18:49:08 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 19:00:58 GMT
ENV FSHARP_VERSION=4.1.0.1
# Thu, 20 Jul 2017 19:00:59 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.1.0.1 FSHARP_ARCHIVE=4.1.0.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.1.0.1.tar.gz
# Thu, 20 Jul 2017 19:09:36 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Thu, 20 Jul 2017 19:09:36 GMT
WORKDIR /root
# Thu, 20 Jul 2017 19:09:37 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e117ccda8f90b8a78a6ba514cc96512129b5f4674bf3c0dfa2222b39bba14c`  
		Last Modified: Thu, 20 Jul 2017 17:56:21 GMT  
		Size: 4.7 MB (4705370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6651fd8dfd6ba32382e589c8a0213714cef87d920765160a340d3539c849d441`  
		Last Modified: Thu, 20 Jul 2017 17:56:53 GMT  
		Size: 29.5 MB (29545294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ccb15b5755f82ade69dc399df9035d3e8ec2892f6b422ed1b496cd201697a3`  
		Last Modified: Thu, 20 Jul 2017 18:01:51 GMT  
		Size: 105.4 MB (105365432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8e83f38f92b2dbfcde4b043cbbe54d04ff26e4028d27489d2392c45f6e4f55`  
		Last Modified: Thu, 20 Jul 2017 19:17:57 GMT  
		Size: 13.8 KB (13817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbead047feb3d2bd0899171ac1ca1930e770625cc747d3e945ddcbaa5af81b5f`  
		Last Modified: Thu, 20 Jul 2017 19:18:10 GMT  
		Size: 54.9 MB (54892094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683853981f3a7dbd4fcaad4caf3f9d34340be70fd8921189f4e126bbae4143c1`  
		Last Modified: Thu, 20 Jul 2017 19:19:10 GMT  
		Size: 58.3 MB (58303287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0`

```console
$ docker pull fsharp@sha256:c4e0e3037ca13a8d24a3eaa09a3dc60173df1ca32409fc2d10b8777c2355bed9
```

-	Platforms:
	-	linux; amd64

### `fsharp:4.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272289093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72e5531442b0e606349f007e2380adc346ac6a9c49c0efd0263c68f6a590d08`
-	Default Command: `["fsharpi"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 17:42:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:42:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 20 Jul 2017 17:43:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:50:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 18:47:32 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Thu, 20 Jul 2017 18:47:33 GMT
ENV MONO_VERSION=4.8.0.495
# Thu, 20 Jul 2017 18:47:35 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Thu, 20 Jul 2017 18:47:36 GMT
ENV MONO_THREADS_PER_CPU=50
# Thu, 20 Jul 2017 18:49:08 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 18:49:09 GMT
ENV FSHARP_VERSION=4.0.1.1
# Thu, 20 Jul 2017 18:49:09 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Thu, 20 Jul 2017 18:54:50 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Thu, 20 Jul 2017 18:54:50 GMT
WORKDIR /root
# Thu, 20 Jul 2017 18:54:51 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e117ccda8f90b8a78a6ba514cc96512129b5f4674bf3c0dfa2222b39bba14c`  
		Last Modified: Thu, 20 Jul 2017 17:56:21 GMT  
		Size: 4.7 MB (4705370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6651fd8dfd6ba32382e589c8a0213714cef87d920765160a340d3539c849d441`  
		Last Modified: Thu, 20 Jul 2017 17:56:53 GMT  
		Size: 29.5 MB (29545294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ccb15b5755f82ade69dc399df9035d3e8ec2892f6b422ed1b496cd201697a3`  
		Last Modified: Thu, 20 Jul 2017 18:01:51 GMT  
		Size: 105.4 MB (105365432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8e83f38f92b2dbfcde4b043cbbe54d04ff26e4028d27489d2392c45f6e4f55`  
		Last Modified: Thu, 20 Jul 2017 19:17:57 GMT  
		Size: 13.8 KB (13817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbead047feb3d2bd0899171ac1ca1930e770625cc747d3e945ddcbaa5af81b5f`  
		Last Modified: Thu, 20 Jul 2017 19:18:10 GMT  
		Size: 54.9 MB (54892094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff61057ea81907c449eca6252f7d44d7ef889aa162ef5ef1ab8a076febdd2cf`  
		Last Modified: Thu, 20 Jul 2017 19:17:58 GMT  
		Size: 10.6 MB (10578446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.1`

```console
$ docker pull fsharp@sha256:c4e0e3037ca13a8d24a3eaa09a3dc60173df1ca32409fc2d10b8777c2355bed9
```

-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272289093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72e5531442b0e606349f007e2380adc346ac6a9c49c0efd0263c68f6a590d08`
-	Default Command: `["fsharpi"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 17:42:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:42:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 20 Jul 2017 17:43:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:50:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 18:47:32 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Thu, 20 Jul 2017 18:47:33 GMT
ENV MONO_VERSION=4.8.0.495
# Thu, 20 Jul 2017 18:47:35 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Thu, 20 Jul 2017 18:47:36 GMT
ENV MONO_THREADS_PER_CPU=50
# Thu, 20 Jul 2017 18:49:08 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 18:49:09 GMT
ENV FSHARP_VERSION=4.0.1.1
# Thu, 20 Jul 2017 18:49:09 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Thu, 20 Jul 2017 18:54:50 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Thu, 20 Jul 2017 18:54:50 GMT
WORKDIR /root
# Thu, 20 Jul 2017 18:54:51 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e117ccda8f90b8a78a6ba514cc96512129b5f4674bf3c0dfa2222b39bba14c`  
		Last Modified: Thu, 20 Jul 2017 17:56:21 GMT  
		Size: 4.7 MB (4705370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6651fd8dfd6ba32382e589c8a0213714cef87d920765160a340d3539c849d441`  
		Last Modified: Thu, 20 Jul 2017 17:56:53 GMT  
		Size: 29.5 MB (29545294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ccb15b5755f82ade69dc399df9035d3e8ec2892f6b422ed1b496cd201697a3`  
		Last Modified: Thu, 20 Jul 2017 18:01:51 GMT  
		Size: 105.4 MB (105365432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8e83f38f92b2dbfcde4b043cbbe54d04ff26e4028d27489d2392c45f6e4f55`  
		Last Modified: Thu, 20 Jul 2017 19:17:57 GMT  
		Size: 13.8 KB (13817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbead047feb3d2bd0899171ac1ca1930e770625cc747d3e945ddcbaa5af81b5f`  
		Last Modified: Thu, 20 Jul 2017 19:18:10 GMT  
		Size: 54.9 MB (54892094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff61057ea81907c449eca6252f7d44d7ef889aa162ef5ef1ab8a076febdd2cf`  
		Last Modified: Thu, 20 Jul 2017 19:17:58 GMT  
		Size: 10.6 MB (10578446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.1.1`

```console
$ docker pull fsharp@sha256:c4e0e3037ca13a8d24a3eaa09a3dc60173df1ca32409fc2d10b8777c2355bed9
```

-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272289093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72e5531442b0e606349f007e2380adc346ac6a9c49c0efd0263c68f6a590d08`
-	Default Command: `["fsharpi"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 17:42:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:42:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 20 Jul 2017 17:43:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:50:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 18:47:32 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Thu, 20 Jul 2017 18:47:33 GMT
ENV MONO_VERSION=4.8.0.495
# Thu, 20 Jul 2017 18:47:35 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Thu, 20 Jul 2017 18:47:36 GMT
ENV MONO_THREADS_PER_CPU=50
# Thu, 20 Jul 2017 18:49:08 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 18:49:09 GMT
ENV FSHARP_VERSION=4.0.1.1
# Thu, 20 Jul 2017 18:49:09 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Thu, 20 Jul 2017 18:54:50 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Thu, 20 Jul 2017 18:54:50 GMT
WORKDIR /root
# Thu, 20 Jul 2017 18:54:51 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e117ccda8f90b8a78a6ba514cc96512129b5f4674bf3c0dfa2222b39bba14c`  
		Last Modified: Thu, 20 Jul 2017 17:56:21 GMT  
		Size: 4.7 MB (4705370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6651fd8dfd6ba32382e589c8a0213714cef87d920765160a340d3539c849d441`  
		Last Modified: Thu, 20 Jul 2017 17:56:53 GMT  
		Size: 29.5 MB (29545294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ccb15b5755f82ade69dc399df9035d3e8ec2892f6b422ed1b496cd201697a3`  
		Last Modified: Thu, 20 Jul 2017 18:01:51 GMT  
		Size: 105.4 MB (105365432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8e83f38f92b2dbfcde4b043cbbe54d04ff26e4028d27489d2392c45f6e4f55`  
		Last Modified: Thu, 20 Jul 2017 19:17:57 GMT  
		Size: 13.8 KB (13817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbead047feb3d2bd0899171ac1ca1930e770625cc747d3e945ddcbaa5af81b5f`  
		Last Modified: Thu, 20 Jul 2017 19:18:10 GMT  
		Size: 54.9 MB (54892094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff61057ea81907c449eca6252f7d44d7ef889aa162ef5ef1ab8a076febdd2cf`  
		Last Modified: Thu, 20 Jul 2017 19:17:58 GMT  
		Size: 10.6 MB (10578446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.0.4`

```console
$ docker pull fsharp@sha256:4cd3eefa0af973e4ab70035a4543d38ed644321e5d2ea56ea77f96ae602b9d36
```

-	Platforms:
	-	linux; amd64

### `fsharp:4.0.0.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (271041454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d493a4b9008a280ed933ffdbcd62c3ea1414405e5f77b998c8e15da7c568125`
-	Default Command: `["fsharpi"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 17:42:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:42:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 20 Jul 2017 17:43:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:50:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 18:47:32 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Thu, 20 Jul 2017 18:47:33 GMT
ENV MONO_VERSION=4.8.0.495
# Thu, 20 Jul 2017 18:47:35 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Thu, 20 Jul 2017 18:47:36 GMT
ENV MONO_THREADS_PER_CPU=50
# Thu, 20 Jul 2017 18:49:08 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 18:54:59 GMT
ENV FSHARP_VERSION=4.0.0.4
# Thu, 20 Jul 2017 18:55:00 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.0.4 FSHARP_ARCHIVE=4.0.0.4.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.0.4.tar.gz
# Thu, 20 Jul 2017 19:00:50 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Thu, 20 Jul 2017 19:00:50 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e117ccda8f90b8a78a6ba514cc96512129b5f4674bf3c0dfa2222b39bba14c`  
		Last Modified: Thu, 20 Jul 2017 17:56:21 GMT  
		Size: 4.7 MB (4705370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6651fd8dfd6ba32382e589c8a0213714cef87d920765160a340d3539c849d441`  
		Last Modified: Thu, 20 Jul 2017 17:56:53 GMT  
		Size: 29.5 MB (29545294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ccb15b5755f82ade69dc399df9035d3e8ec2892f6b422ed1b496cd201697a3`  
		Last Modified: Thu, 20 Jul 2017 18:01:51 GMT  
		Size: 105.4 MB (105365432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8e83f38f92b2dbfcde4b043cbbe54d04ff26e4028d27489d2392c45f6e4f55`  
		Last Modified: Thu, 20 Jul 2017 19:17:57 GMT  
		Size: 13.8 KB (13817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbead047feb3d2bd0899171ac1ca1930e770625cc747d3e945ddcbaa5af81b5f`  
		Last Modified: Thu, 20 Jul 2017 19:18:10 GMT  
		Size: 54.9 MB (54892094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4e825205a22c99cefdcbd9c1580c2c2d7022e539d0438133d5739eb76f2d61`  
		Last Modified: Thu, 20 Jul 2017 19:18:48 GMT  
		Size: 9.3 MB (9330807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
