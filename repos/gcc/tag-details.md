<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `gcc`

-	[`gcc:4.9.4`](#gcc494)
-	[`gcc:4.9`](#gcc49)
-	[`gcc:4`](#gcc4)
-	[`gcc:5.4.0`](#gcc540)
-	[`gcc:5.4`](#gcc54)
-	[`gcc:5`](#gcc5)
-	[`gcc:6.2.0`](#gcc620)
-	[`gcc:6.2`](#gcc62)
-	[`gcc:6`](#gcc6)
-	[`gcc:latest`](#gcclatest)

## `gcc:4.9.4`

```console
$ docker pull gcc@sha256:211f2a20dd8dac0f8c094514d9306bcb5b90fa422ae04830fa99a1c96eb5d03a
```

-	Platforms:
	-	linux; amd64

### `gcc:4.9.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426209260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc2c1b2249aa62174ba78d37ff5b03b73602c8c59cdf4c421f6cb9b909208da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 03:44:56 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 10 Nov 2016 03:45:02 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 10 Nov 2016 03:45:02 GMT
ENV GCC_VERSION=4.9.4
# Thu, 10 Nov 2016 04:21:08 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 10 Nov 2016 04:21:12 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Thu, 10 Nov 2016 04:21:15 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a758e309ab37f7b0855c8c07f8b73dd46ea40ab8ea13d7fae3e9d8ad712977e`  
		Last Modified: Thu, 10 Nov 2016 04:23:48 GMT  
		Size: 98.8 KB (98771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031623f9a53b244cfd91d817bb0ca25e563e9d8ff3a87eccf4f28c99c7b7354b`  
		Last Modified: Thu, 10 Nov 2016 04:24:49 GMT  
		Size: 183.9 MB (183905571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cc5b8328ecc80ab6a9ff0125d96cb626668afe8d9c59131b244a49300bb792`  
		Last Modified: Thu, 10 Nov 2016 04:23:48 GMT  
		Size: 10.6 KB (10605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adae56261dc91450562ca2e40e27812173cfd7cc3b61ef7380d64185c572b3cb`  
		Last Modified: Thu, 10 Nov 2016 04:23:48 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:4.9`

```console
$ docker pull gcc@sha256:211f2a20dd8dac0f8c094514d9306bcb5b90fa422ae04830fa99a1c96eb5d03a
```

-	Platforms:
	-	linux; amd64

### `gcc:4.9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426209260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc2c1b2249aa62174ba78d37ff5b03b73602c8c59cdf4c421f6cb9b909208da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 03:44:56 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 10 Nov 2016 03:45:02 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 10 Nov 2016 03:45:02 GMT
ENV GCC_VERSION=4.9.4
# Thu, 10 Nov 2016 04:21:08 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 10 Nov 2016 04:21:12 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Thu, 10 Nov 2016 04:21:15 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a758e309ab37f7b0855c8c07f8b73dd46ea40ab8ea13d7fae3e9d8ad712977e`  
		Last Modified: Thu, 10 Nov 2016 04:23:48 GMT  
		Size: 98.8 KB (98771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031623f9a53b244cfd91d817bb0ca25e563e9d8ff3a87eccf4f28c99c7b7354b`  
		Last Modified: Thu, 10 Nov 2016 04:24:49 GMT  
		Size: 183.9 MB (183905571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cc5b8328ecc80ab6a9ff0125d96cb626668afe8d9c59131b244a49300bb792`  
		Last Modified: Thu, 10 Nov 2016 04:23:48 GMT  
		Size: 10.6 KB (10605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adae56261dc91450562ca2e40e27812173cfd7cc3b61ef7380d64185c572b3cb`  
		Last Modified: Thu, 10 Nov 2016 04:23:48 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:4`

```console
$ docker pull gcc@sha256:211f2a20dd8dac0f8c094514d9306bcb5b90fa422ae04830fa99a1c96eb5d03a
```

-	Platforms:
	-	linux; amd64

### `gcc:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426209260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc2c1b2249aa62174ba78d37ff5b03b73602c8c59cdf4c421f6cb9b909208da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 03:44:56 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 10 Nov 2016 03:45:02 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 10 Nov 2016 03:45:02 GMT
ENV GCC_VERSION=4.9.4
# Thu, 10 Nov 2016 04:21:08 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 10 Nov 2016 04:21:12 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Thu, 10 Nov 2016 04:21:15 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a758e309ab37f7b0855c8c07f8b73dd46ea40ab8ea13d7fae3e9d8ad712977e`  
		Last Modified: Thu, 10 Nov 2016 04:23:48 GMT  
		Size: 98.8 KB (98771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031623f9a53b244cfd91d817bb0ca25e563e9d8ff3a87eccf4f28c99c7b7354b`  
		Last Modified: Thu, 10 Nov 2016 04:24:49 GMT  
		Size: 183.9 MB (183905571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cc5b8328ecc80ab6a9ff0125d96cb626668afe8d9c59131b244a49300bb792`  
		Last Modified: Thu, 10 Nov 2016 04:23:48 GMT  
		Size: 10.6 KB (10605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adae56261dc91450562ca2e40e27812173cfd7cc3b61ef7380d64185c572b3cb`  
		Last Modified: Thu, 10 Nov 2016 04:23:48 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:5.4.0`

```console
$ docker pull gcc@sha256:1f16f60cf390a9f604beab3ca0e1e8521ee1d505115ee2047ef19d2d5d43bc6a
```

-	Platforms:
	-	linux; amd64

### `gcc:5.4.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.4 MB (440441592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b33f646ae18f42d3c6570ccc46b88db340d1856961a2c568efbfd9ffeb45df86`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 02:23:03 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Tue, 01 Nov 2016 02:23:08 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 01 Nov 2016 03:01:19 GMT
ENV GCC_VERSION=5.4.0
# Tue, 01 Nov 2016 03:53:58 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 03:54:02 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Tue, 01 Nov 2016 03:54:05 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8b4185a588a86c97381c9aef028c35575ded089b48791badfa9d300e2bd60c`  
		Last Modified: Tue, 01 Nov 2016 02:59:45 GMT  
		Size: 98.8 KB (98774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4f4e8c194090bbba9c0155d1d60926781a57f1a4a26a40b72260674d012b75`  
		Last Modified: Tue, 01 Nov 2016 04:00:59 GMT  
		Size: 198.1 MB (198128569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeb133b3a253834fbf0ced6d339504786c95d0fc24732e2e2c5d24c3f632d75`  
		Last Modified: Tue, 01 Nov 2016 03:59:50 GMT  
		Size: 10.7 KB (10730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f991c7733cb5d2b6570856fe65de315adfc454bdf34bd8304d5c12006b594884`  
		Last Modified: Tue, 01 Nov 2016 03:59:50 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:5.4`

```console
$ docker pull gcc@sha256:1f16f60cf390a9f604beab3ca0e1e8521ee1d505115ee2047ef19d2d5d43bc6a
```

-	Platforms:
	-	linux; amd64

### `gcc:5.4` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.4 MB (440441592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b33f646ae18f42d3c6570ccc46b88db340d1856961a2c568efbfd9ffeb45df86`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 02:23:03 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Tue, 01 Nov 2016 02:23:08 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 01 Nov 2016 03:01:19 GMT
ENV GCC_VERSION=5.4.0
# Tue, 01 Nov 2016 03:53:58 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 03:54:02 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Tue, 01 Nov 2016 03:54:05 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8b4185a588a86c97381c9aef028c35575ded089b48791badfa9d300e2bd60c`  
		Last Modified: Tue, 01 Nov 2016 02:59:45 GMT  
		Size: 98.8 KB (98774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4f4e8c194090bbba9c0155d1d60926781a57f1a4a26a40b72260674d012b75`  
		Last Modified: Tue, 01 Nov 2016 04:00:59 GMT  
		Size: 198.1 MB (198128569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeb133b3a253834fbf0ced6d339504786c95d0fc24732e2e2c5d24c3f632d75`  
		Last Modified: Tue, 01 Nov 2016 03:59:50 GMT  
		Size: 10.7 KB (10730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f991c7733cb5d2b6570856fe65de315adfc454bdf34bd8304d5c12006b594884`  
		Last Modified: Tue, 01 Nov 2016 03:59:50 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:5`

```console
$ docker pull gcc@sha256:1f16f60cf390a9f604beab3ca0e1e8521ee1d505115ee2047ef19d2d5d43bc6a
```

-	Platforms:
	-	linux; amd64

### `gcc:5` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.4 MB (440441592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b33f646ae18f42d3c6570ccc46b88db340d1856961a2c568efbfd9ffeb45df86`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 02:23:03 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Tue, 01 Nov 2016 02:23:08 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 01 Nov 2016 03:01:19 GMT
ENV GCC_VERSION=5.4.0
# Tue, 01 Nov 2016 03:53:58 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 03:54:02 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Tue, 01 Nov 2016 03:54:05 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8b4185a588a86c97381c9aef028c35575ded089b48791badfa9d300e2bd60c`  
		Last Modified: Tue, 01 Nov 2016 02:59:45 GMT  
		Size: 98.8 KB (98774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4f4e8c194090bbba9c0155d1d60926781a57f1a4a26a40b72260674d012b75`  
		Last Modified: Tue, 01 Nov 2016 04:00:59 GMT  
		Size: 198.1 MB (198128569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eeb133b3a253834fbf0ced6d339504786c95d0fc24732e2e2c5d24c3f632d75`  
		Last Modified: Tue, 01 Nov 2016 03:59:50 GMT  
		Size: 10.7 KB (10730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f991c7733cb5d2b6570856fe65de315adfc454bdf34bd8304d5c12006b594884`  
		Last Modified: Tue, 01 Nov 2016 03:59:50 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6.2.0`

```console
$ docker pull gcc@sha256:35df9cf0147f254d7fea3dd9d0cc703c45ed8483ebdfadd04e6718906402987f
```

-	Platforms:
	-	linux; amd64

### `gcc:6.2.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.1 MB (454138841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5c40f83d3381a8a6f0d14afd6fdffedd78d8f5b8f515407c41591b807a03e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 02:23:03 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Tue, 01 Nov 2016 02:23:08 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 01 Nov 2016 04:01:34 GMT
ENV GCC_VERSION=6.2.0
# Tue, 01 Nov 2016 05:02:26 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 05:02:35 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Tue, 01 Nov 2016 05:02:37 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8b4185a588a86c97381c9aef028c35575ded089b48791badfa9d300e2bd60c`  
		Last Modified: Tue, 01 Nov 2016 02:59:45 GMT  
		Size: 98.8 KB (98774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfd01514d12eb214950a0fca8dab769c42eef232e903e3bc731cec238970963`  
		Last Modified: Tue, 01 Nov 2016 05:08:35 GMT  
		Size: 211.8 MB (211825851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190824c35a3628cc24f7c892311afd64afab4e4b6d510e1c84e1d01951caeb11`  
		Last Modified: Tue, 01 Nov 2016 05:07:27 GMT  
		Size: 10.7 KB (10700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0939e9732e3eab2f938a14dab71bfe431e1b221ed9f6b534043cd1a256feb45`  
		Last Modified: Tue, 01 Nov 2016 05:07:26 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6.2`

```console
$ docker pull gcc@sha256:35df9cf0147f254d7fea3dd9d0cc703c45ed8483ebdfadd04e6718906402987f
```

-	Platforms:
	-	linux; amd64

### `gcc:6.2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.1 MB (454138841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5c40f83d3381a8a6f0d14afd6fdffedd78d8f5b8f515407c41591b807a03e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 02:23:03 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Tue, 01 Nov 2016 02:23:08 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 01 Nov 2016 04:01:34 GMT
ENV GCC_VERSION=6.2.0
# Tue, 01 Nov 2016 05:02:26 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 05:02:35 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Tue, 01 Nov 2016 05:02:37 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8b4185a588a86c97381c9aef028c35575ded089b48791badfa9d300e2bd60c`  
		Last Modified: Tue, 01 Nov 2016 02:59:45 GMT  
		Size: 98.8 KB (98774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfd01514d12eb214950a0fca8dab769c42eef232e903e3bc731cec238970963`  
		Last Modified: Tue, 01 Nov 2016 05:08:35 GMT  
		Size: 211.8 MB (211825851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190824c35a3628cc24f7c892311afd64afab4e4b6d510e1c84e1d01951caeb11`  
		Last Modified: Tue, 01 Nov 2016 05:07:27 GMT  
		Size: 10.7 KB (10700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0939e9732e3eab2f938a14dab71bfe431e1b221ed9f6b534043cd1a256feb45`  
		Last Modified: Tue, 01 Nov 2016 05:07:26 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6`

```console
$ docker pull gcc@sha256:35df9cf0147f254d7fea3dd9d0cc703c45ed8483ebdfadd04e6718906402987f
```

-	Platforms:
	-	linux; amd64

### `gcc:6` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.1 MB (454138841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5c40f83d3381a8a6f0d14afd6fdffedd78d8f5b8f515407c41591b807a03e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 02:23:03 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Tue, 01 Nov 2016 02:23:08 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 01 Nov 2016 04:01:34 GMT
ENV GCC_VERSION=6.2.0
# Tue, 01 Nov 2016 05:02:26 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 05:02:35 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Tue, 01 Nov 2016 05:02:37 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8b4185a588a86c97381c9aef028c35575ded089b48791badfa9d300e2bd60c`  
		Last Modified: Tue, 01 Nov 2016 02:59:45 GMT  
		Size: 98.8 KB (98774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfd01514d12eb214950a0fca8dab769c42eef232e903e3bc731cec238970963`  
		Last Modified: Tue, 01 Nov 2016 05:08:35 GMT  
		Size: 211.8 MB (211825851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190824c35a3628cc24f7c892311afd64afab4e4b6d510e1c84e1d01951caeb11`  
		Last Modified: Tue, 01 Nov 2016 05:07:27 GMT  
		Size: 10.7 KB (10700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0939e9732e3eab2f938a14dab71bfe431e1b221ed9f6b534043cd1a256feb45`  
		Last Modified: Tue, 01 Nov 2016 05:07:26 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:latest`

```console
$ docker pull gcc@sha256:35df9cf0147f254d7fea3dd9d0cc703c45ed8483ebdfadd04e6718906402987f
```

-	Platforms:
	-	linux; amd64

### `gcc:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.1 MB (454138841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5c40f83d3381a8a6f0d14afd6fdffedd78d8f5b8f515407c41591b807a03e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 02:23:03 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Tue, 01 Nov 2016 02:23:08 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 01 Nov 2016 04:01:34 GMT
ENV GCC_VERSION=6.2.0
# Tue, 01 Nov 2016 05:02:26 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 05:02:35 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Tue, 01 Nov 2016 05:02:37 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8b4185a588a86c97381c9aef028c35575ded089b48791badfa9d300e2bd60c`  
		Last Modified: Tue, 01 Nov 2016 02:59:45 GMT  
		Size: 98.8 KB (98774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfd01514d12eb214950a0fca8dab769c42eef232e903e3bc731cec238970963`  
		Last Modified: Tue, 01 Nov 2016 05:08:35 GMT  
		Size: 211.8 MB (211825851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190824c35a3628cc24f7c892311afd64afab4e4b6d510e1c84e1d01951caeb11`  
		Last Modified: Tue, 01 Nov 2016 05:07:27 GMT  
		Size: 10.7 KB (10700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0939e9732e3eab2f938a14dab71bfe431e1b221ed9f6b534043cd1a256feb45`  
		Last Modified: Tue, 01 Nov 2016 05:07:26 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
