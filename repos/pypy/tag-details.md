<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `pypy`

-	[`pypy:2-5.8.0`](#pypy2-580)
-	[`pypy:2-5.8`](#pypy2-58)
-	[`pypy:2-5`](#pypy2-5)
-	[`pypy:2`](#pypy2)
-	[`pypy:2-5.8.0-slim`](#pypy2-580-slim)
-	[`pypy:2-5.8-slim`](#pypy2-58-slim)
-	[`pypy:2-5-slim`](#pypy2-5-slim)
-	[`pypy:2-slim`](#pypy2-slim)
-	[`pypy:2-5.8.0-onbuild`](#pypy2-580-onbuild)
-	[`pypy:2-5.8-onbuild`](#pypy2-58-onbuild)
-	[`pypy:2-5-onbuild`](#pypy2-5-onbuild)
-	[`pypy:2-onbuild`](#pypy2-onbuild)
-	[`pypy:3-5.8.0`](#pypy3-580)
-	[`pypy:3-5.8`](#pypy3-58)
-	[`pypy:3-5`](#pypy3-5)
-	[`pypy:3`](#pypy3)
-	[`pypy:latest`](#pypylatest)
-	[`pypy:3-5.8.0-slim`](#pypy3-580-slim)
-	[`pypy:3-5.8-slim`](#pypy3-58-slim)
-	[`pypy:3-5-slim`](#pypy3-5-slim)
-	[`pypy:3-slim`](#pypy3-slim)
-	[`pypy:slim`](#pypyslim)
-	[`pypy:3-5.8.0-onbuild`](#pypy3-580-onbuild)
-	[`pypy:3-5.8-onbuild`](#pypy3-58-onbuild)
-	[`pypy:3-5-onbuild`](#pypy3-5-onbuild)
-	[`pypy:3-onbuild`](#pypy3-onbuild)
-	[`pypy:onbuild`](#pypyonbuild)

## `pypy:2-5.8.0`

```console
$ docker pull pypy@sha256:1d144e32404d02b66682abbc9a5cd0417e4f00e09ac3975376295a79d67cac63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5.8.0` - linux; amd64

```console
$ docker pull pypy@sha256:071a56883d8a70c5fd0321620d3c0675566e01c708ddb87b2df718e7e650f270
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a74cc41dd32b463deb6cc0f62f2e00da42c33716ce5b856e72fa9bc12d6a3f07`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:02:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 20:03:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:03:05 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f124da2ac030fae2dae0f3a342d42ae5c2c00190520a6a3bc5294fa2b5b9409`  
		Last Modified: Tue, 12 Sep 2017 20:05:18 GMT  
		Size: 24.4 MB (24382705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b2abcf08abb3d79cdcf1779d3652da892fab568d3a3631f17dc73bbbc15517`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.7 MB (3697345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.8.0` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c51361a33118921ad893e6e1cb6fef495a7347607f2cd2c59fd750e5bfd6031e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254619770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2324649922333aaf06a4d3c2106d2f68921758dfefa26f4c33818f71d8159f`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:29:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 21:40:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:51:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:38:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 04:38:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 04:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:39:37 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 04:39:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 04:40:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 04:41:04 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 04:41:05 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d77b9faf0ea3bf7624c86236027513537d3d014dea08a2ff85d9f469104a2c`  
		Last Modified: Tue, 12 Sep 2017 04:13:40 GMT  
		Size: 18.7 MB (18653520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72b2418770008733d02d0fb407d8032ea3ed6661949dc96c986b6890452ffe8`  
		Last Modified: Tue, 12 Sep 2017 04:14:31 GMT  
		Size: 41.1 MB (41064151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afcb1d52a7b4e356d9ba2af26f0f6659c5f7f4755b8572cf8949f45f35a3963`  
		Last Modified: Tue, 12 Sep 2017 04:16:02 GMT  
		Size: 115.5 MB (115455794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1808af0255658d5a669b80501a147be72eb2271a3d17412ae4479e407cde4`  
		Last Modified: Tue, 12 Sep 2017 04:51:23 GMT  
		Size: 3.0 MB (3021196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea137468eec984a8b2f9ea66bc8ccaabb8a3ae2fb36cfc09797266c0be899834`  
		Last Modified: Tue, 12 Sep 2017 04:51:41 GMT  
		Size: 21.8 MB (21849501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191dad70af0f38efea28f9b6fbe6e549cbfa5b4bc197364ff10a0b3636fcb454`  
		Last Modified: Tue, 12 Sep 2017 04:51:25 GMT  
		Size: 3.7 MB (3698122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.8.0` - linux; 386

```console
$ docker pull pypy@sha256:cf6271d35df2c6caef8ab5c50a0486eefc6d4c223aad1a99afd7e662e1c1c201
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280811260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2132a191013b6793251f5cb4b5d6064f79108977ba885a947c79f01579a0365c`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:49:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 15:49:57 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:50:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYPY_VERSION=5.8.0
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 09 Sep 2017 16:24:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Sat, 09 Sep 2017 16:24:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 09 Sep 2017 16:24:45 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75754178d7dbc31bf0f650bd7481f81245ac3428df088b755295300bab3dbdcd`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.3 MB (3271520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc46b8fce2026638ba6673f0d3a8049dc91e797e789d01b73b656214e197159`  
		Last Modified: Sat, 09 Sep 2017 16:25:03 GMT  
		Size: 20.7 MB (20711262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de9c2ff13777d7b1c543af81b3b8c3701ebb3513036d041254b8128cb4ba450`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.7 MB (3721979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8`

```console
$ docker pull pypy@sha256:1d144e32404d02b66682abbc9a5cd0417e4f00e09ac3975376295a79d67cac63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5.8` - linux; amd64

```console
$ docker pull pypy@sha256:071a56883d8a70c5fd0321620d3c0675566e01c708ddb87b2df718e7e650f270
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a74cc41dd32b463deb6cc0f62f2e00da42c33716ce5b856e72fa9bc12d6a3f07`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:02:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 20:03:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:03:05 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f124da2ac030fae2dae0f3a342d42ae5c2c00190520a6a3bc5294fa2b5b9409`  
		Last Modified: Tue, 12 Sep 2017 20:05:18 GMT  
		Size: 24.4 MB (24382705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b2abcf08abb3d79cdcf1779d3652da892fab568d3a3631f17dc73bbbc15517`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.7 MB (3697345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.8` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c51361a33118921ad893e6e1cb6fef495a7347607f2cd2c59fd750e5bfd6031e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254619770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2324649922333aaf06a4d3c2106d2f68921758dfefa26f4c33818f71d8159f`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:29:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 21:40:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:51:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:38:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 04:38:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 04:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:39:37 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 04:39:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 04:40:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 04:41:04 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 04:41:05 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d77b9faf0ea3bf7624c86236027513537d3d014dea08a2ff85d9f469104a2c`  
		Last Modified: Tue, 12 Sep 2017 04:13:40 GMT  
		Size: 18.7 MB (18653520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72b2418770008733d02d0fb407d8032ea3ed6661949dc96c986b6890452ffe8`  
		Last Modified: Tue, 12 Sep 2017 04:14:31 GMT  
		Size: 41.1 MB (41064151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afcb1d52a7b4e356d9ba2af26f0f6659c5f7f4755b8572cf8949f45f35a3963`  
		Last Modified: Tue, 12 Sep 2017 04:16:02 GMT  
		Size: 115.5 MB (115455794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1808af0255658d5a669b80501a147be72eb2271a3d17412ae4479e407cde4`  
		Last Modified: Tue, 12 Sep 2017 04:51:23 GMT  
		Size: 3.0 MB (3021196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea137468eec984a8b2f9ea66bc8ccaabb8a3ae2fb36cfc09797266c0be899834`  
		Last Modified: Tue, 12 Sep 2017 04:51:41 GMT  
		Size: 21.8 MB (21849501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191dad70af0f38efea28f9b6fbe6e549cbfa5b4bc197364ff10a0b3636fcb454`  
		Last Modified: Tue, 12 Sep 2017 04:51:25 GMT  
		Size: 3.7 MB (3698122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.8` - linux; 386

```console
$ docker pull pypy@sha256:cf6271d35df2c6caef8ab5c50a0486eefc6d4c223aad1a99afd7e662e1c1c201
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280811260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2132a191013b6793251f5cb4b5d6064f79108977ba885a947c79f01579a0365c`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:49:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 15:49:57 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:50:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYPY_VERSION=5.8.0
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 09 Sep 2017 16:24:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Sat, 09 Sep 2017 16:24:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 09 Sep 2017 16:24:45 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75754178d7dbc31bf0f650bd7481f81245ac3428df088b755295300bab3dbdcd`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.3 MB (3271520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc46b8fce2026638ba6673f0d3a8049dc91e797e789d01b73b656214e197159`  
		Last Modified: Sat, 09 Sep 2017 16:25:03 GMT  
		Size: 20.7 MB (20711262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de9c2ff13777d7b1c543af81b3b8c3701ebb3513036d041254b8128cb4ba450`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.7 MB (3721979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5`

```console
$ docker pull pypy@sha256:1d144e32404d02b66682abbc9a5cd0417e4f00e09ac3975376295a79d67cac63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5` - linux; amd64

```console
$ docker pull pypy@sha256:071a56883d8a70c5fd0321620d3c0675566e01c708ddb87b2df718e7e650f270
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a74cc41dd32b463deb6cc0f62f2e00da42c33716ce5b856e72fa9bc12d6a3f07`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:02:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 20:03:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:03:05 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f124da2ac030fae2dae0f3a342d42ae5c2c00190520a6a3bc5294fa2b5b9409`  
		Last Modified: Tue, 12 Sep 2017 20:05:18 GMT  
		Size: 24.4 MB (24382705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b2abcf08abb3d79cdcf1779d3652da892fab568d3a3631f17dc73bbbc15517`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.7 MB (3697345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c51361a33118921ad893e6e1cb6fef495a7347607f2cd2c59fd750e5bfd6031e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254619770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2324649922333aaf06a4d3c2106d2f68921758dfefa26f4c33818f71d8159f`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:29:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 21:40:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:51:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:38:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 04:38:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 04:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:39:37 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 04:39:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 04:40:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 04:41:04 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 04:41:05 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d77b9faf0ea3bf7624c86236027513537d3d014dea08a2ff85d9f469104a2c`  
		Last Modified: Tue, 12 Sep 2017 04:13:40 GMT  
		Size: 18.7 MB (18653520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72b2418770008733d02d0fb407d8032ea3ed6661949dc96c986b6890452ffe8`  
		Last Modified: Tue, 12 Sep 2017 04:14:31 GMT  
		Size: 41.1 MB (41064151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afcb1d52a7b4e356d9ba2af26f0f6659c5f7f4755b8572cf8949f45f35a3963`  
		Last Modified: Tue, 12 Sep 2017 04:16:02 GMT  
		Size: 115.5 MB (115455794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1808af0255658d5a669b80501a147be72eb2271a3d17412ae4479e407cde4`  
		Last Modified: Tue, 12 Sep 2017 04:51:23 GMT  
		Size: 3.0 MB (3021196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea137468eec984a8b2f9ea66bc8ccaabb8a3ae2fb36cfc09797266c0be899834`  
		Last Modified: Tue, 12 Sep 2017 04:51:41 GMT  
		Size: 21.8 MB (21849501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191dad70af0f38efea28f9b6fbe6e549cbfa5b4bc197364ff10a0b3636fcb454`  
		Last Modified: Tue, 12 Sep 2017 04:51:25 GMT  
		Size: 3.7 MB (3698122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5` - linux; 386

```console
$ docker pull pypy@sha256:cf6271d35df2c6caef8ab5c50a0486eefc6d4c223aad1a99afd7e662e1c1c201
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280811260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2132a191013b6793251f5cb4b5d6064f79108977ba885a947c79f01579a0365c`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:49:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 15:49:57 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:50:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYPY_VERSION=5.8.0
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 09 Sep 2017 16:24:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Sat, 09 Sep 2017 16:24:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 09 Sep 2017 16:24:45 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75754178d7dbc31bf0f650bd7481f81245ac3428df088b755295300bab3dbdcd`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.3 MB (3271520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc46b8fce2026638ba6673f0d3a8049dc91e797e789d01b73b656214e197159`  
		Last Modified: Sat, 09 Sep 2017 16:25:03 GMT  
		Size: 20.7 MB (20711262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de9c2ff13777d7b1c543af81b3b8c3701ebb3513036d041254b8128cb4ba450`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.7 MB (3721979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2`

```console
$ docker pull pypy@sha256:1d144e32404d02b66682abbc9a5cd0417e4f00e09ac3975376295a79d67cac63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2` - linux; amd64

```console
$ docker pull pypy@sha256:071a56883d8a70c5fd0321620d3c0675566e01c708ddb87b2df718e7e650f270
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a74cc41dd32b463deb6cc0f62f2e00da42c33716ce5b856e72fa9bc12d6a3f07`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:02:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 20:03:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:03:05 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f124da2ac030fae2dae0f3a342d42ae5c2c00190520a6a3bc5294fa2b5b9409`  
		Last Modified: Tue, 12 Sep 2017 20:05:18 GMT  
		Size: 24.4 MB (24382705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b2abcf08abb3d79cdcf1779d3652da892fab568d3a3631f17dc73bbbc15517`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.7 MB (3697345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c51361a33118921ad893e6e1cb6fef495a7347607f2cd2c59fd750e5bfd6031e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254619770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2324649922333aaf06a4d3c2106d2f68921758dfefa26f4c33818f71d8159f`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:29:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 21:40:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:51:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:38:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 04:38:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 04:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:39:37 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 04:39:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 04:40:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 04:41:04 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 04:41:05 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d77b9faf0ea3bf7624c86236027513537d3d014dea08a2ff85d9f469104a2c`  
		Last Modified: Tue, 12 Sep 2017 04:13:40 GMT  
		Size: 18.7 MB (18653520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72b2418770008733d02d0fb407d8032ea3ed6661949dc96c986b6890452ffe8`  
		Last Modified: Tue, 12 Sep 2017 04:14:31 GMT  
		Size: 41.1 MB (41064151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afcb1d52a7b4e356d9ba2af26f0f6659c5f7f4755b8572cf8949f45f35a3963`  
		Last Modified: Tue, 12 Sep 2017 04:16:02 GMT  
		Size: 115.5 MB (115455794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1808af0255658d5a669b80501a147be72eb2271a3d17412ae4479e407cde4`  
		Last Modified: Tue, 12 Sep 2017 04:51:23 GMT  
		Size: 3.0 MB (3021196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea137468eec984a8b2f9ea66bc8ccaabb8a3ae2fb36cfc09797266c0be899834`  
		Last Modified: Tue, 12 Sep 2017 04:51:41 GMT  
		Size: 21.8 MB (21849501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191dad70af0f38efea28f9b6fbe6e549cbfa5b4bc197364ff10a0b3636fcb454`  
		Last Modified: Tue, 12 Sep 2017 04:51:25 GMT  
		Size: 3.7 MB (3698122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2` - linux; 386

```console
$ docker pull pypy@sha256:cf6271d35df2c6caef8ab5c50a0486eefc6d4c223aad1a99afd7e662e1c1c201
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280811260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2132a191013b6793251f5cb4b5d6064f79108977ba885a947c79f01579a0365c`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:49:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 15:49:57 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:50:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYPY_VERSION=5.8.0
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 09 Sep 2017 16:24:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Sat, 09 Sep 2017 16:24:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 09 Sep 2017 16:24:45 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75754178d7dbc31bf0f650bd7481f81245ac3428df088b755295300bab3dbdcd`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.3 MB (3271520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc46b8fce2026638ba6673f0d3a8049dc91e797e789d01b73b656214e197159`  
		Last Modified: Sat, 09 Sep 2017 16:25:03 GMT  
		Size: 20.7 MB (20711262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de9c2ff13777d7b1c543af81b3b8c3701ebb3513036d041254b8128cb4ba450`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.7 MB (3721979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8.0-slim`

```console
$ docker pull pypy@sha256:94141cc4d86552ec1562abc2d96795d8dfaf662c21fd88946087d60d66e23d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5.8.0-slim` - linux; amd64

```console
$ docker pull pypy@sha256:28a879a700877e9bcbb1a63725e12b69d147a874667264121ab8180100ee8869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61292414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09761da97d6d80cf420541aca39dcb807398b71d685c51d6498c64cebc44ef17`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:03:06 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:03:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 20:04:00 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f0e105f4d1e2a64d222e956ae25b06bf589d9aa50492bac8ddea509e3f601c`  
		Last Modified: Tue, 12 Sep 2017 20:05:36 GMT  
		Size: 2.9 MB (2859587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895429f28041c6739afa70c0b502257679644933892ae54b7bd08123765da8d5`  
		Last Modified: Tue, 12 Sep 2017 20:05:42 GMT  
		Size: 28.3 MB (28319693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.8.0-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:958aa0932098bf404eb32469cb22bff1441d239256514092afca5407188e62d1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56812965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8457e63ba1540645e39ca860de169ff6608f4a8f137efb23fb84421507fc3dba`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 19:57:26 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Fri, 08 Sep 2017 19:57:29 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:38:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 03:38:54 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 03:42:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:42:58 GMT
ENV PYPY_VERSION=5.8.0
# Sat, 09 Sep 2017 03:42:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 04:50:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 04:50:34 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c730baecba27c98917b2ee85dc172ed0ef62d1decdc5064d89296a8edb1657f3`  
		Last Modified: Fri, 08 Sep 2017 20:13:04 GMT  
		Size: 28.4 MB (28422486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c28bc413f76238c913bc9f6dbfe5dff0b69e6e2d7ddcc756bd63e159e327304`  
		Last Modified: Tue, 12 Sep 2017 04:52:30 GMT  
		Size: 2.6 MB (2607952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fcfe31ae4c1784b59a645b1a8add9c6510ca6be106171fdeba7544ae8970b2`  
		Last Modified: Tue, 12 Sep 2017 04:52:52 GMT  
		Size: 25.8 MB (25782527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.8.0-slim` - linux; 386

```console
$ docker pull pypy@sha256:a4116a4f8ee4e5bbe2580f675101e9c1ad7ef6b9b28f0697e8cfb39035c21f64
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59896834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3a92db59b46a90eb074403ee28a779e53fa523e297f04ce29b69a6c70e4652`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:07:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 16:07:05 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 16:08:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:08:00 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 08 Sep 2017 16:08:00 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 08 Sep 2017 16:09:19 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 16:09:19 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35578cc2bc5875ce205d68e4c8b09dcec530d6a339bf0a0131d92bca6779f93`  
		Last Modified: Fri, 08 Sep 2017 16:09:38 GMT  
		Size: 5.0 MB (4957792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3041cfb1e2cf4f8566080eb36fc925e17a4a06ecee76db7a0d46e4c2ce47437`  
		Last Modified: Fri, 08 Sep 2017 16:09:45 GMT  
		Size: 24.7 MB (24674876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8-slim`

```console
$ docker pull pypy@sha256:94141cc4d86552ec1562abc2d96795d8dfaf662c21fd88946087d60d66e23d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5.8-slim` - linux; amd64

```console
$ docker pull pypy@sha256:28a879a700877e9bcbb1a63725e12b69d147a874667264121ab8180100ee8869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61292414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09761da97d6d80cf420541aca39dcb807398b71d685c51d6498c64cebc44ef17`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:03:06 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:03:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 20:04:00 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f0e105f4d1e2a64d222e956ae25b06bf589d9aa50492bac8ddea509e3f601c`  
		Last Modified: Tue, 12 Sep 2017 20:05:36 GMT  
		Size: 2.9 MB (2859587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895429f28041c6739afa70c0b502257679644933892ae54b7bd08123765da8d5`  
		Last Modified: Tue, 12 Sep 2017 20:05:42 GMT  
		Size: 28.3 MB (28319693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.8-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:958aa0932098bf404eb32469cb22bff1441d239256514092afca5407188e62d1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56812965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8457e63ba1540645e39ca860de169ff6608f4a8f137efb23fb84421507fc3dba`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 19:57:26 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Fri, 08 Sep 2017 19:57:29 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:38:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 03:38:54 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 03:42:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:42:58 GMT
ENV PYPY_VERSION=5.8.0
# Sat, 09 Sep 2017 03:42:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 04:50:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 04:50:34 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c730baecba27c98917b2ee85dc172ed0ef62d1decdc5064d89296a8edb1657f3`  
		Last Modified: Fri, 08 Sep 2017 20:13:04 GMT  
		Size: 28.4 MB (28422486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c28bc413f76238c913bc9f6dbfe5dff0b69e6e2d7ddcc756bd63e159e327304`  
		Last Modified: Tue, 12 Sep 2017 04:52:30 GMT  
		Size: 2.6 MB (2607952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fcfe31ae4c1784b59a645b1a8add9c6510ca6be106171fdeba7544ae8970b2`  
		Last Modified: Tue, 12 Sep 2017 04:52:52 GMT  
		Size: 25.8 MB (25782527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.8-slim` - linux; 386

```console
$ docker pull pypy@sha256:a4116a4f8ee4e5bbe2580f675101e9c1ad7ef6b9b28f0697e8cfb39035c21f64
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59896834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3a92db59b46a90eb074403ee28a779e53fa523e297f04ce29b69a6c70e4652`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:07:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 16:07:05 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 16:08:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:08:00 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 08 Sep 2017 16:08:00 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 08 Sep 2017 16:09:19 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 16:09:19 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35578cc2bc5875ce205d68e4c8b09dcec530d6a339bf0a0131d92bca6779f93`  
		Last Modified: Fri, 08 Sep 2017 16:09:38 GMT  
		Size: 5.0 MB (4957792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3041cfb1e2cf4f8566080eb36fc925e17a4a06ecee76db7a0d46e4c2ce47437`  
		Last Modified: Fri, 08 Sep 2017 16:09:45 GMT  
		Size: 24.7 MB (24674876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:94141cc4d86552ec1562abc2d96795d8dfaf662c21fd88946087d60d66e23d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5-slim` - linux; amd64

```console
$ docker pull pypy@sha256:28a879a700877e9bcbb1a63725e12b69d147a874667264121ab8180100ee8869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61292414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09761da97d6d80cf420541aca39dcb807398b71d685c51d6498c64cebc44ef17`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:03:06 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:03:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 20:04:00 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f0e105f4d1e2a64d222e956ae25b06bf589d9aa50492bac8ddea509e3f601c`  
		Last Modified: Tue, 12 Sep 2017 20:05:36 GMT  
		Size: 2.9 MB (2859587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895429f28041c6739afa70c0b502257679644933892ae54b7bd08123765da8d5`  
		Last Modified: Tue, 12 Sep 2017 20:05:42 GMT  
		Size: 28.3 MB (28319693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:958aa0932098bf404eb32469cb22bff1441d239256514092afca5407188e62d1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56812965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8457e63ba1540645e39ca860de169ff6608f4a8f137efb23fb84421507fc3dba`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 19:57:26 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Fri, 08 Sep 2017 19:57:29 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:38:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 03:38:54 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 03:42:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:42:58 GMT
ENV PYPY_VERSION=5.8.0
# Sat, 09 Sep 2017 03:42:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 04:50:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 04:50:34 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c730baecba27c98917b2ee85dc172ed0ef62d1decdc5064d89296a8edb1657f3`  
		Last Modified: Fri, 08 Sep 2017 20:13:04 GMT  
		Size: 28.4 MB (28422486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c28bc413f76238c913bc9f6dbfe5dff0b69e6e2d7ddcc756bd63e159e327304`  
		Last Modified: Tue, 12 Sep 2017 04:52:30 GMT  
		Size: 2.6 MB (2607952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fcfe31ae4c1784b59a645b1a8add9c6510ca6be106171fdeba7544ae8970b2`  
		Last Modified: Tue, 12 Sep 2017 04:52:52 GMT  
		Size: 25.8 MB (25782527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-slim` - linux; 386

```console
$ docker pull pypy@sha256:a4116a4f8ee4e5bbe2580f675101e9c1ad7ef6b9b28f0697e8cfb39035c21f64
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59896834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3a92db59b46a90eb074403ee28a779e53fa523e297f04ce29b69a6c70e4652`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:07:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 16:07:05 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 16:08:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:08:00 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 08 Sep 2017 16:08:00 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 08 Sep 2017 16:09:19 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 16:09:19 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35578cc2bc5875ce205d68e4c8b09dcec530d6a339bf0a0131d92bca6779f93`  
		Last Modified: Fri, 08 Sep 2017 16:09:38 GMT  
		Size: 5.0 MB (4957792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3041cfb1e2cf4f8566080eb36fc925e17a4a06ecee76db7a0d46e4c2ce47437`  
		Last Modified: Fri, 08 Sep 2017 16:09:45 GMT  
		Size: 24.7 MB (24674876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim`

```console
$ docker pull pypy@sha256:94141cc4d86552ec1562abc2d96795d8dfaf662c21fd88946087d60d66e23d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-slim` - linux; amd64

```console
$ docker pull pypy@sha256:28a879a700877e9bcbb1a63725e12b69d147a874667264121ab8180100ee8869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61292414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09761da97d6d80cf420541aca39dcb807398b71d685c51d6498c64cebc44ef17`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:03:06 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:03:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 20:04:00 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f0e105f4d1e2a64d222e956ae25b06bf589d9aa50492bac8ddea509e3f601c`  
		Last Modified: Tue, 12 Sep 2017 20:05:36 GMT  
		Size: 2.9 MB (2859587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895429f28041c6739afa70c0b502257679644933892ae54b7bd08123765da8d5`  
		Last Modified: Tue, 12 Sep 2017 20:05:42 GMT  
		Size: 28.3 MB (28319693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:958aa0932098bf404eb32469cb22bff1441d239256514092afca5407188e62d1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56812965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8457e63ba1540645e39ca860de169ff6608f4a8f137efb23fb84421507fc3dba`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 19:57:26 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Fri, 08 Sep 2017 19:57:29 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:38:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 03:38:54 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 03:42:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:42:58 GMT
ENV PYPY_VERSION=5.8.0
# Sat, 09 Sep 2017 03:42:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 04:50:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 04:50:34 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c730baecba27c98917b2ee85dc172ed0ef62d1decdc5064d89296a8edb1657f3`  
		Last Modified: Fri, 08 Sep 2017 20:13:04 GMT  
		Size: 28.4 MB (28422486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c28bc413f76238c913bc9f6dbfe5dff0b69e6e2d7ddcc756bd63e159e327304`  
		Last Modified: Tue, 12 Sep 2017 04:52:30 GMT  
		Size: 2.6 MB (2607952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fcfe31ae4c1784b59a645b1a8add9c6510ca6be106171fdeba7544ae8970b2`  
		Last Modified: Tue, 12 Sep 2017 04:52:52 GMT  
		Size: 25.8 MB (25782527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; 386

```console
$ docker pull pypy@sha256:a4116a4f8ee4e5bbe2580f675101e9c1ad7ef6b9b28f0697e8cfb39035c21f64
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59896834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3a92db59b46a90eb074403ee28a779e53fa523e297f04ce29b69a6c70e4652`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:07:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 16:07:05 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 16:08:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:08:00 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 08 Sep 2017 16:08:00 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 08 Sep 2017 16:09:19 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 16:09:19 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35578cc2bc5875ce205d68e4c8b09dcec530d6a339bf0a0131d92bca6779f93`  
		Last Modified: Fri, 08 Sep 2017 16:09:38 GMT  
		Size: 5.0 MB (4957792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3041cfb1e2cf4f8566080eb36fc925e17a4a06ecee76db7a0d46e4c2ce47437`  
		Last Modified: Fri, 08 Sep 2017 16:09:45 GMT  
		Size: 24.7 MB (24674876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8.0-onbuild`

```console
$ docker pull pypy@sha256:dd47b2a2694da3c8e72f782e02262e20af11df4b0cccd369f09fa9f0b9617d7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5.8.0-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:c0c0ec0df4c41011ebed5d101ae1e09b927cce0cf60a633b321494014efd5e21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d993c7830b49b7d3b5a9cdf271a686648b704f8390cb55c0eb0405fcba13353`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:02:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 20:03:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:03:05 GMT
CMD ["pypy"]
# Tue, 12 Sep 2017 20:04:00 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 20:04:01 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 20:04:01 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 12 Sep 2017 20:04:01 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 12 Sep 2017 20:04:01 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f124da2ac030fae2dae0f3a342d42ae5c2c00190520a6a3bc5294fa2b5b9409`  
		Last Modified: Tue, 12 Sep 2017 20:05:18 GMT  
		Size: 24.4 MB (24382705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b2abcf08abb3d79cdcf1779d3652da892fab568d3a3631f17dc73bbbc15517`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.7 MB (3697345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af257dac0187ce6db4f33f07a754f43348fafdb914b940781c62097daef06933`  
		Last Modified: Tue, 12 Sep 2017 20:05:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.8.0-onbuild` - linux; arm variant v5

```console
$ docker pull pypy@sha256:d120d9596df4c26d8d7d4eaeaf5aa85d4b0b147446c415edb774e4ab08f0f0d7
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254619901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e846816b73ac354c8875e94d953a1b2d24d63426b28fd5ec727ac7acc075721`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:29:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 21:40:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:51:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:38:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 04:38:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 04:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:39:37 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 04:39:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 04:40:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 04:41:04 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 04:41:05 GMT
CMD ["pypy"]
# Tue, 12 Sep 2017 04:50:55 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 04:50:55 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 04:50:56 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 12 Sep 2017 04:50:57 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 12 Sep 2017 04:50:59 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d77b9faf0ea3bf7624c86236027513537d3d014dea08a2ff85d9f469104a2c`  
		Last Modified: Tue, 12 Sep 2017 04:13:40 GMT  
		Size: 18.7 MB (18653520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72b2418770008733d02d0fb407d8032ea3ed6661949dc96c986b6890452ffe8`  
		Last Modified: Tue, 12 Sep 2017 04:14:31 GMT  
		Size: 41.1 MB (41064151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afcb1d52a7b4e356d9ba2af26f0f6659c5f7f4755b8572cf8949f45f35a3963`  
		Last Modified: Tue, 12 Sep 2017 04:16:02 GMT  
		Size: 115.5 MB (115455794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1808af0255658d5a669b80501a147be72eb2271a3d17412ae4479e407cde4`  
		Last Modified: Tue, 12 Sep 2017 04:51:23 GMT  
		Size: 3.0 MB (3021196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea137468eec984a8b2f9ea66bc8ccaabb8a3ae2fb36cfc09797266c0be899834`  
		Last Modified: Tue, 12 Sep 2017 04:51:41 GMT  
		Size: 21.8 MB (21849501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191dad70af0f38efea28f9b6fbe6e549cbfa5b4bc197364ff10a0b3636fcb454`  
		Last Modified: Tue, 12 Sep 2017 04:51:25 GMT  
		Size: 3.7 MB (3698122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2717fe242d0eedded749cc46ffce5cd81df3bf5ab3d3005091f4392ad37cea`  
		Last Modified: Tue, 12 Sep 2017 04:53:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.8.0-onbuild` - linux; 386

```console
$ docker pull pypy@sha256:c8de22f6aa65f21c1d3b0e22b947e9f49deaa3ef8edd5a31f1aeb9cf664015a9
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280811391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7e6138f406965da56a32fcc6f9ce71959e2960e425cb4caa8a93454a2ac6e5`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:49:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 15:49:57 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:50:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYPY_VERSION=5.8.0
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 09 Sep 2017 16:24:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Sat, 09 Sep 2017 16:24:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 09 Sep 2017 16:24:45 GMT
CMD ["pypy"]
# Sat, 09 Sep 2017 16:24:49 GMT
RUN mkdir -p /usr/src/app
# Sat, 09 Sep 2017 16:24:49 GMT
WORKDIR /usr/src/app
# Sat, 09 Sep 2017 16:24:49 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 09 Sep 2017 16:24:49 GMT
ONBUILD RUN pip install -r requirements.txt
# Sat, 09 Sep 2017 16:24:50 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75754178d7dbc31bf0f650bd7481f81245ac3428df088b755295300bab3dbdcd`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.3 MB (3271520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc46b8fce2026638ba6673f0d3a8049dc91e797e789d01b73b656214e197159`  
		Last Modified: Sat, 09 Sep 2017 16:25:03 GMT  
		Size: 20.7 MB (20711262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de9c2ff13777d7b1c543af81b3b8c3701ebb3513036d041254b8128cb4ba450`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.7 MB (3721979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e565016de64b888b91c6e948107535444cfeae5be23c8ff6efb8dffb3f74dc6c`  
		Last Modified: Sat, 09 Sep 2017 16:25:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8-onbuild`

```console
$ docker pull pypy@sha256:dd47b2a2694da3c8e72f782e02262e20af11df4b0cccd369f09fa9f0b9617d7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5.8-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:c0c0ec0df4c41011ebed5d101ae1e09b927cce0cf60a633b321494014efd5e21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d993c7830b49b7d3b5a9cdf271a686648b704f8390cb55c0eb0405fcba13353`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:02:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 20:03:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:03:05 GMT
CMD ["pypy"]
# Tue, 12 Sep 2017 20:04:00 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 20:04:01 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 20:04:01 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 12 Sep 2017 20:04:01 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 12 Sep 2017 20:04:01 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f124da2ac030fae2dae0f3a342d42ae5c2c00190520a6a3bc5294fa2b5b9409`  
		Last Modified: Tue, 12 Sep 2017 20:05:18 GMT  
		Size: 24.4 MB (24382705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b2abcf08abb3d79cdcf1779d3652da892fab568d3a3631f17dc73bbbc15517`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.7 MB (3697345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af257dac0187ce6db4f33f07a754f43348fafdb914b940781c62097daef06933`  
		Last Modified: Tue, 12 Sep 2017 20:05:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.8-onbuild` - linux; arm variant v5

```console
$ docker pull pypy@sha256:d120d9596df4c26d8d7d4eaeaf5aa85d4b0b147446c415edb774e4ab08f0f0d7
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254619901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e846816b73ac354c8875e94d953a1b2d24d63426b28fd5ec727ac7acc075721`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:29:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 21:40:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:51:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:38:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 04:38:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 04:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:39:37 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 04:39:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 04:40:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 04:41:04 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 04:41:05 GMT
CMD ["pypy"]
# Tue, 12 Sep 2017 04:50:55 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 04:50:55 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 04:50:56 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 12 Sep 2017 04:50:57 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 12 Sep 2017 04:50:59 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d77b9faf0ea3bf7624c86236027513537d3d014dea08a2ff85d9f469104a2c`  
		Last Modified: Tue, 12 Sep 2017 04:13:40 GMT  
		Size: 18.7 MB (18653520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72b2418770008733d02d0fb407d8032ea3ed6661949dc96c986b6890452ffe8`  
		Last Modified: Tue, 12 Sep 2017 04:14:31 GMT  
		Size: 41.1 MB (41064151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afcb1d52a7b4e356d9ba2af26f0f6659c5f7f4755b8572cf8949f45f35a3963`  
		Last Modified: Tue, 12 Sep 2017 04:16:02 GMT  
		Size: 115.5 MB (115455794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1808af0255658d5a669b80501a147be72eb2271a3d17412ae4479e407cde4`  
		Last Modified: Tue, 12 Sep 2017 04:51:23 GMT  
		Size: 3.0 MB (3021196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea137468eec984a8b2f9ea66bc8ccaabb8a3ae2fb36cfc09797266c0be899834`  
		Last Modified: Tue, 12 Sep 2017 04:51:41 GMT  
		Size: 21.8 MB (21849501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191dad70af0f38efea28f9b6fbe6e549cbfa5b4bc197364ff10a0b3636fcb454`  
		Last Modified: Tue, 12 Sep 2017 04:51:25 GMT  
		Size: 3.7 MB (3698122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2717fe242d0eedded749cc46ffce5cd81df3bf5ab3d3005091f4392ad37cea`  
		Last Modified: Tue, 12 Sep 2017 04:53:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.8-onbuild` - linux; 386

```console
$ docker pull pypy@sha256:c8de22f6aa65f21c1d3b0e22b947e9f49deaa3ef8edd5a31f1aeb9cf664015a9
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280811391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7e6138f406965da56a32fcc6f9ce71959e2960e425cb4caa8a93454a2ac6e5`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:49:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 15:49:57 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:50:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYPY_VERSION=5.8.0
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 09 Sep 2017 16:24:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Sat, 09 Sep 2017 16:24:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 09 Sep 2017 16:24:45 GMT
CMD ["pypy"]
# Sat, 09 Sep 2017 16:24:49 GMT
RUN mkdir -p /usr/src/app
# Sat, 09 Sep 2017 16:24:49 GMT
WORKDIR /usr/src/app
# Sat, 09 Sep 2017 16:24:49 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 09 Sep 2017 16:24:49 GMT
ONBUILD RUN pip install -r requirements.txt
# Sat, 09 Sep 2017 16:24:50 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75754178d7dbc31bf0f650bd7481f81245ac3428df088b755295300bab3dbdcd`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.3 MB (3271520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc46b8fce2026638ba6673f0d3a8049dc91e797e789d01b73b656214e197159`  
		Last Modified: Sat, 09 Sep 2017 16:25:03 GMT  
		Size: 20.7 MB (20711262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de9c2ff13777d7b1c543af81b3b8c3701ebb3513036d041254b8128cb4ba450`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.7 MB (3721979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e565016de64b888b91c6e948107535444cfeae5be23c8ff6efb8dffb3f74dc6c`  
		Last Modified: Sat, 09 Sep 2017 16:25:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-onbuild`

```console
$ docker pull pypy@sha256:dd47b2a2694da3c8e72f782e02262e20af11df4b0cccd369f09fa9f0b9617d7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:c0c0ec0df4c41011ebed5d101ae1e09b927cce0cf60a633b321494014efd5e21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d993c7830b49b7d3b5a9cdf271a686648b704f8390cb55c0eb0405fcba13353`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:02:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 20:03:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:03:05 GMT
CMD ["pypy"]
# Tue, 12 Sep 2017 20:04:00 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 20:04:01 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 20:04:01 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 12 Sep 2017 20:04:01 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 12 Sep 2017 20:04:01 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f124da2ac030fae2dae0f3a342d42ae5c2c00190520a6a3bc5294fa2b5b9409`  
		Last Modified: Tue, 12 Sep 2017 20:05:18 GMT  
		Size: 24.4 MB (24382705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b2abcf08abb3d79cdcf1779d3652da892fab568d3a3631f17dc73bbbc15517`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.7 MB (3697345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af257dac0187ce6db4f33f07a754f43348fafdb914b940781c62097daef06933`  
		Last Modified: Tue, 12 Sep 2017 20:05:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-onbuild` - linux; arm variant v5

```console
$ docker pull pypy@sha256:d120d9596df4c26d8d7d4eaeaf5aa85d4b0b147446c415edb774e4ab08f0f0d7
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254619901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e846816b73ac354c8875e94d953a1b2d24d63426b28fd5ec727ac7acc075721`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:29:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 21:40:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:51:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:38:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 04:38:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 04:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:39:37 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 04:39:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 04:40:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 04:41:04 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 04:41:05 GMT
CMD ["pypy"]
# Tue, 12 Sep 2017 04:50:55 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 04:50:55 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 04:50:56 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 12 Sep 2017 04:50:57 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 12 Sep 2017 04:50:59 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d77b9faf0ea3bf7624c86236027513537d3d014dea08a2ff85d9f469104a2c`  
		Last Modified: Tue, 12 Sep 2017 04:13:40 GMT  
		Size: 18.7 MB (18653520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72b2418770008733d02d0fb407d8032ea3ed6661949dc96c986b6890452ffe8`  
		Last Modified: Tue, 12 Sep 2017 04:14:31 GMT  
		Size: 41.1 MB (41064151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afcb1d52a7b4e356d9ba2af26f0f6659c5f7f4755b8572cf8949f45f35a3963`  
		Last Modified: Tue, 12 Sep 2017 04:16:02 GMT  
		Size: 115.5 MB (115455794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1808af0255658d5a669b80501a147be72eb2271a3d17412ae4479e407cde4`  
		Last Modified: Tue, 12 Sep 2017 04:51:23 GMT  
		Size: 3.0 MB (3021196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea137468eec984a8b2f9ea66bc8ccaabb8a3ae2fb36cfc09797266c0be899834`  
		Last Modified: Tue, 12 Sep 2017 04:51:41 GMT  
		Size: 21.8 MB (21849501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191dad70af0f38efea28f9b6fbe6e549cbfa5b4bc197364ff10a0b3636fcb454`  
		Last Modified: Tue, 12 Sep 2017 04:51:25 GMT  
		Size: 3.7 MB (3698122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2717fe242d0eedded749cc46ffce5cd81df3bf5ab3d3005091f4392ad37cea`  
		Last Modified: Tue, 12 Sep 2017 04:53:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-onbuild` - linux; 386

```console
$ docker pull pypy@sha256:c8de22f6aa65f21c1d3b0e22b947e9f49deaa3ef8edd5a31f1aeb9cf664015a9
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280811391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7e6138f406965da56a32fcc6f9ce71959e2960e425cb4caa8a93454a2ac6e5`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:49:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 15:49:57 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:50:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYPY_VERSION=5.8.0
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 09 Sep 2017 16:24:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Sat, 09 Sep 2017 16:24:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 09 Sep 2017 16:24:45 GMT
CMD ["pypy"]
# Sat, 09 Sep 2017 16:24:49 GMT
RUN mkdir -p /usr/src/app
# Sat, 09 Sep 2017 16:24:49 GMT
WORKDIR /usr/src/app
# Sat, 09 Sep 2017 16:24:49 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 09 Sep 2017 16:24:49 GMT
ONBUILD RUN pip install -r requirements.txt
# Sat, 09 Sep 2017 16:24:50 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75754178d7dbc31bf0f650bd7481f81245ac3428df088b755295300bab3dbdcd`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.3 MB (3271520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc46b8fce2026638ba6673f0d3a8049dc91e797e789d01b73b656214e197159`  
		Last Modified: Sat, 09 Sep 2017 16:25:03 GMT  
		Size: 20.7 MB (20711262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de9c2ff13777d7b1c543af81b3b8c3701ebb3513036d041254b8128cb4ba450`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.7 MB (3721979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e565016de64b888b91c6e948107535444cfeae5be23c8ff6efb8dffb3f74dc6c`  
		Last Modified: Sat, 09 Sep 2017 16:25:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-onbuild`

```console
$ docker pull pypy@sha256:dd47b2a2694da3c8e72f782e02262e20af11df4b0cccd369f09fa9f0b9617d7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:c0c0ec0df4c41011ebed5d101ae1e09b927cce0cf60a633b321494014efd5e21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d993c7830b49b7d3b5a9cdf271a686648b704f8390cb55c0eb0405fcba13353`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:02:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 20:03:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:03:05 GMT
CMD ["pypy"]
# Tue, 12 Sep 2017 20:04:00 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 20:04:01 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 20:04:01 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 12 Sep 2017 20:04:01 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 12 Sep 2017 20:04:01 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f124da2ac030fae2dae0f3a342d42ae5c2c00190520a6a3bc5294fa2b5b9409`  
		Last Modified: Tue, 12 Sep 2017 20:05:18 GMT  
		Size: 24.4 MB (24382705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b2abcf08abb3d79cdcf1779d3652da892fab568d3a3631f17dc73bbbc15517`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.7 MB (3697345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af257dac0187ce6db4f33f07a754f43348fafdb914b940781c62097daef06933`  
		Last Modified: Tue, 12 Sep 2017 20:05:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-onbuild` - linux; arm variant v5

```console
$ docker pull pypy@sha256:d120d9596df4c26d8d7d4eaeaf5aa85d4b0b147446c415edb774e4ab08f0f0d7
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254619901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e846816b73ac354c8875e94d953a1b2d24d63426b28fd5ec727ac7acc075721`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 19:56:37 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Fri, 08 Sep 2017 19:56:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:29:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 21:40:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:51:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:38:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 04:38:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 04:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:39:37 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 04:39:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 04:40:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Sep 2017 04:41:04 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 04:41:05 GMT
CMD ["pypy"]
# Tue, 12 Sep 2017 04:50:55 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 04:50:55 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 04:50:56 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 12 Sep 2017 04:50:57 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 12 Sep 2017 04:50:59 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ab9efa2081b39a1cb31bd23524b8c558c5ed00605e9d06b88d5aa68198966df1`  
		Last Modified: Fri, 08 Sep 2017 20:11:48 GMT  
		Size: 50.9 MB (50877486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d77b9faf0ea3bf7624c86236027513537d3d014dea08a2ff85d9f469104a2c`  
		Last Modified: Tue, 12 Sep 2017 04:13:40 GMT  
		Size: 18.7 MB (18653520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72b2418770008733d02d0fb407d8032ea3ed6661949dc96c986b6890452ffe8`  
		Last Modified: Tue, 12 Sep 2017 04:14:31 GMT  
		Size: 41.1 MB (41064151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afcb1d52a7b4e356d9ba2af26f0f6659c5f7f4755b8572cf8949f45f35a3963`  
		Last Modified: Tue, 12 Sep 2017 04:16:02 GMT  
		Size: 115.5 MB (115455794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1808af0255658d5a669b80501a147be72eb2271a3d17412ae4479e407cde4`  
		Last Modified: Tue, 12 Sep 2017 04:51:23 GMT  
		Size: 3.0 MB (3021196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea137468eec984a8b2f9ea66bc8ccaabb8a3ae2fb36cfc09797266c0be899834`  
		Last Modified: Tue, 12 Sep 2017 04:51:41 GMT  
		Size: 21.8 MB (21849501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191dad70af0f38efea28f9b6fbe6e549cbfa5b4bc197364ff10a0b3636fcb454`  
		Last Modified: Tue, 12 Sep 2017 04:51:25 GMT  
		Size: 3.7 MB (3698122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2717fe242d0eedded749cc46ffce5cd81df3bf5ab3d3005091f4392ad37cea`  
		Last Modified: Tue, 12 Sep 2017 04:53:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-onbuild` - linux; 386

```console
$ docker pull pypy@sha256:c8de22f6aa65f21c1d3b0e22b947e9f49deaa3ef8edd5a31f1aeb9cf664015a9
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280811391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7e6138f406965da56a32fcc6f9ce71959e2960e425cb4caa8a93454a2ac6e5`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:49:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 15:49:57 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:50:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYPY_VERSION=5.8.0
# Sat, 09 Sep 2017 16:24:27 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 09 Sep 2017 16:24:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Sat, 09 Sep 2017 16:24:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 09 Sep 2017 16:24:45 GMT
CMD ["pypy"]
# Sat, 09 Sep 2017 16:24:49 GMT
RUN mkdir -p /usr/src/app
# Sat, 09 Sep 2017 16:24:49 GMT
WORKDIR /usr/src/app
# Sat, 09 Sep 2017 16:24:49 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 09 Sep 2017 16:24:49 GMT
ONBUILD RUN pip install -r requirements.txt
# Sat, 09 Sep 2017 16:24:50 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75754178d7dbc31bf0f650bd7481f81245ac3428df088b755295300bab3dbdcd`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.3 MB (3271520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc46b8fce2026638ba6673f0d3a8049dc91e797e789d01b73b656214e197159`  
		Last Modified: Sat, 09 Sep 2017 16:25:03 GMT  
		Size: 20.7 MB (20711262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de9c2ff13777d7b1c543af81b3b8c3701ebb3513036d041254b8128cb4ba450`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.7 MB (3721979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e565016de64b888b91c6e948107535444cfeae5be23c8ff6efb8dffb3f74dc6c`  
		Last Modified: Sat, 09 Sep 2017 16:25:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8.0`

```console
$ docker pull pypy@sha256:a3385ee5eb37470980a8574c6d471fb50a175a243a14018c3bc48a527dce1218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5.8.0` - linux; amd64

```console
$ docker pull pypy@sha256:3174d25b2b2180feec84a1b15627b5025dbe09a87cbaeb39afb4c6141dfa1e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282132845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:985393daac3400c6006af3713c862dcc1cd51bb6a0bb0b5d4cf2a9725fca3dae`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:04:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 12 Sep 2017 20:04:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:04:22 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7c75751441d2e0b4acd73733e55f955192f0f58d6ee57f9ac81a1ae5f8a205`  
		Last Modified: Tue, 12 Sep 2017 20:06:17 GMT  
		Size: 25.0 MB (25046938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f02c629bc92e5d4b45671513bcfdd789fc2c85cf59d324316fc97065405c3d`  
		Last Modified: Tue, 12 Sep 2017 20:06:12 GMT  
		Size: 4.1 MB (4148440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8`

```console
$ docker pull pypy@sha256:a3385ee5eb37470980a8574c6d471fb50a175a243a14018c3bc48a527dce1218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5.8` - linux; amd64

```console
$ docker pull pypy@sha256:3174d25b2b2180feec84a1b15627b5025dbe09a87cbaeb39afb4c6141dfa1e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282132845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:985393daac3400c6006af3713c862dcc1cd51bb6a0bb0b5d4cf2a9725fca3dae`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:04:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 12 Sep 2017 20:04:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:04:22 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7c75751441d2e0b4acd73733e55f955192f0f58d6ee57f9ac81a1ae5f8a205`  
		Last Modified: Tue, 12 Sep 2017 20:06:17 GMT  
		Size: 25.0 MB (25046938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f02c629bc92e5d4b45671513bcfdd789fc2c85cf59d324316fc97065405c3d`  
		Last Modified: Tue, 12 Sep 2017 20:06:12 GMT  
		Size: 4.1 MB (4148440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5`

```console
$ docker pull pypy@sha256:a3385ee5eb37470980a8574c6d471fb50a175a243a14018c3bc48a527dce1218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5` - linux; amd64

```console
$ docker pull pypy@sha256:3174d25b2b2180feec84a1b15627b5025dbe09a87cbaeb39afb4c6141dfa1e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282132845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:985393daac3400c6006af3713c862dcc1cd51bb6a0bb0b5d4cf2a9725fca3dae`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:04:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 12 Sep 2017 20:04:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:04:22 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7c75751441d2e0b4acd73733e55f955192f0f58d6ee57f9ac81a1ae5f8a205`  
		Last Modified: Tue, 12 Sep 2017 20:06:17 GMT  
		Size: 25.0 MB (25046938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f02c629bc92e5d4b45671513bcfdd789fc2c85cf59d324316fc97065405c3d`  
		Last Modified: Tue, 12 Sep 2017 20:06:12 GMT  
		Size: 4.1 MB (4148440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3`

```console
$ docker pull pypy@sha256:a3385ee5eb37470980a8574c6d471fb50a175a243a14018c3bc48a527dce1218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3` - linux; amd64

```console
$ docker pull pypy@sha256:3174d25b2b2180feec84a1b15627b5025dbe09a87cbaeb39afb4c6141dfa1e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282132845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:985393daac3400c6006af3713c862dcc1cd51bb6a0bb0b5d4cf2a9725fca3dae`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:04:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 12 Sep 2017 20:04:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:04:22 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7c75751441d2e0b4acd73733e55f955192f0f58d6ee57f9ac81a1ae5f8a205`  
		Last Modified: Tue, 12 Sep 2017 20:06:17 GMT  
		Size: 25.0 MB (25046938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f02c629bc92e5d4b45671513bcfdd789fc2c85cf59d324316fc97065405c3d`  
		Last Modified: Tue, 12 Sep 2017 20:06:12 GMT  
		Size: 4.1 MB (4148440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:latest`

```console
$ docker pull pypy@sha256:a3385ee5eb37470980a8574c6d471fb50a175a243a14018c3bc48a527dce1218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:latest` - linux; amd64

```console
$ docker pull pypy@sha256:3174d25b2b2180feec84a1b15627b5025dbe09a87cbaeb39afb4c6141dfa1e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282132845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:985393daac3400c6006af3713c862dcc1cd51bb6a0bb0b5d4cf2a9725fca3dae`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:04:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 12 Sep 2017 20:04:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:04:22 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7c75751441d2e0b4acd73733e55f955192f0f58d6ee57f9ac81a1ae5f8a205`  
		Last Modified: Tue, 12 Sep 2017 20:06:17 GMT  
		Size: 25.0 MB (25046938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f02c629bc92e5d4b45671513bcfdd789fc2c85cf59d324316fc97065405c3d`  
		Last Modified: Tue, 12 Sep 2017 20:06:12 GMT  
		Size: 4.1 MB (4148440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8.0-slim`

```console
$ docker pull pypy@sha256:3b4f968e6a02d3ca1fa7d720681c3091fd3b0b2818570a682a7d1123bc0b7bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5.8.0-slim` - linux; amd64

```console
$ docker pull pypy@sha256:ce514dc8c39e99691e09b8185f0bde16243d8f9802a6870551212545889605c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62472143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136edbc38a7d1517c4bbe2c497d6e2ed30aba492f7ec8ff84adc424e95d64fa5`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:03:06 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:05:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 20:05:01 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f0e105f4d1e2a64d222e956ae25b06bf589d9aa50492bac8ddea509e3f601c`  
		Last Modified: Tue, 12 Sep 2017 20:05:36 GMT  
		Size: 2.9 MB (2859587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246c0deb056430eb6d4bd4c28baa66dfb008e295c08c24aaf078f648b249b1b7`  
		Last Modified: Tue, 12 Sep 2017 20:06:46 GMT  
		Size: 29.5 MB (29499422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8-slim`

```console
$ docker pull pypy@sha256:3b4f968e6a02d3ca1fa7d720681c3091fd3b0b2818570a682a7d1123bc0b7bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5.8-slim` - linux; amd64

```console
$ docker pull pypy@sha256:ce514dc8c39e99691e09b8185f0bde16243d8f9802a6870551212545889605c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62472143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136edbc38a7d1517c4bbe2c497d6e2ed30aba492f7ec8ff84adc424e95d64fa5`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:03:06 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:05:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 20:05:01 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f0e105f4d1e2a64d222e956ae25b06bf589d9aa50492bac8ddea509e3f601c`  
		Last Modified: Tue, 12 Sep 2017 20:05:36 GMT  
		Size: 2.9 MB (2859587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246c0deb056430eb6d4bd4c28baa66dfb008e295c08c24aaf078f648b249b1b7`  
		Last Modified: Tue, 12 Sep 2017 20:06:46 GMT  
		Size: 29.5 MB (29499422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:3b4f968e6a02d3ca1fa7d720681c3091fd3b0b2818570a682a7d1123bc0b7bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5-slim` - linux; amd64

```console
$ docker pull pypy@sha256:ce514dc8c39e99691e09b8185f0bde16243d8f9802a6870551212545889605c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62472143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136edbc38a7d1517c4bbe2c497d6e2ed30aba492f7ec8ff84adc424e95d64fa5`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:03:06 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:05:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 20:05:01 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f0e105f4d1e2a64d222e956ae25b06bf589d9aa50492bac8ddea509e3f601c`  
		Last Modified: Tue, 12 Sep 2017 20:05:36 GMT  
		Size: 2.9 MB (2859587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246c0deb056430eb6d4bd4c28baa66dfb008e295c08c24aaf078f648b249b1b7`  
		Last Modified: Tue, 12 Sep 2017 20:06:46 GMT  
		Size: 29.5 MB (29499422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim`

```console
$ docker pull pypy@sha256:3b4f968e6a02d3ca1fa7d720681c3091fd3b0b2818570a682a7d1123bc0b7bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

```console
$ docker pull pypy@sha256:ce514dc8c39e99691e09b8185f0bde16243d8f9802a6870551212545889605c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62472143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136edbc38a7d1517c4bbe2c497d6e2ed30aba492f7ec8ff84adc424e95d64fa5`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:03:06 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:05:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 20:05:01 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f0e105f4d1e2a64d222e956ae25b06bf589d9aa50492bac8ddea509e3f601c`  
		Last Modified: Tue, 12 Sep 2017 20:05:36 GMT  
		Size: 2.9 MB (2859587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246c0deb056430eb6d4bd4c28baa66dfb008e295c08c24aaf078f648b249b1b7`  
		Last Modified: Tue, 12 Sep 2017 20:06:46 GMT  
		Size: 29.5 MB (29499422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim`

```console
$ docker pull pypy@sha256:3b4f968e6a02d3ca1fa7d720681c3091fd3b0b2818570a682a7d1123bc0b7bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:slim` - linux; amd64

```console
$ docker pull pypy@sha256:ce514dc8c39e99691e09b8185f0bde16243d8f9802a6870551212545889605c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62472143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136edbc38a7d1517c4bbe2c497d6e2ed30aba492f7ec8ff84adc424e95d64fa5`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:03:06 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:05:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 20:05:01 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f0e105f4d1e2a64d222e956ae25b06bf589d9aa50492bac8ddea509e3f601c`  
		Last Modified: Tue, 12 Sep 2017 20:05:36 GMT  
		Size: 2.9 MB (2859587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246c0deb056430eb6d4bd4c28baa66dfb008e295c08c24aaf078f648b249b1b7`  
		Last Modified: Tue, 12 Sep 2017 20:06:46 GMT  
		Size: 29.5 MB (29499422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8.0-onbuild`

```console
$ docker pull pypy@sha256:56b812cba25a8ca76a778825649e829bce6833fb3c1471c1dbc56776ef91e24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5.8.0-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:547fa77d04e806a3794c692689153165f22232c4bac7b154e065e3b0d41e2d66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282132977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a913a6d16048b7f4144a5db8a6ac6132ed056f90bb85ef509b8c56f28122cb`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:04:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 12 Sep 2017 20:04:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:04:22 GMT
CMD ["pypy3"]
# Tue, 12 Sep 2017 20:05:02 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 20:05:02 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7c75751441d2e0b4acd73733e55f955192f0f58d6ee57f9ac81a1ae5f8a205`  
		Last Modified: Tue, 12 Sep 2017 20:06:17 GMT  
		Size: 25.0 MB (25046938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f02c629bc92e5d4b45671513bcfdd789fc2c85cf59d324316fc97065405c3d`  
		Last Modified: Tue, 12 Sep 2017 20:06:12 GMT  
		Size: 4.1 MB (4148440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ede0654349d629223b19aafbb7e4e00469f95a6f7293a788bbc3d37928833b7`  
		Last Modified: Tue, 12 Sep 2017 20:07:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8-onbuild`

```console
$ docker pull pypy@sha256:56b812cba25a8ca76a778825649e829bce6833fb3c1471c1dbc56776ef91e24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5.8-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:547fa77d04e806a3794c692689153165f22232c4bac7b154e065e3b0d41e2d66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282132977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a913a6d16048b7f4144a5db8a6ac6132ed056f90bb85ef509b8c56f28122cb`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:04:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 12 Sep 2017 20:04:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:04:22 GMT
CMD ["pypy3"]
# Tue, 12 Sep 2017 20:05:02 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 20:05:02 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7c75751441d2e0b4acd73733e55f955192f0f58d6ee57f9ac81a1ae5f8a205`  
		Last Modified: Tue, 12 Sep 2017 20:06:17 GMT  
		Size: 25.0 MB (25046938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f02c629bc92e5d4b45671513bcfdd789fc2c85cf59d324316fc97065405c3d`  
		Last Modified: Tue, 12 Sep 2017 20:06:12 GMT  
		Size: 4.1 MB (4148440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ede0654349d629223b19aafbb7e4e00469f95a6f7293a788bbc3d37928833b7`  
		Last Modified: Tue, 12 Sep 2017 20:07:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-onbuild`

```console
$ docker pull pypy@sha256:56b812cba25a8ca76a778825649e829bce6833fb3c1471c1dbc56776ef91e24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:547fa77d04e806a3794c692689153165f22232c4bac7b154e065e3b0d41e2d66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282132977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a913a6d16048b7f4144a5db8a6ac6132ed056f90bb85ef509b8c56f28122cb`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:04:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 12 Sep 2017 20:04:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:04:22 GMT
CMD ["pypy3"]
# Tue, 12 Sep 2017 20:05:02 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 20:05:02 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7c75751441d2e0b4acd73733e55f955192f0f58d6ee57f9ac81a1ae5f8a205`  
		Last Modified: Tue, 12 Sep 2017 20:06:17 GMT  
		Size: 25.0 MB (25046938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f02c629bc92e5d4b45671513bcfdd789fc2c85cf59d324316fc97065405c3d`  
		Last Modified: Tue, 12 Sep 2017 20:06:12 GMT  
		Size: 4.1 MB (4148440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ede0654349d629223b19aafbb7e4e00469f95a6f7293a788bbc3d37928833b7`  
		Last Modified: Tue, 12 Sep 2017 20:07:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-onbuild`

```console
$ docker pull pypy@sha256:56b812cba25a8ca76a778825649e829bce6833fb3c1471c1dbc56776ef91e24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:547fa77d04e806a3794c692689153165f22232c4bac7b154e065e3b0d41e2d66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282132977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a913a6d16048b7f4144a5db8a6ac6132ed056f90bb85ef509b8c56f28122cb`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:04:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 12 Sep 2017 20:04:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:04:22 GMT
CMD ["pypy3"]
# Tue, 12 Sep 2017 20:05:02 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 20:05:02 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7c75751441d2e0b4acd73733e55f955192f0f58d6ee57f9ac81a1ae5f8a205`  
		Last Modified: Tue, 12 Sep 2017 20:06:17 GMT  
		Size: 25.0 MB (25046938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f02c629bc92e5d4b45671513bcfdd789fc2c85cf59d324316fc97065405c3d`  
		Last Modified: Tue, 12 Sep 2017 20:06:12 GMT  
		Size: 4.1 MB (4148440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ede0654349d629223b19aafbb7e4e00469f95a6f7293a788bbc3d37928833b7`  
		Last Modified: Tue, 12 Sep 2017 20:07:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:onbuild`

```console
$ docker pull pypy@sha256:56b812cba25a8ca76a778825649e829bce6833fb3c1471c1dbc56776ef91e24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:547fa77d04e806a3794c692689153165f22232c4bac7b154e065e3b0d41e2d66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282132977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a913a6d16048b7f4144a5db8a6ac6132ed056f90bb85ef509b8c56f28122cb`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:04:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 12 Sep 2017 20:04:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:04:22 GMT
CMD ["pypy3"]
# Tue, 12 Sep 2017 20:05:02 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 20:05:02 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7c75751441d2e0b4acd73733e55f955192f0f58d6ee57f9ac81a1ae5f8a205`  
		Last Modified: Tue, 12 Sep 2017 20:06:17 GMT  
		Size: 25.0 MB (25046938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f02c629bc92e5d4b45671513bcfdd789fc2c85cf59d324316fc97065405c3d`  
		Last Modified: Tue, 12 Sep 2017 20:06:12 GMT  
		Size: 4.1 MB (4148440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ede0654349d629223b19aafbb7e4e00469f95a6f7293a788bbc3d37928833b7`  
		Last Modified: Tue, 12 Sep 2017 20:07:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
