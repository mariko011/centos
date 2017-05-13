<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hylang`

-	[`hylang:0.12.1`](#hylang0121)
-	[`hylang:0.12`](#hylang012)
-	[`hylang:0`](#hylang0)
-	[`hylang:latest`](#hylanglatest)

## `hylang:0.12.1`

```console
$ docker pull hylang@sha256:d05f240fa75d6559c0cafb5db4e22ce3cbbfd38b0f5fbaaeae461eeffcbb0606
```

-	Platforms:
	-	linux; amd64

### `hylang:0.12.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273776850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068a9d3dd13b6db33a5cb6772686cc8795217c12217d3e58050f6d82574da054`
-	Default Command: `["hy"]`

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
# Wed, 10 May 2017 02:56:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 02:56:18 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 02:56:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:30:14 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 10 May 2017 03:30:15 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 11 May 2017 22:15:24 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 11 May 2017 22:15:26 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 11 May 2017 22:15:26 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 11 May 2017 22:15:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 11 May 2017 22:15:32 GMT
CMD ["python3"]
# Sat, 13 May 2017 00:02:57 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 13 May 2017 00:02:58 GMT
ADD dir:47df1a0ecf3cd0cbcb8600f64a3307efe2ea734aacc193cbff4c8b15467a5187 in /opt/hylang/hy 
# Sat, 13 May 2017 00:03:11 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 13 May 2017 00:03:12 GMT
CMD ["hy"]
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
	-	`sha256:ea8a37f1516109860d0de28779a53c0d67a36c51fc6aa6d083f21e36a7d2260e`  
		Last Modified: Wed, 10 May 2017 03:35:59 GMT  
		Size: 2.9 MB (2901986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb634154ace28722ced66d9272eef2d97eab3ab4c9452aaed3c1aff7c0eecdf`  
		Last Modified: Thu, 11 May 2017 22:39:31 GMT  
		Size: 19.5 MB (19485197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df6941e6752d66da0c4ebb4b0f5f2f3bca84c8e22624f2b9dcc338d546dd709`  
		Last Modified: Thu, 11 May 2017 22:39:27 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df67ecfc860bee4ca5110c9c4160acd37561ad05e8bfe237dded172fb835ed01`  
		Last Modified: Thu, 11 May 2017 22:39:29 GMT  
		Size: 1.7 MB (1667122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f02bf48f58419c6ea3fb0fa0e69e5db41d5b4674f60ae3611bb9228cb2a8e9`  
		Last Modified: Sat, 13 May 2017 00:03:46 GMT  
		Size: 380.6 KB (380570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ee3e6b1b6380fd323b52c42bf59b205b691e365ae342d6f3fa1c1bd9a57237`  
		Last Modified: Sat, 13 May 2017 00:03:46 GMT  
		Size: 2.4 MB (2429085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hylang:0.12`

```console
$ docker pull hylang@sha256:d05f240fa75d6559c0cafb5db4e22ce3cbbfd38b0f5fbaaeae461eeffcbb0606
```

-	Platforms:
	-	linux; amd64

### `hylang:0.12` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273776850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068a9d3dd13b6db33a5cb6772686cc8795217c12217d3e58050f6d82574da054`
-	Default Command: `["hy"]`

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
# Wed, 10 May 2017 02:56:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 02:56:18 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 02:56:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:30:14 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 10 May 2017 03:30:15 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 11 May 2017 22:15:24 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 11 May 2017 22:15:26 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 11 May 2017 22:15:26 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 11 May 2017 22:15:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 11 May 2017 22:15:32 GMT
CMD ["python3"]
# Sat, 13 May 2017 00:02:57 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 13 May 2017 00:02:58 GMT
ADD dir:47df1a0ecf3cd0cbcb8600f64a3307efe2ea734aacc193cbff4c8b15467a5187 in /opt/hylang/hy 
# Sat, 13 May 2017 00:03:11 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 13 May 2017 00:03:12 GMT
CMD ["hy"]
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
	-	`sha256:ea8a37f1516109860d0de28779a53c0d67a36c51fc6aa6d083f21e36a7d2260e`  
		Last Modified: Wed, 10 May 2017 03:35:59 GMT  
		Size: 2.9 MB (2901986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb634154ace28722ced66d9272eef2d97eab3ab4c9452aaed3c1aff7c0eecdf`  
		Last Modified: Thu, 11 May 2017 22:39:31 GMT  
		Size: 19.5 MB (19485197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df6941e6752d66da0c4ebb4b0f5f2f3bca84c8e22624f2b9dcc338d546dd709`  
		Last Modified: Thu, 11 May 2017 22:39:27 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df67ecfc860bee4ca5110c9c4160acd37561ad05e8bfe237dded172fb835ed01`  
		Last Modified: Thu, 11 May 2017 22:39:29 GMT  
		Size: 1.7 MB (1667122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f02bf48f58419c6ea3fb0fa0e69e5db41d5b4674f60ae3611bb9228cb2a8e9`  
		Last Modified: Sat, 13 May 2017 00:03:46 GMT  
		Size: 380.6 KB (380570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ee3e6b1b6380fd323b52c42bf59b205b691e365ae342d6f3fa1c1bd9a57237`  
		Last Modified: Sat, 13 May 2017 00:03:46 GMT  
		Size: 2.4 MB (2429085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hylang:0`

```console
$ docker pull hylang@sha256:d05f240fa75d6559c0cafb5db4e22ce3cbbfd38b0f5fbaaeae461eeffcbb0606
```

-	Platforms:
	-	linux; amd64

### `hylang:0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273776850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068a9d3dd13b6db33a5cb6772686cc8795217c12217d3e58050f6d82574da054`
-	Default Command: `["hy"]`

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
# Wed, 10 May 2017 02:56:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 02:56:18 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 02:56:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:30:14 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 10 May 2017 03:30:15 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 11 May 2017 22:15:24 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 11 May 2017 22:15:26 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 11 May 2017 22:15:26 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 11 May 2017 22:15:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 11 May 2017 22:15:32 GMT
CMD ["python3"]
# Sat, 13 May 2017 00:02:57 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 13 May 2017 00:02:58 GMT
ADD dir:47df1a0ecf3cd0cbcb8600f64a3307efe2ea734aacc193cbff4c8b15467a5187 in /opt/hylang/hy 
# Sat, 13 May 2017 00:03:11 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 13 May 2017 00:03:12 GMT
CMD ["hy"]
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
	-	`sha256:ea8a37f1516109860d0de28779a53c0d67a36c51fc6aa6d083f21e36a7d2260e`  
		Last Modified: Wed, 10 May 2017 03:35:59 GMT  
		Size: 2.9 MB (2901986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb634154ace28722ced66d9272eef2d97eab3ab4c9452aaed3c1aff7c0eecdf`  
		Last Modified: Thu, 11 May 2017 22:39:31 GMT  
		Size: 19.5 MB (19485197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df6941e6752d66da0c4ebb4b0f5f2f3bca84c8e22624f2b9dcc338d546dd709`  
		Last Modified: Thu, 11 May 2017 22:39:27 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df67ecfc860bee4ca5110c9c4160acd37561ad05e8bfe237dded172fb835ed01`  
		Last Modified: Thu, 11 May 2017 22:39:29 GMT  
		Size: 1.7 MB (1667122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f02bf48f58419c6ea3fb0fa0e69e5db41d5b4674f60ae3611bb9228cb2a8e9`  
		Last Modified: Sat, 13 May 2017 00:03:46 GMT  
		Size: 380.6 KB (380570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ee3e6b1b6380fd323b52c42bf59b205b691e365ae342d6f3fa1c1bd9a57237`  
		Last Modified: Sat, 13 May 2017 00:03:46 GMT  
		Size: 2.4 MB (2429085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hylang:latest`

```console
$ docker pull hylang@sha256:d05f240fa75d6559c0cafb5db4e22ce3cbbfd38b0f5fbaaeae461eeffcbb0606
```

-	Platforms:
	-	linux; amd64

### `hylang:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273776850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068a9d3dd13b6db33a5cb6772686cc8795217c12217d3e58050f6d82574da054`
-	Default Command: `["hy"]`

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
# Wed, 10 May 2017 02:56:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 02:56:18 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 02:56:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:30:14 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 10 May 2017 03:30:15 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 11 May 2017 22:15:24 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 11 May 2017 22:15:26 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 11 May 2017 22:15:26 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 11 May 2017 22:15:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 11 May 2017 22:15:32 GMT
CMD ["python3"]
# Sat, 13 May 2017 00:02:57 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 13 May 2017 00:02:58 GMT
ADD dir:47df1a0ecf3cd0cbcb8600f64a3307efe2ea734aacc193cbff4c8b15467a5187 in /opt/hylang/hy 
# Sat, 13 May 2017 00:03:11 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 13 May 2017 00:03:12 GMT
CMD ["hy"]
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
	-	`sha256:ea8a37f1516109860d0de28779a53c0d67a36c51fc6aa6d083f21e36a7d2260e`  
		Last Modified: Wed, 10 May 2017 03:35:59 GMT  
		Size: 2.9 MB (2901986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb634154ace28722ced66d9272eef2d97eab3ab4c9452aaed3c1aff7c0eecdf`  
		Last Modified: Thu, 11 May 2017 22:39:31 GMT  
		Size: 19.5 MB (19485197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df6941e6752d66da0c4ebb4b0f5f2f3bca84c8e22624f2b9dcc338d546dd709`  
		Last Modified: Thu, 11 May 2017 22:39:27 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df67ecfc860bee4ca5110c9c4160acd37561ad05e8bfe237dded172fb835ed01`  
		Last Modified: Thu, 11 May 2017 22:39:29 GMT  
		Size: 1.7 MB (1667122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f02bf48f58419c6ea3fb0fa0e69e5db41d5b4674f60ae3611bb9228cb2a8e9`  
		Last Modified: Sat, 13 May 2017 00:03:46 GMT  
		Size: 380.6 KB (380570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ee3e6b1b6380fd323b52c42bf59b205b691e365ae342d6f3fa1c1bd9a57237`  
		Last Modified: Sat, 13 May 2017 00:03:46 GMT  
		Size: 2.4 MB (2429085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
