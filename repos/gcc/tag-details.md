<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `gcc`

-	[`gcc:5.3.0`](#gcc530)
-	[`gcc:5.3`](#gcc53)
-	[`gcc:5`](#gcc5)
-	[`gcc:6.1.0`](#gcc610)
-	[`gcc:6.1`](#gcc61)
-	[`gcc:6`](#gcc6)
-	[`gcc:latest`](#gcclatest)

## `gcc:5.3.0`

```console
$ docker pull gcc@sha256:471c9bff169890d8c582b7de291c26fd4a1ab73937d254d16f1b7c24cb654aea
```

-	Platforms:
	-	linux; amd64

### `gcc:5.3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.3 MB (440257868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad17e508027e2b96ade47edf8a2f9a9f083807c0b6e229d9a6de1e605c1d3e6b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 16:28:15 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Wed, 31 Aug 2016 16:28:20 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Aug 2016 17:23:50 GMT
ENV GCC_VERSION=5.3.0
# Wed, 31 Aug 2016 18:26:09 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 18:26:16 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Wed, 31 Aug 2016 18:26:18 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650577d4d8b21d98e9cf7eac12b64204eb9e3dc212daeb7c2bea45ad4c9256a9`  
		Last Modified: Fri, 16 Sep 2016 19:06:44 GMT  
		Size: 98.8 KB (98774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a63e7f6de4431e1a7164c8fcb2ef6f10b5909fda3f51dc0375123e3cec1d462`  
		Last Modified: Fri, 16 Sep 2016 19:08:38 GMT  
		Size: 198.0 MB (198006346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7333d3280704d7f4051f11dc9333d4c7d9ebfd2be6d3cca7ee554d5008fe3e9c`  
		Last Modified: Fri, 16 Sep 2016 19:06:43 GMT  
		Size: 10.7 KB (10689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72abacb192ddf2bf0ef3bd2a43f5d04055311d2f265b0b78dfd25ae68e6cab8`  
		Last Modified: Fri, 16 Sep 2016 19:06:44 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:5.3`

```console
$ docker pull gcc@sha256:471c9bff169890d8c582b7de291c26fd4a1ab73937d254d16f1b7c24cb654aea
```

-	Platforms:
	-	linux; amd64

### `gcc:5.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.3 MB (440257868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad17e508027e2b96ade47edf8a2f9a9f083807c0b6e229d9a6de1e605c1d3e6b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 16:28:15 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Wed, 31 Aug 2016 16:28:20 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Aug 2016 17:23:50 GMT
ENV GCC_VERSION=5.3.0
# Wed, 31 Aug 2016 18:26:09 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 18:26:16 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Wed, 31 Aug 2016 18:26:18 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650577d4d8b21d98e9cf7eac12b64204eb9e3dc212daeb7c2bea45ad4c9256a9`  
		Last Modified: Fri, 16 Sep 2016 19:06:44 GMT  
		Size: 98.8 KB (98774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a63e7f6de4431e1a7164c8fcb2ef6f10b5909fda3f51dc0375123e3cec1d462`  
		Last Modified: Fri, 16 Sep 2016 19:08:38 GMT  
		Size: 198.0 MB (198006346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7333d3280704d7f4051f11dc9333d4c7d9ebfd2be6d3cca7ee554d5008fe3e9c`  
		Last Modified: Fri, 16 Sep 2016 19:06:43 GMT  
		Size: 10.7 KB (10689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72abacb192ddf2bf0ef3bd2a43f5d04055311d2f265b0b78dfd25ae68e6cab8`  
		Last Modified: Fri, 16 Sep 2016 19:06:44 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:5`

```console
$ docker pull gcc@sha256:b4833a3e21feb3b9f9e3958d39420d02a94227ecd98fdaf6f21f22b6ba01e27a
```

-	Platforms:
	-	linux; amd64

### `gcc:5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.7 MB (440729801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade1a5b6672afc872bc1acffeb7e88d758e1ebc4287c41905ac7bcaa2b88bcb3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Aug 2016 20:21:29 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 25 Aug 2016 20:21:35 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 25 Aug 2016 22:56:15 GMT
ENV GCC_VERSION=5.3.0
# Fri, 26 Aug 2016 00:07:41 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 26 Aug 2016 00:07:46 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 26 Aug 2016 00:07:47 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831b6a663cd9e685c83e3febdafc1dce857977fd0dd7cc7eb82b1e83a4c6ac6e`  
		Last Modified: Thu, 25 Aug 2016 21:31:21 GMT  
		Size: 98.8 KB (98773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c1a17730b6263d2ccc933cd459344ade50b7b062d2bd6e5c4d865a0b071cc`  
		Last Modified: Fri, 26 Aug 2016 00:09:12 GMT  
		Size: 198.0 MB (197984831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8256922b435da1bc2a97a7bad55333ea11f9940a591eb431ae9f5c53889f6bb6`  
		Last Modified: Fri, 26 Aug 2016 00:07:59 GMT  
		Size: 10.7 KB (10696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83cf2e9cc58d1b5c20d88a3931217a7c585f91d8034ea211ae4b279fa3a59cd`  
		Last Modified: Fri, 26 Aug 2016 00:07:59 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6.1.0`

```console
$ docker pull gcc@sha256:1f5f21fecadb663acf7052f0c519e17d1e5bb48157a852f88cf6fae2aa802e2b
```

-	Platforms:
	-	linux; amd64

### `gcc:6.1.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.8 MB (453807160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e391c8bb12ad9f1dc7cc1029e066f6db9ef6115e2304b45960a516d8c614cdd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Aug 2016 20:21:29 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 25 Aug 2016 20:21:35 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 25 Aug 2016 21:32:52 GMT
ENV GCC_VERSION=6.1.0
# Thu, 25 Aug 2016 22:53:53 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 25 Aug 2016 22:53:58 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Thu, 25 Aug 2016 22:53:59 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831b6a663cd9e685c83e3febdafc1dce857977fd0dd7cc7eb82b1e83a4c6ac6e`  
		Last Modified: Thu, 25 Aug 2016 21:31:21 GMT  
		Size: 98.8 KB (98773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad9964171a5040d758f353ce4d3d1e3f88ce0ef14c339bd7f831b72c672a1a3`  
		Last Modified: Thu, 25 Aug 2016 22:55:32 GMT  
		Size: 211.1 MB (211062185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9f04c2e14432269d8ef5ba3d2abf3760b42a7938617395e4e74b093b8cdc3e`  
		Last Modified: Thu, 25 Aug 2016 22:54:14 GMT  
		Size: 10.7 KB (10703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b58308934087e3edd5cab8c0406838a591886faeb268ef23d16fb88a3aa2a4`  
		Last Modified: Thu, 25 Aug 2016 22:54:15 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6.1`

```console
$ docker pull gcc@sha256:1f5f21fecadb663acf7052f0c519e17d1e5bb48157a852f88cf6fae2aa802e2b
```

-	Platforms:
	-	linux; amd64

### `gcc:6.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.8 MB (453807160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e391c8bb12ad9f1dc7cc1029e066f6db9ef6115e2304b45960a516d8c614cdd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Aug 2016 20:21:29 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 25 Aug 2016 20:21:35 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 25 Aug 2016 21:32:52 GMT
ENV GCC_VERSION=6.1.0
# Thu, 25 Aug 2016 22:53:53 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 25 Aug 2016 22:53:58 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Thu, 25 Aug 2016 22:53:59 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831b6a663cd9e685c83e3febdafc1dce857977fd0dd7cc7eb82b1e83a4c6ac6e`  
		Last Modified: Thu, 25 Aug 2016 21:31:21 GMT  
		Size: 98.8 KB (98773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad9964171a5040d758f353ce4d3d1e3f88ce0ef14c339bd7f831b72c672a1a3`  
		Last Modified: Thu, 25 Aug 2016 22:55:32 GMT  
		Size: 211.1 MB (211062185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9f04c2e14432269d8ef5ba3d2abf3760b42a7938617395e4e74b093b8cdc3e`  
		Last Modified: Thu, 25 Aug 2016 22:54:14 GMT  
		Size: 10.7 KB (10703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b58308934087e3edd5cab8c0406838a591886faeb268ef23d16fb88a3aa2a4`  
		Last Modified: Thu, 25 Aug 2016 22:54:15 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6`

```console
$ docker pull gcc@sha256:1f5f21fecadb663acf7052f0c519e17d1e5bb48157a852f88cf6fae2aa802e2b
```

-	Platforms:
	-	linux; amd64

### `gcc:6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.8 MB (453807160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e391c8bb12ad9f1dc7cc1029e066f6db9ef6115e2304b45960a516d8c614cdd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Aug 2016 20:21:29 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 25 Aug 2016 20:21:35 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 25 Aug 2016 21:32:52 GMT
ENV GCC_VERSION=6.1.0
# Thu, 25 Aug 2016 22:53:53 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 25 Aug 2016 22:53:58 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Thu, 25 Aug 2016 22:53:59 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831b6a663cd9e685c83e3febdafc1dce857977fd0dd7cc7eb82b1e83a4c6ac6e`  
		Last Modified: Thu, 25 Aug 2016 21:31:21 GMT  
		Size: 98.8 KB (98773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad9964171a5040d758f353ce4d3d1e3f88ce0ef14c339bd7f831b72c672a1a3`  
		Last Modified: Thu, 25 Aug 2016 22:55:32 GMT  
		Size: 211.1 MB (211062185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9f04c2e14432269d8ef5ba3d2abf3760b42a7938617395e4e74b093b8cdc3e`  
		Last Modified: Thu, 25 Aug 2016 22:54:14 GMT  
		Size: 10.7 KB (10703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b58308934087e3edd5cab8c0406838a591886faeb268ef23d16fb88a3aa2a4`  
		Last Modified: Thu, 25 Aug 2016 22:54:15 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:latest`

```console
$ docker pull gcc@sha256:9d44d464022c0a9103ebe8a96a764b4c38428cd5fab0ad7625a04b33b5495844
```

-	Platforms:
	-	linux; amd64

### `gcc:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.3 MB (453321876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9963e9acf5da5b37d4913b4d3869a2357199d8a9bf083f934c5e9bb2db074884`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 16:28:15 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Wed, 31 Aug 2016 16:28:20 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Aug 2016 18:26:19 GMT
ENV GCC_VERSION=6.1.0
# Wed, 31 Aug 2016 19:25:55 GMT
RUN buildDeps='flex' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& /usr/src/gcc/configure 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 19:25:57 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Wed, 31 Aug 2016 19:26:00 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650577d4d8b21d98e9cf7eac12b64204eb9e3dc212daeb7c2bea45ad4c9256a9`  
		Last Modified: Fri, 16 Sep 2016 19:06:44 GMT  
		Size: 98.8 KB (98774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af968f2882054669bec34660ffefcc7e46e3cc9604611ad5bb384cd2a55c6ae`  
		Last Modified: Fri, 16 Sep 2016 19:11:14 GMT  
		Size: 211.1 MB (211070317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a04a10c1958de6fbf4119a1fdb4d0d04dcaaca249c28a8c67b3703a38754581`  
		Last Modified: Fri, 16 Sep 2016 19:09:07 GMT  
		Size: 10.7 KB (10721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568359e234999b7237b79ac46a6a009d72fd1627bda7de31a2a867729e6d09b2`  
		Last Modified: Fri, 16 Sep 2016 19:09:07 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
