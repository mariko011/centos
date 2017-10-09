<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `pypy`

-	[`pypy:2`](#pypy2)
-	[`pypy:2-5`](#pypy2-5)
-	[`pypy:2-5.9`](#pypy2-59)
-	[`pypy:2-5.9.0`](#pypy2-590)
-	[`pypy:2-5.9.0-onbuild`](#pypy2-590-onbuild)
-	[`pypy:2-5.9.0-slim`](#pypy2-590-slim)
-	[`pypy:2-5.9-onbuild`](#pypy2-59-onbuild)
-	[`pypy:2-5.9-slim`](#pypy2-59-slim)
-	[`pypy:2-5-onbuild`](#pypy2-5-onbuild)
-	[`pypy:2-5-slim`](#pypy2-5-slim)
-	[`pypy:2-onbuild`](#pypy2-onbuild)
-	[`pypy:2-slim`](#pypy2-slim)
-	[`pypy:3`](#pypy3)
-	[`pypy:3-5`](#pypy3-5)
-	[`pypy:3-5.9`](#pypy3-59)
-	[`pypy:3-5.9.0`](#pypy3-590)
-	[`pypy:3-5.9.0-onbuild`](#pypy3-590-onbuild)
-	[`pypy:3-5.9.0-slim`](#pypy3-590-slim)
-	[`pypy:3-5.9-onbuild`](#pypy3-59-onbuild)
-	[`pypy:3-5.9-slim`](#pypy3-59-slim)
-	[`pypy:3-5-onbuild`](#pypy3-5-onbuild)
-	[`pypy:3-5-slim`](#pypy3-5-slim)
-	[`pypy:3-onbuild`](#pypy3-onbuild)
-	[`pypy:3-slim`](#pypy3-slim)
-	[`pypy:latest`](#pypylatest)
-	[`pypy:onbuild`](#pypyonbuild)
-	[`pypy:slim`](#pypyslim)

## `pypy:2`

```console
$ docker pull pypy@sha256:afa6f89f152175033bb799f8b757ce4a3e437161a7df786f0315e7e41e55131c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `pypy:2` - linux; amd64

```console
$ docker pull pypy@sha256:05668b1f4bf990718580c9eaf738c6c8708435269c0ccf96138fd8cd1cda40bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.4 MB (281411744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8d3421dbeff92c5b8013e1440507fb1821a0a3d5e6e66592c81ab0433941a8`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:03:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 05 Oct 2017 19:03:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:03:20 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61091c92b9a4829f7c7b5679958df0f544a31ff762a4a68e2d6b989c6d29a359`  
		Last Modified: Thu, 05 Oct 2017 19:06:04 GMT  
		Size: 24.8 MB (24771137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8f0a787036108776886539b89831236903cfec0adb68a3a3cbdce7f1082815`  
		Last Modified: Thu, 05 Oct 2017 19:06:00 GMT  
		Size: 3.7 MB (3701767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2` - linux; arm variant v5

```console
$ docker pull pypy@sha256:92fa4cd9f270c3286f5722d3d9d42cb1829acacd730b531efa820bc5558bf3b1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256635306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf84998dee401a99a1d645d647dc89e3941b5dd7435e1d112f3d8679e8d4b3b4`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:47:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 14:48:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:50:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:41:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:41:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:41:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 16:08:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 16:08:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 16:08:52 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383dc0c402c2a94402ca03cfa2ec05c87d8e91d968961c72d52a7f47b0823a7f`  
		Last Modified: Wed, 27 Sep 2017 15:01:39 GMT  
		Size: 18.7 MB (18653386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f74949e400501d481c94167878e868e2f27c74d3f8c91f4bbcf56d37d05513`  
		Last Modified: Wed, 27 Sep 2017 15:02:00 GMT  
		Size: 42.7 MB (42737712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eee7764fc2c0c4199afd2676a8fbf5f54e89f39b0b9b15c261687df14ca6c03`  
		Last Modified: Wed, 27 Sep 2017 15:02:59 GMT  
		Size: 115.5 MB (115471390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cee302b5c12b2ba5a076e787bc024569172b428f1d2b107d3afdd9d470d7d7d`  
		Last Modified: Wed, 27 Sep 2017 15:44:19 GMT  
		Size: 3.0 MB (3020206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6483e3815ea4d914e6ec6e4ddc9ef8d5d70ebd11baf01cadd5d5e76bea988f4`  
		Last Modified: Fri, 06 Oct 2017 16:10:35 GMT  
		Size: 22.2 MB (22170099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44074b4754dd259b5ad23a0961a56885e0436057f3d5dacfe8799e169af21ef8`  
		Last Modified: Fri, 06 Oct 2017 16:10:28 GMT  
		Size: 3.7 MB (3702716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2` - linux; arm variant v7

```console
$ docker pull pypy@sha256:617f69f27b45b6487bcad53685cef97958cc94b7a0d288726e63f4fa98970eb2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249300129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d50d27bb4102bc7c6b1942dd33d31ce19d87b7ca565da555fb03b39c4c14d0d`
-	Default Command: `["pypy"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:33:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 00:45:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:59:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 01:15:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 01:15:10 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 01:15:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 12:44:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 12:45:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 12:45:02 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bfbf7dfc788cb4ca7c7d227e3465a4e211416e4c7f0e008f3ae90db3dd0bb1`  
		Last Modified: Tue, 19 Sep 2017 02:40:07 GMT  
		Size: 18.3 MB (18262683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015138dd660daf8e5560cc269a592e9abf2796753a8c7d62949428056b7d1917`  
		Last Modified: Tue, 19 Sep 2017 02:40:50 GMT  
		Size: 39.7 MB (39689147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88b2b5023e5b605d9611426b7cc69289141483394d1d1de9ab3773fcb770ffd`  
		Last Modified: Tue, 19 Sep 2017 02:42:03 GMT  
		Size: 113.8 MB (113804084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b2e2247c84aeaea494a2931d4d8ddb2ddc3f6362d6c1d29110395cc265aa9c`  
		Last Modified: Wed, 27 Sep 2017 03:14:14 GMT  
		Size: 2.9 MB (2897675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3aa4edb59839fb0ad8ae077d02300c13a69963e80a23306ba7c4b7b12bf0b`  
		Last Modified: Fri, 06 Oct 2017 12:46:50 GMT  
		Size: 22.3 MB (22261755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68e1997217198c82d9c8158e91b6d016f07bf9a5aaa0f486f35d658937d6adc`  
		Last Modified: Fri, 06 Oct 2017 12:46:43 GMT  
		Size: 3.7 MB (3702709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2` - linux; 386

```console
$ docker pull pypy@sha256:25cde3f50d51a65f8ee2ae1f4137f1bdc9beb418292938ca674148e74e50cfb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3653e52e21822fff54c644403f0fb78c9d8c126d7f59762f9fe003a84a3bbf`
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
# Fri, 06 Oct 2017 17:42:14 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 17:42:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 17:42:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 17:42:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 17:42:33 GMT
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
	-	`sha256:1f646ff3c4a13c10f803ae1bb7fa71fbfc3d37c0e921bffb8bc77b3faaa8462c`  
		Last Modified: Fri, 06 Oct 2017 17:44:19 GMT  
		Size: 20.9 MB (20937507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e239faaa3160e9517599172488838bf850bd5cb245ecb05acefbf6d1ea54fdf`  
		Last Modified: Fri, 06 Oct 2017 17:44:15 GMT  
		Size: 3.7 MB (3701965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5`

```console
$ docker pull pypy@sha256:afa6f89f152175033bb799f8b757ce4a3e437161a7df786f0315e7e41e55131c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `pypy:2-5` - linux; amd64

```console
$ docker pull pypy@sha256:05668b1f4bf990718580c9eaf738c6c8708435269c0ccf96138fd8cd1cda40bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.4 MB (281411744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8d3421dbeff92c5b8013e1440507fb1821a0a3d5e6e66592c81ab0433941a8`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:03:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 05 Oct 2017 19:03:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:03:20 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61091c92b9a4829f7c7b5679958df0f544a31ff762a4a68e2d6b989c6d29a359`  
		Last Modified: Thu, 05 Oct 2017 19:06:04 GMT  
		Size: 24.8 MB (24771137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8f0a787036108776886539b89831236903cfec0adb68a3a3cbdce7f1082815`  
		Last Modified: Thu, 05 Oct 2017 19:06:00 GMT  
		Size: 3.7 MB (3701767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5` - linux; arm variant v5

```console
$ docker pull pypy@sha256:92fa4cd9f270c3286f5722d3d9d42cb1829acacd730b531efa820bc5558bf3b1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256635306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf84998dee401a99a1d645d647dc89e3941b5dd7435e1d112f3d8679e8d4b3b4`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:47:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 14:48:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:50:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:41:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:41:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:41:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 16:08:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 16:08:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 16:08:52 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383dc0c402c2a94402ca03cfa2ec05c87d8e91d968961c72d52a7f47b0823a7f`  
		Last Modified: Wed, 27 Sep 2017 15:01:39 GMT  
		Size: 18.7 MB (18653386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f74949e400501d481c94167878e868e2f27c74d3f8c91f4bbcf56d37d05513`  
		Last Modified: Wed, 27 Sep 2017 15:02:00 GMT  
		Size: 42.7 MB (42737712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eee7764fc2c0c4199afd2676a8fbf5f54e89f39b0b9b15c261687df14ca6c03`  
		Last Modified: Wed, 27 Sep 2017 15:02:59 GMT  
		Size: 115.5 MB (115471390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cee302b5c12b2ba5a076e787bc024569172b428f1d2b107d3afdd9d470d7d7d`  
		Last Modified: Wed, 27 Sep 2017 15:44:19 GMT  
		Size: 3.0 MB (3020206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6483e3815ea4d914e6ec6e4ddc9ef8d5d70ebd11baf01cadd5d5e76bea988f4`  
		Last Modified: Fri, 06 Oct 2017 16:10:35 GMT  
		Size: 22.2 MB (22170099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44074b4754dd259b5ad23a0961a56885e0436057f3d5dacfe8799e169af21ef8`  
		Last Modified: Fri, 06 Oct 2017 16:10:28 GMT  
		Size: 3.7 MB (3702716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5` - linux; arm variant v7

```console
$ docker pull pypy@sha256:617f69f27b45b6487bcad53685cef97958cc94b7a0d288726e63f4fa98970eb2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249300129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d50d27bb4102bc7c6b1942dd33d31ce19d87b7ca565da555fb03b39c4c14d0d`
-	Default Command: `["pypy"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:33:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 00:45:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:59:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 01:15:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 01:15:10 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 01:15:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 12:44:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 12:45:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 12:45:02 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bfbf7dfc788cb4ca7c7d227e3465a4e211416e4c7f0e008f3ae90db3dd0bb1`  
		Last Modified: Tue, 19 Sep 2017 02:40:07 GMT  
		Size: 18.3 MB (18262683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015138dd660daf8e5560cc269a592e9abf2796753a8c7d62949428056b7d1917`  
		Last Modified: Tue, 19 Sep 2017 02:40:50 GMT  
		Size: 39.7 MB (39689147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88b2b5023e5b605d9611426b7cc69289141483394d1d1de9ab3773fcb770ffd`  
		Last Modified: Tue, 19 Sep 2017 02:42:03 GMT  
		Size: 113.8 MB (113804084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b2e2247c84aeaea494a2931d4d8ddb2ddc3f6362d6c1d29110395cc265aa9c`  
		Last Modified: Wed, 27 Sep 2017 03:14:14 GMT  
		Size: 2.9 MB (2897675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3aa4edb59839fb0ad8ae077d02300c13a69963e80a23306ba7c4b7b12bf0b`  
		Last Modified: Fri, 06 Oct 2017 12:46:50 GMT  
		Size: 22.3 MB (22261755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68e1997217198c82d9c8158e91b6d016f07bf9a5aaa0f486f35d658937d6adc`  
		Last Modified: Fri, 06 Oct 2017 12:46:43 GMT  
		Size: 3.7 MB (3702709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5` - linux; 386

```console
$ docker pull pypy@sha256:25cde3f50d51a65f8ee2ae1f4137f1bdc9beb418292938ca674148e74e50cfb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3653e52e21822fff54c644403f0fb78c9d8c126d7f59762f9fe003a84a3bbf`
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
# Fri, 06 Oct 2017 17:42:14 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 17:42:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 17:42:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 17:42:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 17:42:33 GMT
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
	-	`sha256:1f646ff3c4a13c10f803ae1bb7fa71fbfc3d37c0e921bffb8bc77b3faaa8462c`  
		Last Modified: Fri, 06 Oct 2017 17:44:19 GMT  
		Size: 20.9 MB (20937507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e239faaa3160e9517599172488838bf850bd5cb245ecb05acefbf6d1ea54fdf`  
		Last Modified: Fri, 06 Oct 2017 17:44:15 GMT  
		Size: 3.7 MB (3701965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.9`

```console
$ docker pull pypy@sha256:afa6f89f152175033bb799f8b757ce4a3e437161a7df786f0315e7e41e55131c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `pypy:2-5.9` - linux; amd64

```console
$ docker pull pypy@sha256:05668b1f4bf990718580c9eaf738c6c8708435269c0ccf96138fd8cd1cda40bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.4 MB (281411744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8d3421dbeff92c5b8013e1440507fb1821a0a3d5e6e66592c81ab0433941a8`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:03:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 05 Oct 2017 19:03:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:03:20 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61091c92b9a4829f7c7b5679958df0f544a31ff762a4a68e2d6b989c6d29a359`  
		Last Modified: Thu, 05 Oct 2017 19:06:04 GMT  
		Size: 24.8 MB (24771137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8f0a787036108776886539b89831236903cfec0adb68a3a3cbdce7f1082815`  
		Last Modified: Thu, 05 Oct 2017 19:06:00 GMT  
		Size: 3.7 MB (3701767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9` - linux; arm variant v5

```console
$ docker pull pypy@sha256:92fa4cd9f270c3286f5722d3d9d42cb1829acacd730b531efa820bc5558bf3b1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256635306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf84998dee401a99a1d645d647dc89e3941b5dd7435e1d112f3d8679e8d4b3b4`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:47:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 14:48:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:50:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:41:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:41:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:41:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 16:08:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 16:08:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 16:08:52 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383dc0c402c2a94402ca03cfa2ec05c87d8e91d968961c72d52a7f47b0823a7f`  
		Last Modified: Wed, 27 Sep 2017 15:01:39 GMT  
		Size: 18.7 MB (18653386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f74949e400501d481c94167878e868e2f27c74d3f8c91f4bbcf56d37d05513`  
		Last Modified: Wed, 27 Sep 2017 15:02:00 GMT  
		Size: 42.7 MB (42737712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eee7764fc2c0c4199afd2676a8fbf5f54e89f39b0b9b15c261687df14ca6c03`  
		Last Modified: Wed, 27 Sep 2017 15:02:59 GMT  
		Size: 115.5 MB (115471390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cee302b5c12b2ba5a076e787bc024569172b428f1d2b107d3afdd9d470d7d7d`  
		Last Modified: Wed, 27 Sep 2017 15:44:19 GMT  
		Size: 3.0 MB (3020206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6483e3815ea4d914e6ec6e4ddc9ef8d5d70ebd11baf01cadd5d5e76bea988f4`  
		Last Modified: Fri, 06 Oct 2017 16:10:35 GMT  
		Size: 22.2 MB (22170099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44074b4754dd259b5ad23a0961a56885e0436057f3d5dacfe8799e169af21ef8`  
		Last Modified: Fri, 06 Oct 2017 16:10:28 GMT  
		Size: 3.7 MB (3702716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9` - linux; arm variant v7

```console
$ docker pull pypy@sha256:617f69f27b45b6487bcad53685cef97958cc94b7a0d288726e63f4fa98970eb2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249300129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d50d27bb4102bc7c6b1942dd33d31ce19d87b7ca565da555fb03b39c4c14d0d`
-	Default Command: `["pypy"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:33:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 00:45:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:59:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 01:15:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 01:15:10 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 01:15:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 12:44:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 12:45:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 12:45:02 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bfbf7dfc788cb4ca7c7d227e3465a4e211416e4c7f0e008f3ae90db3dd0bb1`  
		Last Modified: Tue, 19 Sep 2017 02:40:07 GMT  
		Size: 18.3 MB (18262683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015138dd660daf8e5560cc269a592e9abf2796753a8c7d62949428056b7d1917`  
		Last Modified: Tue, 19 Sep 2017 02:40:50 GMT  
		Size: 39.7 MB (39689147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88b2b5023e5b605d9611426b7cc69289141483394d1d1de9ab3773fcb770ffd`  
		Last Modified: Tue, 19 Sep 2017 02:42:03 GMT  
		Size: 113.8 MB (113804084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b2e2247c84aeaea494a2931d4d8ddb2ddc3f6362d6c1d29110395cc265aa9c`  
		Last Modified: Wed, 27 Sep 2017 03:14:14 GMT  
		Size: 2.9 MB (2897675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3aa4edb59839fb0ad8ae077d02300c13a69963e80a23306ba7c4b7b12bf0b`  
		Last Modified: Fri, 06 Oct 2017 12:46:50 GMT  
		Size: 22.3 MB (22261755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68e1997217198c82d9c8158e91b6d016f07bf9a5aaa0f486f35d658937d6adc`  
		Last Modified: Fri, 06 Oct 2017 12:46:43 GMT  
		Size: 3.7 MB (3702709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9` - linux; 386

```console
$ docker pull pypy@sha256:25cde3f50d51a65f8ee2ae1f4137f1bdc9beb418292938ca674148e74e50cfb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3653e52e21822fff54c644403f0fb78c9d8c126d7f59762f9fe003a84a3bbf`
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
# Fri, 06 Oct 2017 17:42:14 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 17:42:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 17:42:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 17:42:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 17:42:33 GMT
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
	-	`sha256:1f646ff3c4a13c10f803ae1bb7fa71fbfc3d37c0e921bffb8bc77b3faaa8462c`  
		Last Modified: Fri, 06 Oct 2017 17:44:19 GMT  
		Size: 20.9 MB (20937507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e239faaa3160e9517599172488838bf850bd5cb245ecb05acefbf6d1ea54fdf`  
		Last Modified: Fri, 06 Oct 2017 17:44:15 GMT  
		Size: 3.7 MB (3701965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.9.0`

```console
$ docker pull pypy@sha256:afa6f89f152175033bb799f8b757ce4a3e437161a7df786f0315e7e41e55131c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `pypy:2-5.9.0` - linux; amd64

```console
$ docker pull pypy@sha256:05668b1f4bf990718580c9eaf738c6c8708435269c0ccf96138fd8cd1cda40bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.4 MB (281411744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8d3421dbeff92c5b8013e1440507fb1821a0a3d5e6e66592c81ab0433941a8`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:03:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 05 Oct 2017 19:03:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:03:20 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61091c92b9a4829f7c7b5679958df0f544a31ff762a4a68e2d6b989c6d29a359`  
		Last Modified: Thu, 05 Oct 2017 19:06:04 GMT  
		Size: 24.8 MB (24771137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8f0a787036108776886539b89831236903cfec0adb68a3a3cbdce7f1082815`  
		Last Modified: Thu, 05 Oct 2017 19:06:00 GMT  
		Size: 3.7 MB (3701767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9.0` - linux; arm variant v5

```console
$ docker pull pypy@sha256:92fa4cd9f270c3286f5722d3d9d42cb1829acacd730b531efa820bc5558bf3b1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256635306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf84998dee401a99a1d645d647dc89e3941b5dd7435e1d112f3d8679e8d4b3b4`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:47:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 14:48:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:50:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:41:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:41:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:41:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 16:08:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 16:08:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 16:08:52 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383dc0c402c2a94402ca03cfa2ec05c87d8e91d968961c72d52a7f47b0823a7f`  
		Last Modified: Wed, 27 Sep 2017 15:01:39 GMT  
		Size: 18.7 MB (18653386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f74949e400501d481c94167878e868e2f27c74d3f8c91f4bbcf56d37d05513`  
		Last Modified: Wed, 27 Sep 2017 15:02:00 GMT  
		Size: 42.7 MB (42737712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eee7764fc2c0c4199afd2676a8fbf5f54e89f39b0b9b15c261687df14ca6c03`  
		Last Modified: Wed, 27 Sep 2017 15:02:59 GMT  
		Size: 115.5 MB (115471390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cee302b5c12b2ba5a076e787bc024569172b428f1d2b107d3afdd9d470d7d7d`  
		Last Modified: Wed, 27 Sep 2017 15:44:19 GMT  
		Size: 3.0 MB (3020206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6483e3815ea4d914e6ec6e4ddc9ef8d5d70ebd11baf01cadd5d5e76bea988f4`  
		Last Modified: Fri, 06 Oct 2017 16:10:35 GMT  
		Size: 22.2 MB (22170099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44074b4754dd259b5ad23a0961a56885e0436057f3d5dacfe8799e169af21ef8`  
		Last Modified: Fri, 06 Oct 2017 16:10:28 GMT  
		Size: 3.7 MB (3702716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9.0` - linux; arm variant v7

```console
$ docker pull pypy@sha256:617f69f27b45b6487bcad53685cef97958cc94b7a0d288726e63f4fa98970eb2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249300129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d50d27bb4102bc7c6b1942dd33d31ce19d87b7ca565da555fb03b39c4c14d0d`
-	Default Command: `["pypy"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:33:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 00:45:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:59:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 01:15:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 01:15:10 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 01:15:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 12:44:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 12:45:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 12:45:02 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bfbf7dfc788cb4ca7c7d227e3465a4e211416e4c7f0e008f3ae90db3dd0bb1`  
		Last Modified: Tue, 19 Sep 2017 02:40:07 GMT  
		Size: 18.3 MB (18262683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015138dd660daf8e5560cc269a592e9abf2796753a8c7d62949428056b7d1917`  
		Last Modified: Tue, 19 Sep 2017 02:40:50 GMT  
		Size: 39.7 MB (39689147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88b2b5023e5b605d9611426b7cc69289141483394d1d1de9ab3773fcb770ffd`  
		Last Modified: Tue, 19 Sep 2017 02:42:03 GMT  
		Size: 113.8 MB (113804084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b2e2247c84aeaea494a2931d4d8ddb2ddc3f6362d6c1d29110395cc265aa9c`  
		Last Modified: Wed, 27 Sep 2017 03:14:14 GMT  
		Size: 2.9 MB (2897675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3aa4edb59839fb0ad8ae077d02300c13a69963e80a23306ba7c4b7b12bf0b`  
		Last Modified: Fri, 06 Oct 2017 12:46:50 GMT  
		Size: 22.3 MB (22261755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68e1997217198c82d9c8158e91b6d016f07bf9a5aaa0f486f35d658937d6adc`  
		Last Modified: Fri, 06 Oct 2017 12:46:43 GMT  
		Size: 3.7 MB (3702709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9.0` - linux; 386

```console
$ docker pull pypy@sha256:25cde3f50d51a65f8ee2ae1f4137f1bdc9beb418292938ca674148e74e50cfb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3653e52e21822fff54c644403f0fb78c9d8c126d7f59762f9fe003a84a3bbf`
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
# Fri, 06 Oct 2017 17:42:14 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 17:42:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 17:42:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 17:42:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 17:42:33 GMT
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
	-	`sha256:1f646ff3c4a13c10f803ae1bb7fa71fbfc3d37c0e921bffb8bc77b3faaa8462c`  
		Last Modified: Fri, 06 Oct 2017 17:44:19 GMT  
		Size: 20.9 MB (20937507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e239faaa3160e9517599172488838bf850bd5cb245ecb05acefbf6d1ea54fdf`  
		Last Modified: Fri, 06 Oct 2017 17:44:15 GMT  
		Size: 3.7 MB (3701965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.9.0-onbuild`

```console
$ docker pull pypy@sha256:46d9bf60a9bc3c78c7b4b8d97a73eb840d5f08f1a820197e194ed6f856cb7a16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `pypy:2-5.9.0-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:28d1ca9fded5fbc6967ec833ec05af8331b0d817b4b3deeda6e8cdb3b42bc518
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.4 MB (281411875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f9205cc87e5f7f0cfce96661704c9cc3e67c5bd336fea83c4870862cd26eb83`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:03:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 05 Oct 2017 19:03:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:03:20 GMT
CMD ["pypy"]
# Thu, 05 Oct 2017 19:04:21 GMT
RUN mkdir -p /usr/src/app
# Thu, 05 Oct 2017 19:04:22 GMT
WORKDIR /usr/src/app
# Thu, 05 Oct 2017 19:04:22 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 05 Oct 2017 19:04:22 GMT
ONBUILD RUN pip install -r requirements.txt
# Thu, 05 Oct 2017 19:04:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61091c92b9a4829f7c7b5679958df0f544a31ff762a4a68e2d6b989c6d29a359`  
		Last Modified: Thu, 05 Oct 2017 19:06:04 GMT  
		Size: 24.8 MB (24771137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8f0a787036108776886539b89831236903cfec0adb68a3a3cbdce7f1082815`  
		Last Modified: Thu, 05 Oct 2017 19:06:00 GMT  
		Size: 3.7 MB (3701767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449adb0d833df251d07884c25ebc24334c0b99ace84258e6e3e8556404b95359`  
		Last Modified: Thu, 05 Oct 2017 19:07:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9.0-onbuild` - linux; arm variant v5

```console
$ docker pull pypy@sha256:816e391cc1a63cc087e4ddaef33308645bd6b8460e32ad3858f46acff39994dc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256635470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ecadad5a9a56317c926c176675d7d1dcd592f14e4aa8ec8d507f4b0950dccb`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:47:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 14:48:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:50:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:41:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:41:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:41:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 16:08:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 16:08:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 16:08:52 GMT
CMD ["pypy"]
# Fri, 06 Oct 2017 16:10:16 GMT
RUN mkdir -p /usr/src/app
# Fri, 06 Oct 2017 16:10:17 GMT
WORKDIR /usr/src/app
# Fri, 06 Oct 2017 16:10:17 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 06 Oct 2017 16:10:17 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 06 Oct 2017 16:10:17 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383dc0c402c2a94402ca03cfa2ec05c87d8e91d968961c72d52a7f47b0823a7f`  
		Last Modified: Wed, 27 Sep 2017 15:01:39 GMT  
		Size: 18.7 MB (18653386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f74949e400501d481c94167878e868e2f27c74d3f8c91f4bbcf56d37d05513`  
		Last Modified: Wed, 27 Sep 2017 15:02:00 GMT  
		Size: 42.7 MB (42737712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eee7764fc2c0c4199afd2676a8fbf5f54e89f39b0b9b15c261687df14ca6c03`  
		Last Modified: Wed, 27 Sep 2017 15:02:59 GMT  
		Size: 115.5 MB (115471390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cee302b5c12b2ba5a076e787bc024569172b428f1d2b107d3afdd9d470d7d7d`  
		Last Modified: Wed, 27 Sep 2017 15:44:19 GMT  
		Size: 3.0 MB (3020206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6483e3815ea4d914e6ec6e4ddc9ef8d5d70ebd11baf01cadd5d5e76bea988f4`  
		Last Modified: Fri, 06 Oct 2017 16:10:35 GMT  
		Size: 22.2 MB (22170099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44074b4754dd259b5ad23a0961a56885e0436057f3d5dacfe8799e169af21ef8`  
		Last Modified: Fri, 06 Oct 2017 16:10:28 GMT  
		Size: 3.7 MB (3702716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c1d3c73504e2eab44e058720c574d01a51f6814904d697c0cdd3cef85c25fd`  
		Last Modified: Fri, 06 Oct 2017 16:11:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9.0-onbuild` - linux; arm variant v7

```console
$ docker pull pypy@sha256:c8e02303da8fbf424a47e63e4d68b9bc98bc37b75b503e017e8de1b679d2d977
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249300292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d3e019c6341b63bf27e2d342a9d0e963b5838961c1235251f2cbbc91ac06fe1`
-	Default Command: `["pypy"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:33:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 00:45:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:59:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 01:15:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 01:15:10 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 01:15:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 12:44:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 12:45:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 12:45:02 GMT
CMD ["pypy"]
# Fri, 06 Oct 2017 12:46:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 06 Oct 2017 12:46:32 GMT
WORKDIR /usr/src/app
# Fri, 06 Oct 2017 12:46:32 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 06 Oct 2017 12:46:33 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 06 Oct 2017 12:46:33 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bfbf7dfc788cb4ca7c7d227e3465a4e211416e4c7f0e008f3ae90db3dd0bb1`  
		Last Modified: Tue, 19 Sep 2017 02:40:07 GMT  
		Size: 18.3 MB (18262683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015138dd660daf8e5560cc269a592e9abf2796753a8c7d62949428056b7d1917`  
		Last Modified: Tue, 19 Sep 2017 02:40:50 GMT  
		Size: 39.7 MB (39689147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88b2b5023e5b605d9611426b7cc69289141483394d1d1de9ab3773fcb770ffd`  
		Last Modified: Tue, 19 Sep 2017 02:42:03 GMT  
		Size: 113.8 MB (113804084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b2e2247c84aeaea494a2931d4d8ddb2ddc3f6362d6c1d29110395cc265aa9c`  
		Last Modified: Wed, 27 Sep 2017 03:14:14 GMT  
		Size: 2.9 MB (2897675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3aa4edb59839fb0ad8ae077d02300c13a69963e80a23306ba7c4b7b12bf0b`  
		Last Modified: Fri, 06 Oct 2017 12:46:50 GMT  
		Size: 22.3 MB (22261755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68e1997217198c82d9c8158e91b6d016f07bf9a5aaa0f486f35d658937d6adc`  
		Last Modified: Fri, 06 Oct 2017 12:46:43 GMT  
		Size: 3.7 MB (3702709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b591bf93c398a39e903a2965d518275d7ad71effca4e2378c6e08849a19761f9`  
		Last Modified: Fri, 06 Oct 2017 12:47:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9.0-onbuild` - linux; 386

```console
$ docker pull pypy@sha256:fd12a518a43cf2dc310b9d9a7a39af48553996fbaaa1a25e490ed32e00c213ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b3d43ac8a05c8e63bf8a56a7615bf0334b9711fd4d3a7045d2727b5786c808`
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
# Fri, 06 Oct 2017 17:42:14 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 17:42:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 17:42:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 17:42:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 17:42:33 GMT
CMD ["pypy"]
# Fri, 06 Oct 2017 17:44:04 GMT
RUN mkdir -p /usr/src/app
# Fri, 06 Oct 2017 17:44:04 GMT
WORKDIR /usr/src/app
# Fri, 06 Oct 2017 17:44:05 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 06 Oct 2017 17:44:05 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 06 Oct 2017 17:44:05 GMT
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
	-	`sha256:1f646ff3c4a13c10f803ae1bb7fa71fbfc3d37c0e921bffb8bc77b3faaa8462c`  
		Last Modified: Fri, 06 Oct 2017 17:44:19 GMT  
		Size: 20.9 MB (20937507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e239faaa3160e9517599172488838bf850bd5cb245ecb05acefbf6d1ea54fdf`  
		Last Modified: Fri, 06 Oct 2017 17:44:15 GMT  
		Size: 3.7 MB (3701965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f2d785a7b6c7b2572e694cf6fe9f92e6a6008f687a4895ef3c8bbb5c8a555c`  
		Last Modified: Fri, 06 Oct 2017 17:45:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.9.0-slim`

```console
$ docker pull pypy@sha256:50373e6da3ec8e305c2750c6033b0a6a7b07e2722ea9aff189c204126815fa00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `pypy:2-5.9.0-slim` - linux; amd64

```console
$ docker pull pypy@sha256:71425fc1e849499747a4271649dab01b0494ded6eabbcef56805ddb563a7c13f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61685487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5fb62cbe6d9ca628200361a7743cf2141a13552131d9ee8d7586187ade58e57`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:31:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 02:31:59 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 02:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 05 Oct 2017 19:04:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b063591b441612bcc5624be83cf8adc1e704bed139b73818c3070672ef28ff0`  
		Last Modified: Thu, 14 Sep 2017 02:36:16 GMT  
		Size: 2.9 MB (2859656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26eb65e84fa17865e42007735ff30950f162e2ccb792a107d16d541695ca07d2`  
		Last Modified: Thu, 05 Oct 2017 19:06:43 GMT  
		Size: 28.7 MB (28712697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9.0-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c6d44520478afb440d9ebc2e2a472172947d264b080f06179bdad3fbbdc5a40f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57141342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac329cf6ce8703d26053dd6da5fbb9bb1e921014bd0bad4504b8e2cdbcf39a81`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:39 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Wed, 27 Sep 2017 14:24:40 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:42:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:42:23 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:42:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 16:08:57 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 16:08:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 16:10:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 06 Oct 2017 16:10:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e94aa09407315b00ceec47b90961e6d711cbea50b303b5ac7db479f80e57b2b9`  
		Last Modified: Wed, 27 Sep 2017 14:28:45 GMT  
		Size: 28.4 MB (28424172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb99bdb781d42ba88c3e71f2be74066a3a62130f5a8b6d6c06a23f686388eab`  
		Last Modified: Wed, 27 Sep 2017 15:44:33 GMT  
		Size: 2.6 MB (2608030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a4f565c4fb98890bcaaef303644e236813065d07d65b3bcc71b67865d87e4d`  
		Last Modified: Fri, 06 Oct 2017 16:10:59 GMT  
		Size: 26.1 MB (26109140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9.0-slim` - linux; arm variant v7

```console
$ docker pull pypy@sha256:39509d13ce78de842fd2922a62ec88a36f25e382bdbf69b8a918c79129426c73
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54957779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df13578566593c9db494df9d5d8a6cf9796bff7942672d816cfe4ca9c1db70ad`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:13:29 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:14:12 GMT
ENV PYPY_VERSION=5.9.0
# Mon, 09 Oct 2017 22:14:12 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 09 Oct 2017 22:15:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 09 Oct 2017 22:15:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039a7388aeb06b497f3d06c990392cb69bc39900f190f66bda620a11031c2a49`  
		Last Modified: Mon, 09 Oct 2017 22:15:54 GMT  
		Size: 2.5 MB (2476099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0eb80fc7c26ef567b5e9322a30b6395eda2c4b20cafa14f15561723e891d59d`  
		Last Modified: Mon, 09 Oct 2017 22:16:04 GMT  
		Size: 26.2 MB (26200698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9.0-slim` - linux; 386

```console
$ docker pull pypy@sha256:553cc7408234b51bb5e97bf39fcd7e30e5ba4953fabad20e0b551f6ec987fee8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60104590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74eb7de3e35e49e8bf1a60a64a9f0dfcb7b3730e7d9f4c0e3933ca2ae5bf611d`
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
# Fri, 06 Oct 2017 17:43:00 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 17:43:00 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 17:43:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 06 Oct 2017 17:43:56 GMT
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
	-	`sha256:82cc72d350978197e9fa045f7d0dbf7db20aa1abaf2d24ff7a3286a62cd0db5b`  
		Last Modified: Fri, 06 Oct 2017 17:44:50 GMT  
		Size: 24.9 MB (24882632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.9-onbuild`

```console
$ docker pull pypy@sha256:46d9bf60a9bc3c78c7b4b8d97a73eb840d5f08f1a820197e194ed6f856cb7a16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `pypy:2-5.9-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:28d1ca9fded5fbc6967ec833ec05af8331b0d817b4b3deeda6e8cdb3b42bc518
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.4 MB (281411875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f9205cc87e5f7f0cfce96661704c9cc3e67c5bd336fea83c4870862cd26eb83`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:03:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 05 Oct 2017 19:03:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:03:20 GMT
CMD ["pypy"]
# Thu, 05 Oct 2017 19:04:21 GMT
RUN mkdir -p /usr/src/app
# Thu, 05 Oct 2017 19:04:22 GMT
WORKDIR /usr/src/app
# Thu, 05 Oct 2017 19:04:22 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 05 Oct 2017 19:04:22 GMT
ONBUILD RUN pip install -r requirements.txt
# Thu, 05 Oct 2017 19:04:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61091c92b9a4829f7c7b5679958df0f544a31ff762a4a68e2d6b989c6d29a359`  
		Last Modified: Thu, 05 Oct 2017 19:06:04 GMT  
		Size: 24.8 MB (24771137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8f0a787036108776886539b89831236903cfec0adb68a3a3cbdce7f1082815`  
		Last Modified: Thu, 05 Oct 2017 19:06:00 GMT  
		Size: 3.7 MB (3701767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449adb0d833df251d07884c25ebc24334c0b99ace84258e6e3e8556404b95359`  
		Last Modified: Thu, 05 Oct 2017 19:07:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9-onbuild` - linux; arm variant v5

```console
$ docker pull pypy@sha256:816e391cc1a63cc087e4ddaef33308645bd6b8460e32ad3858f46acff39994dc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256635470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ecadad5a9a56317c926c176675d7d1dcd592f14e4aa8ec8d507f4b0950dccb`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:47:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 14:48:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:50:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:41:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:41:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:41:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 16:08:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 16:08:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 16:08:52 GMT
CMD ["pypy"]
# Fri, 06 Oct 2017 16:10:16 GMT
RUN mkdir -p /usr/src/app
# Fri, 06 Oct 2017 16:10:17 GMT
WORKDIR /usr/src/app
# Fri, 06 Oct 2017 16:10:17 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 06 Oct 2017 16:10:17 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 06 Oct 2017 16:10:17 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383dc0c402c2a94402ca03cfa2ec05c87d8e91d968961c72d52a7f47b0823a7f`  
		Last Modified: Wed, 27 Sep 2017 15:01:39 GMT  
		Size: 18.7 MB (18653386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f74949e400501d481c94167878e868e2f27c74d3f8c91f4bbcf56d37d05513`  
		Last Modified: Wed, 27 Sep 2017 15:02:00 GMT  
		Size: 42.7 MB (42737712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eee7764fc2c0c4199afd2676a8fbf5f54e89f39b0b9b15c261687df14ca6c03`  
		Last Modified: Wed, 27 Sep 2017 15:02:59 GMT  
		Size: 115.5 MB (115471390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cee302b5c12b2ba5a076e787bc024569172b428f1d2b107d3afdd9d470d7d7d`  
		Last Modified: Wed, 27 Sep 2017 15:44:19 GMT  
		Size: 3.0 MB (3020206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6483e3815ea4d914e6ec6e4ddc9ef8d5d70ebd11baf01cadd5d5e76bea988f4`  
		Last Modified: Fri, 06 Oct 2017 16:10:35 GMT  
		Size: 22.2 MB (22170099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44074b4754dd259b5ad23a0961a56885e0436057f3d5dacfe8799e169af21ef8`  
		Last Modified: Fri, 06 Oct 2017 16:10:28 GMT  
		Size: 3.7 MB (3702716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c1d3c73504e2eab44e058720c574d01a51f6814904d697c0cdd3cef85c25fd`  
		Last Modified: Fri, 06 Oct 2017 16:11:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9-onbuild` - linux; arm variant v7

```console
$ docker pull pypy@sha256:c8e02303da8fbf424a47e63e4d68b9bc98bc37b75b503e017e8de1b679d2d977
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249300292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d3e019c6341b63bf27e2d342a9d0e963b5838961c1235251f2cbbc91ac06fe1`
-	Default Command: `["pypy"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:33:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 00:45:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:59:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 01:15:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 01:15:10 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 01:15:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 12:44:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 12:45:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 12:45:02 GMT
CMD ["pypy"]
# Fri, 06 Oct 2017 12:46:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 06 Oct 2017 12:46:32 GMT
WORKDIR /usr/src/app
# Fri, 06 Oct 2017 12:46:32 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 06 Oct 2017 12:46:33 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 06 Oct 2017 12:46:33 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bfbf7dfc788cb4ca7c7d227e3465a4e211416e4c7f0e008f3ae90db3dd0bb1`  
		Last Modified: Tue, 19 Sep 2017 02:40:07 GMT  
		Size: 18.3 MB (18262683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015138dd660daf8e5560cc269a592e9abf2796753a8c7d62949428056b7d1917`  
		Last Modified: Tue, 19 Sep 2017 02:40:50 GMT  
		Size: 39.7 MB (39689147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88b2b5023e5b605d9611426b7cc69289141483394d1d1de9ab3773fcb770ffd`  
		Last Modified: Tue, 19 Sep 2017 02:42:03 GMT  
		Size: 113.8 MB (113804084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b2e2247c84aeaea494a2931d4d8ddb2ddc3f6362d6c1d29110395cc265aa9c`  
		Last Modified: Wed, 27 Sep 2017 03:14:14 GMT  
		Size: 2.9 MB (2897675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3aa4edb59839fb0ad8ae077d02300c13a69963e80a23306ba7c4b7b12bf0b`  
		Last Modified: Fri, 06 Oct 2017 12:46:50 GMT  
		Size: 22.3 MB (22261755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68e1997217198c82d9c8158e91b6d016f07bf9a5aaa0f486f35d658937d6adc`  
		Last Modified: Fri, 06 Oct 2017 12:46:43 GMT  
		Size: 3.7 MB (3702709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b591bf93c398a39e903a2965d518275d7ad71effca4e2378c6e08849a19761f9`  
		Last Modified: Fri, 06 Oct 2017 12:47:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9-onbuild` - linux; 386

```console
$ docker pull pypy@sha256:fd12a518a43cf2dc310b9d9a7a39af48553996fbaaa1a25e490ed32e00c213ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b3d43ac8a05c8e63bf8a56a7615bf0334b9711fd4d3a7045d2727b5786c808`
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
# Fri, 06 Oct 2017 17:42:14 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 17:42:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 17:42:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 17:42:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 17:42:33 GMT
CMD ["pypy"]
# Fri, 06 Oct 2017 17:44:04 GMT
RUN mkdir -p /usr/src/app
# Fri, 06 Oct 2017 17:44:04 GMT
WORKDIR /usr/src/app
# Fri, 06 Oct 2017 17:44:05 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 06 Oct 2017 17:44:05 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 06 Oct 2017 17:44:05 GMT
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
	-	`sha256:1f646ff3c4a13c10f803ae1bb7fa71fbfc3d37c0e921bffb8bc77b3faaa8462c`  
		Last Modified: Fri, 06 Oct 2017 17:44:19 GMT  
		Size: 20.9 MB (20937507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e239faaa3160e9517599172488838bf850bd5cb245ecb05acefbf6d1ea54fdf`  
		Last Modified: Fri, 06 Oct 2017 17:44:15 GMT  
		Size: 3.7 MB (3701965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f2d785a7b6c7b2572e694cf6fe9f92e6a6008f687a4895ef3c8bbb5c8a555c`  
		Last Modified: Fri, 06 Oct 2017 17:45:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.9-slim`

```console
$ docker pull pypy@sha256:50373e6da3ec8e305c2750c6033b0a6a7b07e2722ea9aff189c204126815fa00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `pypy:2-5.9-slim` - linux; amd64

```console
$ docker pull pypy@sha256:71425fc1e849499747a4271649dab01b0494ded6eabbcef56805ddb563a7c13f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61685487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5fb62cbe6d9ca628200361a7743cf2141a13552131d9ee8d7586187ade58e57`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:31:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 02:31:59 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 02:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 05 Oct 2017 19:04:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b063591b441612bcc5624be83cf8adc1e704bed139b73818c3070672ef28ff0`  
		Last Modified: Thu, 14 Sep 2017 02:36:16 GMT  
		Size: 2.9 MB (2859656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26eb65e84fa17865e42007735ff30950f162e2ccb792a107d16d541695ca07d2`  
		Last Modified: Thu, 05 Oct 2017 19:06:43 GMT  
		Size: 28.7 MB (28712697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c6d44520478afb440d9ebc2e2a472172947d264b080f06179bdad3fbbdc5a40f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57141342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac329cf6ce8703d26053dd6da5fbb9bb1e921014bd0bad4504b8e2cdbcf39a81`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:39 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Wed, 27 Sep 2017 14:24:40 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:42:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:42:23 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:42:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 16:08:57 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 16:08:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 16:10:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 06 Oct 2017 16:10:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e94aa09407315b00ceec47b90961e6d711cbea50b303b5ac7db479f80e57b2b9`  
		Last Modified: Wed, 27 Sep 2017 14:28:45 GMT  
		Size: 28.4 MB (28424172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb99bdb781d42ba88c3e71f2be74066a3a62130f5a8b6d6c06a23f686388eab`  
		Last Modified: Wed, 27 Sep 2017 15:44:33 GMT  
		Size: 2.6 MB (2608030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a4f565c4fb98890bcaaef303644e236813065d07d65b3bcc71b67865d87e4d`  
		Last Modified: Fri, 06 Oct 2017 16:10:59 GMT  
		Size: 26.1 MB (26109140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9-slim` - linux; arm variant v7

```console
$ docker pull pypy@sha256:39509d13ce78de842fd2922a62ec88a36f25e382bdbf69b8a918c79129426c73
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54957779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df13578566593c9db494df9d5d8a6cf9796bff7942672d816cfe4ca9c1db70ad`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:13:29 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:14:12 GMT
ENV PYPY_VERSION=5.9.0
# Mon, 09 Oct 2017 22:14:12 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 09 Oct 2017 22:15:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 09 Oct 2017 22:15:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039a7388aeb06b497f3d06c990392cb69bc39900f190f66bda620a11031c2a49`  
		Last Modified: Mon, 09 Oct 2017 22:15:54 GMT  
		Size: 2.5 MB (2476099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0eb80fc7c26ef567b5e9322a30b6395eda2c4b20cafa14f15561723e891d59d`  
		Last Modified: Mon, 09 Oct 2017 22:16:04 GMT  
		Size: 26.2 MB (26200698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.9-slim` - linux; 386

```console
$ docker pull pypy@sha256:553cc7408234b51bb5e97bf39fcd7e30e5ba4953fabad20e0b551f6ec987fee8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60104590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74eb7de3e35e49e8bf1a60a64a9f0dfcb7b3730e7d9f4c0e3933ca2ae5bf611d`
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
# Fri, 06 Oct 2017 17:43:00 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 17:43:00 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 17:43:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 06 Oct 2017 17:43:56 GMT
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
	-	`sha256:82cc72d350978197e9fa045f7d0dbf7db20aa1abaf2d24ff7a3286a62cd0db5b`  
		Last Modified: Fri, 06 Oct 2017 17:44:50 GMT  
		Size: 24.9 MB (24882632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-onbuild`

```console
$ docker pull pypy@sha256:46d9bf60a9bc3c78c7b4b8d97a73eb840d5f08f1a820197e194ed6f856cb7a16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `pypy:2-5-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:28d1ca9fded5fbc6967ec833ec05af8331b0d817b4b3deeda6e8cdb3b42bc518
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.4 MB (281411875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f9205cc87e5f7f0cfce96661704c9cc3e67c5bd336fea83c4870862cd26eb83`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:03:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 05 Oct 2017 19:03:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:03:20 GMT
CMD ["pypy"]
# Thu, 05 Oct 2017 19:04:21 GMT
RUN mkdir -p /usr/src/app
# Thu, 05 Oct 2017 19:04:22 GMT
WORKDIR /usr/src/app
# Thu, 05 Oct 2017 19:04:22 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 05 Oct 2017 19:04:22 GMT
ONBUILD RUN pip install -r requirements.txt
# Thu, 05 Oct 2017 19:04:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61091c92b9a4829f7c7b5679958df0f544a31ff762a4a68e2d6b989c6d29a359`  
		Last Modified: Thu, 05 Oct 2017 19:06:04 GMT  
		Size: 24.8 MB (24771137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8f0a787036108776886539b89831236903cfec0adb68a3a3cbdce7f1082815`  
		Last Modified: Thu, 05 Oct 2017 19:06:00 GMT  
		Size: 3.7 MB (3701767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449adb0d833df251d07884c25ebc24334c0b99ace84258e6e3e8556404b95359`  
		Last Modified: Thu, 05 Oct 2017 19:07:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-onbuild` - linux; arm variant v5

```console
$ docker pull pypy@sha256:816e391cc1a63cc087e4ddaef33308645bd6b8460e32ad3858f46acff39994dc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256635470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ecadad5a9a56317c926c176675d7d1dcd592f14e4aa8ec8d507f4b0950dccb`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:47:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 14:48:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:50:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:41:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:41:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:41:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 16:08:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 16:08:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 16:08:52 GMT
CMD ["pypy"]
# Fri, 06 Oct 2017 16:10:16 GMT
RUN mkdir -p /usr/src/app
# Fri, 06 Oct 2017 16:10:17 GMT
WORKDIR /usr/src/app
# Fri, 06 Oct 2017 16:10:17 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 06 Oct 2017 16:10:17 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 06 Oct 2017 16:10:17 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383dc0c402c2a94402ca03cfa2ec05c87d8e91d968961c72d52a7f47b0823a7f`  
		Last Modified: Wed, 27 Sep 2017 15:01:39 GMT  
		Size: 18.7 MB (18653386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f74949e400501d481c94167878e868e2f27c74d3f8c91f4bbcf56d37d05513`  
		Last Modified: Wed, 27 Sep 2017 15:02:00 GMT  
		Size: 42.7 MB (42737712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eee7764fc2c0c4199afd2676a8fbf5f54e89f39b0b9b15c261687df14ca6c03`  
		Last Modified: Wed, 27 Sep 2017 15:02:59 GMT  
		Size: 115.5 MB (115471390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cee302b5c12b2ba5a076e787bc024569172b428f1d2b107d3afdd9d470d7d7d`  
		Last Modified: Wed, 27 Sep 2017 15:44:19 GMT  
		Size: 3.0 MB (3020206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6483e3815ea4d914e6ec6e4ddc9ef8d5d70ebd11baf01cadd5d5e76bea988f4`  
		Last Modified: Fri, 06 Oct 2017 16:10:35 GMT  
		Size: 22.2 MB (22170099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44074b4754dd259b5ad23a0961a56885e0436057f3d5dacfe8799e169af21ef8`  
		Last Modified: Fri, 06 Oct 2017 16:10:28 GMT  
		Size: 3.7 MB (3702716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c1d3c73504e2eab44e058720c574d01a51f6814904d697c0cdd3cef85c25fd`  
		Last Modified: Fri, 06 Oct 2017 16:11:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-onbuild` - linux; arm variant v7

```console
$ docker pull pypy@sha256:c8e02303da8fbf424a47e63e4d68b9bc98bc37b75b503e017e8de1b679d2d977
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249300292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d3e019c6341b63bf27e2d342a9d0e963b5838961c1235251f2cbbc91ac06fe1`
-	Default Command: `["pypy"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:33:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 00:45:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:59:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 01:15:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 01:15:10 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 01:15:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 12:44:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 12:45:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 12:45:02 GMT
CMD ["pypy"]
# Fri, 06 Oct 2017 12:46:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 06 Oct 2017 12:46:32 GMT
WORKDIR /usr/src/app
# Fri, 06 Oct 2017 12:46:32 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 06 Oct 2017 12:46:33 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 06 Oct 2017 12:46:33 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bfbf7dfc788cb4ca7c7d227e3465a4e211416e4c7f0e008f3ae90db3dd0bb1`  
		Last Modified: Tue, 19 Sep 2017 02:40:07 GMT  
		Size: 18.3 MB (18262683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015138dd660daf8e5560cc269a592e9abf2796753a8c7d62949428056b7d1917`  
		Last Modified: Tue, 19 Sep 2017 02:40:50 GMT  
		Size: 39.7 MB (39689147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88b2b5023e5b605d9611426b7cc69289141483394d1d1de9ab3773fcb770ffd`  
		Last Modified: Tue, 19 Sep 2017 02:42:03 GMT  
		Size: 113.8 MB (113804084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b2e2247c84aeaea494a2931d4d8ddb2ddc3f6362d6c1d29110395cc265aa9c`  
		Last Modified: Wed, 27 Sep 2017 03:14:14 GMT  
		Size: 2.9 MB (2897675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3aa4edb59839fb0ad8ae077d02300c13a69963e80a23306ba7c4b7b12bf0b`  
		Last Modified: Fri, 06 Oct 2017 12:46:50 GMT  
		Size: 22.3 MB (22261755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68e1997217198c82d9c8158e91b6d016f07bf9a5aaa0f486f35d658937d6adc`  
		Last Modified: Fri, 06 Oct 2017 12:46:43 GMT  
		Size: 3.7 MB (3702709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b591bf93c398a39e903a2965d518275d7ad71effca4e2378c6e08849a19761f9`  
		Last Modified: Fri, 06 Oct 2017 12:47:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-onbuild` - linux; 386

```console
$ docker pull pypy@sha256:fd12a518a43cf2dc310b9d9a7a39af48553996fbaaa1a25e490ed32e00c213ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b3d43ac8a05c8e63bf8a56a7615bf0334b9711fd4d3a7045d2727b5786c808`
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
# Fri, 06 Oct 2017 17:42:14 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 17:42:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 17:42:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 17:42:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 17:42:33 GMT
CMD ["pypy"]
# Fri, 06 Oct 2017 17:44:04 GMT
RUN mkdir -p /usr/src/app
# Fri, 06 Oct 2017 17:44:04 GMT
WORKDIR /usr/src/app
# Fri, 06 Oct 2017 17:44:05 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 06 Oct 2017 17:44:05 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 06 Oct 2017 17:44:05 GMT
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
	-	`sha256:1f646ff3c4a13c10f803ae1bb7fa71fbfc3d37c0e921bffb8bc77b3faaa8462c`  
		Last Modified: Fri, 06 Oct 2017 17:44:19 GMT  
		Size: 20.9 MB (20937507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e239faaa3160e9517599172488838bf850bd5cb245ecb05acefbf6d1ea54fdf`  
		Last Modified: Fri, 06 Oct 2017 17:44:15 GMT  
		Size: 3.7 MB (3701965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f2d785a7b6c7b2572e694cf6fe9f92e6a6008f687a4895ef3c8bbb5c8a555c`  
		Last Modified: Fri, 06 Oct 2017 17:45:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:50373e6da3ec8e305c2750c6033b0a6a7b07e2722ea9aff189c204126815fa00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `pypy:2-5-slim` - linux; amd64

```console
$ docker pull pypy@sha256:71425fc1e849499747a4271649dab01b0494ded6eabbcef56805ddb563a7c13f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61685487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5fb62cbe6d9ca628200361a7743cf2141a13552131d9ee8d7586187ade58e57`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:31:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 02:31:59 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 02:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 05 Oct 2017 19:04:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b063591b441612bcc5624be83cf8adc1e704bed139b73818c3070672ef28ff0`  
		Last Modified: Thu, 14 Sep 2017 02:36:16 GMT  
		Size: 2.9 MB (2859656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26eb65e84fa17865e42007735ff30950f162e2ccb792a107d16d541695ca07d2`  
		Last Modified: Thu, 05 Oct 2017 19:06:43 GMT  
		Size: 28.7 MB (28712697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c6d44520478afb440d9ebc2e2a472172947d264b080f06179bdad3fbbdc5a40f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57141342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac329cf6ce8703d26053dd6da5fbb9bb1e921014bd0bad4504b8e2cdbcf39a81`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:39 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Wed, 27 Sep 2017 14:24:40 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:42:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:42:23 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:42:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 16:08:57 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 16:08:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 16:10:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 06 Oct 2017 16:10:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e94aa09407315b00ceec47b90961e6d711cbea50b303b5ac7db479f80e57b2b9`  
		Last Modified: Wed, 27 Sep 2017 14:28:45 GMT  
		Size: 28.4 MB (28424172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb99bdb781d42ba88c3e71f2be74066a3a62130f5a8b6d6c06a23f686388eab`  
		Last Modified: Wed, 27 Sep 2017 15:44:33 GMT  
		Size: 2.6 MB (2608030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a4f565c4fb98890bcaaef303644e236813065d07d65b3bcc71b67865d87e4d`  
		Last Modified: Fri, 06 Oct 2017 16:10:59 GMT  
		Size: 26.1 MB (26109140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-slim` - linux; arm variant v7

```console
$ docker pull pypy@sha256:39509d13ce78de842fd2922a62ec88a36f25e382bdbf69b8a918c79129426c73
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54957779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df13578566593c9db494df9d5d8a6cf9796bff7942672d816cfe4ca9c1db70ad`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:13:29 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:14:12 GMT
ENV PYPY_VERSION=5.9.0
# Mon, 09 Oct 2017 22:14:12 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 09 Oct 2017 22:15:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 09 Oct 2017 22:15:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039a7388aeb06b497f3d06c990392cb69bc39900f190f66bda620a11031c2a49`  
		Last Modified: Mon, 09 Oct 2017 22:15:54 GMT  
		Size: 2.5 MB (2476099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0eb80fc7c26ef567b5e9322a30b6395eda2c4b20cafa14f15561723e891d59d`  
		Last Modified: Mon, 09 Oct 2017 22:16:04 GMT  
		Size: 26.2 MB (26200698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-slim` - linux; 386

```console
$ docker pull pypy@sha256:553cc7408234b51bb5e97bf39fcd7e30e5ba4953fabad20e0b551f6ec987fee8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60104590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74eb7de3e35e49e8bf1a60a64a9f0dfcb7b3730e7d9f4c0e3933ca2ae5bf611d`
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
# Fri, 06 Oct 2017 17:43:00 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 17:43:00 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 17:43:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 06 Oct 2017 17:43:56 GMT
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
	-	`sha256:82cc72d350978197e9fa045f7d0dbf7db20aa1abaf2d24ff7a3286a62cd0db5b`  
		Last Modified: Fri, 06 Oct 2017 17:44:50 GMT  
		Size: 24.9 MB (24882632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-onbuild`

```console
$ docker pull pypy@sha256:46d9bf60a9bc3c78c7b4b8d97a73eb840d5f08f1a820197e194ed6f856cb7a16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `pypy:2-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:28d1ca9fded5fbc6967ec833ec05af8331b0d817b4b3deeda6e8cdb3b42bc518
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.4 MB (281411875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f9205cc87e5f7f0cfce96661704c9cc3e67c5bd336fea83c4870862cd26eb83`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:03:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 05 Oct 2017 19:03:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:03:20 GMT
CMD ["pypy"]
# Thu, 05 Oct 2017 19:04:21 GMT
RUN mkdir -p /usr/src/app
# Thu, 05 Oct 2017 19:04:22 GMT
WORKDIR /usr/src/app
# Thu, 05 Oct 2017 19:04:22 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 05 Oct 2017 19:04:22 GMT
ONBUILD RUN pip install -r requirements.txt
# Thu, 05 Oct 2017 19:04:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61091c92b9a4829f7c7b5679958df0f544a31ff762a4a68e2d6b989c6d29a359`  
		Last Modified: Thu, 05 Oct 2017 19:06:04 GMT  
		Size: 24.8 MB (24771137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8f0a787036108776886539b89831236903cfec0adb68a3a3cbdce7f1082815`  
		Last Modified: Thu, 05 Oct 2017 19:06:00 GMT  
		Size: 3.7 MB (3701767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449adb0d833df251d07884c25ebc24334c0b99ace84258e6e3e8556404b95359`  
		Last Modified: Thu, 05 Oct 2017 19:07:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-onbuild` - linux; arm variant v5

```console
$ docker pull pypy@sha256:816e391cc1a63cc087e4ddaef33308645bd6b8460e32ad3858f46acff39994dc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256635470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ecadad5a9a56317c926c176675d7d1dcd592f14e4aa8ec8d507f4b0950dccb`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:47:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 14:48:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:50:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:41:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:41:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:41:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 16:08:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 16:08:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 16:08:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 16:08:52 GMT
CMD ["pypy"]
# Fri, 06 Oct 2017 16:10:16 GMT
RUN mkdir -p /usr/src/app
# Fri, 06 Oct 2017 16:10:17 GMT
WORKDIR /usr/src/app
# Fri, 06 Oct 2017 16:10:17 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 06 Oct 2017 16:10:17 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 06 Oct 2017 16:10:17 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383dc0c402c2a94402ca03cfa2ec05c87d8e91d968961c72d52a7f47b0823a7f`  
		Last Modified: Wed, 27 Sep 2017 15:01:39 GMT  
		Size: 18.7 MB (18653386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f74949e400501d481c94167878e868e2f27c74d3f8c91f4bbcf56d37d05513`  
		Last Modified: Wed, 27 Sep 2017 15:02:00 GMT  
		Size: 42.7 MB (42737712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eee7764fc2c0c4199afd2676a8fbf5f54e89f39b0b9b15c261687df14ca6c03`  
		Last Modified: Wed, 27 Sep 2017 15:02:59 GMT  
		Size: 115.5 MB (115471390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cee302b5c12b2ba5a076e787bc024569172b428f1d2b107d3afdd9d470d7d7d`  
		Last Modified: Wed, 27 Sep 2017 15:44:19 GMT  
		Size: 3.0 MB (3020206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6483e3815ea4d914e6ec6e4ddc9ef8d5d70ebd11baf01cadd5d5e76bea988f4`  
		Last Modified: Fri, 06 Oct 2017 16:10:35 GMT  
		Size: 22.2 MB (22170099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44074b4754dd259b5ad23a0961a56885e0436057f3d5dacfe8799e169af21ef8`  
		Last Modified: Fri, 06 Oct 2017 16:10:28 GMT  
		Size: 3.7 MB (3702716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c1d3c73504e2eab44e058720c574d01a51f6814904d697c0cdd3cef85c25fd`  
		Last Modified: Fri, 06 Oct 2017 16:11:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-onbuild` - linux; arm variant v7

```console
$ docker pull pypy@sha256:c8e02303da8fbf424a47e63e4d68b9bc98bc37b75b503e017e8de1b679d2d977
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249300292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d3e019c6341b63bf27e2d342a9d0e963b5838961c1235251f2cbbc91ac06fe1`
-	Default Command: `["pypy"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:33:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 00:45:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:59:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 01:15:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 01:15:10 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 01:15:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 12:44:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 12:44:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 12:45:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 12:45:02 GMT
CMD ["pypy"]
# Fri, 06 Oct 2017 12:46:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 06 Oct 2017 12:46:32 GMT
WORKDIR /usr/src/app
# Fri, 06 Oct 2017 12:46:32 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 06 Oct 2017 12:46:33 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 06 Oct 2017 12:46:33 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bfbf7dfc788cb4ca7c7d227e3465a4e211416e4c7f0e008f3ae90db3dd0bb1`  
		Last Modified: Tue, 19 Sep 2017 02:40:07 GMT  
		Size: 18.3 MB (18262683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015138dd660daf8e5560cc269a592e9abf2796753a8c7d62949428056b7d1917`  
		Last Modified: Tue, 19 Sep 2017 02:40:50 GMT  
		Size: 39.7 MB (39689147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88b2b5023e5b605d9611426b7cc69289141483394d1d1de9ab3773fcb770ffd`  
		Last Modified: Tue, 19 Sep 2017 02:42:03 GMT  
		Size: 113.8 MB (113804084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b2e2247c84aeaea494a2931d4d8ddb2ddc3f6362d6c1d29110395cc265aa9c`  
		Last Modified: Wed, 27 Sep 2017 03:14:14 GMT  
		Size: 2.9 MB (2897675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3aa4edb59839fb0ad8ae077d02300c13a69963e80a23306ba7c4b7b12bf0b`  
		Last Modified: Fri, 06 Oct 2017 12:46:50 GMT  
		Size: 22.3 MB (22261755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68e1997217198c82d9c8158e91b6d016f07bf9a5aaa0f486f35d658937d6adc`  
		Last Modified: Fri, 06 Oct 2017 12:46:43 GMT  
		Size: 3.7 MB (3702709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b591bf93c398a39e903a2965d518275d7ad71effca4e2378c6e08849a19761f9`  
		Last Modified: Fri, 06 Oct 2017 12:47:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-onbuild` - linux; 386

```console
$ docker pull pypy@sha256:fd12a518a43cf2dc310b9d9a7a39af48553996fbaaa1a25e490ed32e00c213ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281017622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b3d43ac8a05c8e63bf8a56a7615bf0334b9711fd4d3a7045d2727b5786c808`
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
# Fri, 06 Oct 2017 17:42:14 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 17:42:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 17:42:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 06 Oct 2017 17:42:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 06 Oct 2017 17:42:33 GMT
CMD ["pypy"]
# Fri, 06 Oct 2017 17:44:04 GMT
RUN mkdir -p /usr/src/app
# Fri, 06 Oct 2017 17:44:04 GMT
WORKDIR /usr/src/app
# Fri, 06 Oct 2017 17:44:05 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 06 Oct 2017 17:44:05 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 06 Oct 2017 17:44:05 GMT
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
	-	`sha256:1f646ff3c4a13c10f803ae1bb7fa71fbfc3d37c0e921bffb8bc77b3faaa8462c`  
		Last Modified: Fri, 06 Oct 2017 17:44:19 GMT  
		Size: 20.9 MB (20937507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e239faaa3160e9517599172488838bf850bd5cb245ecb05acefbf6d1ea54fdf`  
		Last Modified: Fri, 06 Oct 2017 17:44:15 GMT  
		Size: 3.7 MB (3701965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f2d785a7b6c7b2572e694cf6fe9f92e6a6008f687a4895ef3c8bbb5c8a555c`  
		Last Modified: Fri, 06 Oct 2017 17:45:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim`

```console
$ docker pull pypy@sha256:50373e6da3ec8e305c2750c6033b0a6a7b07e2722ea9aff189c204126815fa00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `pypy:2-slim` - linux; amd64

```console
$ docker pull pypy@sha256:71425fc1e849499747a4271649dab01b0494ded6eabbcef56805ddb563a7c13f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61685487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5fb62cbe6d9ca628200361a7743cf2141a13552131d9ee8d7586187ade58e57`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:31:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 02:31:59 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 02:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 05 Oct 2017 19:04:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b063591b441612bcc5624be83cf8adc1e704bed139b73818c3070672ef28ff0`  
		Last Modified: Thu, 14 Sep 2017 02:36:16 GMT  
		Size: 2.9 MB (2859656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26eb65e84fa17865e42007735ff30950f162e2ccb792a107d16d541695ca07d2`  
		Last Modified: Thu, 05 Oct 2017 19:06:43 GMT  
		Size: 28.7 MB (28712697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c6d44520478afb440d9ebc2e2a472172947d264b080f06179bdad3fbbdc5a40f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57141342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac329cf6ce8703d26053dd6da5fbb9bb1e921014bd0bad4504b8e2cdbcf39a81`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:39 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Wed, 27 Sep 2017 14:24:40 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:42:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:42:23 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:42:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 16:08:57 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 16:08:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 16:10:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 06 Oct 2017 16:10:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e94aa09407315b00ceec47b90961e6d711cbea50b303b5ac7db479f80e57b2b9`  
		Last Modified: Wed, 27 Sep 2017 14:28:45 GMT  
		Size: 28.4 MB (28424172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb99bdb781d42ba88c3e71f2be74066a3a62130f5a8b6d6c06a23f686388eab`  
		Last Modified: Wed, 27 Sep 2017 15:44:33 GMT  
		Size: 2.6 MB (2608030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a4f565c4fb98890bcaaef303644e236813065d07d65b3bcc71b67865d87e4d`  
		Last Modified: Fri, 06 Oct 2017 16:10:59 GMT  
		Size: 26.1 MB (26109140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; arm variant v7

```console
$ docker pull pypy@sha256:39509d13ce78de842fd2922a62ec88a36f25e382bdbf69b8a918c79129426c73
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54957779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df13578566593c9db494df9d5d8a6cf9796bff7942672d816cfe4ca9c1db70ad`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:13:29 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:14:12 GMT
ENV PYPY_VERSION=5.9.0
# Mon, 09 Oct 2017 22:14:12 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 09 Oct 2017 22:15:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 09 Oct 2017 22:15:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039a7388aeb06b497f3d06c990392cb69bc39900f190f66bda620a11031c2a49`  
		Last Modified: Mon, 09 Oct 2017 22:15:54 GMT  
		Size: 2.5 MB (2476099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0eb80fc7c26ef567b5e9322a30b6395eda2c4b20cafa14f15561723e891d59d`  
		Last Modified: Mon, 09 Oct 2017 22:16:04 GMT  
		Size: 26.2 MB (26200698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; 386

```console
$ docker pull pypy@sha256:553cc7408234b51bb5e97bf39fcd7e30e5ba4953fabad20e0b551f6ec987fee8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60104590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74eb7de3e35e49e8bf1a60a64a9f0dfcb7b3730e7d9f4c0e3933ca2ae5bf611d`
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
# Fri, 06 Oct 2017 17:43:00 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 17:43:00 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 17:43:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 06 Oct 2017 17:43:56 GMT
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
	-	`sha256:82cc72d350978197e9fa045f7d0dbf7db20aa1abaf2d24ff7a3286a62cd0db5b`  
		Last Modified: Fri, 06 Oct 2017 17:44:50 GMT  
		Size: 24.9 MB (24882632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3`

```console
$ docker pull pypy@sha256:cbc0ec407d69da735fd9ec5d41bdc15305a00ce8e87368b01d2ffdc4da121b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3` - linux; amd64

```console
$ docker pull pypy@sha256:4ff9dc36f27df3be0913f036bcd8b2e8b6426d20b57ec8afef224a86f5ebbdad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282398025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b51a03137c5b7d9f3f684bcfd92a45b7bce914791bc805ffdc7439db2d63045`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 05 Oct 2017 19:04:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:04:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5474c221052334817ef3f33389dddc2e9c4ac1f8ea7c7cea45b2aa5b2988507d`  
		Last Modified: Thu, 05 Oct 2017 19:07:53 GMT  
		Size: 25.3 MB (25305143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9f235fa16b72a91a6a62742e1ff19216c343f3627b60529bd5165f92226fe8`  
		Last Modified: Thu, 05 Oct 2017 19:07:49 GMT  
		Size: 4.2 MB (4154042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5`

```console
$ docker pull pypy@sha256:cbc0ec407d69da735fd9ec5d41bdc15305a00ce8e87368b01d2ffdc4da121b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5` - linux; amd64

```console
$ docker pull pypy@sha256:4ff9dc36f27df3be0913f036bcd8b2e8b6426d20b57ec8afef224a86f5ebbdad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282398025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b51a03137c5b7d9f3f684bcfd92a45b7bce914791bc805ffdc7439db2d63045`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 05 Oct 2017 19:04:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:04:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5474c221052334817ef3f33389dddc2e9c4ac1f8ea7c7cea45b2aa5b2988507d`  
		Last Modified: Thu, 05 Oct 2017 19:07:53 GMT  
		Size: 25.3 MB (25305143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9f235fa16b72a91a6a62742e1ff19216c343f3627b60529bd5165f92226fe8`  
		Last Modified: Thu, 05 Oct 2017 19:07:49 GMT  
		Size: 4.2 MB (4154042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.9`

```console
$ docker pull pypy@sha256:cbc0ec407d69da735fd9ec5d41bdc15305a00ce8e87368b01d2ffdc4da121b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5.9` - linux; amd64

```console
$ docker pull pypy@sha256:4ff9dc36f27df3be0913f036bcd8b2e8b6426d20b57ec8afef224a86f5ebbdad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282398025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b51a03137c5b7d9f3f684bcfd92a45b7bce914791bc805ffdc7439db2d63045`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 05 Oct 2017 19:04:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:04:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5474c221052334817ef3f33389dddc2e9c4ac1f8ea7c7cea45b2aa5b2988507d`  
		Last Modified: Thu, 05 Oct 2017 19:07:53 GMT  
		Size: 25.3 MB (25305143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9f235fa16b72a91a6a62742e1ff19216c343f3627b60529bd5165f92226fe8`  
		Last Modified: Thu, 05 Oct 2017 19:07:49 GMT  
		Size: 4.2 MB (4154042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.9.0`

```console
$ docker pull pypy@sha256:cbc0ec407d69da735fd9ec5d41bdc15305a00ce8e87368b01d2ffdc4da121b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5.9.0` - linux; amd64

```console
$ docker pull pypy@sha256:4ff9dc36f27df3be0913f036bcd8b2e8b6426d20b57ec8afef224a86f5ebbdad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282398025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b51a03137c5b7d9f3f684bcfd92a45b7bce914791bc805ffdc7439db2d63045`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 05 Oct 2017 19:04:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:04:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5474c221052334817ef3f33389dddc2e9c4ac1f8ea7c7cea45b2aa5b2988507d`  
		Last Modified: Thu, 05 Oct 2017 19:07:53 GMT  
		Size: 25.3 MB (25305143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9f235fa16b72a91a6a62742e1ff19216c343f3627b60529bd5165f92226fe8`  
		Last Modified: Thu, 05 Oct 2017 19:07:49 GMT  
		Size: 4.2 MB (4154042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.9.0-onbuild`

```console
$ docker pull pypy@sha256:718e2616b4b8f6fd6dfb7939bf9b2afdf6246bd9e29027c90db50f8faa6e2dd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5.9.0-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:a1867115ec354106164ba91c1d61464b19eec74d50a58c419b090f7271ea525e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282398155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed6701ee23963d316a519a8f15be7aef3908fb03899d8df60e29e3127425d3c`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 05 Oct 2017 19:04:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:04:45 GMT
CMD ["pypy3"]
# Thu, 05 Oct 2017 19:05:42 GMT
RUN mkdir -p /usr/src/app
# Thu, 05 Oct 2017 19:05:43 GMT
WORKDIR /usr/src/app
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD RUN pip install -r requirements.txt
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5474c221052334817ef3f33389dddc2e9c4ac1f8ea7c7cea45b2aa5b2988507d`  
		Last Modified: Thu, 05 Oct 2017 19:07:53 GMT  
		Size: 25.3 MB (25305143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9f235fa16b72a91a6a62742e1ff19216c343f3627b60529bd5165f92226fe8`  
		Last Modified: Thu, 05 Oct 2017 19:07:49 GMT  
		Size: 4.2 MB (4154042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2d4198beeaa975d8e4107226434b22447def474026bc691d4d25143fbe4210`  
		Last Modified: Thu, 05 Oct 2017 19:09:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.9.0-slim`

```console
$ docker pull pypy@sha256:8f5a45f78a9ae53cb775850f2a52031f0992d6191b14e326218d6c818c38677a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5.9.0-slim` - linux; amd64

```console
$ docker pull pypy@sha256:8a72a6a0f2f0ce8322da84f9c63fbe0fe77c5853a86164d6f30b580ef2fc380e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62728624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a4c0421126d50bb0f9db702a2cda27c9a37c88d2fe3eae6c79719bf1c79559`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:31:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 02:31:59 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 02:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:05:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 05 Oct 2017 19:05:31 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b063591b441612bcc5624be83cf8adc1e704bed139b73818c3070672ef28ff0`  
		Last Modified: Thu, 14 Sep 2017 02:36:16 GMT  
		Size: 2.9 MB (2859656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366abcd216a5daded7edf9912c30f20f78115fd6bc4e85abc661cc1e0c635b7e`  
		Last Modified: Thu, 05 Oct 2017 19:08:40 GMT  
		Size: 29.8 MB (29755834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.9-onbuild`

```console
$ docker pull pypy@sha256:718e2616b4b8f6fd6dfb7939bf9b2afdf6246bd9e29027c90db50f8faa6e2dd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5.9-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:a1867115ec354106164ba91c1d61464b19eec74d50a58c419b090f7271ea525e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282398155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed6701ee23963d316a519a8f15be7aef3908fb03899d8df60e29e3127425d3c`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 05 Oct 2017 19:04:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:04:45 GMT
CMD ["pypy3"]
# Thu, 05 Oct 2017 19:05:42 GMT
RUN mkdir -p /usr/src/app
# Thu, 05 Oct 2017 19:05:43 GMT
WORKDIR /usr/src/app
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD RUN pip install -r requirements.txt
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5474c221052334817ef3f33389dddc2e9c4ac1f8ea7c7cea45b2aa5b2988507d`  
		Last Modified: Thu, 05 Oct 2017 19:07:53 GMT  
		Size: 25.3 MB (25305143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9f235fa16b72a91a6a62742e1ff19216c343f3627b60529bd5165f92226fe8`  
		Last Modified: Thu, 05 Oct 2017 19:07:49 GMT  
		Size: 4.2 MB (4154042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2d4198beeaa975d8e4107226434b22447def474026bc691d4d25143fbe4210`  
		Last Modified: Thu, 05 Oct 2017 19:09:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.9-slim`

```console
$ docker pull pypy@sha256:8f5a45f78a9ae53cb775850f2a52031f0992d6191b14e326218d6c818c38677a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5.9-slim` - linux; amd64

```console
$ docker pull pypy@sha256:8a72a6a0f2f0ce8322da84f9c63fbe0fe77c5853a86164d6f30b580ef2fc380e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62728624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a4c0421126d50bb0f9db702a2cda27c9a37c88d2fe3eae6c79719bf1c79559`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:31:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 02:31:59 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 02:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:05:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 05 Oct 2017 19:05:31 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b063591b441612bcc5624be83cf8adc1e704bed139b73818c3070672ef28ff0`  
		Last Modified: Thu, 14 Sep 2017 02:36:16 GMT  
		Size: 2.9 MB (2859656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366abcd216a5daded7edf9912c30f20f78115fd6bc4e85abc661cc1e0c635b7e`  
		Last Modified: Thu, 05 Oct 2017 19:08:40 GMT  
		Size: 29.8 MB (29755834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-onbuild`

```console
$ docker pull pypy@sha256:718e2616b4b8f6fd6dfb7939bf9b2afdf6246bd9e29027c90db50f8faa6e2dd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:a1867115ec354106164ba91c1d61464b19eec74d50a58c419b090f7271ea525e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282398155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed6701ee23963d316a519a8f15be7aef3908fb03899d8df60e29e3127425d3c`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 05 Oct 2017 19:04:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:04:45 GMT
CMD ["pypy3"]
# Thu, 05 Oct 2017 19:05:42 GMT
RUN mkdir -p /usr/src/app
# Thu, 05 Oct 2017 19:05:43 GMT
WORKDIR /usr/src/app
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD RUN pip install -r requirements.txt
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5474c221052334817ef3f33389dddc2e9c4ac1f8ea7c7cea45b2aa5b2988507d`  
		Last Modified: Thu, 05 Oct 2017 19:07:53 GMT  
		Size: 25.3 MB (25305143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9f235fa16b72a91a6a62742e1ff19216c343f3627b60529bd5165f92226fe8`  
		Last Modified: Thu, 05 Oct 2017 19:07:49 GMT  
		Size: 4.2 MB (4154042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2d4198beeaa975d8e4107226434b22447def474026bc691d4d25143fbe4210`  
		Last Modified: Thu, 05 Oct 2017 19:09:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:8f5a45f78a9ae53cb775850f2a52031f0992d6191b14e326218d6c818c38677a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-5-slim` - linux; amd64

```console
$ docker pull pypy@sha256:8a72a6a0f2f0ce8322da84f9c63fbe0fe77c5853a86164d6f30b580ef2fc380e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62728624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a4c0421126d50bb0f9db702a2cda27c9a37c88d2fe3eae6c79719bf1c79559`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:31:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 02:31:59 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 02:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:05:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 05 Oct 2017 19:05:31 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b063591b441612bcc5624be83cf8adc1e704bed139b73818c3070672ef28ff0`  
		Last Modified: Thu, 14 Sep 2017 02:36:16 GMT  
		Size: 2.9 MB (2859656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366abcd216a5daded7edf9912c30f20f78115fd6bc4e85abc661cc1e0c635b7e`  
		Last Modified: Thu, 05 Oct 2017 19:08:40 GMT  
		Size: 29.8 MB (29755834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-onbuild`

```console
$ docker pull pypy@sha256:718e2616b4b8f6fd6dfb7939bf9b2afdf6246bd9e29027c90db50f8faa6e2dd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:a1867115ec354106164ba91c1d61464b19eec74d50a58c419b090f7271ea525e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282398155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed6701ee23963d316a519a8f15be7aef3908fb03899d8df60e29e3127425d3c`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 05 Oct 2017 19:04:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:04:45 GMT
CMD ["pypy3"]
# Thu, 05 Oct 2017 19:05:42 GMT
RUN mkdir -p /usr/src/app
# Thu, 05 Oct 2017 19:05:43 GMT
WORKDIR /usr/src/app
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD RUN pip install -r requirements.txt
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5474c221052334817ef3f33389dddc2e9c4ac1f8ea7c7cea45b2aa5b2988507d`  
		Last Modified: Thu, 05 Oct 2017 19:07:53 GMT  
		Size: 25.3 MB (25305143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9f235fa16b72a91a6a62742e1ff19216c343f3627b60529bd5165f92226fe8`  
		Last Modified: Thu, 05 Oct 2017 19:07:49 GMT  
		Size: 4.2 MB (4154042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2d4198beeaa975d8e4107226434b22447def474026bc691d4d25143fbe4210`  
		Last Modified: Thu, 05 Oct 2017 19:09:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim`

```console
$ docker pull pypy@sha256:8f5a45f78a9ae53cb775850f2a52031f0992d6191b14e326218d6c818c38677a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

```console
$ docker pull pypy@sha256:8a72a6a0f2f0ce8322da84f9c63fbe0fe77c5853a86164d6f30b580ef2fc380e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62728624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a4c0421126d50bb0f9db702a2cda27c9a37c88d2fe3eae6c79719bf1c79559`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:31:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 02:31:59 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 02:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:05:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 05 Oct 2017 19:05:31 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b063591b441612bcc5624be83cf8adc1e704bed139b73818c3070672ef28ff0`  
		Last Modified: Thu, 14 Sep 2017 02:36:16 GMT  
		Size: 2.9 MB (2859656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366abcd216a5daded7edf9912c30f20f78115fd6bc4e85abc661cc1e0c635b7e`  
		Last Modified: Thu, 05 Oct 2017 19:08:40 GMT  
		Size: 29.8 MB (29755834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:latest`

```console
$ docker pull pypy@sha256:cbc0ec407d69da735fd9ec5d41bdc15305a00ce8e87368b01d2ffdc4da121b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:latest` - linux; amd64

```console
$ docker pull pypy@sha256:4ff9dc36f27df3be0913f036bcd8b2e8b6426d20b57ec8afef224a86f5ebbdad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282398025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b51a03137c5b7d9f3f684bcfd92a45b7bce914791bc805ffdc7439db2d63045`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 05 Oct 2017 19:04:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:04:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5474c221052334817ef3f33389dddc2e9c4ac1f8ea7c7cea45b2aa5b2988507d`  
		Last Modified: Thu, 05 Oct 2017 19:07:53 GMT  
		Size: 25.3 MB (25305143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9f235fa16b72a91a6a62742e1ff19216c343f3627b60529bd5165f92226fe8`  
		Last Modified: Thu, 05 Oct 2017 19:07:49 GMT  
		Size: 4.2 MB (4154042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:onbuild`

```console
$ docker pull pypy@sha256:718e2616b4b8f6fd6dfb7939bf9b2afdf6246bd9e29027c90db50f8faa6e2dd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:a1867115ec354106164ba91c1d61464b19eec74d50a58c419b090f7271ea525e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282398155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed6701ee23963d316a519a8f15be7aef3908fb03899d8df60e29e3127425d3c`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 05 Oct 2017 19:04:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 05 Oct 2017 19:04:45 GMT
CMD ["pypy3"]
# Thu, 05 Oct 2017 19:05:42 GMT
RUN mkdir -p /usr/src/app
# Thu, 05 Oct 2017 19:05:43 GMT
WORKDIR /usr/src/app
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD RUN pip install -r requirements.txt
# Thu, 05 Oct 2017 19:05:43 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5474c221052334817ef3f33389dddc2e9c4ac1f8ea7c7cea45b2aa5b2988507d`  
		Last Modified: Thu, 05 Oct 2017 19:07:53 GMT  
		Size: 25.3 MB (25305143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9f235fa16b72a91a6a62742e1ff19216c343f3627b60529bd5165f92226fe8`  
		Last Modified: Thu, 05 Oct 2017 19:07:49 GMT  
		Size: 4.2 MB (4154042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2d4198beeaa975d8e4107226434b22447def474026bc691d4d25143fbe4210`  
		Last Modified: Thu, 05 Oct 2017 19:09:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim`

```console
$ docker pull pypy@sha256:8f5a45f78a9ae53cb775850f2a52031f0992d6191b14e326218d6c818c38677a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:slim` - linux; amd64

```console
$ docker pull pypy@sha256:8a72a6a0f2f0ce8322da84f9c63fbe0fe77c5853a86164d6f30b580ef2fc380e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62728624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a4c0421126d50bb0f9db702a2cda27c9a37c88d2fe3eae6c79719bf1c79559`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:31:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 02:31:59 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 02:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:05:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 05 Oct 2017 19:05:31 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b063591b441612bcc5624be83cf8adc1e704bed139b73818c3070672ef28ff0`  
		Last Modified: Thu, 14 Sep 2017 02:36:16 GMT  
		Size: 2.9 MB (2859656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366abcd216a5daded7edf9912c30f20f78115fd6bc4e85abc661cc1e0c635b7e`  
		Last Modified: Thu, 05 Oct 2017 19:08:40 GMT  
		Size: 29.8 MB (29755834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
