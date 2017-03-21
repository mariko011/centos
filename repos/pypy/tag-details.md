<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `pypy`

-	[`pypy:2-5.7.0`](#pypy2-570)
-	[`pypy:2-5.7`](#pypy2-57)
-	[`pypy:2-5`](#pypy2-5)
-	[`pypy:2`](#pypy2)
-	[`pypy:2-5.7.0-slim`](#pypy2-570-slim)
-	[`pypy:2-5.7-slim`](#pypy2-57-slim)
-	[`pypy:2-5-slim`](#pypy2-5-slim)
-	[`pypy:2-slim`](#pypy2-slim)
-	[`pypy:2-5.7.0-onbuild`](#pypy2-570-onbuild)
-	[`pypy:2-5.7-onbuild`](#pypy2-57-onbuild)
-	[`pypy:2-5-onbuild`](#pypy2-5-onbuild)
-	[`pypy:2-onbuild`](#pypy2-onbuild)
-	[`pypy:3-5.7.0`](#pypy3-570)
-	[`pypy:3-5.7`](#pypy3-57)
-	[`pypy:3-5`](#pypy3-5)
-	[`pypy:3`](#pypy3)
-	[`pypy:latest`](#pypylatest)
-	[`pypy:3-5.7.0-slim`](#pypy3-570-slim)
-	[`pypy:3-5.7-slim`](#pypy3-57-slim)
-	[`pypy:3-5-slim`](#pypy3-5-slim)
-	[`pypy:3-slim`](#pypy3-slim)
-	[`pypy:slim`](#pypyslim)
-	[`pypy:3-5.7.0-onbuild`](#pypy3-570-onbuild)
-	[`pypy:3-5.7-onbuild`](#pypy3-57-onbuild)
-	[`pypy:3-5-onbuild`](#pypy3-5-onbuild)
-	[`pypy:3-onbuild`](#pypy3-onbuild)
-	[`pypy:onbuild`](#pypyonbuild)

## `pypy:2-5.7.0`

```console
$ docker pull pypy@sha256:e0b4ef83eb668f9e64a09910db584ba5a3e577c983722df2f98d0cf3cf22cd5d
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.7.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273460430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e742df3af061e409ea25dd7c44dc2b0416d70b799ba03996adb8a781e5299738`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:39:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_VERSION=5.7.0
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Tue, 21 Mar 2017 17:09:10 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 17:09:29 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 21 Mar 2017 17:09:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b1aaa33436bc8ec5cd081e2105a6c2ff96b8f2d901048ef5a945d35b662744`  
		Last Modified: Wed, 01 Mar 2017 15:54:13 GMT  
		Size: 2.9 MB (2889259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6c22ec3ebb6ad961dcd9e513b86dab9a9d9b590752441a67f11b251b0d2604`  
		Last Modified: Tue, 21 Mar 2017 17:11:10 GMT  
		Size: 28.3 MB (28317673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.7`

```console
$ docker pull pypy@sha256:e0b4ef83eb668f9e64a09910db584ba5a3e577c983722df2f98d0cf3cf22cd5d
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273460430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e742df3af061e409ea25dd7c44dc2b0416d70b799ba03996adb8a781e5299738`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:39:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_VERSION=5.7.0
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Tue, 21 Mar 2017 17:09:10 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 17:09:29 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 21 Mar 2017 17:09:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b1aaa33436bc8ec5cd081e2105a6c2ff96b8f2d901048ef5a945d35b662744`  
		Last Modified: Wed, 01 Mar 2017 15:54:13 GMT  
		Size: 2.9 MB (2889259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6c22ec3ebb6ad961dcd9e513b86dab9a9d9b590752441a67f11b251b0d2604`  
		Last Modified: Tue, 21 Mar 2017 17:11:10 GMT  
		Size: 28.3 MB (28317673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5`

```console
$ docker pull pypy@sha256:e0b4ef83eb668f9e64a09910db584ba5a3e577c983722df2f98d0cf3cf22cd5d
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273460430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e742df3af061e409ea25dd7c44dc2b0416d70b799ba03996adb8a781e5299738`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:39:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_VERSION=5.7.0
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Tue, 21 Mar 2017 17:09:10 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 17:09:29 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 21 Mar 2017 17:09:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b1aaa33436bc8ec5cd081e2105a6c2ff96b8f2d901048ef5a945d35b662744`  
		Last Modified: Wed, 01 Mar 2017 15:54:13 GMT  
		Size: 2.9 MB (2889259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6c22ec3ebb6ad961dcd9e513b86dab9a9d9b590752441a67f11b251b0d2604`  
		Last Modified: Tue, 21 Mar 2017 17:11:10 GMT  
		Size: 28.3 MB (28317673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2`

```console
$ docker pull pypy@sha256:e0b4ef83eb668f9e64a09910db584ba5a3e577c983722df2f98d0cf3cf22cd5d
```

-	Platforms:
	-	linux; amd64

### `pypy:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273460430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e742df3af061e409ea25dd7c44dc2b0416d70b799ba03996adb8a781e5299738`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:39:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_VERSION=5.7.0
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Tue, 21 Mar 2017 17:09:10 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 17:09:29 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 21 Mar 2017 17:09:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b1aaa33436bc8ec5cd081e2105a6c2ff96b8f2d901048ef5a945d35b662744`  
		Last Modified: Wed, 01 Mar 2017 15:54:13 GMT  
		Size: 2.9 MB (2889259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6c22ec3ebb6ad961dcd9e513b86dab9a9d9b590752441a67f11b251b0d2604`  
		Last Modified: Tue, 21 Mar 2017 17:11:10 GMT  
		Size: 28.3 MB (28317673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.7.0-slim`

```console
$ docker pull pypy@sha256:c2078fe939020c8e36c552c1cd53dfc06709fe335107afdf0f6f1f39427fbba9
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.7.0-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83400995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c0829749f6cef3ab859059caa33dfde236b82977fe5656101d58c8daefb80c`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 18:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 18:34:05 GMT
ENV PYPY_VERSION=5.7.0
# Tue, 21 Mar 2017 18:34:06 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Tue, 21 Mar 2017 18:34:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 18:34:36 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 21 Mar 2017 18:34:37 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca97e48e76c47880b3e6e92b5f4408c4feaa30fc7237cb393e7865ebd245db5c`  
		Last Modified: Tue, 21 Mar 2017 18:38:34 GMT  
		Size: 3.6 MB (3573490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b7fb974dad09923d602b58fd41f59aa253e659341514361df9142306525996`  
		Last Modified: Tue, 21 Mar 2017 18:38:44 GMT  
		Size: 28.4 MB (28389029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.7-slim`

```console
$ docker pull pypy@sha256:c2078fe939020c8e36c552c1cd53dfc06709fe335107afdf0f6f1f39427fbba9
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.7-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83400995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c0829749f6cef3ab859059caa33dfde236b82977fe5656101d58c8daefb80c`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 18:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 18:34:05 GMT
ENV PYPY_VERSION=5.7.0
# Tue, 21 Mar 2017 18:34:06 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Tue, 21 Mar 2017 18:34:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 18:34:36 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 21 Mar 2017 18:34:37 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca97e48e76c47880b3e6e92b5f4408c4feaa30fc7237cb393e7865ebd245db5c`  
		Last Modified: Tue, 21 Mar 2017 18:38:34 GMT  
		Size: 3.6 MB (3573490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b7fb974dad09923d602b58fd41f59aa253e659341514361df9142306525996`  
		Last Modified: Tue, 21 Mar 2017 18:38:44 GMT  
		Size: 28.4 MB (28389029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:c2078fe939020c8e36c552c1cd53dfc06709fe335107afdf0f6f1f39427fbba9
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83400995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c0829749f6cef3ab859059caa33dfde236b82977fe5656101d58c8daefb80c`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 18:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 18:34:05 GMT
ENV PYPY_VERSION=5.7.0
# Tue, 21 Mar 2017 18:34:06 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Tue, 21 Mar 2017 18:34:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 18:34:36 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 21 Mar 2017 18:34:37 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca97e48e76c47880b3e6e92b5f4408c4feaa30fc7237cb393e7865ebd245db5c`  
		Last Modified: Tue, 21 Mar 2017 18:38:34 GMT  
		Size: 3.6 MB (3573490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b7fb974dad09923d602b58fd41f59aa253e659341514361df9142306525996`  
		Last Modified: Tue, 21 Mar 2017 18:38:44 GMT  
		Size: 28.4 MB (28389029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim`

```console
$ docker pull pypy@sha256:c2078fe939020c8e36c552c1cd53dfc06709fe335107afdf0f6f1f39427fbba9
```

-	Platforms:
	-	linux; amd64

### `pypy:2-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83400995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c0829749f6cef3ab859059caa33dfde236b82977fe5656101d58c8daefb80c`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 18:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 18:34:05 GMT
ENV PYPY_VERSION=5.7.0
# Tue, 21 Mar 2017 18:34:06 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Tue, 21 Mar 2017 18:34:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 18:34:36 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 21 Mar 2017 18:34:37 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca97e48e76c47880b3e6e92b5f4408c4feaa30fc7237cb393e7865ebd245db5c`  
		Last Modified: Tue, 21 Mar 2017 18:38:34 GMT  
		Size: 3.6 MB (3573490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b7fb974dad09923d602b58fd41f59aa253e659341514361df9142306525996`  
		Last Modified: Tue, 21 Mar 2017 18:38:44 GMT  
		Size: 28.4 MB (28389029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.7.0-onbuild`

```console
$ docker pull pypy@sha256:e87a2bc7bcdc9f36578ec63b0ccbfbf3c06bb3bc721173fa1a0ab9ac66c41cff
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.7.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273460557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65a1a76ff73325ac94fe834205a8a49a2369ba307305d6b9b0cc9114b2e71ea`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:39:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_VERSION=5.7.0
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Tue, 21 Mar 2017 17:09:10 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 17:09:29 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 21 Mar 2017 17:09:30 GMT
CMD ["pypy"]
# Tue, 21 Mar 2017 17:10:32 GMT
RUN mkdir -p /usr/src/app
# Tue, 21 Mar 2017 17:10:33 GMT
WORKDIR /usr/src/app
# Tue, 21 Mar 2017 17:10:33 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 21 Mar 2017 17:10:34 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 21 Mar 2017 17:10:35 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b1aaa33436bc8ec5cd081e2105a6c2ff96b8f2d901048ef5a945d35b662744`  
		Last Modified: Wed, 01 Mar 2017 15:54:13 GMT  
		Size: 2.9 MB (2889259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6c22ec3ebb6ad961dcd9e513b86dab9a9d9b590752441a67f11b251b0d2604`  
		Last Modified: Tue, 21 Mar 2017 17:11:10 GMT  
		Size: 28.3 MB (28317673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bc0d2858858b14a5d707b5538fe84d594e761ca7d6a59dc7375eef75c11b1d`  
		Last Modified: Tue, 21 Mar 2017 17:14:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.7-onbuild`

```console
$ docker pull pypy@sha256:e87a2bc7bcdc9f36578ec63b0ccbfbf3c06bb3bc721173fa1a0ab9ac66c41cff
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273460557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65a1a76ff73325ac94fe834205a8a49a2369ba307305d6b9b0cc9114b2e71ea`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:39:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_VERSION=5.7.0
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Tue, 21 Mar 2017 17:09:10 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 17:09:29 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 21 Mar 2017 17:09:30 GMT
CMD ["pypy"]
# Tue, 21 Mar 2017 17:10:32 GMT
RUN mkdir -p /usr/src/app
# Tue, 21 Mar 2017 17:10:33 GMT
WORKDIR /usr/src/app
# Tue, 21 Mar 2017 17:10:33 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 21 Mar 2017 17:10:34 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 21 Mar 2017 17:10:35 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b1aaa33436bc8ec5cd081e2105a6c2ff96b8f2d901048ef5a945d35b662744`  
		Last Modified: Wed, 01 Mar 2017 15:54:13 GMT  
		Size: 2.9 MB (2889259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6c22ec3ebb6ad961dcd9e513b86dab9a9d9b590752441a67f11b251b0d2604`  
		Last Modified: Tue, 21 Mar 2017 17:11:10 GMT  
		Size: 28.3 MB (28317673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bc0d2858858b14a5d707b5538fe84d594e761ca7d6a59dc7375eef75c11b1d`  
		Last Modified: Tue, 21 Mar 2017 17:14:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-onbuild`

```console
$ docker pull pypy@sha256:e87a2bc7bcdc9f36578ec63b0ccbfbf3c06bb3bc721173fa1a0ab9ac66c41cff
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273460557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65a1a76ff73325ac94fe834205a8a49a2369ba307305d6b9b0cc9114b2e71ea`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:39:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_VERSION=5.7.0
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Tue, 21 Mar 2017 17:09:10 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 17:09:29 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 21 Mar 2017 17:09:30 GMT
CMD ["pypy"]
# Tue, 21 Mar 2017 17:10:32 GMT
RUN mkdir -p /usr/src/app
# Tue, 21 Mar 2017 17:10:33 GMT
WORKDIR /usr/src/app
# Tue, 21 Mar 2017 17:10:33 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 21 Mar 2017 17:10:34 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 21 Mar 2017 17:10:35 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b1aaa33436bc8ec5cd081e2105a6c2ff96b8f2d901048ef5a945d35b662744`  
		Last Modified: Wed, 01 Mar 2017 15:54:13 GMT  
		Size: 2.9 MB (2889259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6c22ec3ebb6ad961dcd9e513b86dab9a9d9b590752441a67f11b251b0d2604`  
		Last Modified: Tue, 21 Mar 2017 17:11:10 GMT  
		Size: 28.3 MB (28317673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bc0d2858858b14a5d707b5538fe84d594e761ca7d6a59dc7375eef75c11b1d`  
		Last Modified: Tue, 21 Mar 2017 17:14:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-onbuild`

```console
$ docker pull pypy@sha256:e87a2bc7bcdc9f36578ec63b0ccbfbf3c06bb3bc721173fa1a0ab9ac66c41cff
```

-	Platforms:
	-	linux; amd64

### `pypy:2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273460557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65a1a76ff73325ac94fe834205a8a49a2369ba307305d6b9b0cc9114b2e71ea`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:39:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_VERSION=5.7.0
# Tue, 21 Mar 2017 17:09:09 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Tue, 21 Mar 2017 17:09:10 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 17:09:29 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 21 Mar 2017 17:09:30 GMT
CMD ["pypy"]
# Tue, 21 Mar 2017 17:10:32 GMT
RUN mkdir -p /usr/src/app
# Tue, 21 Mar 2017 17:10:33 GMT
WORKDIR /usr/src/app
# Tue, 21 Mar 2017 17:10:33 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 21 Mar 2017 17:10:34 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 21 Mar 2017 17:10:35 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b1aaa33436bc8ec5cd081e2105a6c2ff96b8f2d901048ef5a945d35b662744`  
		Last Modified: Wed, 01 Mar 2017 15:54:13 GMT  
		Size: 2.9 MB (2889259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6c22ec3ebb6ad961dcd9e513b86dab9a9d9b590752441a67f11b251b0d2604`  
		Last Modified: Tue, 21 Mar 2017 17:11:10 GMT  
		Size: 28.3 MB (28317673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bc0d2858858b14a5d707b5538fe84d594e761ca7d6a59dc7375eef75c11b1d`  
		Last Modified: Tue, 21 Mar 2017 17:14:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.7.0`

**does not exist** (yet?)

## `pypy:3-5.7`

**does not exist** (yet?)

## `pypy:3-5`

```console
$ docker pull pypy@sha256:416d9d689d3fc4454c246000ca30f0d800c0f8168527e5f6509782b9b1c2e589
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270831240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:926868925c3ecf0fd37ac1c3a0e7233d0d0462dc2c658e032d3a99b76305556d`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:39:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:10:57 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 28 Feb 2017 22:10:58 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 28 Feb 2017 22:10:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 28 Feb 2017 22:11:21 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 28 Feb 2017 22:11:29 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b1aaa33436bc8ec5cd081e2105a6c2ff96b8f2d901048ef5a945d35b662744`  
		Last Modified: Wed, 01 Mar 2017 15:54:13 GMT  
		Size: 2.9 MB (2889259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9589e1ddd024b63db5bd51c562697e4f3f800a726c3d72d88f0854fb7ad0424d`  
		Last Modified: Thu, 02 Mar 2017 03:25:56 GMT  
		Size: 25.7 MB (25688483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3`

```console
$ docker pull pypy@sha256:416d9d689d3fc4454c246000ca30f0d800c0f8168527e5f6509782b9b1c2e589
```

-	Platforms:
	-	linux; amd64

### `pypy:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270831240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:926868925c3ecf0fd37ac1c3a0e7233d0d0462dc2c658e032d3a99b76305556d`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:39:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:10:57 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 28 Feb 2017 22:10:58 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 28 Feb 2017 22:10:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 28 Feb 2017 22:11:21 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 28 Feb 2017 22:11:29 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b1aaa33436bc8ec5cd081e2105a6c2ff96b8f2d901048ef5a945d35b662744`  
		Last Modified: Wed, 01 Mar 2017 15:54:13 GMT  
		Size: 2.9 MB (2889259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9589e1ddd024b63db5bd51c562697e4f3f800a726c3d72d88f0854fb7ad0424d`  
		Last Modified: Thu, 02 Mar 2017 03:25:56 GMT  
		Size: 25.7 MB (25688483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:latest`

```console
$ docker pull pypy@sha256:416d9d689d3fc4454c246000ca30f0d800c0f8168527e5f6509782b9b1c2e589
```

-	Platforms:
	-	linux; amd64

### `pypy:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270831240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:926868925c3ecf0fd37ac1c3a0e7233d0d0462dc2c658e032d3a99b76305556d`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:39:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:10:57 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 28 Feb 2017 22:10:58 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 28 Feb 2017 22:10:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 28 Feb 2017 22:11:21 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 28 Feb 2017 22:11:29 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b1aaa33436bc8ec5cd081e2105a6c2ff96b8f2d901048ef5a945d35b662744`  
		Last Modified: Wed, 01 Mar 2017 15:54:13 GMT  
		Size: 2.9 MB (2889259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9589e1ddd024b63db5bd51c562697e4f3f800a726c3d72d88f0854fb7ad0424d`  
		Last Modified: Thu, 02 Mar 2017 03:25:56 GMT  
		Size: 25.7 MB (25688483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.7.0-slim`

**does not exist** (yet?)

## `pypy:3-5.7-slim`

**does not exist** (yet?)

## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:881e5c8fd79054c9b83fb63138320c942122f67fa774004d079f20e42440faa4
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80624707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab84500ed01974a4df4b7a3bfdd3835a53f49c1c123831a020f01f23ffba5c38`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 20:40:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:40:14 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:40:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:12:06 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 28 Feb 2017 22:12:07 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 28 Feb 2017 22:12:07 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 28 Feb 2017 22:12:42 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 28 Feb 2017 22:12:43 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a840d965af14a6181764f02cf547adbf9ad024401c803d34fa07f26fbb6e6f`  
		Last Modified: Thu, 02 Mar 2017 03:24:22 GMT  
		Size: 3.5 MB (3502769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a35fc61508f9441975d00c2d04850bf72c66a9067133afe8f066a81e29f0a2`  
		Last Modified: Thu, 02 Mar 2017 03:29:48 GMT  
		Size: 25.8 MB (25758564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim`

```console
$ docker pull pypy@sha256:881e5c8fd79054c9b83fb63138320c942122f67fa774004d079f20e42440faa4
```

-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80624707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab84500ed01974a4df4b7a3bfdd3835a53f49c1c123831a020f01f23ffba5c38`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 20:40:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:40:14 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:40:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:12:06 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 28 Feb 2017 22:12:07 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 28 Feb 2017 22:12:07 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 28 Feb 2017 22:12:42 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 28 Feb 2017 22:12:43 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a840d965af14a6181764f02cf547adbf9ad024401c803d34fa07f26fbb6e6f`  
		Last Modified: Thu, 02 Mar 2017 03:24:22 GMT  
		Size: 3.5 MB (3502769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a35fc61508f9441975d00c2d04850bf72c66a9067133afe8f066a81e29f0a2`  
		Last Modified: Thu, 02 Mar 2017 03:29:48 GMT  
		Size: 25.8 MB (25758564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim`

```console
$ docker pull pypy@sha256:881e5c8fd79054c9b83fb63138320c942122f67fa774004d079f20e42440faa4
```

-	Platforms:
	-	linux; amd64

### `pypy:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80624707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab84500ed01974a4df4b7a3bfdd3835a53f49c1c123831a020f01f23ffba5c38`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 20:40:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:40:14 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:40:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:12:06 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 28 Feb 2017 22:12:07 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 28 Feb 2017 22:12:07 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 28 Feb 2017 22:12:42 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 28 Feb 2017 22:12:43 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a840d965af14a6181764f02cf547adbf9ad024401c803d34fa07f26fbb6e6f`  
		Last Modified: Thu, 02 Mar 2017 03:24:22 GMT  
		Size: 3.5 MB (3502769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a35fc61508f9441975d00c2d04850bf72c66a9067133afe8f066a81e29f0a2`  
		Last Modified: Thu, 02 Mar 2017 03:29:48 GMT  
		Size: 25.8 MB (25758564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.7.0-onbuild`

**does not exist** (yet?)

## `pypy:3-5.7-onbuild`

**does not exist** (yet?)

## `pypy:3-5-onbuild`

```console
$ docker pull pypy@sha256:df9d893f4464451c25e9d1e49218811f6b729641c95a73bc60749c4d49d79965
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270831368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20fc15bbe37a40654e00a33e7fc48f24136d9e3d943621172de5f789f35d5a87`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:39:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:10:57 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 28 Feb 2017 22:10:58 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 28 Feb 2017 22:10:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 28 Feb 2017 22:11:21 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 28 Feb 2017 22:11:29 GMT
CMD ["pypy3"]
# Tue, 28 Feb 2017 22:11:31 GMT
RUN mkdir -p /usr/src/app
# Tue, 28 Feb 2017 22:11:31 GMT
WORKDIR /usr/src/app
# Tue, 28 Feb 2017 22:11:32 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 28 Feb 2017 22:11:48 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 28 Feb 2017 22:11:49 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b1aaa33436bc8ec5cd081e2105a6c2ff96b8f2d901048ef5a945d35b662744`  
		Last Modified: Wed, 01 Mar 2017 15:54:13 GMT  
		Size: 2.9 MB (2889259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9589e1ddd024b63db5bd51c562697e4f3f800a726c3d72d88f0854fb7ad0424d`  
		Last Modified: Thu, 02 Mar 2017 03:25:56 GMT  
		Size: 25.7 MB (25688483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbdbcbaeb6933a125392ee207694e0b305858c05787e0b3cad37dafae56456e`  
		Last Modified: Thu, 02 Mar 2017 03:27:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-onbuild`

```console
$ docker pull pypy@sha256:df9d893f4464451c25e9d1e49218811f6b729641c95a73bc60749c4d49d79965
```

-	Platforms:
	-	linux; amd64

### `pypy:3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270831368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20fc15bbe37a40654e00a33e7fc48f24136d9e3d943621172de5f789f35d5a87`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:39:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:10:57 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 28 Feb 2017 22:10:58 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 28 Feb 2017 22:10:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 28 Feb 2017 22:11:21 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 28 Feb 2017 22:11:29 GMT
CMD ["pypy3"]
# Tue, 28 Feb 2017 22:11:31 GMT
RUN mkdir -p /usr/src/app
# Tue, 28 Feb 2017 22:11:31 GMT
WORKDIR /usr/src/app
# Tue, 28 Feb 2017 22:11:32 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 28 Feb 2017 22:11:48 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 28 Feb 2017 22:11:49 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b1aaa33436bc8ec5cd081e2105a6c2ff96b8f2d901048ef5a945d35b662744`  
		Last Modified: Wed, 01 Mar 2017 15:54:13 GMT  
		Size: 2.9 MB (2889259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9589e1ddd024b63db5bd51c562697e4f3f800a726c3d72d88f0854fb7ad0424d`  
		Last Modified: Thu, 02 Mar 2017 03:25:56 GMT  
		Size: 25.7 MB (25688483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbdbcbaeb6933a125392ee207694e0b305858c05787e0b3cad37dafae56456e`  
		Last Modified: Thu, 02 Mar 2017 03:27:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:onbuild`

```console
$ docker pull pypy@sha256:df9d893f4464451c25e9d1e49218811f6b729641c95a73bc60749c4d49d79965
```

-	Platforms:
	-	linux; amd64

### `pypy:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270831368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20fc15bbe37a40654e00a33e7fc48f24136d9e3d943621172de5f789f35d5a87`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 20:39:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:10:57 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 28 Feb 2017 22:10:58 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 28 Feb 2017 22:10:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 28 Feb 2017 22:11:21 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 28 Feb 2017 22:11:29 GMT
CMD ["pypy3"]
# Tue, 28 Feb 2017 22:11:31 GMT
RUN mkdir -p /usr/src/app
# Tue, 28 Feb 2017 22:11:31 GMT
WORKDIR /usr/src/app
# Tue, 28 Feb 2017 22:11:32 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 28 Feb 2017 22:11:48 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 28 Feb 2017 22:11:49 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b1aaa33436bc8ec5cd081e2105a6c2ff96b8f2d901048ef5a945d35b662744`  
		Last Modified: Wed, 01 Mar 2017 15:54:13 GMT  
		Size: 2.9 MB (2889259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9589e1ddd024b63db5bd51c562697e4f3f800a726c3d72d88f0854fb7ad0424d`  
		Last Modified: Thu, 02 Mar 2017 03:25:56 GMT  
		Size: 25.7 MB (25688483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbdbcbaeb6933a125392ee207694e0b305858c05787e0b3cad37dafae56456e`  
		Last Modified: Thu, 02 Mar 2017 03:27:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
