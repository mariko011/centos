<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `gcc`

-	[`gcc:4.9.4`](#gcc494)
-	[`gcc:4.9`](#gcc49)
-	[`gcc:4`](#gcc4)
-	[`gcc:5.4.0`](#gcc540)
-	[`gcc:5.4`](#gcc54)
-	[`gcc:5`](#gcc5)
-	[`gcc:6.3.0`](#gcc630)
-	[`gcc:6.3`](#gcc63)
-	[`gcc:6`](#gcc6)
-	[`gcc:7.1.0`](#gcc710)
-	[`gcc:7.1`](#gcc71)
-	[`gcc:7`](#gcc7)
-	[`gcc:latest`](#gcclatest)

## `gcc:4.9.4`

```console
$ docker pull gcc@sha256:66e953b559ff796936d2498210f7e0a0d1175908a9136339efdda69371e67889
```

-	Platforms:
	-	linux; amd64

### `gcc:4.9.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.6 MB (432626615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c00ea12d4faf21429291271ee431a362ac12fa231cc586e8da363caa530753`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 01:00:15 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 11 May 2017 01:00:20 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 11 May 2017 01:00:20 GMT
ENV GCC_VERSION=4.9.4
# Thu, 11 May 2017 23:45:57 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 23:46:03 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Thu, 11 May 2017 23:46:04 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf098ee2f5ca2db06c01a7c2795e708ee146c8e05aca1fc5fc4d7a1b6886d93d`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 107.2 KB (107210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5ff999210551791b7ee597b4253b83563fb2ee5e643ec5a085e1cefb00a68d`  
		Last Modified: Fri, 12 May 2017 04:42:18 GMT  
		Size: 185.6 MB (185594077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaa3518dfce1c091158a399fc85be5a704432ca328455aefd8addb80f95d005`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 10.8 KB (10841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5a87b5022d093bd29a1676c017d5a2e8f0f4bbbfb091b00ef7be2689f771e9`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:4.9`

```console
$ docker pull gcc@sha256:66e953b559ff796936d2498210f7e0a0d1175908a9136339efdda69371e67889
```

-	Platforms:
	-	linux; amd64

### `gcc:4.9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.6 MB (432626615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c00ea12d4faf21429291271ee431a362ac12fa231cc586e8da363caa530753`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 01:00:15 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 11 May 2017 01:00:20 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 11 May 2017 01:00:20 GMT
ENV GCC_VERSION=4.9.4
# Thu, 11 May 2017 23:45:57 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 23:46:03 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Thu, 11 May 2017 23:46:04 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf098ee2f5ca2db06c01a7c2795e708ee146c8e05aca1fc5fc4d7a1b6886d93d`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 107.2 KB (107210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5ff999210551791b7ee597b4253b83563fb2ee5e643ec5a085e1cefb00a68d`  
		Last Modified: Fri, 12 May 2017 04:42:18 GMT  
		Size: 185.6 MB (185594077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaa3518dfce1c091158a399fc85be5a704432ca328455aefd8addb80f95d005`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 10.8 KB (10841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5a87b5022d093bd29a1676c017d5a2e8f0f4bbbfb091b00ef7be2689f771e9`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:4`

```console
$ docker pull gcc@sha256:66e953b559ff796936d2498210f7e0a0d1175908a9136339efdda69371e67889
```

-	Platforms:
	-	linux; amd64

### `gcc:4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.6 MB (432626615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c00ea12d4faf21429291271ee431a362ac12fa231cc586e8da363caa530753`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 01:00:15 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 11 May 2017 01:00:20 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 11 May 2017 01:00:20 GMT
ENV GCC_VERSION=4.9.4
# Thu, 11 May 2017 23:45:57 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 23:46:03 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Thu, 11 May 2017 23:46:04 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf098ee2f5ca2db06c01a7c2795e708ee146c8e05aca1fc5fc4d7a1b6886d93d`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 107.2 KB (107210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5ff999210551791b7ee597b4253b83563fb2ee5e643ec5a085e1cefb00a68d`  
		Last Modified: Fri, 12 May 2017 04:42:18 GMT  
		Size: 185.6 MB (185594077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaa3518dfce1c091158a399fc85be5a704432ca328455aefd8addb80f95d005`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 10.8 KB (10841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5a87b5022d093bd29a1676c017d5a2e8f0f4bbbfb091b00ef7be2689f771e9`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:5.4.0`

```console
$ docker pull gcc@sha256:b5318bf910a41d87997a882cc02d9b527e5b6035b3abf66b0e3133562ba5da2c
```

-	Platforms:
	-	linux; amd64

### `gcc:5.4.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.1 MB (447104943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b68465122c2587e406221c71c9adbcbe5068e9580df2e33f6cb6ef546ea189`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 01:00:15 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 11 May 2017 01:00:20 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 11 May 2017 02:00:01 GMT
ENV GCC_VERSION=5.4.0
# Fri, 12 May 2017 00:48:14 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 00:48:19 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 12 May 2017 00:48:21 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf098ee2f5ca2db06c01a7c2795e708ee146c8e05aca1fc5fc4d7a1b6886d93d`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 107.2 KB (107210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a6c49e190cc562641a2fa3578c3be8c2fe75ab66b9993027fc8829264e6c7b`  
		Last Modified: Fri, 12 May 2017 04:46:03 GMT  
		Size: 200.1 MB (200072270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d279574d1a88cfe0741b3b8f7b5d1c432293490d5ea67bb253bc8600f6455df0`  
		Last Modified: Fri, 12 May 2017 04:43:30 GMT  
		Size: 11.0 KB (10979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32df0236fa044dbe9e64a7715ccebe2b10a9f1de510582b0a408d0ae221f5b1`  
		Last Modified: Fri, 12 May 2017 04:43:30 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:5.4`

```console
$ docker pull gcc@sha256:b5318bf910a41d87997a882cc02d9b527e5b6035b3abf66b0e3133562ba5da2c
```

-	Platforms:
	-	linux; amd64

### `gcc:5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.1 MB (447104943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b68465122c2587e406221c71c9adbcbe5068e9580df2e33f6cb6ef546ea189`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 01:00:15 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 11 May 2017 01:00:20 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 11 May 2017 02:00:01 GMT
ENV GCC_VERSION=5.4.0
# Fri, 12 May 2017 00:48:14 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 00:48:19 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 12 May 2017 00:48:21 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf098ee2f5ca2db06c01a7c2795e708ee146c8e05aca1fc5fc4d7a1b6886d93d`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 107.2 KB (107210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a6c49e190cc562641a2fa3578c3be8c2fe75ab66b9993027fc8829264e6c7b`  
		Last Modified: Fri, 12 May 2017 04:46:03 GMT  
		Size: 200.1 MB (200072270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d279574d1a88cfe0741b3b8f7b5d1c432293490d5ea67bb253bc8600f6455df0`  
		Last Modified: Fri, 12 May 2017 04:43:30 GMT  
		Size: 11.0 KB (10979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32df0236fa044dbe9e64a7715ccebe2b10a9f1de510582b0a408d0ae221f5b1`  
		Last Modified: Fri, 12 May 2017 04:43:30 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:5`

```console
$ docker pull gcc@sha256:b5318bf910a41d87997a882cc02d9b527e5b6035b3abf66b0e3133562ba5da2c
```

-	Platforms:
	-	linux; amd64

### `gcc:5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.1 MB (447104943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b68465122c2587e406221c71c9adbcbe5068e9580df2e33f6cb6ef546ea189`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 01:00:15 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 11 May 2017 01:00:20 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 11 May 2017 02:00:01 GMT
ENV GCC_VERSION=5.4.0
# Fri, 12 May 2017 00:48:14 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 00:48:19 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 12 May 2017 00:48:21 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf098ee2f5ca2db06c01a7c2795e708ee146c8e05aca1fc5fc4d7a1b6886d93d`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 107.2 KB (107210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a6c49e190cc562641a2fa3578c3be8c2fe75ab66b9993027fc8829264e6c7b`  
		Last Modified: Fri, 12 May 2017 04:46:03 GMT  
		Size: 200.1 MB (200072270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d279574d1a88cfe0741b3b8f7b5d1c432293490d5ea67bb253bc8600f6455df0`  
		Last Modified: Fri, 12 May 2017 04:43:30 GMT  
		Size: 11.0 KB (10979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32df0236fa044dbe9e64a7715ccebe2b10a9f1de510582b0a408d0ae221f5b1`  
		Last Modified: Fri, 12 May 2017 04:43:30 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6.3.0`

```console
$ docker pull gcc@sha256:19503efce14b84a7b8cdac4dc9499db965a2d3598bf2089e4e350ebbba163b3f
```

-	Platforms:
	-	linux; amd64

### `gcc:6.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.4 MB (461361553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816c424a9e101eb8757ddac1a0339cb05fa3eba728b32723578de86958f3ab5b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 01:00:15 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 11 May 2017 01:00:20 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 12 May 2017 01:15:52 GMT
ENV GCC_VERSION=6.3.0
# Fri, 12 May 2017 02:16:41 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 02:16:46 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 12 May 2017 02:16:48 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf098ee2f5ca2db06c01a7c2795e708ee146c8e05aca1fc5fc4d7a1b6886d93d`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 107.2 KB (107210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c460a12c9d69776a04a95a5a68896d58b64c0d1f39c2fcb34a373ce7d17b8480`  
		Last Modified: Fri, 12 May 2017 04:49:54 GMT  
		Size: 214.3 MB (214328933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a525ba78c0d3ac87e45d9911b06e7af0c9600d6d0f7bec2a54ecb7caef464118`  
		Last Modified: Fri, 12 May 2017 04:47:14 GMT  
		Size: 10.9 KB (10928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782d2c63c34ed28b1302e2a4f67a6e23106c6c3fdeea2e0863843e0786dbed4f`  
		Last Modified: Fri, 12 May 2017 04:47:14 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6.3`

```console
$ docker pull gcc@sha256:19503efce14b84a7b8cdac4dc9499db965a2d3598bf2089e4e350ebbba163b3f
```

-	Platforms:
	-	linux; amd64

### `gcc:6.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.4 MB (461361553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816c424a9e101eb8757ddac1a0339cb05fa3eba728b32723578de86958f3ab5b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 01:00:15 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 11 May 2017 01:00:20 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 12 May 2017 01:15:52 GMT
ENV GCC_VERSION=6.3.0
# Fri, 12 May 2017 02:16:41 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 02:16:46 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 12 May 2017 02:16:48 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf098ee2f5ca2db06c01a7c2795e708ee146c8e05aca1fc5fc4d7a1b6886d93d`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 107.2 KB (107210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c460a12c9d69776a04a95a5a68896d58b64c0d1f39c2fcb34a373ce7d17b8480`  
		Last Modified: Fri, 12 May 2017 04:49:54 GMT  
		Size: 214.3 MB (214328933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a525ba78c0d3ac87e45d9911b06e7af0c9600d6d0f7bec2a54ecb7caef464118`  
		Last Modified: Fri, 12 May 2017 04:47:14 GMT  
		Size: 10.9 KB (10928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782d2c63c34ed28b1302e2a4f67a6e23106c6c3fdeea2e0863843e0786dbed4f`  
		Last Modified: Fri, 12 May 2017 04:47:14 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6`

```console
$ docker pull gcc@sha256:19503efce14b84a7b8cdac4dc9499db965a2d3598bf2089e4e350ebbba163b3f
```

-	Platforms:
	-	linux; amd64

### `gcc:6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.4 MB (461361553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816c424a9e101eb8757ddac1a0339cb05fa3eba728b32723578de86958f3ab5b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 01:00:15 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 11 May 2017 01:00:20 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 12 May 2017 01:15:52 GMT
ENV GCC_VERSION=6.3.0
# Fri, 12 May 2017 02:16:41 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 02:16:46 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 12 May 2017 02:16:48 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf098ee2f5ca2db06c01a7c2795e708ee146c8e05aca1fc5fc4d7a1b6886d93d`  
		Last Modified: Fri, 12 May 2017 04:39:55 GMT  
		Size: 107.2 KB (107210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c460a12c9d69776a04a95a5a68896d58b64c0d1f39c2fcb34a373ce7d17b8480`  
		Last Modified: Fri, 12 May 2017 04:49:54 GMT  
		Size: 214.3 MB (214328933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a525ba78c0d3ac87e45d9911b06e7af0c9600d6d0f7bec2a54ecb7caef464118`  
		Last Modified: Fri, 12 May 2017 04:47:14 GMT  
		Size: 10.9 KB (10928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782d2c63c34ed28b1302e2a4f67a6e23106c6c3fdeea2e0863843e0786dbed4f`  
		Last Modified: Fri, 12 May 2017 04:47:14 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:7.1.0`

```console
$ docker pull gcc@sha256:680594ff9afe0bc8a825df2ca9b2b329f46772ffbd128aaddc107faa9b07b7dc
```

-	Platforms:
	-	linux; amd64

### `gcc:7.1.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.8 MB (523754034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecef46624bf2cf452e3dcbc43562bcf3d2448275663528dbef17361152dd4196`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:35:51 GMT
ADD file:12fbfae009c2bca2e7919562183a741eb25cea584815246d61e323976c92ae04 in / 
# Mon, 08 May 2017 23:36:09 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:04:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 12 May 2017 02:42:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 12 May 2017 02:42:06 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Fri, 12 May 2017 02:42:13 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 12 May 2017 02:42:13 GMT
ENV GCC_VERSION=7.1.0
# Fri, 12 May 2017 03:52:49 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 03:52:57 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 12 May 2017 03:52:58 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:d31335c0dd8283dbd495d268a45a398386ea56ca38084475bcac53ec65d38edb`  
		Last Modified: Mon, 08 May 2017 23:51:51 GMT  
		Size: 45.1 MB (45071306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9fcf2064a61b29819273cc2455b76efcc50bc3f24b2d2a348c97e996eb427`  
		Last Modified: Tue, 09 May 2017 16:00:45 GMT  
		Size: 21.3 MB (21267722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6503329fc20d92a20fa42a4d81064315619eaa3304b135abe7fa9d3ecd3c19d4`  
		Last Modified: Tue, 09 May 2017 16:01:20 GMT  
		Size: 40.8 MB (40807987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddd3fbb97c8f72de751be8db08eb63c790a95840cfbe6fbdf269069a7fe84c3`  
		Last Modified: Tue, 09 May 2017 16:02:22 GMT  
		Size: 211.0 MB (211007254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449f7d1fb4cdab5482acb06008f195b869d307b10e2c5cf9fab7e91f7de95a6c`  
		Last Modified: Fri, 12 May 2017 04:51:08 GMT  
		Size: 3.7 MB (3658968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025aedaf080a98e837b949f693cfc1446dcc50c2f2ecca8fa277f2c3c2061456`  
		Last Modified: Fri, 12 May 2017 04:51:07 GMT  
		Size: 105.4 KB (105398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab26d61f40338687fdb36a7f5ae81327bcd35cb63229958b74ffeaf8d3e3d4e0`  
		Last Modified: Fri, 12 May 2017 04:53:24 GMT  
		Size: 201.8 MB (201821152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396d1853f89b4d8724826dbfa9735ac9feeda4e7a522bafbe7fb66ae58b1320`  
		Last Modified: Fri, 12 May 2017 04:51:08 GMT  
		Size: 11.9 KB (11876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1667f9ffa02e8cc8c48b4204e019a1995ebaaf7f1373d65cdae4d1e611ffb31c`  
		Last Modified: Fri, 12 May 2017 04:51:06 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:7.1`

```console
$ docker pull gcc@sha256:680594ff9afe0bc8a825df2ca9b2b329f46772ffbd128aaddc107faa9b07b7dc
```

-	Platforms:
	-	linux; amd64

### `gcc:7.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.8 MB (523754034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecef46624bf2cf452e3dcbc43562bcf3d2448275663528dbef17361152dd4196`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:35:51 GMT
ADD file:12fbfae009c2bca2e7919562183a741eb25cea584815246d61e323976c92ae04 in / 
# Mon, 08 May 2017 23:36:09 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:04:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 12 May 2017 02:42:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 12 May 2017 02:42:06 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Fri, 12 May 2017 02:42:13 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 12 May 2017 02:42:13 GMT
ENV GCC_VERSION=7.1.0
# Fri, 12 May 2017 03:52:49 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 03:52:57 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 12 May 2017 03:52:58 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:d31335c0dd8283dbd495d268a45a398386ea56ca38084475bcac53ec65d38edb`  
		Last Modified: Mon, 08 May 2017 23:51:51 GMT  
		Size: 45.1 MB (45071306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9fcf2064a61b29819273cc2455b76efcc50bc3f24b2d2a348c97e996eb427`  
		Last Modified: Tue, 09 May 2017 16:00:45 GMT  
		Size: 21.3 MB (21267722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6503329fc20d92a20fa42a4d81064315619eaa3304b135abe7fa9d3ecd3c19d4`  
		Last Modified: Tue, 09 May 2017 16:01:20 GMT  
		Size: 40.8 MB (40807987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddd3fbb97c8f72de751be8db08eb63c790a95840cfbe6fbdf269069a7fe84c3`  
		Last Modified: Tue, 09 May 2017 16:02:22 GMT  
		Size: 211.0 MB (211007254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449f7d1fb4cdab5482acb06008f195b869d307b10e2c5cf9fab7e91f7de95a6c`  
		Last Modified: Fri, 12 May 2017 04:51:08 GMT  
		Size: 3.7 MB (3658968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025aedaf080a98e837b949f693cfc1446dcc50c2f2ecca8fa277f2c3c2061456`  
		Last Modified: Fri, 12 May 2017 04:51:07 GMT  
		Size: 105.4 KB (105398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab26d61f40338687fdb36a7f5ae81327bcd35cb63229958b74ffeaf8d3e3d4e0`  
		Last Modified: Fri, 12 May 2017 04:53:24 GMT  
		Size: 201.8 MB (201821152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396d1853f89b4d8724826dbfa9735ac9feeda4e7a522bafbe7fb66ae58b1320`  
		Last Modified: Fri, 12 May 2017 04:51:08 GMT  
		Size: 11.9 KB (11876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1667f9ffa02e8cc8c48b4204e019a1995ebaaf7f1373d65cdae4d1e611ffb31c`  
		Last Modified: Fri, 12 May 2017 04:51:06 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:7`

```console
$ docker pull gcc@sha256:680594ff9afe0bc8a825df2ca9b2b329f46772ffbd128aaddc107faa9b07b7dc
```

-	Platforms:
	-	linux; amd64

### `gcc:7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.8 MB (523754034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecef46624bf2cf452e3dcbc43562bcf3d2448275663528dbef17361152dd4196`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:35:51 GMT
ADD file:12fbfae009c2bca2e7919562183a741eb25cea584815246d61e323976c92ae04 in / 
# Mon, 08 May 2017 23:36:09 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:04:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 12 May 2017 02:42:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 12 May 2017 02:42:06 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Fri, 12 May 2017 02:42:13 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 12 May 2017 02:42:13 GMT
ENV GCC_VERSION=7.1.0
# Fri, 12 May 2017 03:52:49 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 03:52:57 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 12 May 2017 03:52:58 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:d31335c0dd8283dbd495d268a45a398386ea56ca38084475bcac53ec65d38edb`  
		Last Modified: Mon, 08 May 2017 23:51:51 GMT  
		Size: 45.1 MB (45071306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9fcf2064a61b29819273cc2455b76efcc50bc3f24b2d2a348c97e996eb427`  
		Last Modified: Tue, 09 May 2017 16:00:45 GMT  
		Size: 21.3 MB (21267722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6503329fc20d92a20fa42a4d81064315619eaa3304b135abe7fa9d3ecd3c19d4`  
		Last Modified: Tue, 09 May 2017 16:01:20 GMT  
		Size: 40.8 MB (40807987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddd3fbb97c8f72de751be8db08eb63c790a95840cfbe6fbdf269069a7fe84c3`  
		Last Modified: Tue, 09 May 2017 16:02:22 GMT  
		Size: 211.0 MB (211007254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449f7d1fb4cdab5482acb06008f195b869d307b10e2c5cf9fab7e91f7de95a6c`  
		Last Modified: Fri, 12 May 2017 04:51:08 GMT  
		Size: 3.7 MB (3658968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025aedaf080a98e837b949f693cfc1446dcc50c2f2ecca8fa277f2c3c2061456`  
		Last Modified: Fri, 12 May 2017 04:51:07 GMT  
		Size: 105.4 KB (105398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab26d61f40338687fdb36a7f5ae81327bcd35cb63229958b74ffeaf8d3e3d4e0`  
		Last Modified: Fri, 12 May 2017 04:53:24 GMT  
		Size: 201.8 MB (201821152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396d1853f89b4d8724826dbfa9735ac9feeda4e7a522bafbe7fb66ae58b1320`  
		Last Modified: Fri, 12 May 2017 04:51:08 GMT  
		Size: 11.9 KB (11876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1667f9ffa02e8cc8c48b4204e019a1995ebaaf7f1373d65cdae4d1e611ffb31c`  
		Last Modified: Fri, 12 May 2017 04:51:06 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:latest`

```console
$ docker pull gcc@sha256:680594ff9afe0bc8a825df2ca9b2b329f46772ffbd128aaddc107faa9b07b7dc
```

-	Platforms:
	-	linux; amd64

### `gcc:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.8 MB (523754034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecef46624bf2cf452e3dcbc43562bcf3d2448275663528dbef17361152dd4196`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:35:51 GMT
ADD file:12fbfae009c2bca2e7919562183a741eb25cea584815246d61e323976c92ae04 in / 
# Mon, 08 May 2017 23:36:09 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:04:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 12 May 2017 02:42:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 12 May 2017 02:42:06 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Fri, 12 May 2017 02:42:13 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 12 May 2017 02:42:13 GMT
ENV GCC_VERSION=7.1.0
# Fri, 12 May 2017 03:52:49 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 12 May 2017 03:52:57 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 12 May 2017 03:52:58 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:d31335c0dd8283dbd495d268a45a398386ea56ca38084475bcac53ec65d38edb`  
		Last Modified: Mon, 08 May 2017 23:51:51 GMT  
		Size: 45.1 MB (45071306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9fcf2064a61b29819273cc2455b76efcc50bc3f24b2d2a348c97e996eb427`  
		Last Modified: Tue, 09 May 2017 16:00:45 GMT  
		Size: 21.3 MB (21267722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6503329fc20d92a20fa42a4d81064315619eaa3304b135abe7fa9d3ecd3c19d4`  
		Last Modified: Tue, 09 May 2017 16:01:20 GMT  
		Size: 40.8 MB (40807987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddd3fbb97c8f72de751be8db08eb63c790a95840cfbe6fbdf269069a7fe84c3`  
		Last Modified: Tue, 09 May 2017 16:02:22 GMT  
		Size: 211.0 MB (211007254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449f7d1fb4cdab5482acb06008f195b869d307b10e2c5cf9fab7e91f7de95a6c`  
		Last Modified: Fri, 12 May 2017 04:51:08 GMT  
		Size: 3.7 MB (3658968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025aedaf080a98e837b949f693cfc1446dcc50c2f2ecca8fa277f2c3c2061456`  
		Last Modified: Fri, 12 May 2017 04:51:07 GMT  
		Size: 105.4 KB (105398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab26d61f40338687fdb36a7f5ae81327bcd35cb63229958b74ffeaf8d3e3d4e0`  
		Last Modified: Fri, 12 May 2017 04:53:24 GMT  
		Size: 201.8 MB (201821152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396d1853f89b4d8724826dbfa9735ac9feeda4e7a522bafbe7fb66ae58b1320`  
		Last Modified: Fri, 12 May 2017 04:51:08 GMT  
		Size: 11.9 KB (11876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1667f9ffa02e8cc8c48b4204e019a1995ebaaf7f1373d65cdae4d1e611ffb31c`  
		Last Modified: Fri, 12 May 2017 04:51:06 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
