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
$ docker pull pypy@sha256:e5e4264bb1a74c15dd132f9d84d64d2f46e931b3c22380f7d7a16d255bcb76ac
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280782578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33df398b3ca87b95b9fc9af2013d901bfd4f63545a0e23af27b2966bbf6690e5`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 29 Aug 2017 06:22:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ad5af783010570f136d4a8729c9b5cae9416e0aaad16d9cae78a750943afee`  
		Last Modified: Tue, 29 Aug 2017 06:23:19 GMT  
		Size: 24.4 MB (24382700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add5d87680645f7172e4428ccc78a9565853d9d94544a6ddb67ad59f24801f84`  
		Last Modified: Tue, 29 Aug 2017 06:23:13 GMT  
		Size: 3.7 MB (3720412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8`

```console
$ docker pull pypy@sha256:e5e4264bb1a74c15dd132f9d84d64d2f46e931b3c22380f7d7a16d255bcb76ac
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280782578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33df398b3ca87b95b9fc9af2013d901bfd4f63545a0e23af27b2966bbf6690e5`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 29 Aug 2017 06:22:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ad5af783010570f136d4a8729c9b5cae9416e0aaad16d9cae78a750943afee`  
		Last Modified: Tue, 29 Aug 2017 06:23:19 GMT  
		Size: 24.4 MB (24382700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add5d87680645f7172e4428ccc78a9565853d9d94544a6ddb67ad59f24801f84`  
		Last Modified: Tue, 29 Aug 2017 06:23:13 GMT  
		Size: 3.7 MB (3720412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5`

```console
$ docker pull pypy@sha256:e5e4264bb1a74c15dd132f9d84d64d2f46e931b3c22380f7d7a16d255bcb76ac
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280782578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33df398b3ca87b95b9fc9af2013d901bfd4f63545a0e23af27b2966bbf6690e5`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 29 Aug 2017 06:22:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ad5af783010570f136d4a8729c9b5cae9416e0aaad16d9cae78a750943afee`  
		Last Modified: Tue, 29 Aug 2017 06:23:19 GMT  
		Size: 24.4 MB (24382700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add5d87680645f7172e4428ccc78a9565853d9d94544a6ddb67ad59f24801f84`  
		Last Modified: Tue, 29 Aug 2017 06:23:13 GMT  
		Size: 3.7 MB (3720412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2`

```console
$ docker pull pypy@sha256:e5e4264bb1a74c15dd132f9d84d64d2f46e931b3c22380f7d7a16d255bcb76ac
```

-	Platforms:
	-	linux; amd64

### `pypy:2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280782578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33df398b3ca87b95b9fc9af2013d901bfd4f63545a0e23af27b2966bbf6690e5`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 29 Aug 2017 06:22:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ad5af783010570f136d4a8729c9b5cae9416e0aaad16d9cae78a750943afee`  
		Last Modified: Tue, 29 Aug 2017 06:23:19 GMT  
		Size: 24.4 MB (24382700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add5d87680645f7172e4428ccc78a9565853d9d94544a6ddb67ad59f24801f84`  
		Last Modified: Tue, 29 Aug 2017 06:23:13 GMT  
		Size: 3.7 MB (3720412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8.0-slim`

```console
$ docker pull pypy@sha256:ed2e9a1cbfe5ec0d1653b7b8fef5bff3d1c0c9aef4d6c8b3e69a04e7e8e50e91
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8.0-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61097487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c79a03c8b467ebc74e612ff836968379d20b8a0897b00264077bc5f38c3db0`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 25 Aug 2017 15:02:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 25 Aug 2017 15:03:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Aug 2017 15:03:17 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f970c214abdd13acc5a64b108c7fd76b38b2027f7fdefb147e0cc6c093589a7d`  
		Last Modified: Fri, 25 Aug 2017 15:05:53 GMT  
		Size: 28.1 MB (28116151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8-slim`

```console
$ docker pull pypy@sha256:ed2e9a1cbfe5ec0d1653b7b8fef5bff3d1c0c9aef4d6c8b3e69a04e7e8e50e91
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61097487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c79a03c8b467ebc74e612ff836968379d20b8a0897b00264077bc5f38c3db0`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 25 Aug 2017 15:02:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 25 Aug 2017 15:03:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Aug 2017 15:03:17 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f970c214abdd13acc5a64b108c7fd76b38b2027f7fdefb147e0cc6c093589a7d`  
		Last Modified: Fri, 25 Aug 2017 15:05:53 GMT  
		Size: 28.1 MB (28116151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:ed2e9a1cbfe5ec0d1653b7b8fef5bff3d1c0c9aef4d6c8b3e69a04e7e8e50e91
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61097487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c79a03c8b467ebc74e612ff836968379d20b8a0897b00264077bc5f38c3db0`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 25 Aug 2017 15:02:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 25 Aug 2017 15:03:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Aug 2017 15:03:17 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f970c214abdd13acc5a64b108c7fd76b38b2027f7fdefb147e0cc6c093589a7d`  
		Last Modified: Fri, 25 Aug 2017 15:05:53 GMT  
		Size: 28.1 MB (28116151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim`

```console
$ docker pull pypy@sha256:ed2e9a1cbfe5ec0d1653b7b8fef5bff3d1c0c9aef4d6c8b3e69a04e7e8e50e91
```

-	Platforms:
	-	linux; amd64

### `pypy:2-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61097487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c79a03c8b467ebc74e612ff836968379d20b8a0897b00264077bc5f38c3db0`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 25 Aug 2017 15:02:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 25 Aug 2017 15:03:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Aug 2017 15:03:17 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f970c214abdd13acc5a64b108c7fd76b38b2027f7fdefb147e0cc6c093589a7d`  
		Last Modified: Fri, 25 Aug 2017 15:05:53 GMT  
		Size: 28.1 MB (28116151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8.0-onbuild`

```console
$ docker pull pypy@sha256:0b2ca4357738cb9422b2f058c929e440bba65377f152cf0a9bf00d6909bb9fc9
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8.0-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280782703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e505f60e1c23e8a91e7b59357a4ed02cae233b669c0ec35bd2dedcfa8507dad`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 29 Aug 2017 06:22:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:09 GMT
CMD ["pypy"]
# Tue, 29 Aug 2017 06:22:19 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 06:22:19 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 06:22:20 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 29 Aug 2017 06:22:20 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 29 Aug 2017 06:22:20 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ad5af783010570f136d4a8729c9b5cae9416e0aaad16d9cae78a750943afee`  
		Last Modified: Tue, 29 Aug 2017 06:23:19 GMT  
		Size: 24.4 MB (24382700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add5d87680645f7172e4428ccc78a9565853d9d94544a6ddb67ad59f24801f84`  
		Last Modified: Tue, 29 Aug 2017 06:23:13 GMT  
		Size: 3.7 MB (3720412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8007571e52230ea9282803be69f5bcacdb8f7d93798795b7bd8a944b843df6da`  
		Last Modified: Tue, 29 Aug 2017 06:23:57 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8-onbuild`

```console
$ docker pull pypy@sha256:0b2ca4357738cb9422b2f058c929e440bba65377f152cf0a9bf00d6909bb9fc9
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280782703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e505f60e1c23e8a91e7b59357a4ed02cae233b669c0ec35bd2dedcfa8507dad`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 29 Aug 2017 06:22:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:09 GMT
CMD ["pypy"]
# Tue, 29 Aug 2017 06:22:19 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 06:22:19 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 06:22:20 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 29 Aug 2017 06:22:20 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 29 Aug 2017 06:22:20 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ad5af783010570f136d4a8729c9b5cae9416e0aaad16d9cae78a750943afee`  
		Last Modified: Tue, 29 Aug 2017 06:23:19 GMT  
		Size: 24.4 MB (24382700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add5d87680645f7172e4428ccc78a9565853d9d94544a6ddb67ad59f24801f84`  
		Last Modified: Tue, 29 Aug 2017 06:23:13 GMT  
		Size: 3.7 MB (3720412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8007571e52230ea9282803be69f5bcacdb8f7d93798795b7bd8a944b843df6da`  
		Last Modified: Tue, 29 Aug 2017 06:23:57 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-onbuild`

```console
$ docker pull pypy@sha256:0b2ca4357738cb9422b2f058c929e440bba65377f152cf0a9bf00d6909bb9fc9
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280782703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e505f60e1c23e8a91e7b59357a4ed02cae233b669c0ec35bd2dedcfa8507dad`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 29 Aug 2017 06:22:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:09 GMT
CMD ["pypy"]
# Tue, 29 Aug 2017 06:22:19 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 06:22:19 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 06:22:20 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 29 Aug 2017 06:22:20 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 29 Aug 2017 06:22:20 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ad5af783010570f136d4a8729c9b5cae9416e0aaad16d9cae78a750943afee`  
		Last Modified: Tue, 29 Aug 2017 06:23:19 GMT  
		Size: 24.4 MB (24382700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add5d87680645f7172e4428ccc78a9565853d9d94544a6ddb67ad59f24801f84`  
		Last Modified: Tue, 29 Aug 2017 06:23:13 GMT  
		Size: 3.7 MB (3720412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8007571e52230ea9282803be69f5bcacdb8f7d93798795b7bd8a944b843df6da`  
		Last Modified: Tue, 29 Aug 2017 06:23:57 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-onbuild`

```console
$ docker pull pypy@sha256:0b2ca4357738cb9422b2f058c929e440bba65377f152cf0a9bf00d6909bb9fc9
```

-	Platforms:
	-	linux; amd64

### `pypy:2-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280782703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e505f60e1c23e8a91e7b59357a4ed02cae233b669c0ec35bd2dedcfa8507dad`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e' ;; 		armel) pypyArch='linux-armel'; sha256='28b7fd0cc7418ffc66c71520728e87941be40ebf4b82675c57e25598a2a702b0' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='ddceca9c5c9a456d4bf1beab177660adffbbdf255a922244e1cc05f20318be46' ;; 		i386) pypyArch='linux32'; sha256='a0b125a5781f7e5ddfc3baca46503b14f4ee6a0e234e8d72bfcf3afdf4120bef' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 29 Aug 2017 06:22:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:09 GMT
CMD ["pypy"]
# Tue, 29 Aug 2017 06:22:19 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 06:22:19 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 06:22:20 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 29 Aug 2017 06:22:20 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 29 Aug 2017 06:22:20 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ad5af783010570f136d4a8729c9b5cae9416e0aaad16d9cae78a750943afee`  
		Last Modified: Tue, 29 Aug 2017 06:23:19 GMT  
		Size: 24.4 MB (24382700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add5d87680645f7172e4428ccc78a9565853d9d94544a6ddb67ad59f24801f84`  
		Last Modified: Tue, 29 Aug 2017 06:23:13 GMT  
		Size: 3.7 MB (3720412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8007571e52230ea9282803be69f5bcacdb8f7d93798795b7bd8a944b843df6da`  
		Last Modified: Tue, 29 Aug 2017 06:23:57 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8.0`

```console
$ docker pull pypy@sha256:588482801ec7edd4502947b5b7b80b3b7753adcb786b46b9bdf699b33f635470
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281897519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5898d9728305f749655d1012854524398c33bc1eea6333a768d3506176e5b08b`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 29 Aug 2017 06:22:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:47 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280613d9aa84744dc7432dba9e7e5db6b88ada9f5814cf0a4e9cdb4037e47eaf`  
		Last Modified: Tue, 29 Aug 2017 06:24:39 GMT  
		Size: 25.0 MB (25046881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bebc69be5c985f30eb08484bb8036b4b0dfdbf8910480fcfd0d88a1a951826`  
		Last Modified: Tue, 29 Aug 2017 06:24:34 GMT  
		Size: 4.2 MB (4171172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8`

```console
$ docker pull pypy@sha256:588482801ec7edd4502947b5b7b80b3b7753adcb786b46b9bdf699b33f635470
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281897519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5898d9728305f749655d1012854524398c33bc1eea6333a768d3506176e5b08b`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 29 Aug 2017 06:22:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:47 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280613d9aa84744dc7432dba9e7e5db6b88ada9f5814cf0a4e9cdb4037e47eaf`  
		Last Modified: Tue, 29 Aug 2017 06:24:39 GMT  
		Size: 25.0 MB (25046881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bebc69be5c985f30eb08484bb8036b4b0dfdbf8910480fcfd0d88a1a951826`  
		Last Modified: Tue, 29 Aug 2017 06:24:34 GMT  
		Size: 4.2 MB (4171172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5`

```console
$ docker pull pypy@sha256:588482801ec7edd4502947b5b7b80b3b7753adcb786b46b9bdf699b33f635470
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281897519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5898d9728305f749655d1012854524398c33bc1eea6333a768d3506176e5b08b`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 29 Aug 2017 06:22:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:47 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280613d9aa84744dc7432dba9e7e5db6b88ada9f5814cf0a4e9cdb4037e47eaf`  
		Last Modified: Tue, 29 Aug 2017 06:24:39 GMT  
		Size: 25.0 MB (25046881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bebc69be5c985f30eb08484bb8036b4b0dfdbf8910480fcfd0d88a1a951826`  
		Last Modified: Tue, 29 Aug 2017 06:24:34 GMT  
		Size: 4.2 MB (4171172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3`

```console
$ docker pull pypy@sha256:588482801ec7edd4502947b5b7b80b3b7753adcb786b46b9bdf699b33f635470
```

-	Platforms:
	-	linux; amd64

### `pypy:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281897519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5898d9728305f749655d1012854524398c33bc1eea6333a768d3506176e5b08b`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 29 Aug 2017 06:22:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:47 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280613d9aa84744dc7432dba9e7e5db6b88ada9f5814cf0a4e9cdb4037e47eaf`  
		Last Modified: Tue, 29 Aug 2017 06:24:39 GMT  
		Size: 25.0 MB (25046881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bebc69be5c985f30eb08484bb8036b4b0dfdbf8910480fcfd0d88a1a951826`  
		Last Modified: Tue, 29 Aug 2017 06:24:34 GMT  
		Size: 4.2 MB (4171172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:latest`

```console
$ docker pull pypy@sha256:588482801ec7edd4502947b5b7b80b3b7753adcb786b46b9bdf699b33f635470
```

-	Platforms:
	-	linux; amd64

### `pypy:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281897519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5898d9728305f749655d1012854524398c33bc1eea6333a768d3506176e5b08b`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 29 Aug 2017 06:22:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:47 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280613d9aa84744dc7432dba9e7e5db6b88ada9f5814cf0a4e9cdb4037e47eaf`  
		Last Modified: Tue, 29 Aug 2017 06:24:39 GMT  
		Size: 25.0 MB (25046881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bebc69be5c985f30eb08484bb8036b4b0dfdbf8910480fcfd0d88a1a951826`  
		Last Modified: Tue, 29 Aug 2017 06:24:34 GMT  
		Size: 4.2 MB (4171172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8.0-slim`

```console
$ docker pull pypy@sha256:62f43d3cc335449f96f31c1ac6602332384a6e521000be7cc5819901f680f6fa
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8.0-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62276915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9eaeb9bc7ad3f504c50a4b8686819f5500c7ebfc60ed52bd8499d115969117`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 25 Aug 2017 15:02:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 25 Aug 2017 15:04:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Aug 2017 15:04:52 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad5eb4de13e1a19d49ca3a2f439bbc0bcffec9f396cff6c569b4862e5f014c3`  
		Last Modified: Fri, 25 Aug 2017 15:07:39 GMT  
		Size: 29.3 MB (29295579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8-slim`

```console
$ docker pull pypy@sha256:62f43d3cc335449f96f31c1ac6602332384a6e521000be7cc5819901f680f6fa
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62276915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9eaeb9bc7ad3f504c50a4b8686819f5500c7ebfc60ed52bd8499d115969117`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 25 Aug 2017 15:02:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 25 Aug 2017 15:04:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Aug 2017 15:04:52 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad5eb4de13e1a19d49ca3a2f439bbc0bcffec9f396cff6c569b4862e5f014c3`  
		Last Modified: Fri, 25 Aug 2017 15:07:39 GMT  
		Size: 29.3 MB (29295579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:62f43d3cc335449f96f31c1ac6602332384a6e521000be7cc5819901f680f6fa
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62276915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9eaeb9bc7ad3f504c50a4b8686819f5500c7ebfc60ed52bd8499d115969117`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 25 Aug 2017 15:02:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 25 Aug 2017 15:04:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Aug 2017 15:04:52 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad5eb4de13e1a19d49ca3a2f439bbc0bcffec9f396cff6c569b4862e5f014c3`  
		Last Modified: Fri, 25 Aug 2017 15:07:39 GMT  
		Size: 29.3 MB (29295579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim`

```console
$ docker pull pypy@sha256:62f43d3cc335449f96f31c1ac6602332384a6e521000be7cc5819901f680f6fa
```

-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62276915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9eaeb9bc7ad3f504c50a4b8686819f5500c7ebfc60ed52bd8499d115969117`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 25 Aug 2017 15:02:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 25 Aug 2017 15:04:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Aug 2017 15:04:52 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad5eb4de13e1a19d49ca3a2f439bbc0bcffec9f396cff6c569b4862e5f014c3`  
		Last Modified: Fri, 25 Aug 2017 15:07:39 GMT  
		Size: 29.3 MB (29295579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim`

```console
$ docker pull pypy@sha256:62f43d3cc335449f96f31c1ac6602332384a6e521000be7cc5819901f680f6fa
```

-	Platforms:
	-	linux; amd64

### `pypy:slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62276915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9eaeb9bc7ad3f504c50a4b8686819f5500c7ebfc60ed52bd8499d115969117`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 25 Aug 2017 15:02:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 25 Aug 2017 15:04:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 25 Aug 2017 15:04:52 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad5eb4de13e1a19d49ca3a2f439bbc0bcffec9f396cff6c569b4862e5f014c3`  
		Last Modified: Fri, 25 Aug 2017 15:07:39 GMT  
		Size: 29.3 MB (29295579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8.0-onbuild`

```console
$ docker pull pypy@sha256:6b4dfb8a9d727343906410d4084601bd60ea4de1369b16225ffe26b93574f199
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8.0-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281897645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ccfd03e32391e38bf276d24307f2d9fc139264abf839c1cd43238becb85b204`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 29 Aug 2017 06:22:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:47 GMT
CMD ["pypy3"]
# Tue, 29 Aug 2017 06:22:57 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 06:22:57 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280613d9aa84744dc7432dba9e7e5db6b88ada9f5814cf0a4e9cdb4037e47eaf`  
		Last Modified: Tue, 29 Aug 2017 06:24:39 GMT  
		Size: 25.0 MB (25046881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bebc69be5c985f30eb08484bb8036b4b0dfdbf8910480fcfd0d88a1a951826`  
		Last Modified: Tue, 29 Aug 2017 06:24:34 GMT  
		Size: 4.2 MB (4171172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f886c93362f9728a5a82c1fc94bee9c21e7a9170b452fd743442ebd8cc41e4c`  
		Last Modified: Tue, 29 Aug 2017 06:25:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8-onbuild`

```console
$ docker pull pypy@sha256:6b4dfb8a9d727343906410d4084601bd60ea4de1369b16225ffe26b93574f199
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281897645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ccfd03e32391e38bf276d24307f2d9fc139264abf839c1cd43238becb85b204`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 29 Aug 2017 06:22:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:47 GMT
CMD ["pypy3"]
# Tue, 29 Aug 2017 06:22:57 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 06:22:57 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280613d9aa84744dc7432dba9e7e5db6b88ada9f5814cf0a4e9cdb4037e47eaf`  
		Last Modified: Tue, 29 Aug 2017 06:24:39 GMT  
		Size: 25.0 MB (25046881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bebc69be5c985f30eb08484bb8036b4b0dfdbf8910480fcfd0d88a1a951826`  
		Last Modified: Tue, 29 Aug 2017 06:24:34 GMT  
		Size: 4.2 MB (4171172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f886c93362f9728a5a82c1fc94bee9c21e7a9170b452fd743442ebd8cc41e4c`  
		Last Modified: Tue, 29 Aug 2017 06:25:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-onbuild`

```console
$ docker pull pypy@sha256:6b4dfb8a9d727343906410d4084601bd60ea4de1369b16225ffe26b93574f199
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281897645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ccfd03e32391e38bf276d24307f2d9fc139264abf839c1cd43238becb85b204`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 29 Aug 2017 06:22:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:47 GMT
CMD ["pypy3"]
# Tue, 29 Aug 2017 06:22:57 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 06:22:57 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280613d9aa84744dc7432dba9e7e5db6b88ada9f5814cf0a4e9cdb4037e47eaf`  
		Last Modified: Tue, 29 Aug 2017 06:24:39 GMT  
		Size: 25.0 MB (25046881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bebc69be5c985f30eb08484bb8036b4b0dfdbf8910480fcfd0d88a1a951826`  
		Last Modified: Tue, 29 Aug 2017 06:24:34 GMT  
		Size: 4.2 MB (4171172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f886c93362f9728a5a82c1fc94bee9c21e7a9170b452fd743442ebd8cc41e4c`  
		Last Modified: Tue, 29 Aug 2017 06:25:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-onbuild`

```console
$ docker pull pypy@sha256:6b4dfb8a9d727343906410d4084601bd60ea4de1369b16225ffe26b93574f199
```

-	Platforms:
	-	linux; amd64

### `pypy:3-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281897645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ccfd03e32391e38bf276d24307f2d9fc139264abf839c1cd43238becb85b204`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 29 Aug 2017 06:22:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:47 GMT
CMD ["pypy3"]
# Tue, 29 Aug 2017 06:22:57 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 06:22:57 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280613d9aa84744dc7432dba9e7e5db6b88ada9f5814cf0a4e9cdb4037e47eaf`  
		Last Modified: Tue, 29 Aug 2017 06:24:39 GMT  
		Size: 25.0 MB (25046881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bebc69be5c985f30eb08484bb8036b4b0dfdbf8910480fcfd0d88a1a951826`  
		Last Modified: Tue, 29 Aug 2017 06:24:34 GMT  
		Size: 4.2 MB (4171172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f886c93362f9728a5a82c1fc94bee9c21e7a9170b452fd743442ebd8cc41e4c`  
		Last Modified: Tue, 29 Aug 2017 06:25:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:onbuild`

```console
$ docker pull pypy@sha256:6b4dfb8a9d727343906410d4084601bd60ea4de1369b16225ffe26b93574f199
```

-	Platforms:
	-	linux; amd64

### `pypy:onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281897645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ccfd03e32391e38bf276d24307f2d9fc139264abf839c1cd43238becb85b204`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 05:50:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 05:50:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 05:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 06:21:46 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 29 Aug 2017 06:21:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 29 Aug 2017 06:22:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 29 Aug 2017 06:22:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 29 Aug 2017 06:22:47 GMT
CMD ["pypy3"]
# Tue, 29 Aug 2017 06:22:57 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 06:22:57 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 29 Aug 2017 06:22:58 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0734c5f18ed0a50a6f52607d34adabe5e4fead828cfd5ee5072e35bea945f9`  
		Last Modified: Tue, 29 Aug 2017 06:17:38 GMT  
		Size: 2.9 MB (2900442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280613d9aa84744dc7432dba9e7e5db6b88ada9f5814cf0a4e9cdb4037e47eaf`  
		Last Modified: Tue, 29 Aug 2017 06:24:39 GMT  
		Size: 25.0 MB (25046881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bebc69be5c985f30eb08484bb8036b4b0dfdbf8910480fcfd0d88a1a951826`  
		Last Modified: Tue, 29 Aug 2017 06:24:34 GMT  
		Size: 4.2 MB (4171172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f886c93362f9728a5a82c1fc94bee9c21e7a9170b452fd743442ebd8cc41e4c`  
		Last Modified: Tue, 29 Aug 2017 06:25:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
