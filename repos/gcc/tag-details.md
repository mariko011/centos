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
$ docker pull gcc@sha256:4dd17077531da328389408113772f1b87cf79e08d6e42671e85dfc154e8397c9
```

-	Platforms:
	-	linux; amd64

### `gcc:4.9.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.6 MB (432626156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5245c80cc19fb9f8349fda7fddf276c26c3d2c254926f78cc18394106b32ef32`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:26:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 22:49:49 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 08 Jun 2017 17:44:01 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 08 Jun 2017 17:44:22 GMT
ENV GCC_VERSION=4.9.4
# Thu, 08 Jun 2017 23:45:16 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& for f in config.guess config.sub; do 		wget -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Jun 2017 23:57:36 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 09 Jun 2017 00:20:32 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4125326b53d8463d437a9052d8fb892e1bf9e7dc8d68518ac9780611476123ec`  
		Last Modified: Wed, 07 Jun 2017 20:08:30 GMT  
		Size: 131.8 MB (131819207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04d37566ac85ba96d696bfcf913f5993587f4a3914b7bb0f49a629a3caffa5f`  
		Last Modified: Fri, 09 Jun 2017 05:55:05 GMT  
		Size: 107.2 KB (107213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a311e7863fdda26ace2569b0cab760377c8f7c85e1b679c4cf2dcf967f7e70a`  
		Last Modified: Fri, 09 Jun 2017 05:57:11 GMT  
		Size: 185.6 MB (185630557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02df9d12e3bb8bd74864ee7115807891b072bbd130bd16b7b176dc7a41675d32`  
		Last Modified: Fri, 09 Jun 2017 05:55:05 GMT  
		Size: 10.8 KB (10834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a73159cacbe1093da4d7092d9414cd742be4d2ac5c510f6ce44b53f1b19da5`  
		Last Modified: Fri, 09 Jun 2017 05:55:04 GMT  
		Size: 1.6 KB (1587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:4.9`

```console
$ docker pull gcc@sha256:4dd17077531da328389408113772f1b87cf79e08d6e42671e85dfc154e8397c9
```

-	Platforms:
	-	linux; amd64

### `gcc:4.9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.6 MB (432626156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5245c80cc19fb9f8349fda7fddf276c26c3d2c254926f78cc18394106b32ef32`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:26:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 22:49:49 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 08 Jun 2017 17:44:01 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 08 Jun 2017 17:44:22 GMT
ENV GCC_VERSION=4.9.4
# Thu, 08 Jun 2017 23:45:16 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& for f in config.guess config.sub; do 		wget -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Jun 2017 23:57:36 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 09 Jun 2017 00:20:32 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4125326b53d8463d437a9052d8fb892e1bf9e7dc8d68518ac9780611476123ec`  
		Last Modified: Wed, 07 Jun 2017 20:08:30 GMT  
		Size: 131.8 MB (131819207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04d37566ac85ba96d696bfcf913f5993587f4a3914b7bb0f49a629a3caffa5f`  
		Last Modified: Fri, 09 Jun 2017 05:55:05 GMT  
		Size: 107.2 KB (107213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a311e7863fdda26ace2569b0cab760377c8f7c85e1b679c4cf2dcf967f7e70a`  
		Last Modified: Fri, 09 Jun 2017 05:57:11 GMT  
		Size: 185.6 MB (185630557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02df9d12e3bb8bd74864ee7115807891b072bbd130bd16b7b176dc7a41675d32`  
		Last Modified: Fri, 09 Jun 2017 05:55:05 GMT  
		Size: 10.8 KB (10834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a73159cacbe1093da4d7092d9414cd742be4d2ac5c510f6ce44b53f1b19da5`  
		Last Modified: Fri, 09 Jun 2017 05:55:04 GMT  
		Size: 1.6 KB (1587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:4`

```console
$ docker pull gcc@sha256:4dd17077531da328389408113772f1b87cf79e08d6e42671e85dfc154e8397c9
```

-	Platforms:
	-	linux; amd64

### `gcc:4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.6 MB (432626156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5245c80cc19fb9f8349fda7fddf276c26c3d2c254926f78cc18394106b32ef32`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:26:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 22:49:49 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 08 Jun 2017 17:44:01 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 08 Jun 2017 17:44:22 GMT
ENV GCC_VERSION=4.9.4
# Thu, 08 Jun 2017 23:45:16 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& for f in config.guess config.sub; do 		wget -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Jun 2017 23:57:36 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 09 Jun 2017 00:20:32 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4125326b53d8463d437a9052d8fb892e1bf9e7dc8d68518ac9780611476123ec`  
		Last Modified: Wed, 07 Jun 2017 20:08:30 GMT  
		Size: 131.8 MB (131819207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04d37566ac85ba96d696bfcf913f5993587f4a3914b7bb0f49a629a3caffa5f`  
		Last Modified: Fri, 09 Jun 2017 05:55:05 GMT  
		Size: 107.2 KB (107213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a311e7863fdda26ace2569b0cab760377c8f7c85e1b679c4cf2dcf967f7e70a`  
		Last Modified: Fri, 09 Jun 2017 05:57:11 GMT  
		Size: 185.6 MB (185630557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02df9d12e3bb8bd74864ee7115807891b072bbd130bd16b7b176dc7a41675d32`  
		Last Modified: Fri, 09 Jun 2017 05:55:05 GMT  
		Size: 10.8 KB (10834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a73159cacbe1093da4d7092d9414cd742be4d2ac5c510f6ce44b53f1b19da5`  
		Last Modified: Fri, 09 Jun 2017 05:55:04 GMT  
		Size: 1.6 KB (1587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:5.4.0`

```console
$ docker pull gcc@sha256:4694017b24e9bcd852916d3a7245090d646c2fa01383b4b4432a9463216fc764
```

-	Platforms:
	-	linux; amd64

### `gcc:5.4.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.1 MB (447109446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a1571a27add2a3dac468e21f5b2bb5124c528d76e8c946f6669fa9fc03565e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:26:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 22:49:49 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 08 Jun 2017 17:44:01 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 08 Jun 2017 19:07:05 GMT
ENV GCC_VERSION=5.4.0
# Fri, 09 Jun 2017 01:21:35 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& for f in config.guess config.sub; do 		wget -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 01:49:46 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 09 Jun 2017 01:49:49 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4125326b53d8463d437a9052d8fb892e1bf9e7dc8d68518ac9780611476123ec`  
		Last Modified: Wed, 07 Jun 2017 20:08:30 GMT  
		Size: 131.8 MB (131819207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04d37566ac85ba96d696bfcf913f5993587f4a3914b7bb0f49a629a3caffa5f`  
		Last Modified: Fri, 09 Jun 2017 05:55:05 GMT  
		Size: 107.2 KB (107213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6299b5b355e50c7f7769d1dd64f96825c02b2dd942bf211ec5d8970347af5eb5`  
		Last Modified: Fri, 09 Jun 2017 06:01:45 GMT  
		Size: 200.1 MB (200113709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1df646fd4df5064a47f137af66bebc008dcbd036cda22a5119ad692271676ec`  
		Last Modified: Fri, 09 Jun 2017 05:59:28 GMT  
		Size: 11.0 KB (10970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15efe9b0cde6cfef6e65454a9751de53b54ad6873ec14b1fa9ca88a17fc5a03d`  
		Last Modified: Fri, 09 Jun 2017 05:59:27 GMT  
		Size: 1.6 KB (1589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:5.4`

```console
$ docker pull gcc@sha256:4694017b24e9bcd852916d3a7245090d646c2fa01383b4b4432a9463216fc764
```

-	Platforms:
	-	linux; amd64

### `gcc:5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.1 MB (447109446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a1571a27add2a3dac468e21f5b2bb5124c528d76e8c946f6669fa9fc03565e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:26:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 22:49:49 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 08 Jun 2017 17:44:01 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 08 Jun 2017 19:07:05 GMT
ENV GCC_VERSION=5.4.0
# Fri, 09 Jun 2017 01:21:35 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& for f in config.guess config.sub; do 		wget -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 01:49:46 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 09 Jun 2017 01:49:49 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4125326b53d8463d437a9052d8fb892e1bf9e7dc8d68518ac9780611476123ec`  
		Last Modified: Wed, 07 Jun 2017 20:08:30 GMT  
		Size: 131.8 MB (131819207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04d37566ac85ba96d696bfcf913f5993587f4a3914b7bb0f49a629a3caffa5f`  
		Last Modified: Fri, 09 Jun 2017 05:55:05 GMT  
		Size: 107.2 KB (107213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6299b5b355e50c7f7769d1dd64f96825c02b2dd942bf211ec5d8970347af5eb5`  
		Last Modified: Fri, 09 Jun 2017 06:01:45 GMT  
		Size: 200.1 MB (200113709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1df646fd4df5064a47f137af66bebc008dcbd036cda22a5119ad692271676ec`  
		Last Modified: Fri, 09 Jun 2017 05:59:28 GMT  
		Size: 11.0 KB (10970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15efe9b0cde6cfef6e65454a9751de53b54ad6873ec14b1fa9ca88a17fc5a03d`  
		Last Modified: Fri, 09 Jun 2017 05:59:27 GMT  
		Size: 1.6 KB (1589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:5`

```console
$ docker pull gcc@sha256:4694017b24e9bcd852916d3a7245090d646c2fa01383b4b4432a9463216fc764
```

-	Platforms:
	-	linux; amd64

### `gcc:5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **447.1 MB (447109446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a1571a27add2a3dac468e21f5b2bb5124c528d76e8c946f6669fa9fc03565e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:26:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 22:49:49 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 08 Jun 2017 17:44:01 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 08 Jun 2017 19:07:05 GMT
ENV GCC_VERSION=5.4.0
# Fri, 09 Jun 2017 01:21:35 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& for f in config.guess config.sub; do 		wget -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 01:49:46 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 09 Jun 2017 01:49:49 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4125326b53d8463d437a9052d8fb892e1bf9e7dc8d68518ac9780611476123ec`  
		Last Modified: Wed, 07 Jun 2017 20:08:30 GMT  
		Size: 131.8 MB (131819207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04d37566ac85ba96d696bfcf913f5993587f4a3914b7bb0f49a629a3caffa5f`  
		Last Modified: Fri, 09 Jun 2017 05:55:05 GMT  
		Size: 107.2 KB (107213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6299b5b355e50c7f7769d1dd64f96825c02b2dd942bf211ec5d8970347af5eb5`  
		Last Modified: Fri, 09 Jun 2017 06:01:45 GMT  
		Size: 200.1 MB (200113709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1df646fd4df5064a47f137af66bebc008dcbd036cda22a5119ad692271676ec`  
		Last Modified: Fri, 09 Jun 2017 05:59:28 GMT  
		Size: 11.0 KB (10970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15efe9b0cde6cfef6e65454a9751de53b54ad6873ec14b1fa9ca88a17fc5a03d`  
		Last Modified: Fri, 09 Jun 2017 05:59:27 GMT  
		Size: 1.6 KB (1589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6.3.0`

```console
$ docker pull gcc@sha256:7a6c60f9a084f38cd1b4e5bde6f19ce4cdc75f907d5c4ca73e3045e55f8f36fb
```

-	Platforms:
	-	linux; amd64

### `gcc:6.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.4 MB (461350685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae4ee429d35dc621aeb154c8632dabb0db242e084f18261b19df57d998a761f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:26:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 22:49:49 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 08 Jun 2017 17:44:01 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 09 Jun 2017 01:55:54 GMT
ENV GCC_VERSION=6.3.0
# Fri, 09 Jun 2017 03:04:12 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& for f in config.guess config.sub; do 		wget -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 03:46:34 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 09 Jun 2017 03:46:36 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4125326b53d8463d437a9052d8fb892e1bf9e7dc8d68518ac9780611476123ec`  
		Last Modified: Wed, 07 Jun 2017 20:08:30 GMT  
		Size: 131.8 MB (131819207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04d37566ac85ba96d696bfcf913f5993587f4a3914b7bb0f49a629a3caffa5f`  
		Last Modified: Fri, 09 Jun 2017 05:55:05 GMT  
		Size: 107.2 KB (107213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8fad41cd9d4840c27554ca0a745fc5986fd82f9b8d828eaef122289e4438b3`  
		Last Modified: Fri, 09 Jun 2017 06:06:10 GMT  
		Size: 214.4 MB (214355007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dc8e2bde1a9780c41482b8c725591df4b9f3cae3edf0e924c453978fc60cde`  
		Last Modified: Fri, 09 Jun 2017 06:04:04 GMT  
		Size: 10.9 KB (10918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b794a2a61144f0dc3e45d90141284262d80590966161481fb21f93f949c9abbd`  
		Last Modified: Fri, 09 Jun 2017 06:04:03 GMT  
		Size: 1.6 KB (1582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6.3`

```console
$ docker pull gcc@sha256:7a6c60f9a084f38cd1b4e5bde6f19ce4cdc75f907d5c4ca73e3045e55f8f36fb
```

-	Platforms:
	-	linux; amd64

### `gcc:6.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.4 MB (461350685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae4ee429d35dc621aeb154c8632dabb0db242e084f18261b19df57d998a761f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:26:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 22:49:49 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 08 Jun 2017 17:44:01 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 09 Jun 2017 01:55:54 GMT
ENV GCC_VERSION=6.3.0
# Fri, 09 Jun 2017 03:04:12 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& for f in config.guess config.sub; do 		wget -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 03:46:34 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 09 Jun 2017 03:46:36 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4125326b53d8463d437a9052d8fb892e1bf9e7dc8d68518ac9780611476123ec`  
		Last Modified: Wed, 07 Jun 2017 20:08:30 GMT  
		Size: 131.8 MB (131819207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04d37566ac85ba96d696bfcf913f5993587f4a3914b7bb0f49a629a3caffa5f`  
		Last Modified: Fri, 09 Jun 2017 05:55:05 GMT  
		Size: 107.2 KB (107213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8fad41cd9d4840c27554ca0a745fc5986fd82f9b8d828eaef122289e4438b3`  
		Last Modified: Fri, 09 Jun 2017 06:06:10 GMT  
		Size: 214.4 MB (214355007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dc8e2bde1a9780c41482b8c725591df4b9f3cae3edf0e924c453978fc60cde`  
		Last Modified: Fri, 09 Jun 2017 06:04:04 GMT  
		Size: 10.9 KB (10918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b794a2a61144f0dc3e45d90141284262d80590966161481fb21f93f949c9abbd`  
		Last Modified: Fri, 09 Jun 2017 06:04:03 GMT  
		Size: 1.6 KB (1582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:6`

```console
$ docker pull gcc@sha256:7a6c60f9a084f38cd1b4e5bde6f19ce4cdc75f907d5c4ca73e3045e55f8f36fb
```

-	Platforms:
	-	linux; amd64

### `gcc:6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.4 MB (461350685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae4ee429d35dc621aeb154c8632dabb0db242e084f18261b19df57d998a761f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:26:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 22:49:49 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 08 Jun 2017 17:44:01 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 09 Jun 2017 01:55:54 GMT
ENV GCC_VERSION=6.3.0
# Fri, 09 Jun 2017 03:04:12 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& for f in config.guess config.sub; do 		wget -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 03:46:34 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 09 Jun 2017 03:46:36 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4125326b53d8463d437a9052d8fb892e1bf9e7dc8d68518ac9780611476123ec`  
		Last Modified: Wed, 07 Jun 2017 20:08:30 GMT  
		Size: 131.8 MB (131819207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04d37566ac85ba96d696bfcf913f5993587f4a3914b7bb0f49a629a3caffa5f`  
		Last Modified: Fri, 09 Jun 2017 05:55:05 GMT  
		Size: 107.2 KB (107213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8fad41cd9d4840c27554ca0a745fc5986fd82f9b8d828eaef122289e4438b3`  
		Last Modified: Fri, 09 Jun 2017 06:06:10 GMT  
		Size: 214.4 MB (214355007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dc8e2bde1a9780c41482b8c725591df4b9f3cae3edf0e924c453978fc60cde`  
		Last Modified: Fri, 09 Jun 2017 06:04:04 GMT  
		Size: 10.9 KB (10918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b794a2a61144f0dc3e45d90141284262d80590966161481fb21f93f949c9abbd`  
		Last Modified: Fri, 09 Jun 2017 06:04:03 GMT  
		Size: 1.6 KB (1582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:7.1.0`

```console
$ docker pull gcc@sha256:eb72a391fe71bdeaa013a259ebec487cb05576dd3552e69c355b72cc6c5619a8
```

-	Platforms:
	-	linux; amd64

### `gcc:7.1.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.9 MB (523931869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0bbdb1064a6273b1800daef6f00c9b0ccfe6645648efa95864cdb35910df40`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:49:26 GMT
ADD file:212fe5c6a3f3d10b0f5fc59f2019d5a12f266ff74b289f3ccc87bb878b01a437 in / 
# Wed, 07 Jun 2017 17:49:27 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:42:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:44:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:59:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 03:17:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 03:17:27 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 08 Jun 2017 03:17:33 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 08 Jun 2017 03:17:51 GMT
ENV GCC_VERSION=7.1.0
# Fri, 09 Jun 2017 05:06:19 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& for f in config.guess config.sub; do 		wget -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 05:51:15 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 09 Jun 2017 05:51:17 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:31a23e80b5c0100547b74b78634277f56239d4207fa7ea4f0540148525dbff03`  
		Last Modified: Wed, 07 Jun 2017 18:09:21 GMT  
		Size: 45.1 MB (45127747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5310eb3880dd8b025df521d43d0c3d3b1cebb727f0c9a297591fd50045e40ee0`  
		Last Modified: Wed, 07 Jun 2017 20:11:52 GMT  
		Size: 11.1 MB (11107732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d00f132dbb64ec781d2d4c943235a1e4cf52dd6ae86aac367e80baf5665cdd9`  
		Last Modified: Wed, 07 Jun 2017 20:12:35 GMT  
		Size: 50.9 MB (50941873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d517415f65d9439e321bbd207f6e7748a78fe7ccd69c6844f6afc7ebc7fda0`  
		Last Modified: Wed, 07 Jun 2017 20:13:51 GMT  
		Size: 211.1 MB (211143431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfab22ccf221552e83669226d3a6c536a7bea2bd717e6c1de2cc2ae6bdfc180`  
		Last Modified: Fri, 09 Jun 2017 06:08:08 GMT  
		Size: 3.7 MB (3655797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737a41f6d7cf1a31c1e9c128214d134810139f0fbb97d23c315b45e8b0a1a149`  
		Last Modified: Fri, 09 Jun 2017 06:08:08 GMT  
		Size: 105.4 KB (105389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec234983f5fccd1d6d1d2606202ca7585c4b686705726707389a2df5308853`  
		Last Modified: Fri, 09 Jun 2017 06:09:47 GMT  
		Size: 201.8 MB (201835878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7ab6c5a03398ae0d69848d4db97ae851e5b60c1afc2006b2e2393058470647`  
		Last Modified: Fri, 09 Jun 2017 06:08:07 GMT  
		Size: 11.9 KB (11861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe2af67e9c770e84967f2b93b5ac03f1a45891f4794176223019ed290d81d33`  
		Last Modified: Fri, 09 Jun 2017 06:08:07 GMT  
		Size: 2.2 KB (2161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:7.1`

```console
$ docker pull gcc@sha256:eb72a391fe71bdeaa013a259ebec487cb05576dd3552e69c355b72cc6c5619a8
```

-	Platforms:
	-	linux; amd64

### `gcc:7.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.9 MB (523931869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0bbdb1064a6273b1800daef6f00c9b0ccfe6645648efa95864cdb35910df40`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:49:26 GMT
ADD file:212fe5c6a3f3d10b0f5fc59f2019d5a12f266ff74b289f3ccc87bb878b01a437 in / 
# Wed, 07 Jun 2017 17:49:27 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:42:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:44:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:59:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 03:17:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 03:17:27 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 08 Jun 2017 03:17:33 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 08 Jun 2017 03:17:51 GMT
ENV GCC_VERSION=7.1.0
# Fri, 09 Jun 2017 05:06:19 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& for f in config.guess config.sub; do 		wget -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 05:51:15 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 09 Jun 2017 05:51:17 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:31a23e80b5c0100547b74b78634277f56239d4207fa7ea4f0540148525dbff03`  
		Last Modified: Wed, 07 Jun 2017 18:09:21 GMT  
		Size: 45.1 MB (45127747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5310eb3880dd8b025df521d43d0c3d3b1cebb727f0c9a297591fd50045e40ee0`  
		Last Modified: Wed, 07 Jun 2017 20:11:52 GMT  
		Size: 11.1 MB (11107732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d00f132dbb64ec781d2d4c943235a1e4cf52dd6ae86aac367e80baf5665cdd9`  
		Last Modified: Wed, 07 Jun 2017 20:12:35 GMT  
		Size: 50.9 MB (50941873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d517415f65d9439e321bbd207f6e7748a78fe7ccd69c6844f6afc7ebc7fda0`  
		Last Modified: Wed, 07 Jun 2017 20:13:51 GMT  
		Size: 211.1 MB (211143431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfab22ccf221552e83669226d3a6c536a7bea2bd717e6c1de2cc2ae6bdfc180`  
		Last Modified: Fri, 09 Jun 2017 06:08:08 GMT  
		Size: 3.7 MB (3655797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737a41f6d7cf1a31c1e9c128214d134810139f0fbb97d23c315b45e8b0a1a149`  
		Last Modified: Fri, 09 Jun 2017 06:08:08 GMT  
		Size: 105.4 KB (105389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec234983f5fccd1d6d1d2606202ca7585c4b686705726707389a2df5308853`  
		Last Modified: Fri, 09 Jun 2017 06:09:47 GMT  
		Size: 201.8 MB (201835878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7ab6c5a03398ae0d69848d4db97ae851e5b60c1afc2006b2e2393058470647`  
		Last Modified: Fri, 09 Jun 2017 06:08:07 GMT  
		Size: 11.9 KB (11861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe2af67e9c770e84967f2b93b5ac03f1a45891f4794176223019ed290d81d33`  
		Last Modified: Fri, 09 Jun 2017 06:08:07 GMT  
		Size: 2.2 KB (2161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:7`

```console
$ docker pull gcc@sha256:eb72a391fe71bdeaa013a259ebec487cb05576dd3552e69c355b72cc6c5619a8
```

-	Platforms:
	-	linux; amd64

### `gcc:7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.9 MB (523931869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0bbdb1064a6273b1800daef6f00c9b0ccfe6645648efa95864cdb35910df40`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:49:26 GMT
ADD file:212fe5c6a3f3d10b0f5fc59f2019d5a12f266ff74b289f3ccc87bb878b01a437 in / 
# Wed, 07 Jun 2017 17:49:27 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:42:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:44:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:59:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 03:17:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 03:17:27 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 08 Jun 2017 03:17:33 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 08 Jun 2017 03:17:51 GMT
ENV GCC_VERSION=7.1.0
# Fri, 09 Jun 2017 05:06:19 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& for f in config.guess config.sub; do 		wget -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 05:51:15 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 09 Jun 2017 05:51:17 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:31a23e80b5c0100547b74b78634277f56239d4207fa7ea4f0540148525dbff03`  
		Last Modified: Wed, 07 Jun 2017 18:09:21 GMT  
		Size: 45.1 MB (45127747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5310eb3880dd8b025df521d43d0c3d3b1cebb727f0c9a297591fd50045e40ee0`  
		Last Modified: Wed, 07 Jun 2017 20:11:52 GMT  
		Size: 11.1 MB (11107732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d00f132dbb64ec781d2d4c943235a1e4cf52dd6ae86aac367e80baf5665cdd9`  
		Last Modified: Wed, 07 Jun 2017 20:12:35 GMT  
		Size: 50.9 MB (50941873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d517415f65d9439e321bbd207f6e7748a78fe7ccd69c6844f6afc7ebc7fda0`  
		Last Modified: Wed, 07 Jun 2017 20:13:51 GMT  
		Size: 211.1 MB (211143431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfab22ccf221552e83669226d3a6c536a7bea2bd717e6c1de2cc2ae6bdfc180`  
		Last Modified: Fri, 09 Jun 2017 06:08:08 GMT  
		Size: 3.7 MB (3655797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737a41f6d7cf1a31c1e9c128214d134810139f0fbb97d23c315b45e8b0a1a149`  
		Last Modified: Fri, 09 Jun 2017 06:08:08 GMT  
		Size: 105.4 KB (105389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec234983f5fccd1d6d1d2606202ca7585c4b686705726707389a2df5308853`  
		Last Modified: Fri, 09 Jun 2017 06:09:47 GMT  
		Size: 201.8 MB (201835878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7ab6c5a03398ae0d69848d4db97ae851e5b60c1afc2006b2e2393058470647`  
		Last Modified: Fri, 09 Jun 2017 06:08:07 GMT  
		Size: 11.9 KB (11861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe2af67e9c770e84967f2b93b5ac03f1a45891f4794176223019ed290d81d33`  
		Last Modified: Fri, 09 Jun 2017 06:08:07 GMT  
		Size: 2.2 KB (2161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gcc:latest`

```console
$ docker pull gcc@sha256:eb72a391fe71bdeaa013a259ebec487cb05576dd3552e69c355b72cc6c5619a8
```

-	Platforms:
	-	linux; amd64

### `gcc:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.9 MB (523931869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0bbdb1064a6273b1800daef6f00c9b0ccfe6645648efa95864cdb35910df40`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:49:26 GMT
ADD file:212fe5c6a3f3d10b0f5fc59f2019d5a12f266ff74b289f3ccc87bb878b01a437 in / 
# Wed, 07 Jun 2017 17:49:27 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:42:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:44:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:59:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 03:17:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 03:17:27 GMT
ENV GPG_KEYS=B215C1633BCA0477615F1B35A5B3A004745C015A 	B3C42148A44E6983B3E4CC0793FA9B1AB75C61B8 	90AA470469D3965A87A5DCB494D03953902C9419 	80F98B2E0DAB6C8281BDF541A7C8C3B2F71EDF1C 	7F74F97C103468EE5D750B583AB00996FC26A641 	33C235A34C46AA3FFB293709A328C3A2C3C45C06
# Thu, 08 Jun 2017 03:17:33 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 08 Jun 2017 03:17:51 GMT
ENV GCC_VERSION=7.1.0
# Fri, 09 Jun 2017 05:06:19 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		flex 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -r /var/lib/apt/lists/* 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2" -o gcc.tar.bz2 	&& curl -fSL "http://ftpmirror.gnu.org/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2.sig" -o gcc.tar.bz2.sig 	&& gpg --batch --verify gcc.tar.bz2.sig gcc.tar.bz2 	&& mkdir -p /usr/src/gcc 	&& tar -xf gcc.tar.bz2 -C /usr/src/gcc --strip-components=1 	&& rm gcc.tar.bz2* 	&& cd /usr/src/gcc 	&& ./contrib/download_prerequisites 	&& { rm *.tar.* || true; } 	&& for f in config.guess config.sub; do 		wget -O "$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 		find -mindepth 2 -name "$f" -exec cp -v "$f" '{}' ';'; 	done 	&& dir="$(mktemp -d)" 	&& cd "$dir" 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& /usr/src/gcc/configure 		--build="$gnuArch" 		--disable-multilib 		--enable-languages=c,c++,fortran,go 	&& make -j"$(nproc)" 	&& make install-strip 	&& cd .. 	&& rm -rf "$dir" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 09 Jun 2017 05:51:15 GMT
RUN echo '/usr/local/lib64' > /etc/ld.so.conf.d/local-lib64.conf 	&& ldconfig -v
# Fri, 09 Jun 2017 05:51:17 GMT
RUN set -x 	&& dpkg-divert --divert /usr/bin/gcc.orig --rename /usr/bin/gcc 	&& dpkg-divert --divert /usr/bin/g++.orig --rename /usr/bin/g++ 	&& dpkg-divert --divert /usr/bin/gfortran.orig --rename /usr/bin/gfortran 	&& update-alternatives --install /usr/bin/cc cc /usr/local/bin/gcc 999
```

-	Layers:
	-	`sha256:31a23e80b5c0100547b74b78634277f56239d4207fa7ea4f0540148525dbff03`  
		Last Modified: Wed, 07 Jun 2017 18:09:21 GMT  
		Size: 45.1 MB (45127747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5310eb3880dd8b025df521d43d0c3d3b1cebb727f0c9a297591fd50045e40ee0`  
		Last Modified: Wed, 07 Jun 2017 20:11:52 GMT  
		Size: 11.1 MB (11107732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d00f132dbb64ec781d2d4c943235a1e4cf52dd6ae86aac367e80baf5665cdd9`  
		Last Modified: Wed, 07 Jun 2017 20:12:35 GMT  
		Size: 50.9 MB (50941873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d517415f65d9439e321bbd207f6e7748a78fe7ccd69c6844f6afc7ebc7fda0`  
		Last Modified: Wed, 07 Jun 2017 20:13:51 GMT  
		Size: 211.1 MB (211143431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfab22ccf221552e83669226d3a6c536a7bea2bd717e6c1de2cc2ae6bdfc180`  
		Last Modified: Fri, 09 Jun 2017 06:08:08 GMT  
		Size: 3.7 MB (3655797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737a41f6d7cf1a31c1e9c128214d134810139f0fbb97d23c315b45e8b0a1a149`  
		Last Modified: Fri, 09 Jun 2017 06:08:08 GMT  
		Size: 105.4 KB (105389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec234983f5fccd1d6d1d2606202ca7585c4b686705726707389a2df5308853`  
		Last Modified: Fri, 09 Jun 2017 06:09:47 GMT  
		Size: 201.8 MB (201835878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7ab6c5a03398ae0d69848d4db97ae851e5b60c1afc2006b2e2393058470647`  
		Last Modified: Fri, 09 Jun 2017 06:08:07 GMT  
		Size: 11.9 KB (11861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe2af67e9c770e84967f2b93b5ac03f1a45891f4794176223019ed290d81d33`  
		Last Modified: Fri, 09 Jun 2017 06:08:07 GMT  
		Size: 2.2 KB (2161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
