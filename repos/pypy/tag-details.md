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
$ docker pull pypy@sha256:ab3214e7497e3c6303a58d191c327be4f1bc8db03db1d063f7b80d20f117c255
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277934519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621ba8a409413f9d790be868dd54ba0a0ad7467f0cd9fca661a1244eed4d099b`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:14:58 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Fri, 23 Jun 2017 04:14:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:15:12 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:15:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:15:22 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f5ed0236f46554f325e358ec0525b26f97445282239262e2ac1e37378ae740`  
		Last Modified: Sat, 24 Jun 2017 20:37:34 GMT  
		Size: 24.4 MB (24364503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c48efdacad839a1a9b4a188bf7dd1ccdb52330d5e038aeef377c3a358555047`  
		Last Modified: Sat, 24 Jun 2017 20:37:27 GMT  
		Size: 3.7 MB (3743289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8`

```console
$ docker pull pypy@sha256:ab3214e7497e3c6303a58d191c327be4f1bc8db03db1d063f7b80d20f117c255
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277934519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621ba8a409413f9d790be868dd54ba0a0ad7467f0cd9fca661a1244eed4d099b`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:14:58 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Fri, 23 Jun 2017 04:14:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:15:12 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:15:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:15:22 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f5ed0236f46554f325e358ec0525b26f97445282239262e2ac1e37378ae740`  
		Last Modified: Sat, 24 Jun 2017 20:37:34 GMT  
		Size: 24.4 MB (24364503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c48efdacad839a1a9b4a188bf7dd1ccdb52330d5e038aeef377c3a358555047`  
		Last Modified: Sat, 24 Jun 2017 20:37:27 GMT  
		Size: 3.7 MB (3743289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5`

```console
$ docker pull pypy@sha256:ab3214e7497e3c6303a58d191c327be4f1bc8db03db1d063f7b80d20f117c255
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277934519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621ba8a409413f9d790be868dd54ba0a0ad7467f0cd9fca661a1244eed4d099b`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:14:58 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Fri, 23 Jun 2017 04:14:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:15:12 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:15:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:15:22 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f5ed0236f46554f325e358ec0525b26f97445282239262e2ac1e37378ae740`  
		Last Modified: Sat, 24 Jun 2017 20:37:34 GMT  
		Size: 24.4 MB (24364503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c48efdacad839a1a9b4a188bf7dd1ccdb52330d5e038aeef377c3a358555047`  
		Last Modified: Sat, 24 Jun 2017 20:37:27 GMT  
		Size: 3.7 MB (3743289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2`

```console
$ docker pull pypy@sha256:ab3214e7497e3c6303a58d191c327be4f1bc8db03db1d063f7b80d20f117c255
```

-	Platforms:
	-	linux; amd64

### `pypy:2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277934519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621ba8a409413f9d790be868dd54ba0a0ad7467f0cd9fca661a1244eed4d099b`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:14:58 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Fri, 23 Jun 2017 04:14:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:15:12 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:15:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:15:22 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f5ed0236f46554f325e358ec0525b26f97445282239262e2ac1e37378ae740`  
		Last Modified: Sat, 24 Jun 2017 20:37:34 GMT  
		Size: 24.4 MB (24364503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c48efdacad839a1a9b4a188bf7dd1ccdb52330d5e038aeef377c3a358555047`  
		Last Modified: Sat, 24 Jun 2017 20:37:27 GMT  
		Size: 3.7 MB (3743289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8.0-slim`

```console
$ docker pull pypy@sha256:38b18fb8b52c8fc421d0ad977e07e253e05dac5847e3c9a56b5e444c53d3bae7
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8.0-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61104226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06138c09fc7b401147c16de2e105ba02dbcca6836b5a95afa2f2c94f39ac9577`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:15:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:15:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 04:16:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:16:06 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:16:07 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Fri, 23 Jun 2017 04:16:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:16:36 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 04:16:37 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06309528502813b1bf8496a0df75f32fe057460ad23ea27cdfdc2f9c4458baac`  
		Last Modified: Sat, 24 Jun 2017 20:39:27 GMT  
		Size: 2.9 MB (2860866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7c9a16e82c8d16005340912586abb9cbcc5e62939721519f6ec08d6b52aedb`  
		Last Modified: Sat, 24 Jun 2017 20:39:35 GMT  
		Size: 28.1 MB (28113071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8-slim`

```console
$ docker pull pypy@sha256:38b18fb8b52c8fc421d0ad977e07e253e05dac5847e3c9a56b5e444c53d3bae7
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61104226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06138c09fc7b401147c16de2e105ba02dbcca6836b5a95afa2f2c94f39ac9577`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:15:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:15:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 04:16:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:16:06 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:16:07 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Fri, 23 Jun 2017 04:16:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:16:36 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 04:16:37 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06309528502813b1bf8496a0df75f32fe057460ad23ea27cdfdc2f9c4458baac`  
		Last Modified: Sat, 24 Jun 2017 20:39:27 GMT  
		Size: 2.9 MB (2860866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7c9a16e82c8d16005340912586abb9cbcc5e62939721519f6ec08d6b52aedb`  
		Last Modified: Sat, 24 Jun 2017 20:39:35 GMT  
		Size: 28.1 MB (28113071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:38b18fb8b52c8fc421d0ad977e07e253e05dac5847e3c9a56b5e444c53d3bae7
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61104226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06138c09fc7b401147c16de2e105ba02dbcca6836b5a95afa2f2c94f39ac9577`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:15:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:15:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 04:16:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:16:06 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:16:07 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Fri, 23 Jun 2017 04:16:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:16:36 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 04:16:37 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06309528502813b1bf8496a0df75f32fe057460ad23ea27cdfdc2f9c4458baac`  
		Last Modified: Sat, 24 Jun 2017 20:39:27 GMT  
		Size: 2.9 MB (2860866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7c9a16e82c8d16005340912586abb9cbcc5e62939721519f6ec08d6b52aedb`  
		Last Modified: Sat, 24 Jun 2017 20:39:35 GMT  
		Size: 28.1 MB (28113071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim`

```console
$ docker pull pypy@sha256:38b18fb8b52c8fc421d0ad977e07e253e05dac5847e3c9a56b5e444c53d3bae7
```

-	Platforms:
	-	linux; amd64

### `pypy:2-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61104226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06138c09fc7b401147c16de2e105ba02dbcca6836b5a95afa2f2c94f39ac9577`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:15:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:15:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 04:16:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:16:06 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:16:07 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Fri, 23 Jun 2017 04:16:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:16:36 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 04:16:37 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06309528502813b1bf8496a0df75f32fe057460ad23ea27cdfdc2f9c4458baac`  
		Last Modified: Sat, 24 Jun 2017 20:39:27 GMT  
		Size: 2.9 MB (2860866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7c9a16e82c8d16005340912586abb9cbcc5e62939721519f6ec08d6b52aedb`  
		Last Modified: Sat, 24 Jun 2017 20:39:35 GMT  
		Size: 28.1 MB (28113071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8.0-onbuild`

```console
$ docker pull pypy@sha256:d737c20f8cddaac321f2eb4889c2f0e0d4f2ad05632e03f0076eb4603d023ef4
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8.0-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277934645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e01a9c0decdd445a24c7c8950fadf95c1c0a11c89b578d250cf7a0dd5a4fa66c`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:14:58 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Fri, 23 Jun 2017 04:14:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:15:12 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:15:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:15:22 GMT
CMD ["pypy"]
# Fri, 23 Jun 2017 04:17:03 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 04:17:04 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 04:17:05 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 23 Jun 2017 04:17:06 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 23 Jun 2017 04:17:07 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f5ed0236f46554f325e358ec0525b26f97445282239262e2ac1e37378ae740`  
		Last Modified: Sat, 24 Jun 2017 20:37:34 GMT  
		Size: 24.4 MB (24364503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c48efdacad839a1a9b4a188bf7dd1ccdb52330d5e038aeef377c3a358555047`  
		Last Modified: Sat, 24 Jun 2017 20:37:27 GMT  
		Size: 3.7 MB (3743289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1e583304e6560f5bc06ff781a7dbef8386da243ec91b6b55b8953c735aae59`  
		Last Modified: Sat, 24 Jun 2017 20:41:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8-onbuild`

```console
$ docker pull pypy@sha256:d737c20f8cddaac321f2eb4889c2f0e0d4f2ad05632e03f0076eb4603d023ef4
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277934645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e01a9c0decdd445a24c7c8950fadf95c1c0a11c89b578d250cf7a0dd5a4fa66c`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:14:58 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Fri, 23 Jun 2017 04:14:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:15:12 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:15:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:15:22 GMT
CMD ["pypy"]
# Fri, 23 Jun 2017 04:17:03 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 04:17:04 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 04:17:05 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 23 Jun 2017 04:17:06 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 23 Jun 2017 04:17:07 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f5ed0236f46554f325e358ec0525b26f97445282239262e2ac1e37378ae740`  
		Last Modified: Sat, 24 Jun 2017 20:37:34 GMT  
		Size: 24.4 MB (24364503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c48efdacad839a1a9b4a188bf7dd1ccdb52330d5e038aeef377c3a358555047`  
		Last Modified: Sat, 24 Jun 2017 20:37:27 GMT  
		Size: 3.7 MB (3743289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1e583304e6560f5bc06ff781a7dbef8386da243ec91b6b55b8953c735aae59`  
		Last Modified: Sat, 24 Jun 2017 20:41:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-onbuild`

```console
$ docker pull pypy@sha256:d737c20f8cddaac321f2eb4889c2f0e0d4f2ad05632e03f0076eb4603d023ef4
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277934645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e01a9c0decdd445a24c7c8950fadf95c1c0a11c89b578d250cf7a0dd5a4fa66c`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:14:58 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Fri, 23 Jun 2017 04:14:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:15:12 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:15:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:15:22 GMT
CMD ["pypy"]
# Fri, 23 Jun 2017 04:17:03 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 04:17:04 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 04:17:05 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 23 Jun 2017 04:17:06 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 23 Jun 2017 04:17:07 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f5ed0236f46554f325e358ec0525b26f97445282239262e2ac1e37378ae740`  
		Last Modified: Sat, 24 Jun 2017 20:37:34 GMT  
		Size: 24.4 MB (24364503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c48efdacad839a1a9b4a188bf7dd1ccdb52330d5e038aeef377c3a358555047`  
		Last Modified: Sat, 24 Jun 2017 20:37:27 GMT  
		Size: 3.7 MB (3743289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1e583304e6560f5bc06ff781a7dbef8386da243ec91b6b55b8953c735aae59`  
		Last Modified: Sat, 24 Jun 2017 20:41:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-onbuild`

```console
$ docker pull pypy@sha256:d737c20f8cddaac321f2eb4889c2f0e0d4f2ad05632e03f0076eb4603d023ef4
```

-	Platforms:
	-	linux; amd64

### `pypy:2-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277934645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e01a9c0decdd445a24c7c8950fadf95c1c0a11c89b578d250cf7a0dd5a4fa66c`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:14:58 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Fri, 23 Jun 2017 04:14:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:15:12 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:15:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:15:22 GMT
CMD ["pypy"]
# Fri, 23 Jun 2017 04:17:03 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 04:17:04 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 04:17:05 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 23 Jun 2017 04:17:06 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 23 Jun 2017 04:17:07 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f5ed0236f46554f325e358ec0525b26f97445282239262e2ac1e37378ae740`  
		Last Modified: Sat, 24 Jun 2017 20:37:34 GMT  
		Size: 24.4 MB (24364503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c48efdacad839a1a9b4a188bf7dd1ccdb52330d5e038aeef377c3a358555047`  
		Last Modified: Sat, 24 Jun 2017 20:37:27 GMT  
		Size: 3.7 MB (3743289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1e583304e6560f5bc06ff781a7dbef8386da243ec91b6b55b8953c735aae59`  
		Last Modified: Sat, 24 Jun 2017 20:41:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8.0`

```console
$ docker pull pypy@sha256:4e1a85604855df77f92a1519e1bb6e66a4c7149698ece0671fefbbfbdb12c13f
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279042847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346a9d7201e89174ce0bad193e2ab97fcaf25964a57961c9d864f44940d87533`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:17:32 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:17:33 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:17:43 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:17:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:17:54 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b4d009b77323700704ef21df6816fe4e8a9818a564323ae38700a0103dfae6`  
		Last Modified: Sat, 24 Jun 2017 20:43:24 GMT  
		Size: 25.0 MB (25008918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33d0d4d145776b326ff2aae2473d527807ccf95e6104c08d6a9c794614483f0`  
		Last Modified: Sat, 24 Jun 2017 20:43:18 GMT  
		Size: 4.2 MB (4207202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8`

```console
$ docker pull pypy@sha256:4e1a85604855df77f92a1519e1bb6e66a4c7149698ece0671fefbbfbdb12c13f
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279042847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346a9d7201e89174ce0bad193e2ab97fcaf25964a57961c9d864f44940d87533`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:17:32 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:17:33 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:17:43 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:17:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:17:54 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b4d009b77323700704ef21df6816fe4e8a9818a564323ae38700a0103dfae6`  
		Last Modified: Sat, 24 Jun 2017 20:43:24 GMT  
		Size: 25.0 MB (25008918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33d0d4d145776b326ff2aae2473d527807ccf95e6104c08d6a9c794614483f0`  
		Last Modified: Sat, 24 Jun 2017 20:43:18 GMT  
		Size: 4.2 MB (4207202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5`

```console
$ docker pull pypy@sha256:4e1a85604855df77f92a1519e1bb6e66a4c7149698ece0671fefbbfbdb12c13f
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279042847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346a9d7201e89174ce0bad193e2ab97fcaf25964a57961c9d864f44940d87533`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:17:32 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:17:33 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:17:43 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:17:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:17:54 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b4d009b77323700704ef21df6816fe4e8a9818a564323ae38700a0103dfae6`  
		Last Modified: Sat, 24 Jun 2017 20:43:24 GMT  
		Size: 25.0 MB (25008918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33d0d4d145776b326ff2aae2473d527807ccf95e6104c08d6a9c794614483f0`  
		Last Modified: Sat, 24 Jun 2017 20:43:18 GMT  
		Size: 4.2 MB (4207202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3`

```console
$ docker pull pypy@sha256:4e1a85604855df77f92a1519e1bb6e66a4c7149698ece0671fefbbfbdb12c13f
```

-	Platforms:
	-	linux; amd64

### `pypy:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279042847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346a9d7201e89174ce0bad193e2ab97fcaf25964a57961c9d864f44940d87533`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:17:32 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:17:33 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:17:43 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:17:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:17:54 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b4d009b77323700704ef21df6816fe4e8a9818a564323ae38700a0103dfae6`  
		Last Modified: Sat, 24 Jun 2017 20:43:24 GMT  
		Size: 25.0 MB (25008918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33d0d4d145776b326ff2aae2473d527807ccf95e6104c08d6a9c794614483f0`  
		Last Modified: Sat, 24 Jun 2017 20:43:18 GMT  
		Size: 4.2 MB (4207202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:latest`

```console
$ docker pull pypy@sha256:4e1a85604855df77f92a1519e1bb6e66a4c7149698ece0671fefbbfbdb12c13f
```

-	Platforms:
	-	linux; amd64

### `pypy:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279042847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346a9d7201e89174ce0bad193e2ab97fcaf25964a57961c9d864f44940d87533`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:17:32 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:17:33 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:17:43 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:17:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:17:54 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b4d009b77323700704ef21df6816fe4e8a9818a564323ae38700a0103dfae6`  
		Last Modified: Sat, 24 Jun 2017 20:43:24 GMT  
		Size: 25.0 MB (25008918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33d0d4d145776b326ff2aae2473d527807ccf95e6104c08d6a9c794614483f0`  
		Last Modified: Sat, 24 Jun 2017 20:43:18 GMT  
		Size: 4.2 MB (4207202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8.0-slim`

```console
$ docker pull pypy@sha256:74dab02a91c8e29d1e04f2954802ac8080e25e8c02e5b7775a02996d8da8ebed
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8.0-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62282811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3915b19e37356aa948a0249b073612b2d6ea2b9fcfae9833615c08a2f523311`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:15:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:15:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 04:16:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:16:06 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:18:21 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:18:21 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:18:50 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 04:18:51 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06309528502813b1bf8496a0df75f32fe057460ad23ea27cdfdc2f9c4458baac`  
		Last Modified: Sat, 24 Jun 2017 20:39:27 GMT  
		Size: 2.9 MB (2860866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012d2b66380d1bf945b2bf39e4a0d5dc36d87bdddc4affdb9494614499d0cddf`  
		Last Modified: Sat, 24 Jun 2017 20:45:55 GMT  
		Size: 29.3 MB (29291656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8-slim`

```console
$ docker pull pypy@sha256:74dab02a91c8e29d1e04f2954802ac8080e25e8c02e5b7775a02996d8da8ebed
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62282811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3915b19e37356aa948a0249b073612b2d6ea2b9fcfae9833615c08a2f523311`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:15:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:15:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 04:16:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:16:06 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:18:21 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:18:21 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:18:50 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 04:18:51 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06309528502813b1bf8496a0df75f32fe057460ad23ea27cdfdc2f9c4458baac`  
		Last Modified: Sat, 24 Jun 2017 20:39:27 GMT  
		Size: 2.9 MB (2860866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012d2b66380d1bf945b2bf39e4a0d5dc36d87bdddc4affdb9494614499d0cddf`  
		Last Modified: Sat, 24 Jun 2017 20:45:55 GMT  
		Size: 29.3 MB (29291656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:74dab02a91c8e29d1e04f2954802ac8080e25e8c02e5b7775a02996d8da8ebed
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62282811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3915b19e37356aa948a0249b073612b2d6ea2b9fcfae9833615c08a2f523311`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:15:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:15:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 04:16:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:16:06 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:18:21 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:18:21 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:18:50 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 04:18:51 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06309528502813b1bf8496a0df75f32fe057460ad23ea27cdfdc2f9c4458baac`  
		Last Modified: Sat, 24 Jun 2017 20:39:27 GMT  
		Size: 2.9 MB (2860866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012d2b66380d1bf945b2bf39e4a0d5dc36d87bdddc4affdb9494614499d0cddf`  
		Last Modified: Sat, 24 Jun 2017 20:45:55 GMT  
		Size: 29.3 MB (29291656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim`

```console
$ docker pull pypy@sha256:74dab02a91c8e29d1e04f2954802ac8080e25e8c02e5b7775a02996d8da8ebed
```

-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62282811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3915b19e37356aa948a0249b073612b2d6ea2b9fcfae9833615c08a2f523311`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:15:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:15:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 04:16:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:16:06 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:18:21 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:18:21 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:18:50 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 04:18:51 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06309528502813b1bf8496a0df75f32fe057460ad23ea27cdfdc2f9c4458baac`  
		Last Modified: Sat, 24 Jun 2017 20:39:27 GMT  
		Size: 2.9 MB (2860866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012d2b66380d1bf945b2bf39e4a0d5dc36d87bdddc4affdb9494614499d0cddf`  
		Last Modified: Sat, 24 Jun 2017 20:45:55 GMT  
		Size: 29.3 MB (29291656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim`

```console
$ docker pull pypy@sha256:74dab02a91c8e29d1e04f2954802ac8080e25e8c02e5b7775a02996d8da8ebed
```

-	Platforms:
	-	linux; amd64

### `pypy:slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62282811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3915b19e37356aa948a0249b073612b2d6ea2b9fcfae9833615c08a2f523311`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:15:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:15:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 04:16:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:16:06 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:18:21 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:18:21 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:18:50 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 04:18:51 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06309528502813b1bf8496a0df75f32fe057460ad23ea27cdfdc2f9c4458baac`  
		Last Modified: Sat, 24 Jun 2017 20:39:27 GMT  
		Size: 2.9 MB (2860866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012d2b66380d1bf945b2bf39e4a0d5dc36d87bdddc4affdb9494614499d0cddf`  
		Last Modified: Sat, 24 Jun 2017 20:45:55 GMT  
		Size: 29.3 MB (29291656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8.0-onbuild`

```console
$ docker pull pypy@sha256:300c3fc2a2ecaff0f78d87a4992e6c1bac2421461967469033759b3b18174ccd
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8.0-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279042972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec8b0f097dcb06aec3a9d71a2f8ff71604a7487f7cc7d8ff44b80bdc02d29881`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:17:32 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:17:33 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:17:43 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:17:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:17:54 GMT
CMD ["pypy3"]
# Fri, 23 Jun 2017 04:19:18 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 04:19:19 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 04:19:20 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 23 Jun 2017 04:19:21 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 23 Jun 2017 04:19:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b4d009b77323700704ef21df6816fe4e8a9818a564323ae38700a0103dfae6`  
		Last Modified: Sat, 24 Jun 2017 20:43:24 GMT  
		Size: 25.0 MB (25008918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33d0d4d145776b326ff2aae2473d527807ccf95e6104c08d6a9c794614483f0`  
		Last Modified: Sat, 24 Jun 2017 20:43:18 GMT  
		Size: 4.2 MB (4207202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27da917f9486282f0bf409bc064e11f9c8d2c60fc25a4ad9abb033d18e045e1`  
		Last Modified: Sat, 24 Jun 2017 20:48:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8-onbuild`

```console
$ docker pull pypy@sha256:300c3fc2a2ecaff0f78d87a4992e6c1bac2421461967469033759b3b18174ccd
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279042972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec8b0f097dcb06aec3a9d71a2f8ff71604a7487f7cc7d8ff44b80bdc02d29881`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:17:32 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:17:33 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:17:43 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:17:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:17:54 GMT
CMD ["pypy3"]
# Fri, 23 Jun 2017 04:19:18 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 04:19:19 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 04:19:20 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 23 Jun 2017 04:19:21 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 23 Jun 2017 04:19:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b4d009b77323700704ef21df6816fe4e8a9818a564323ae38700a0103dfae6`  
		Last Modified: Sat, 24 Jun 2017 20:43:24 GMT  
		Size: 25.0 MB (25008918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33d0d4d145776b326ff2aae2473d527807ccf95e6104c08d6a9c794614483f0`  
		Last Modified: Sat, 24 Jun 2017 20:43:18 GMT  
		Size: 4.2 MB (4207202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27da917f9486282f0bf409bc064e11f9c8d2c60fc25a4ad9abb033d18e045e1`  
		Last Modified: Sat, 24 Jun 2017 20:48:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-onbuild`

```console
$ docker pull pypy@sha256:300c3fc2a2ecaff0f78d87a4992e6c1bac2421461967469033759b3b18174ccd
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279042972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec8b0f097dcb06aec3a9d71a2f8ff71604a7487f7cc7d8ff44b80bdc02d29881`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:17:32 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:17:33 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:17:43 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:17:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:17:54 GMT
CMD ["pypy3"]
# Fri, 23 Jun 2017 04:19:18 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 04:19:19 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 04:19:20 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 23 Jun 2017 04:19:21 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 23 Jun 2017 04:19:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b4d009b77323700704ef21df6816fe4e8a9818a564323ae38700a0103dfae6`  
		Last Modified: Sat, 24 Jun 2017 20:43:24 GMT  
		Size: 25.0 MB (25008918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33d0d4d145776b326ff2aae2473d527807ccf95e6104c08d6a9c794614483f0`  
		Last Modified: Sat, 24 Jun 2017 20:43:18 GMT  
		Size: 4.2 MB (4207202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27da917f9486282f0bf409bc064e11f9c8d2c60fc25a4ad9abb033d18e045e1`  
		Last Modified: Sat, 24 Jun 2017 20:48:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-onbuild`

```console
$ docker pull pypy@sha256:300c3fc2a2ecaff0f78d87a4992e6c1bac2421461967469033759b3b18174ccd
```

-	Platforms:
	-	linux; amd64

### `pypy:3-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279042972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec8b0f097dcb06aec3a9d71a2f8ff71604a7487f7cc7d8ff44b80bdc02d29881`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:17:32 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:17:33 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:17:43 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:17:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:17:54 GMT
CMD ["pypy3"]
# Fri, 23 Jun 2017 04:19:18 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 04:19:19 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 04:19:20 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 23 Jun 2017 04:19:21 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 23 Jun 2017 04:19:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b4d009b77323700704ef21df6816fe4e8a9818a564323ae38700a0103dfae6`  
		Last Modified: Sat, 24 Jun 2017 20:43:24 GMT  
		Size: 25.0 MB (25008918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33d0d4d145776b326ff2aae2473d527807ccf95e6104c08d6a9c794614483f0`  
		Last Modified: Sat, 24 Jun 2017 20:43:18 GMT  
		Size: 4.2 MB (4207202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27da917f9486282f0bf409bc064e11f9c8d2c60fc25a4ad9abb033d18e045e1`  
		Last Modified: Sat, 24 Jun 2017 20:48:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:onbuild`

```console
$ docker pull pypy@sha256:300c3fc2a2ecaff0f78d87a4992e6c1bac2421461967469033759b3b18174ccd
```

-	Platforms:
	-	linux; amd64

### `pypy:onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279042972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec8b0f097dcb06aec3a9d71a2f8ff71604a7487f7cc7d8ff44b80bdc02d29881`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:17:32 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Fri, 23 Jun 2017 04:17:33 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:17:43 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:17:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:17:54 GMT
CMD ["pypy3"]
# Fri, 23 Jun 2017 04:19:18 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 04:19:19 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 04:19:20 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 23 Jun 2017 04:19:21 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 23 Jun 2017 04:19:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b4d009b77323700704ef21df6816fe4e8a9818a564323ae38700a0103dfae6`  
		Last Modified: Sat, 24 Jun 2017 20:43:24 GMT  
		Size: 25.0 MB (25008918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33d0d4d145776b326ff2aae2473d527807ccf95e6104c08d6a9c794614483f0`  
		Last Modified: Sat, 24 Jun 2017 20:43:18 GMT  
		Size: 4.2 MB (4207202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27da917f9486282f0bf409bc064e11f9c8d2c60fc25a4ad9abb033d18e045e1`  
		Last Modified: Sat, 24 Jun 2017 20:48:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
