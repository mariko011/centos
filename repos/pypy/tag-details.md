<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `pypy`

-	[`pypy:2-5.7.1`](#pypy2-571)
-	[`pypy:2-5.7`](#pypy2-57)
-	[`pypy:2-5`](#pypy2-5)
-	[`pypy:2`](#pypy2)
-	[`pypy:2-5.7.1-slim`](#pypy2-571-slim)
-	[`pypy:2-5.7-slim`](#pypy2-57-slim)
-	[`pypy:2-5-slim`](#pypy2-5-slim)
-	[`pypy:2-slim`](#pypy2-slim)
-	[`pypy:2-5.7.1-onbuild`](#pypy2-571-onbuild)
-	[`pypy:2-5.7-onbuild`](#pypy2-57-onbuild)
-	[`pypy:2-5-onbuild`](#pypy2-5-onbuild)
-	[`pypy:2-onbuild`](#pypy2-onbuild)
-	[`pypy:3-5.7.1`](#pypy3-571)
-	[`pypy:3-5.7`](#pypy3-57)
-	[`pypy:3-5`](#pypy3-5)
-	[`pypy:3`](#pypy3)
-	[`pypy:latest`](#pypylatest)
-	[`pypy:3-5.7.1-slim`](#pypy3-571-slim)
-	[`pypy:3-5.7-slim`](#pypy3-57-slim)
-	[`pypy:3-5-slim`](#pypy3-5-slim)
-	[`pypy:3-slim`](#pypy3-slim)
-	[`pypy:slim`](#pypyslim)
-	[`pypy:3-5.7.1-onbuild`](#pypy3-571-onbuild)
-	[`pypy:3-5.7-onbuild`](#pypy3-57-onbuild)
-	[`pypy:3-5-onbuild`](#pypy3-5-onbuild)
-	[`pypy:3-onbuild`](#pypy3-onbuild)
-	[`pypy:onbuild`](#pypyonbuild)

## `pypy:2-5.7.1`

```console
$ docker pull pypy@sha256:21df39763c068540e9ec428af33288d5eef5a58f80f5fc5dd1a6c799359b2b68
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.7.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278319794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fed1902d23194691dc446c716fd0baaa882047e37d5e0c6135920580833d753`
-	Default Command: `["pypy"]`

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
# Thu, 08 Jun 2017 21:00:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:00:31 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:14:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:14:07 GMT
ENV PYPY_SHA256SUM=c4fa3da42156bed4a9d912433b618a141e0c5161d7cc8c328786736ea5d1c2da
# Fri, 09 Jun 2017 06:14:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:14:40 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 09 Jun 2017 06:15:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 09 Jun 2017 06:15:10 GMT
CMD ["pypy"]
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
	-	`sha256:35de80d7719862f1ee7eefe939455bc5188918b2e5b058fbad1f8ca25c9a5456`  
		Last Modified: Thu, 08 Jun 2017 21:52:54 GMT  
		Size: 2.9 MB (2897314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce75fb10c906e798e3a146a6365e0d36d55b459f68200f0c90f660459953446`  
		Last Modified: Fri, 09 Jun 2017 06:22:01 GMT  
		Size: 24.8 MB (24802433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ec6b308bd09952034e4f091a6c4f9c2472fdb5637faf3e24d09aa845421f5`  
		Last Modified: Fri, 09 Jun 2017 06:21:54 GMT  
		Size: 3.7 MB (3744082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.7`

```console
$ docker pull pypy@sha256:21df39763c068540e9ec428af33288d5eef5a58f80f5fc5dd1a6c799359b2b68
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278319794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fed1902d23194691dc446c716fd0baaa882047e37d5e0c6135920580833d753`
-	Default Command: `["pypy"]`

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
# Thu, 08 Jun 2017 21:00:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:00:31 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:14:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:14:07 GMT
ENV PYPY_SHA256SUM=c4fa3da42156bed4a9d912433b618a141e0c5161d7cc8c328786736ea5d1c2da
# Fri, 09 Jun 2017 06:14:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:14:40 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 09 Jun 2017 06:15:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 09 Jun 2017 06:15:10 GMT
CMD ["pypy"]
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
	-	`sha256:35de80d7719862f1ee7eefe939455bc5188918b2e5b058fbad1f8ca25c9a5456`  
		Last Modified: Thu, 08 Jun 2017 21:52:54 GMT  
		Size: 2.9 MB (2897314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce75fb10c906e798e3a146a6365e0d36d55b459f68200f0c90f660459953446`  
		Last Modified: Fri, 09 Jun 2017 06:22:01 GMT  
		Size: 24.8 MB (24802433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ec6b308bd09952034e4f091a6c4f9c2472fdb5637faf3e24d09aa845421f5`  
		Last Modified: Fri, 09 Jun 2017 06:21:54 GMT  
		Size: 3.7 MB (3744082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5`

```console
$ docker pull pypy@sha256:21df39763c068540e9ec428af33288d5eef5a58f80f5fc5dd1a6c799359b2b68
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278319794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fed1902d23194691dc446c716fd0baaa882047e37d5e0c6135920580833d753`
-	Default Command: `["pypy"]`

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
# Thu, 08 Jun 2017 21:00:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:00:31 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:14:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:14:07 GMT
ENV PYPY_SHA256SUM=c4fa3da42156bed4a9d912433b618a141e0c5161d7cc8c328786736ea5d1c2da
# Fri, 09 Jun 2017 06:14:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:14:40 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 09 Jun 2017 06:15:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 09 Jun 2017 06:15:10 GMT
CMD ["pypy"]
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
	-	`sha256:35de80d7719862f1ee7eefe939455bc5188918b2e5b058fbad1f8ca25c9a5456`  
		Last Modified: Thu, 08 Jun 2017 21:52:54 GMT  
		Size: 2.9 MB (2897314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce75fb10c906e798e3a146a6365e0d36d55b459f68200f0c90f660459953446`  
		Last Modified: Fri, 09 Jun 2017 06:22:01 GMT  
		Size: 24.8 MB (24802433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ec6b308bd09952034e4f091a6c4f9c2472fdb5637faf3e24d09aa845421f5`  
		Last Modified: Fri, 09 Jun 2017 06:21:54 GMT  
		Size: 3.7 MB (3744082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2`

```console
$ docker pull pypy@sha256:21df39763c068540e9ec428af33288d5eef5a58f80f5fc5dd1a6c799359b2b68
```

-	Platforms:
	-	linux; amd64

### `pypy:2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278319794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fed1902d23194691dc446c716fd0baaa882047e37d5e0c6135920580833d753`
-	Default Command: `["pypy"]`

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
# Thu, 08 Jun 2017 21:00:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:00:31 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:14:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:14:07 GMT
ENV PYPY_SHA256SUM=c4fa3da42156bed4a9d912433b618a141e0c5161d7cc8c328786736ea5d1c2da
# Fri, 09 Jun 2017 06:14:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:14:40 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 09 Jun 2017 06:15:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 09 Jun 2017 06:15:10 GMT
CMD ["pypy"]
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
	-	`sha256:35de80d7719862f1ee7eefe939455bc5188918b2e5b058fbad1f8ca25c9a5456`  
		Last Modified: Thu, 08 Jun 2017 21:52:54 GMT  
		Size: 2.9 MB (2897314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce75fb10c906e798e3a146a6365e0d36d55b459f68200f0c90f660459953446`  
		Last Modified: Fri, 09 Jun 2017 06:22:01 GMT  
		Size: 24.8 MB (24802433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ec6b308bd09952034e4f091a6c4f9c2472fdb5637faf3e24d09aa845421f5`  
		Last Modified: Fri, 09 Jun 2017 06:21:54 GMT  
		Size: 3.7 MB (3744082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.7.1-slim`

```console
$ docker pull pypy@sha256:75e5faa65ee7c7872af52b4f384f83770b9951bd63d7abbaa8620b8d84223e42
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.7.1-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61510398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6c0bbbe7ffa8c1081308838838ef6d51b50249cc15bc5b15e7e8b9bb9b9586`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:15:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Jun 2017 06:15:36 GMT
ENV LANG=C.UTF-8
# Fri, 09 Jun 2017 06:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:16:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:16:06 GMT
ENV PYPY_SHA256SUM=c4fa3da42156bed4a9d912433b618a141e0c5161d7cc8c328786736ea5d1c2da
# Fri, 09 Jun 2017 06:16:07 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:16:41 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:16:49 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6ddb2379b3f9bb65c3b3a2dae0ff04fdcb98cc277e1b231856b874b2d83b69`  
		Last Modified: Fri, 09 Jun 2017 06:24:50 GMT  
		Size: 2.9 MB (2858132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128bb4a783675158ea1d42fe98b5f62eccb19277010ea2a8df0c57b35d12f9b3`  
		Last Modified: Fri, 09 Jun 2017 06:25:00 GMT  
		Size: 28.6 MB (28553668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.7-slim`

```console
$ docker pull pypy@sha256:75e5faa65ee7c7872af52b4f384f83770b9951bd63d7abbaa8620b8d84223e42
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.7-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61510398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6c0bbbe7ffa8c1081308838838ef6d51b50249cc15bc5b15e7e8b9bb9b9586`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:15:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Jun 2017 06:15:36 GMT
ENV LANG=C.UTF-8
# Fri, 09 Jun 2017 06:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:16:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:16:06 GMT
ENV PYPY_SHA256SUM=c4fa3da42156bed4a9d912433b618a141e0c5161d7cc8c328786736ea5d1c2da
# Fri, 09 Jun 2017 06:16:07 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:16:41 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:16:49 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6ddb2379b3f9bb65c3b3a2dae0ff04fdcb98cc277e1b231856b874b2d83b69`  
		Last Modified: Fri, 09 Jun 2017 06:24:50 GMT  
		Size: 2.9 MB (2858132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128bb4a783675158ea1d42fe98b5f62eccb19277010ea2a8df0c57b35d12f9b3`  
		Last Modified: Fri, 09 Jun 2017 06:25:00 GMT  
		Size: 28.6 MB (28553668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:75e5faa65ee7c7872af52b4f384f83770b9951bd63d7abbaa8620b8d84223e42
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61510398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6c0bbbe7ffa8c1081308838838ef6d51b50249cc15bc5b15e7e8b9bb9b9586`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:15:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Jun 2017 06:15:36 GMT
ENV LANG=C.UTF-8
# Fri, 09 Jun 2017 06:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:16:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:16:06 GMT
ENV PYPY_SHA256SUM=c4fa3da42156bed4a9d912433b618a141e0c5161d7cc8c328786736ea5d1c2da
# Fri, 09 Jun 2017 06:16:07 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:16:41 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:16:49 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6ddb2379b3f9bb65c3b3a2dae0ff04fdcb98cc277e1b231856b874b2d83b69`  
		Last Modified: Fri, 09 Jun 2017 06:24:50 GMT  
		Size: 2.9 MB (2858132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128bb4a783675158ea1d42fe98b5f62eccb19277010ea2a8df0c57b35d12f9b3`  
		Last Modified: Fri, 09 Jun 2017 06:25:00 GMT  
		Size: 28.6 MB (28553668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim`

```console
$ docker pull pypy@sha256:75e5faa65ee7c7872af52b4f384f83770b9951bd63d7abbaa8620b8d84223e42
```

-	Platforms:
	-	linux; amd64

### `pypy:2-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61510398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6c0bbbe7ffa8c1081308838838ef6d51b50249cc15bc5b15e7e8b9bb9b9586`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:15:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Jun 2017 06:15:36 GMT
ENV LANG=C.UTF-8
# Fri, 09 Jun 2017 06:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:16:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:16:06 GMT
ENV PYPY_SHA256SUM=c4fa3da42156bed4a9d912433b618a141e0c5161d7cc8c328786736ea5d1c2da
# Fri, 09 Jun 2017 06:16:07 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:16:41 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:16:49 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6ddb2379b3f9bb65c3b3a2dae0ff04fdcb98cc277e1b231856b874b2d83b69`  
		Last Modified: Fri, 09 Jun 2017 06:24:50 GMT  
		Size: 2.9 MB (2858132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128bb4a783675158ea1d42fe98b5f62eccb19277010ea2a8df0c57b35d12f9b3`  
		Last Modified: Fri, 09 Jun 2017 06:25:00 GMT  
		Size: 28.6 MB (28553668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.7.1-onbuild`

```console
$ docker pull pypy@sha256:e4c97e13425bb4268a9610cc5a56e5395e8c0f020d133d992df94690bc40ac7f
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.7.1-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278319920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44fb5ff027b820fd1ef1d59e6027a86c229db4239c9ccf308218758e5f7428a4`
-	Default Command: `["pypy"]`

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
# Thu, 08 Jun 2017 21:00:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:00:31 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:14:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:14:07 GMT
ENV PYPY_SHA256SUM=c4fa3da42156bed4a9d912433b618a141e0c5161d7cc8c328786736ea5d1c2da
# Fri, 09 Jun 2017 06:14:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:14:40 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 09 Jun 2017 06:15:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 09 Jun 2017 06:15:10 GMT
CMD ["pypy"]
# Fri, 09 Jun 2017 06:17:15 GMT
RUN mkdir -p /usr/src/app
# Fri, 09 Jun 2017 06:17:17 GMT
WORKDIR /usr/src/app
# Fri, 09 Jun 2017 06:17:19 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 09 Jun 2017 06:17:20 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 09 Jun 2017 06:17:42 GMT
ONBUILD COPY . /usr/src/app
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
	-	`sha256:35de80d7719862f1ee7eefe939455bc5188918b2e5b058fbad1f8ca25c9a5456`  
		Last Modified: Thu, 08 Jun 2017 21:52:54 GMT  
		Size: 2.9 MB (2897314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce75fb10c906e798e3a146a6365e0d36d55b459f68200f0c90f660459953446`  
		Last Modified: Fri, 09 Jun 2017 06:22:01 GMT  
		Size: 24.8 MB (24802433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ec6b308bd09952034e4f091a6c4f9c2472fdb5637faf3e24d09aa845421f5`  
		Last Modified: Fri, 09 Jun 2017 06:21:54 GMT  
		Size: 3.7 MB (3744082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f8ddd548b1682670675540094d7f6a31a51f8b0ad7dfb16cc55c94b2db86fc`  
		Last Modified: Fri, 09 Jun 2017 06:27:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.7-onbuild`

```console
$ docker pull pypy@sha256:e4c97e13425bb4268a9610cc5a56e5395e8c0f020d133d992df94690bc40ac7f
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.7-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278319920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44fb5ff027b820fd1ef1d59e6027a86c229db4239c9ccf308218758e5f7428a4`
-	Default Command: `["pypy"]`

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
# Thu, 08 Jun 2017 21:00:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:00:31 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:14:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:14:07 GMT
ENV PYPY_SHA256SUM=c4fa3da42156bed4a9d912433b618a141e0c5161d7cc8c328786736ea5d1c2da
# Fri, 09 Jun 2017 06:14:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:14:40 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 09 Jun 2017 06:15:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 09 Jun 2017 06:15:10 GMT
CMD ["pypy"]
# Fri, 09 Jun 2017 06:17:15 GMT
RUN mkdir -p /usr/src/app
# Fri, 09 Jun 2017 06:17:17 GMT
WORKDIR /usr/src/app
# Fri, 09 Jun 2017 06:17:19 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 09 Jun 2017 06:17:20 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 09 Jun 2017 06:17:42 GMT
ONBUILD COPY . /usr/src/app
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
	-	`sha256:35de80d7719862f1ee7eefe939455bc5188918b2e5b058fbad1f8ca25c9a5456`  
		Last Modified: Thu, 08 Jun 2017 21:52:54 GMT  
		Size: 2.9 MB (2897314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce75fb10c906e798e3a146a6365e0d36d55b459f68200f0c90f660459953446`  
		Last Modified: Fri, 09 Jun 2017 06:22:01 GMT  
		Size: 24.8 MB (24802433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ec6b308bd09952034e4f091a6c4f9c2472fdb5637faf3e24d09aa845421f5`  
		Last Modified: Fri, 09 Jun 2017 06:21:54 GMT  
		Size: 3.7 MB (3744082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f8ddd548b1682670675540094d7f6a31a51f8b0ad7dfb16cc55c94b2db86fc`  
		Last Modified: Fri, 09 Jun 2017 06:27:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-onbuild`

```console
$ docker pull pypy@sha256:e4c97e13425bb4268a9610cc5a56e5395e8c0f020d133d992df94690bc40ac7f
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278319920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44fb5ff027b820fd1ef1d59e6027a86c229db4239c9ccf308218758e5f7428a4`
-	Default Command: `["pypy"]`

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
# Thu, 08 Jun 2017 21:00:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:00:31 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:14:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:14:07 GMT
ENV PYPY_SHA256SUM=c4fa3da42156bed4a9d912433b618a141e0c5161d7cc8c328786736ea5d1c2da
# Fri, 09 Jun 2017 06:14:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:14:40 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 09 Jun 2017 06:15:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 09 Jun 2017 06:15:10 GMT
CMD ["pypy"]
# Fri, 09 Jun 2017 06:17:15 GMT
RUN mkdir -p /usr/src/app
# Fri, 09 Jun 2017 06:17:17 GMT
WORKDIR /usr/src/app
# Fri, 09 Jun 2017 06:17:19 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 09 Jun 2017 06:17:20 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 09 Jun 2017 06:17:42 GMT
ONBUILD COPY . /usr/src/app
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
	-	`sha256:35de80d7719862f1ee7eefe939455bc5188918b2e5b058fbad1f8ca25c9a5456`  
		Last Modified: Thu, 08 Jun 2017 21:52:54 GMT  
		Size: 2.9 MB (2897314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce75fb10c906e798e3a146a6365e0d36d55b459f68200f0c90f660459953446`  
		Last Modified: Fri, 09 Jun 2017 06:22:01 GMT  
		Size: 24.8 MB (24802433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ec6b308bd09952034e4f091a6c4f9c2472fdb5637faf3e24d09aa845421f5`  
		Last Modified: Fri, 09 Jun 2017 06:21:54 GMT  
		Size: 3.7 MB (3744082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f8ddd548b1682670675540094d7f6a31a51f8b0ad7dfb16cc55c94b2db86fc`  
		Last Modified: Fri, 09 Jun 2017 06:27:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-onbuild`

```console
$ docker pull pypy@sha256:e4c97e13425bb4268a9610cc5a56e5395e8c0f020d133d992df94690bc40ac7f
```

-	Platforms:
	-	linux; amd64

### `pypy:2-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278319920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44fb5ff027b820fd1ef1d59e6027a86c229db4239c9ccf308218758e5f7428a4`
-	Default Command: `["pypy"]`

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
# Thu, 08 Jun 2017 21:00:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:00:31 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:14:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:14:07 GMT
ENV PYPY_SHA256SUM=c4fa3da42156bed4a9d912433b618a141e0c5161d7cc8c328786736ea5d1c2da
# Fri, 09 Jun 2017 06:14:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:14:40 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 09 Jun 2017 06:15:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 09 Jun 2017 06:15:10 GMT
CMD ["pypy"]
# Fri, 09 Jun 2017 06:17:15 GMT
RUN mkdir -p /usr/src/app
# Fri, 09 Jun 2017 06:17:17 GMT
WORKDIR /usr/src/app
# Fri, 09 Jun 2017 06:17:19 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 09 Jun 2017 06:17:20 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 09 Jun 2017 06:17:42 GMT
ONBUILD COPY . /usr/src/app
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
	-	`sha256:35de80d7719862f1ee7eefe939455bc5188918b2e5b058fbad1f8ca25c9a5456`  
		Last Modified: Thu, 08 Jun 2017 21:52:54 GMT  
		Size: 2.9 MB (2897314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce75fb10c906e798e3a146a6365e0d36d55b459f68200f0c90f660459953446`  
		Last Modified: Fri, 09 Jun 2017 06:22:01 GMT  
		Size: 24.8 MB (24802433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ec6b308bd09952034e4f091a6c4f9c2472fdb5637faf3e24d09aa845421f5`  
		Last Modified: Fri, 09 Jun 2017 06:21:54 GMT  
		Size: 3.7 MB (3744082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f8ddd548b1682670675540094d7f6a31a51f8b0ad7dfb16cc55c94b2db86fc`  
		Last Modified: Fri, 09 Jun 2017 06:27:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.7.1`

```console
$ docker pull pypy@sha256:3ecfeb92187049ccacff39c0d26a4560dd753f24ac5f4f5cb66fda1835f0540f
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.7.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279442746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69de2e7d54c0a1c623d331eca86e5768413a000af5a5c54d8f874d6a172d19fa`
-	Default Command: `["pypy3"]`

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
# Thu, 08 Jun 2017 21:00:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:00:31 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:14:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:18:07 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Fri, 09 Jun 2017 06:18:09 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:18:20 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 09 Jun 2017 06:18:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 09 Jun 2017 06:18:54 GMT
CMD ["pypy3"]
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
	-	`sha256:35de80d7719862f1ee7eefe939455bc5188918b2e5b058fbad1f8ca25c9a5456`  
		Last Modified: Thu, 08 Jun 2017 21:52:54 GMT  
		Size: 2.9 MB (2897314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062e7e4777f93ef5eda5e215e7b2a20bce6e5b9ecfd802f5da356c2f793c476`  
		Last Modified: Fri, 09 Jun 2017 06:30:56 GMT  
		Size: 25.5 MB (25511523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14269d7847dce40bf43424fbe074f69948f177e1a0a6057f25c819bab4a463d`  
		Last Modified: Fri, 09 Jun 2017 06:30:48 GMT  
		Size: 4.2 MB (4157944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.7`

```console
$ docker pull pypy@sha256:3ecfeb92187049ccacff39c0d26a4560dd753f24ac5f4f5cb66fda1835f0540f
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279442746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69de2e7d54c0a1c623d331eca86e5768413a000af5a5c54d8f874d6a172d19fa`
-	Default Command: `["pypy3"]`

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
# Thu, 08 Jun 2017 21:00:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:00:31 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:14:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:18:07 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Fri, 09 Jun 2017 06:18:09 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:18:20 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 09 Jun 2017 06:18:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 09 Jun 2017 06:18:54 GMT
CMD ["pypy3"]
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
	-	`sha256:35de80d7719862f1ee7eefe939455bc5188918b2e5b058fbad1f8ca25c9a5456`  
		Last Modified: Thu, 08 Jun 2017 21:52:54 GMT  
		Size: 2.9 MB (2897314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062e7e4777f93ef5eda5e215e7b2a20bce6e5b9ecfd802f5da356c2f793c476`  
		Last Modified: Fri, 09 Jun 2017 06:30:56 GMT  
		Size: 25.5 MB (25511523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14269d7847dce40bf43424fbe074f69948f177e1a0a6057f25c819bab4a463d`  
		Last Modified: Fri, 09 Jun 2017 06:30:48 GMT  
		Size: 4.2 MB (4157944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5`

```console
$ docker pull pypy@sha256:3ecfeb92187049ccacff39c0d26a4560dd753f24ac5f4f5cb66fda1835f0540f
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279442746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69de2e7d54c0a1c623d331eca86e5768413a000af5a5c54d8f874d6a172d19fa`
-	Default Command: `["pypy3"]`

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
# Thu, 08 Jun 2017 21:00:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:00:31 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:14:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:18:07 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Fri, 09 Jun 2017 06:18:09 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:18:20 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 09 Jun 2017 06:18:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 09 Jun 2017 06:18:54 GMT
CMD ["pypy3"]
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
	-	`sha256:35de80d7719862f1ee7eefe939455bc5188918b2e5b058fbad1f8ca25c9a5456`  
		Last Modified: Thu, 08 Jun 2017 21:52:54 GMT  
		Size: 2.9 MB (2897314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062e7e4777f93ef5eda5e215e7b2a20bce6e5b9ecfd802f5da356c2f793c476`  
		Last Modified: Fri, 09 Jun 2017 06:30:56 GMT  
		Size: 25.5 MB (25511523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14269d7847dce40bf43424fbe074f69948f177e1a0a6057f25c819bab4a463d`  
		Last Modified: Fri, 09 Jun 2017 06:30:48 GMT  
		Size: 4.2 MB (4157944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3`

```console
$ docker pull pypy@sha256:3ecfeb92187049ccacff39c0d26a4560dd753f24ac5f4f5cb66fda1835f0540f
```

-	Platforms:
	-	linux; amd64

### `pypy:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279442746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69de2e7d54c0a1c623d331eca86e5768413a000af5a5c54d8f874d6a172d19fa`
-	Default Command: `["pypy3"]`

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
# Thu, 08 Jun 2017 21:00:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:00:31 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:14:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:18:07 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Fri, 09 Jun 2017 06:18:09 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:18:20 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 09 Jun 2017 06:18:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 09 Jun 2017 06:18:54 GMT
CMD ["pypy3"]
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
	-	`sha256:35de80d7719862f1ee7eefe939455bc5188918b2e5b058fbad1f8ca25c9a5456`  
		Last Modified: Thu, 08 Jun 2017 21:52:54 GMT  
		Size: 2.9 MB (2897314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062e7e4777f93ef5eda5e215e7b2a20bce6e5b9ecfd802f5da356c2f793c476`  
		Last Modified: Fri, 09 Jun 2017 06:30:56 GMT  
		Size: 25.5 MB (25511523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14269d7847dce40bf43424fbe074f69948f177e1a0a6057f25c819bab4a463d`  
		Last Modified: Fri, 09 Jun 2017 06:30:48 GMT  
		Size: 4.2 MB (4157944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:latest`

```console
$ docker pull pypy@sha256:0aa2e7c0743f79b5edbca1138b84ef71ab19a7f9662866b30a645478a63a65c1
```

-	Platforms:
	-	linux; amd64

### `pypy:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279507379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a81ce09ac0977a9a583b7349795157a8a533301268b4cf9a0e94b3a935b1493e`
-	Default Command: `["pypy3"]`

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
# Thu, 11 May 2017 06:27:51 GMT
ENV PYPY_VERSION=5.7.1
# Thu, 11 May 2017 06:28:58 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Thu, 11 May 2017 06:28:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 11 May 2017 06:29:19 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Thu, 11 May 2017 06:29:20 GMT
CMD ["pypy3"]
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
	-	`sha256:06597d3cf0b860e2585536ddd88899d9276b9ac63d9abc6c041a2bd9bee35990`  
		Last Modified: Sat, 13 May 2017 18:00:04 GMT  
		Size: 29.7 MB (29692736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.7.1-slim`

```console
$ docker pull pypy@sha256:d65f96e137c420c107169a1a19a32b8cb13c7fe3986f73d26be85434f1aa5c2b
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.7.1-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62694562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2bcdc493d0f8036bd4ad1c8f3128b5d424d4cd820e6ea3ee0c443b1be4a0e5`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:15:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Jun 2017 06:15:36 GMT
ENV LANG=C.UTF-8
# Fri, 09 Jun 2017 06:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:16:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:19:20 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Fri, 09 Jun 2017 06:19:21 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:19:59 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:20:14 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6ddb2379b3f9bb65c3b3a2dae0ff04fdcb98cc277e1b231856b874b2d83b69`  
		Last Modified: Fri, 09 Jun 2017 06:24:50 GMT  
		Size: 2.9 MB (2858132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c80d83bcb970cae2dbeb348270589a9ad8aed3fb02b085515c1093977be7308`  
		Last Modified: Fri, 09 Jun 2017 06:34:17 GMT  
		Size: 29.7 MB (29737832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.7-slim`

```console
$ docker pull pypy@sha256:d65f96e137c420c107169a1a19a32b8cb13c7fe3986f73d26be85434f1aa5c2b
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.7-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62694562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2bcdc493d0f8036bd4ad1c8f3128b5d424d4cd820e6ea3ee0c443b1be4a0e5`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:15:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Jun 2017 06:15:36 GMT
ENV LANG=C.UTF-8
# Fri, 09 Jun 2017 06:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:16:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:19:20 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Fri, 09 Jun 2017 06:19:21 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:19:59 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:20:14 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6ddb2379b3f9bb65c3b3a2dae0ff04fdcb98cc277e1b231856b874b2d83b69`  
		Last Modified: Fri, 09 Jun 2017 06:24:50 GMT  
		Size: 2.9 MB (2858132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c80d83bcb970cae2dbeb348270589a9ad8aed3fb02b085515c1093977be7308`  
		Last Modified: Fri, 09 Jun 2017 06:34:17 GMT  
		Size: 29.7 MB (29737832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:d65f96e137c420c107169a1a19a32b8cb13c7fe3986f73d26be85434f1aa5c2b
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62694562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2bcdc493d0f8036bd4ad1c8f3128b5d424d4cd820e6ea3ee0c443b1be4a0e5`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:15:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Jun 2017 06:15:36 GMT
ENV LANG=C.UTF-8
# Fri, 09 Jun 2017 06:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:16:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:19:20 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Fri, 09 Jun 2017 06:19:21 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:19:59 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:20:14 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6ddb2379b3f9bb65c3b3a2dae0ff04fdcb98cc277e1b231856b874b2d83b69`  
		Last Modified: Fri, 09 Jun 2017 06:24:50 GMT  
		Size: 2.9 MB (2858132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c80d83bcb970cae2dbeb348270589a9ad8aed3fb02b085515c1093977be7308`  
		Last Modified: Fri, 09 Jun 2017 06:34:17 GMT  
		Size: 29.7 MB (29737832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim`

```console
$ docker pull pypy@sha256:d65f96e137c420c107169a1a19a32b8cb13c7fe3986f73d26be85434f1aa5c2b
```

-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62694562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2bcdc493d0f8036bd4ad1c8f3128b5d424d4cd820e6ea3ee0c443b1be4a0e5`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:15:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Jun 2017 06:15:36 GMT
ENV LANG=C.UTF-8
# Fri, 09 Jun 2017 06:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:16:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:19:20 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Fri, 09 Jun 2017 06:19:21 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:19:59 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:20:14 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6ddb2379b3f9bb65c3b3a2dae0ff04fdcb98cc277e1b231856b874b2d83b69`  
		Last Modified: Fri, 09 Jun 2017 06:24:50 GMT  
		Size: 2.9 MB (2858132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c80d83bcb970cae2dbeb348270589a9ad8aed3fb02b085515c1093977be7308`  
		Last Modified: Fri, 09 Jun 2017 06:34:17 GMT  
		Size: 29.7 MB (29737832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim`

```console
$ docker pull pypy@sha256:d65f96e137c420c107169a1a19a32b8cb13c7fe3986f73d26be85434f1aa5c2b
```

-	Platforms:
	-	linux; amd64

### `pypy:slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62694562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2bcdc493d0f8036bd4ad1c8f3128b5d424d4cd820e6ea3ee0c443b1be4a0e5`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:15:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Jun 2017 06:15:36 GMT
ENV LANG=C.UTF-8
# Fri, 09 Jun 2017 06:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:16:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:19:20 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Fri, 09 Jun 2017 06:19:21 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:19:59 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 09 Jun 2017 06:20:14 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6ddb2379b3f9bb65c3b3a2dae0ff04fdcb98cc277e1b231856b874b2d83b69`  
		Last Modified: Fri, 09 Jun 2017 06:24:50 GMT  
		Size: 2.9 MB (2858132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c80d83bcb970cae2dbeb348270589a9ad8aed3fb02b085515c1093977be7308`  
		Last Modified: Fri, 09 Jun 2017 06:34:17 GMT  
		Size: 29.7 MB (29737832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.7.1-onbuild`

```console
$ docker pull pypy@sha256:076dea04182df89441d6cec6d17ab8ae360e2410917cfcf67291b5ee5bcd7a75
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.7.1-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279442872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a38fddb37875fbbe4d3ed047540a1a9dce80d6d044f1c35f5ab7fbedbc85973`
-	Default Command: `["pypy3"]`

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
# Thu, 08 Jun 2017 21:00:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:00:31 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:14:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:18:07 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Fri, 09 Jun 2017 06:18:09 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:18:20 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 09 Jun 2017 06:18:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 09 Jun 2017 06:18:54 GMT
CMD ["pypy3"]
# Fri, 09 Jun 2017 06:20:59 GMT
RUN mkdir -p /usr/src/app
# Fri, 09 Jun 2017 06:21:00 GMT
WORKDIR /usr/src/app
# Fri, 09 Jun 2017 06:21:01 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 09 Jun 2017 06:21:23 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 09 Jun 2017 06:21:24 GMT
ONBUILD COPY . /usr/src/app
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
	-	`sha256:35de80d7719862f1ee7eefe939455bc5188918b2e5b058fbad1f8ca25c9a5456`  
		Last Modified: Thu, 08 Jun 2017 21:52:54 GMT  
		Size: 2.9 MB (2897314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062e7e4777f93ef5eda5e215e7b2a20bce6e5b9ecfd802f5da356c2f793c476`  
		Last Modified: Fri, 09 Jun 2017 06:30:56 GMT  
		Size: 25.5 MB (25511523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14269d7847dce40bf43424fbe074f69948f177e1a0a6057f25c819bab4a463d`  
		Last Modified: Fri, 09 Jun 2017 06:30:48 GMT  
		Size: 4.2 MB (4157944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a615d1b09cf71a529b9fab3f165212ae5090b378a43b71aff0bf3eb43aa70f`  
		Last Modified: Fri, 09 Jun 2017 06:37:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.7-onbuild`

```console
$ docker pull pypy@sha256:076dea04182df89441d6cec6d17ab8ae360e2410917cfcf67291b5ee5bcd7a75
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.7-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279442872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a38fddb37875fbbe4d3ed047540a1a9dce80d6d044f1c35f5ab7fbedbc85973`
-	Default Command: `["pypy3"]`

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
# Thu, 08 Jun 2017 21:00:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:00:31 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Jun 2017 06:14:05 GMT
ENV PYPY_VERSION=5.7.1
# Fri, 09 Jun 2017 06:18:07 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Fri, 09 Jun 2017 06:18:09 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 09 Jun 2017 06:18:20 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 09 Jun 2017 06:18:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 09 Jun 2017 06:18:54 GMT
CMD ["pypy3"]
# Fri, 09 Jun 2017 06:20:59 GMT
RUN mkdir -p /usr/src/app
# Fri, 09 Jun 2017 06:21:00 GMT
WORKDIR /usr/src/app
# Fri, 09 Jun 2017 06:21:01 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 09 Jun 2017 06:21:23 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 09 Jun 2017 06:21:24 GMT
ONBUILD COPY . /usr/src/app
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
	-	`sha256:35de80d7719862f1ee7eefe939455bc5188918b2e5b058fbad1f8ca25c9a5456`  
		Last Modified: Thu, 08 Jun 2017 21:52:54 GMT  
		Size: 2.9 MB (2897314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062e7e4777f93ef5eda5e215e7b2a20bce6e5b9ecfd802f5da356c2f793c476`  
		Last Modified: Fri, 09 Jun 2017 06:30:56 GMT  
		Size: 25.5 MB (25511523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14269d7847dce40bf43424fbe074f69948f177e1a0a6057f25c819bab4a463d`  
		Last Modified: Fri, 09 Jun 2017 06:30:48 GMT  
		Size: 4.2 MB (4157944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a615d1b09cf71a529b9fab3f165212ae5090b378a43b71aff0bf3eb43aa70f`  
		Last Modified: Fri, 09 Jun 2017 06:37:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-onbuild`

```console
$ docker pull pypy@sha256:f1512b6b6521d1a03d7991f922c8fefbd07773a1400052371965367e4173ee01
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279507503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fd88a91cb7b97a002a1122b50f4281dfe59ab0a347bac5463a20e48ba94c45b`
-	Default Command: `["pypy3"]`

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
# Thu, 11 May 2017 06:27:51 GMT
ENV PYPY_VERSION=5.7.1
# Thu, 11 May 2017 06:28:58 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Thu, 11 May 2017 06:28:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 11 May 2017 06:29:19 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Thu, 11 May 2017 06:29:20 GMT
CMD ["pypy3"]
# Thu, 11 May 2017 06:29:42 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 06:29:42 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 06:29:43 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 11 May 2017 06:29:44 GMT
ONBUILD RUN pip install -r requirements.txt
# Thu, 11 May 2017 06:29:45 GMT
ONBUILD COPY . /usr/src/app
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
	-	`sha256:06597d3cf0b860e2585536ddd88899d9276b9ac63d9abc6c041a2bd9bee35990`  
		Last Modified: Sat, 13 May 2017 18:00:04 GMT  
		Size: 29.7 MB (29692736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f734510ab52a742a13ee2998f77d178edb9ca82fcfc49b36f3322c2a68cf0da9`  
		Last Modified: Sat, 13 May 2017 18:02:02 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-onbuild`

```console
$ docker pull pypy@sha256:f1512b6b6521d1a03d7991f922c8fefbd07773a1400052371965367e4173ee01
```

-	Platforms:
	-	linux; amd64

### `pypy:3-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279507503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fd88a91cb7b97a002a1122b50f4281dfe59ab0a347bac5463a20e48ba94c45b`
-	Default Command: `["pypy3"]`

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
# Thu, 11 May 2017 06:27:51 GMT
ENV PYPY_VERSION=5.7.1
# Thu, 11 May 2017 06:28:58 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Thu, 11 May 2017 06:28:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 11 May 2017 06:29:19 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Thu, 11 May 2017 06:29:20 GMT
CMD ["pypy3"]
# Thu, 11 May 2017 06:29:42 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 06:29:42 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 06:29:43 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 11 May 2017 06:29:44 GMT
ONBUILD RUN pip install -r requirements.txt
# Thu, 11 May 2017 06:29:45 GMT
ONBUILD COPY . /usr/src/app
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
	-	`sha256:06597d3cf0b860e2585536ddd88899d9276b9ac63d9abc6c041a2bd9bee35990`  
		Last Modified: Sat, 13 May 2017 18:00:04 GMT  
		Size: 29.7 MB (29692736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f734510ab52a742a13ee2998f77d178edb9ca82fcfc49b36f3322c2a68cf0da9`  
		Last Modified: Sat, 13 May 2017 18:02:02 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:onbuild`

```console
$ docker pull pypy@sha256:f1512b6b6521d1a03d7991f922c8fefbd07773a1400052371965367e4173ee01
```

-	Platforms:
	-	linux; amd64

### `pypy:onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279507503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fd88a91cb7b97a002a1122b50f4281dfe59ab0a347bac5463a20e48ba94c45b`
-	Default Command: `["pypy3"]`

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
# Thu, 11 May 2017 06:27:51 GMT
ENV PYPY_VERSION=5.7.1
# Thu, 11 May 2017 06:28:58 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Thu, 11 May 2017 06:28:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 11 May 2017 06:29:19 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Thu, 11 May 2017 06:29:20 GMT
CMD ["pypy3"]
# Thu, 11 May 2017 06:29:42 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 06:29:42 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 06:29:43 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 11 May 2017 06:29:44 GMT
ONBUILD RUN pip install -r requirements.txt
# Thu, 11 May 2017 06:29:45 GMT
ONBUILD COPY . /usr/src/app
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
	-	`sha256:06597d3cf0b860e2585536ddd88899d9276b9ac63d9abc6c041a2bd9bee35990`  
		Last Modified: Sat, 13 May 2017 18:00:04 GMT  
		Size: 29.7 MB (29692736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f734510ab52a742a13ee2998f77d178edb9ca82fcfc49b36f3322c2a68cf0da9`  
		Last Modified: Sat, 13 May 2017 18:02:02 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
