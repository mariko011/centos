## `python:2-onbuild`

```console
$ docker pull python@sha256:8d228c9594226873a8c6e049e445d62e2a9eaa5904a1ebb0644b87694ea7cb3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `python:2-onbuild` - linux; amd64

```console
$ docker pull python@sha256:05e6566e245958e3efe0616ec743c76d3d6d53c76abd9fb8de92b4693f3b842f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.7 MB (272744475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82754808109aa57bb84dc0ee911fdae5c1a2825be556b88b83fdb39b88376c2b`
-	Default Command: `["python2"]`

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
# Thu, 14 Sep 2017 23:42:20 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 18 Sep 2017 20:46:38 GMT
ENV PYTHON_VERSION=2.7.14
# Mon, 18 Sep 2017 20:48:30 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 18 Sep 2017 20:48:30 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 18 Sep 2017 20:48:34 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 18 Sep 2017 20:48:36 GMT
RUN pip install --no-cache-dir virtualenv
# Mon, 18 Sep 2017 20:48:36 GMT
CMD ["python2"]
# Mon, 18 Sep 2017 20:51:44 GMT
RUN mkdir -p /usr/src/app
# Mon, 18 Sep 2017 20:51:44 GMT
WORKDIR /usr/src/app
# Mon, 18 Sep 2017 20:51:44 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Mon, 18 Sep 2017 20:51:44 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Mon, 18 Sep 2017 20:51:44 GMT
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
	-	`sha256:299c2fe5f47feb6da535169f72b288b1df2cf299173ee3298fdfb06508c8e977`  
		Last Modified: Mon, 18 Sep 2017 20:58:43 GMT  
		Size: 14.8 MB (14816458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6116a194f6b508c448a9d80be2a407aadaaf89be34e6c8cc6fee325380d240ec`  
		Last Modified: Mon, 18 Sep 2017 20:58:41 GMT  
		Size: 1.7 MB (1658378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3631cfa2c8cc79c0d3ef7376f63afb2fca7ee6e523f38bcbba3647920bf817d1`  
		Last Modified: Mon, 18 Sep 2017 20:58:42 GMT  
		Size: 3.3 MB (3330669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7856d9514ab9994aa416ca306e31a80be8a43ea051df8bd20e5bca4808490e72`  
		Last Modified: Mon, 18 Sep 2017 20:59:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-onbuild` - linux; arm variant v7

```console
$ docker pull python@sha256:9d3751a65c62c16034074f3d3f243b35e9044ca35d56d5cefcc5049d0f8c1fb7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.8 MB (242758516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5dfcd2347bd20bb17dbd0e0bb911deeaa7b28015a0b39c6e09edb75dab3c25`
-	Default Command: `["python2"]`

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
# Wed, 27 Sep 2017 01:53:51 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Sep 2017 01:53:51 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 27 Sep 2017 01:56:53 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 27 Sep 2017 01:56:53 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 27 Sep 2017 01:57:01 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Sep 2017 01:57:04 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 27 Sep 2017 01:57:04 GMT
CMD ["python2"]
# Thu, 28 Sep 2017 03:05:49 GMT
RUN mkdir -p /usr/src/app
# Thu, 28 Sep 2017 03:05:50 GMT
WORKDIR /usr/src/app
# Thu, 28 Sep 2017 03:05:50 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 28 Sep 2017 03:05:50 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Thu, 28 Sep 2017 03:05:50 GMT
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
	-	`sha256:6627ef54a564fe622dc9d57fdaae2d9d77ced8c34f91b720b76e12a57da444b7`  
		Last Modified: Wed, 27 Sep 2017 03:16:50 GMT  
		Size: 14.4 MB (14433264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e593a48e3299bb66249b9af8993282371e927743b7d41ab189c5e6a15ed2ca13`  
		Last Modified: Wed, 27 Sep 2017 03:16:45 GMT  
		Size: 1.7 MB (1658691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c42e477cef4764fca1ba143d0f761dba6f1b6d18182e5d74a5c12750b1b4b0`  
		Last Modified: Wed, 27 Sep 2017 03:16:45 GMT  
		Size: 3.3 MB (3330730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88956e70b132c51dce343d3aa6d17d97092cf951053494e8794da7d94993b40`  
		Last Modified: Thu, 28 Sep 2017 03:06:53 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
