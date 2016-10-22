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
$ docker pull gcc@sha256:8fd25f69c0ffed268bd649032d06a5ac6f11972fd0bd166fba5c26581602dc4a
```

-	Platforms:
	-	linux; amd64

### `gcc:4.9.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426164716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db36dd9f0898d0b2735c842ba643c12bc813950599a5eac93d1bce2addb2b845`
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
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 03:28:25 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Sat, 22 Oct 2016 03:28:29 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 22 Oct 2016 03:28:29 GMT
ENV GCC_VERSION=4.9.4
# Sat, 22 Oct 2016 04:05:07 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 22 Oct 2016 04:05:11 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Sat, 22 Oct 2016 04:05:13 GMT
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
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97978d2e6f1c9c5a8714f67303b178e5b6c5df20a539091fd5171cd977010c6`  
		Last Modified: Sat, 22 Oct 2016 04:08:02 GMT  
		Size: 98.8 KB (98771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc9c11f322955dccdff7c2a4063abf53a9ddf9a1cdb336c451431fff2d18402`  
		Last Modified: Sat, 22 Oct 2016 04:09:03 GMT  
		Size: 183.9 MB (183906218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8f21ea59e028c303fd39ab36346aebc58997c63977497770733bde418a0b85`  
		Last Modified: Sat, 22 Oct 2016 04:08:01 GMT  
		Size: 10.6 KB (10566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d37eff870de99abefd26fede4ce01b4d22916a148a18ec83d61c86b67dbc27`  
		Last Modified: Sat, 22 Oct 2016 04:08:03 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:4.9`

```console
$ docker pull gcc@sha256:8fd25f69c0ffed268bd649032d06a5ac6f11972fd0bd166fba5c26581602dc4a
```

-	Platforms:
	-	linux; amd64

### `gcc:4.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426164716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db36dd9f0898d0b2735c842ba643c12bc813950599a5eac93d1bce2addb2b845`
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
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 03:28:25 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Sat, 22 Oct 2016 03:28:29 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 22 Oct 2016 03:28:29 GMT
ENV GCC_VERSION=4.9.4
# Sat, 22 Oct 2016 04:05:07 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 22 Oct 2016 04:05:11 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Sat, 22 Oct 2016 04:05:13 GMT
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
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97978d2e6f1c9c5a8714f67303b178e5b6c5df20a539091fd5171cd977010c6`  
		Last Modified: Sat, 22 Oct 2016 04:08:02 GMT  
		Size: 98.8 KB (98771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc9c11f322955dccdff7c2a4063abf53a9ddf9a1cdb336c451431fff2d18402`  
		Last Modified: Sat, 22 Oct 2016 04:09:03 GMT  
		Size: 183.9 MB (183906218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8f21ea59e028c303fd39ab36346aebc58997c63977497770733bde418a0b85`  
		Last Modified: Sat, 22 Oct 2016 04:08:01 GMT  
		Size: 10.6 KB (10566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d37eff870de99abefd26fede4ce01b4d22916a148a18ec83d61c86b67dbc27`  
		Last Modified: Sat, 22 Oct 2016 04:08:03 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:4`

```console
$ docker pull gcc@sha256:8fd25f69c0ffed268bd649032d06a5ac6f11972fd0bd166fba5c26581602dc4a
```

-	Platforms:
	-	linux; amd64

### `gcc:4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426164716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db36dd9f0898d0b2735c842ba643c12bc813950599a5eac93d1bce2addb2b845`
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
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 03:28:25 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Sat, 22 Oct 2016 03:28:29 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 22 Oct 2016 03:28:29 GMT
ENV GCC_VERSION=4.9.4
# Sat, 22 Oct 2016 04:05:07 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 22 Oct 2016 04:05:11 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Sat, 22 Oct 2016 04:05:13 GMT
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
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97978d2e6f1c9c5a8714f67303b178e5b6c5df20a539091fd5171cd977010c6`  
		Last Modified: Sat, 22 Oct 2016 04:08:02 GMT  
		Size: 98.8 KB (98771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc9c11f322955dccdff7c2a4063abf53a9ddf9a1cdb336c451431fff2d18402`  
		Last Modified: Sat, 22 Oct 2016 04:09:03 GMT  
		Size: 183.9 MB (183906218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8f21ea59e028c303fd39ab36346aebc58997c63977497770733bde418a0b85`  
		Last Modified: Sat, 22 Oct 2016 04:08:01 GMT  
		Size: 10.6 KB (10566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d37eff870de99abefd26fede4ce01b4d22916a148a18ec83d61c86b67dbc27`  
		Last Modified: Sat, 22 Oct 2016 04:08:03 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:5.4.0`

```console
$ docker pull gcc@sha256:b4b527e16f90ab7642cce33e163392ecaf6fa27fea0568927d0f8f2bb6b1cac2
```

-	Platforms:
	-	linux; amd64

### `gcc:5.4.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.4 MB (440385725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003e3430d4efd4d08a3ad04ff2982ef3cf5b757690a522c0697d6d51c23b824d`
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
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 03:28:25 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Sat, 22 Oct 2016 03:28:29 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 22 Oct 2016 04:09:34 GMT
ENV GCC_VERSION=5.4.0
# Sat, 22 Oct 2016 05:03:13 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 22 Oct 2016 05:03:18 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Sat, 22 Oct 2016 05:03:20 GMT
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
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97978d2e6f1c9c5a8714f67303b178e5b6c5df20a539091fd5171cd977010c6`  
		Last Modified: Sat, 22 Oct 2016 04:08:02 GMT  
		Size: 98.8 KB (98771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c34ced73d04773f46da8711c8ab243c3f791e71753d5e56aacda8d4af8199ce`  
		Last Modified: Sat, 22 Oct 2016 05:10:54 GMT  
		Size: 198.1 MB (198127128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de370a8bb89fef77024850f1d9862dd24c6c140e5a1e90d7c76b6cfae16032c1`  
		Last Modified: Sat, 22 Oct 2016 05:09:48 GMT  
		Size: 10.7 KB (10654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390c170361a587f71ce1c8720fc6f7745981c9097c1472d629ccf63e2e1997a2`  
		Last Modified: Sat, 22 Oct 2016 05:09:48 GMT  
		Size: 1.8 KB (1841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:5.4`

```console
$ docker pull gcc@sha256:b4b527e16f90ab7642cce33e163392ecaf6fa27fea0568927d0f8f2bb6b1cac2
```

-	Platforms:
	-	linux; amd64

### `gcc:5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.4 MB (440385725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003e3430d4efd4d08a3ad04ff2982ef3cf5b757690a522c0697d6d51c23b824d`
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
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 03:28:25 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Sat, 22 Oct 2016 03:28:29 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 22 Oct 2016 04:09:34 GMT
ENV GCC_VERSION=5.4.0
# Sat, 22 Oct 2016 05:03:13 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 22 Oct 2016 05:03:18 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Sat, 22 Oct 2016 05:03:20 GMT
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
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97978d2e6f1c9c5a8714f67303b178e5b6c5df20a539091fd5171cd977010c6`  
		Last Modified: Sat, 22 Oct 2016 04:08:02 GMT  
		Size: 98.8 KB (98771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c34ced73d04773f46da8711c8ab243c3f791e71753d5e56aacda8d4af8199ce`  
		Last Modified: Sat, 22 Oct 2016 05:10:54 GMT  
		Size: 198.1 MB (198127128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de370a8bb89fef77024850f1d9862dd24c6c140e5a1e90d7c76b6cfae16032c1`  
		Last Modified: Sat, 22 Oct 2016 05:09:48 GMT  
		Size: 10.7 KB (10654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390c170361a587f71ce1c8720fc6f7745981c9097c1472d629ccf63e2e1997a2`  
		Last Modified: Sat, 22 Oct 2016 05:09:48 GMT  
		Size: 1.8 KB (1841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:5`

```console
$ docker pull gcc@sha256:b4b527e16f90ab7642cce33e163392ecaf6fa27fea0568927d0f8f2bb6b1cac2
```

-	Platforms:
	-	linux; amd64

### `gcc:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.4 MB (440385725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003e3430d4efd4d08a3ad04ff2982ef3cf5b757690a522c0697d6d51c23b824d`
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
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 03:28:25 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Sat, 22 Oct 2016 03:28:29 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 22 Oct 2016 04:09:34 GMT
ENV GCC_VERSION=5.4.0
# Sat, 22 Oct 2016 05:03:13 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 22 Oct 2016 05:03:18 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Sat, 22 Oct 2016 05:03:20 GMT
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
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97978d2e6f1c9c5a8714f67303b178e5b6c5df20a539091fd5171cd977010c6`  
		Last Modified: Sat, 22 Oct 2016 04:08:02 GMT  
		Size: 98.8 KB (98771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c34ced73d04773f46da8711c8ab243c3f791e71753d5e56aacda8d4af8199ce`  
		Last Modified: Sat, 22 Oct 2016 05:10:54 GMT  
		Size: 198.1 MB (198127128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de370a8bb89fef77024850f1d9862dd24c6c140e5a1e90d7c76b6cfae16032c1`  
		Last Modified: Sat, 22 Oct 2016 05:09:48 GMT  
		Size: 10.7 KB (10654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390c170361a587f71ce1c8720fc6f7745981c9097c1472d629ccf63e2e1997a2`  
		Last Modified: Sat, 22 Oct 2016 05:09:48 GMT  
		Size: 1.8 KB (1841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6.2.0`

```console
$ docker pull gcc@sha256:e79c0b62944946591d1c20c7e306c4e2ad50ea2c47c02dad022585cf8338da7b
```

-	Platforms:
	-	linux; amd64

### `gcc:6.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455359130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68875852df69fdc8e69c2a7e1641e7860bc287cc5f8fd68176ca88060396fea2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:58:40 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Sat, 24 Sep 2016 00:58:47 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 24 Sep 2016 02:35:08 GMT
ENV GCC_VERSION=6.2.0
# Sat, 24 Sep 2016 03:35:34 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 03:35:40 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Sat, 24 Sep 2016 03:35:43 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c44db5bfa27b04a97c7ccf7475d844d2623996debc4831e881c4b8d005e32a5`  
		Last Modified: Sat, 24 Sep 2016 01:35:22 GMT  
		Size: 98.8 KB (98769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2490dec6f1c4ab7bf6bf42899be388150d3a738f82e1fffb678dfe99146c4aa2`  
		Last Modified: Sat, 24 Sep 2016 03:40:51 GMT  
		Size: 211.8 MB (211825430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c123bd8b1b212251d915090c2dd82d7216f2b1333b41515b064b4448781c14`  
		Last Modified: Sat, 24 Sep 2016 03:39:42 GMT  
		Size: 10.7 KB (10716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896e59da698481404ce56cc6791b4615c69269aa398e030ab8e15d2087e9e926`  
		Last Modified: Sat, 24 Sep 2016 03:39:40 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6.2`

```console
$ docker pull gcc@sha256:e79c0b62944946591d1c20c7e306c4e2ad50ea2c47c02dad022585cf8338da7b
```

-	Platforms:
	-	linux; amd64

### `gcc:6.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455359130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68875852df69fdc8e69c2a7e1641e7860bc287cc5f8fd68176ca88060396fea2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:58:40 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Sat, 24 Sep 2016 00:58:47 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 24 Sep 2016 02:35:08 GMT
ENV GCC_VERSION=6.2.0
# Sat, 24 Sep 2016 03:35:34 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 03:35:40 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Sat, 24 Sep 2016 03:35:43 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c44db5bfa27b04a97c7ccf7475d844d2623996debc4831e881c4b8d005e32a5`  
		Last Modified: Sat, 24 Sep 2016 01:35:22 GMT  
		Size: 98.8 KB (98769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2490dec6f1c4ab7bf6bf42899be388150d3a738f82e1fffb678dfe99146c4aa2`  
		Last Modified: Sat, 24 Sep 2016 03:40:51 GMT  
		Size: 211.8 MB (211825430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c123bd8b1b212251d915090c2dd82d7216f2b1333b41515b064b4448781c14`  
		Last Modified: Sat, 24 Sep 2016 03:39:42 GMT  
		Size: 10.7 KB (10716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896e59da698481404ce56cc6791b4615c69269aa398e030ab8e15d2087e9e926`  
		Last Modified: Sat, 24 Sep 2016 03:39:40 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6`

```console
$ docker pull gcc@sha256:e79c0b62944946591d1c20c7e306c4e2ad50ea2c47c02dad022585cf8338da7b
```

-	Platforms:
	-	linux; amd64

### `gcc:6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455359130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68875852df69fdc8e69c2a7e1641e7860bc287cc5f8fd68176ca88060396fea2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:58:40 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Sat, 24 Sep 2016 00:58:47 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 24 Sep 2016 02:35:08 GMT
ENV GCC_VERSION=6.2.0
# Sat, 24 Sep 2016 03:35:34 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 03:35:40 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Sat, 24 Sep 2016 03:35:43 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c44db5bfa27b04a97c7ccf7475d844d2623996debc4831e881c4b8d005e32a5`  
		Last Modified: Sat, 24 Sep 2016 01:35:22 GMT  
		Size: 98.8 KB (98769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2490dec6f1c4ab7bf6bf42899be388150d3a738f82e1fffb678dfe99146c4aa2`  
		Last Modified: Sat, 24 Sep 2016 03:40:51 GMT  
		Size: 211.8 MB (211825430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c123bd8b1b212251d915090c2dd82d7216f2b1333b41515b064b4448781c14`  
		Last Modified: Sat, 24 Sep 2016 03:39:42 GMT  
		Size: 10.7 KB (10716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896e59da698481404ce56cc6791b4615c69269aa398e030ab8e15d2087e9e926`  
		Last Modified: Sat, 24 Sep 2016 03:39:40 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:latest`

```console
$ docker pull gcc@sha256:e79c0b62944946591d1c20c7e306c4e2ad50ea2c47c02dad022585cf8338da7b
```

-	Platforms:
	-	linux; amd64

### `gcc:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.4 MB (455359130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68875852df69fdc8e69c2a7e1641e7860bc287cc5f8fd68176ca88060396fea2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:58:40 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Sat, 24 Sep 2016 00:58:47 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 24 Sep 2016 02:35:08 GMT
ENV GCC_VERSION=6.2.0
# Sat, 24 Sep 2016 03:35:34 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 03:35:40 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Sat, 24 Sep 2016 03:35:43 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c44db5bfa27b04a97c7ccf7475d844d2623996debc4831e881c4b8d005e32a5`  
		Last Modified: Sat, 24 Sep 2016 01:35:22 GMT  
		Size: 98.8 KB (98769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2490dec6f1c4ab7bf6bf42899be388150d3a738f82e1fffb678dfe99146c4aa2`  
		Last Modified: Sat, 24 Sep 2016 03:40:51 GMT  
		Size: 211.8 MB (211825430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c123bd8b1b212251d915090c2dd82d7216f2b1333b41515b064b4448781c14`  
		Last Modified: Sat, 24 Sep 2016 03:39:42 GMT  
		Size: 10.7 KB (10716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896e59da698481404ce56cc6791b4615c69269aa398e030ab8e15d2087e9e926`  
		Last Modified: Sat, 24 Sep 2016 03:39:40 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
