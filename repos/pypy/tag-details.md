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

**does not exist** (yet?)

## `pypy:2-5.7`

```console
$ docker pull pypy@sha256:fd506d3345084fd722443372db286b2a971ce7d9018cfb794dd3c4a73ffd05cc
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273758158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba759bfa783b411beee0773cd2efc35154e6e13593362302223a32759088932`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:07 GMT
ENV PYPY_VERSION=5.7.0
# Wed, 22 Mar 2017 22:43:08 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Wed, 22 Mar 2017 22:43:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:43:27 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Wed, 22 Mar 2017 22:43:27 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef12251768ae1f095933286a2a71730ea83644ec0b4c967413370b889a6819d`  
		Last Modified: Fri, 24 Mar 2017 00:13:13 GMT  
		Size: 28.3 MB (28317661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5`

```console
$ docker pull pypy@sha256:fd506d3345084fd722443372db286b2a971ce7d9018cfb794dd3c4a73ffd05cc
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273758158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba759bfa783b411beee0773cd2efc35154e6e13593362302223a32759088932`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:07 GMT
ENV PYPY_VERSION=5.7.0
# Wed, 22 Mar 2017 22:43:08 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Wed, 22 Mar 2017 22:43:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:43:27 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Wed, 22 Mar 2017 22:43:27 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef12251768ae1f095933286a2a71730ea83644ec0b4c967413370b889a6819d`  
		Last Modified: Fri, 24 Mar 2017 00:13:13 GMT  
		Size: 28.3 MB (28317661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2`

```console
$ docker pull pypy@sha256:fd506d3345084fd722443372db286b2a971ce7d9018cfb794dd3c4a73ffd05cc
```

-	Platforms:
	-	linux; amd64

### `pypy:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273758158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba759bfa783b411beee0773cd2efc35154e6e13593362302223a32759088932`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:07 GMT
ENV PYPY_VERSION=5.7.0
# Wed, 22 Mar 2017 22:43:08 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Wed, 22 Mar 2017 22:43:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:43:27 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Wed, 22 Mar 2017 22:43:27 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef12251768ae1f095933286a2a71730ea83644ec0b4c967413370b889a6819d`  
		Last Modified: Fri, 24 Mar 2017 00:13:13 GMT  
		Size: 28.3 MB (28317661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.7.1-slim`

**does not exist** (yet?)

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

## `pypy:2-5.7.1-onbuild`

**does not exist** (yet?)

## `pypy:2-5.7-onbuild`

```console
$ docker pull pypy@sha256:a4c32607696acbc4ee8ced444d836f690373685e7dfb75b8047d2db987538736
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273758284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0928209a32ae44ec68695562d1891f115d6ce68584e2871870dbe8f6f5a6b01e`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:07 GMT
ENV PYPY_VERSION=5.7.0
# Wed, 22 Mar 2017 22:43:08 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Wed, 22 Mar 2017 22:43:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:43:27 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Wed, 22 Mar 2017 22:43:27 GMT
CMD ["pypy"]
# Wed, 22 Mar 2017 22:43:28 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:43:29 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:43:29 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:43:29 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 22 Mar 2017 22:43:30 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef12251768ae1f095933286a2a71730ea83644ec0b4c967413370b889a6819d`  
		Last Modified: Fri, 24 Mar 2017 00:13:13 GMT  
		Size: 28.3 MB (28317661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5fc7a3791bc7229549c4a8aa5980046ff1fef158c5aa8f60ec4ad17bf88138`  
		Last Modified: Fri, 24 Mar 2017 00:14:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-onbuild`

```console
$ docker pull pypy@sha256:a4c32607696acbc4ee8ced444d836f690373685e7dfb75b8047d2db987538736
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273758284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0928209a32ae44ec68695562d1891f115d6ce68584e2871870dbe8f6f5a6b01e`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:07 GMT
ENV PYPY_VERSION=5.7.0
# Wed, 22 Mar 2017 22:43:08 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Wed, 22 Mar 2017 22:43:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:43:27 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Wed, 22 Mar 2017 22:43:27 GMT
CMD ["pypy"]
# Wed, 22 Mar 2017 22:43:28 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:43:29 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:43:29 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:43:29 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 22 Mar 2017 22:43:30 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef12251768ae1f095933286a2a71730ea83644ec0b4c967413370b889a6819d`  
		Last Modified: Fri, 24 Mar 2017 00:13:13 GMT  
		Size: 28.3 MB (28317661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5fc7a3791bc7229549c4a8aa5980046ff1fef158c5aa8f60ec4ad17bf88138`  
		Last Modified: Fri, 24 Mar 2017 00:14:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-onbuild`

```console
$ docker pull pypy@sha256:a4c32607696acbc4ee8ced444d836f690373685e7dfb75b8047d2db987538736
```

-	Platforms:
	-	linux; amd64

### `pypy:2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273758284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0928209a32ae44ec68695562d1891f115d6ce68584e2871870dbe8f6f5a6b01e`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:07 GMT
ENV PYPY_VERSION=5.7.0
# Wed, 22 Mar 2017 22:43:08 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Wed, 22 Mar 2017 22:43:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:43:27 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Wed, 22 Mar 2017 22:43:27 GMT
CMD ["pypy"]
# Wed, 22 Mar 2017 22:43:28 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:43:29 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:43:29 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:43:29 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 22 Mar 2017 22:43:30 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef12251768ae1f095933286a2a71730ea83644ec0b4c967413370b889a6819d`  
		Last Modified: Fri, 24 Mar 2017 00:13:13 GMT  
		Size: 28.3 MB (28317661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5fc7a3791bc7229549c4a8aa5980046ff1fef158c5aa8f60ec4ad17bf88138`  
		Last Modified: Fri, 24 Mar 2017 00:14:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.7.1`

**does not exist** (yet?)

## `pypy:3-5.7`

```console
$ docker pull pypy@sha256:bf0bf5c2b96b25bc8b88390d3291702f25222994025e1187f88014aaa33880d0
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274868667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022bf5faac23ec543608ad9329ebcc09a44710d8999930dd1cdf27662704d293`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:07 GMT
ENV PYPY_VERSION=5.7.0
# Wed, 22 Mar 2017 22:43:30 GMT
ENV PYPY_SHA256SUM=921894884a647220a712ecdaad516d9c22fbadf3b4bb3a5db8f3635c60eabc7b
# Wed, 22 Mar 2017 22:43:31 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:43:53 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Wed, 22 Mar 2017 22:43:54 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf205f0dacc84d5ddf65ff8c84f075bac25d90c48cfe021993b41cc28efbd53`  
		Last Modified: Fri, 24 Mar 2017 00:17:28 GMT  
		Size: 29.4 MB (29428170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5`

```console
$ docker pull pypy@sha256:bf0bf5c2b96b25bc8b88390d3291702f25222994025e1187f88014aaa33880d0
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274868667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022bf5faac23ec543608ad9329ebcc09a44710d8999930dd1cdf27662704d293`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:07 GMT
ENV PYPY_VERSION=5.7.0
# Wed, 22 Mar 2017 22:43:30 GMT
ENV PYPY_SHA256SUM=921894884a647220a712ecdaad516d9c22fbadf3b4bb3a5db8f3635c60eabc7b
# Wed, 22 Mar 2017 22:43:31 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:43:53 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Wed, 22 Mar 2017 22:43:54 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf205f0dacc84d5ddf65ff8c84f075bac25d90c48cfe021993b41cc28efbd53`  
		Last Modified: Fri, 24 Mar 2017 00:17:28 GMT  
		Size: 29.4 MB (29428170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3`

```console
$ docker pull pypy@sha256:bf0bf5c2b96b25bc8b88390d3291702f25222994025e1187f88014aaa33880d0
```

-	Platforms:
	-	linux; amd64

### `pypy:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274868667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022bf5faac23ec543608ad9329ebcc09a44710d8999930dd1cdf27662704d293`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:07 GMT
ENV PYPY_VERSION=5.7.0
# Wed, 22 Mar 2017 22:43:30 GMT
ENV PYPY_SHA256SUM=921894884a647220a712ecdaad516d9c22fbadf3b4bb3a5db8f3635c60eabc7b
# Wed, 22 Mar 2017 22:43:31 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:43:53 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Wed, 22 Mar 2017 22:43:54 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf205f0dacc84d5ddf65ff8c84f075bac25d90c48cfe021993b41cc28efbd53`  
		Last Modified: Fri, 24 Mar 2017 00:17:28 GMT  
		Size: 29.4 MB (29428170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:latest`

```console
$ docker pull pypy@sha256:bf0bf5c2b96b25bc8b88390d3291702f25222994025e1187f88014aaa33880d0
```

-	Platforms:
	-	linux; amd64

### `pypy:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274868667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022bf5faac23ec543608ad9329ebcc09a44710d8999930dd1cdf27662704d293`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:07 GMT
ENV PYPY_VERSION=5.7.0
# Wed, 22 Mar 2017 22:43:30 GMT
ENV PYPY_SHA256SUM=921894884a647220a712ecdaad516d9c22fbadf3b4bb3a5db8f3635c60eabc7b
# Wed, 22 Mar 2017 22:43:31 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:43:53 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Wed, 22 Mar 2017 22:43:54 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf205f0dacc84d5ddf65ff8c84f075bac25d90c48cfe021993b41cc28efbd53`  
		Last Modified: Fri, 24 Mar 2017 00:17:28 GMT  
		Size: 29.4 MB (29428170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.7.1-slim`

**does not exist** (yet?)

## `pypy:3-5.7-slim`

```console
$ docker pull pypy@sha256:a30ca9e4a6452e41b0d86b21ceb56842053d98bf5a6a6c3c1bf86352960d9b29
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.7-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84513255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1592cd3d590820beb931c661645408a4a6dbc7ecdced2089057560d6cd7306d`
-	Default Command: `["pypy3"]`

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
# Tue, 21 Mar 2017 18:35:24 GMT
ENV PYPY_SHA256SUM=921894884a647220a712ecdaad516d9c22fbadf3b4bb3a5db8f3635c60eabc7b
# Tue, 21 Mar 2017 18:35:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 18:35:58 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 21 Mar 2017 18:36:12 GMT
CMD ["pypy3"]
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
	-	`sha256:9aeed6df66a58faaaca57f50ce4b18c1b97680001f0ab5edbe860479f220d789`  
		Last Modified: Tue, 21 Mar 2017 18:45:20 GMT  
		Size: 29.5 MB (29501289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:a30ca9e4a6452e41b0d86b21ceb56842053d98bf5a6a6c3c1bf86352960d9b29
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84513255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1592cd3d590820beb931c661645408a4a6dbc7ecdced2089057560d6cd7306d`
-	Default Command: `["pypy3"]`

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
# Tue, 21 Mar 2017 18:35:24 GMT
ENV PYPY_SHA256SUM=921894884a647220a712ecdaad516d9c22fbadf3b4bb3a5db8f3635c60eabc7b
# Tue, 21 Mar 2017 18:35:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 18:35:58 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 21 Mar 2017 18:36:12 GMT
CMD ["pypy3"]
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
	-	`sha256:9aeed6df66a58faaaca57f50ce4b18c1b97680001f0ab5edbe860479f220d789`  
		Last Modified: Tue, 21 Mar 2017 18:45:20 GMT  
		Size: 29.5 MB (29501289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim`

```console
$ docker pull pypy@sha256:a30ca9e4a6452e41b0d86b21ceb56842053d98bf5a6a6c3c1bf86352960d9b29
```

-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84513255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1592cd3d590820beb931c661645408a4a6dbc7ecdced2089057560d6cd7306d`
-	Default Command: `["pypy3"]`

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
# Tue, 21 Mar 2017 18:35:24 GMT
ENV PYPY_SHA256SUM=921894884a647220a712ecdaad516d9c22fbadf3b4bb3a5db8f3635c60eabc7b
# Tue, 21 Mar 2017 18:35:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 18:35:58 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 21 Mar 2017 18:36:12 GMT
CMD ["pypy3"]
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
	-	`sha256:9aeed6df66a58faaaca57f50ce4b18c1b97680001f0ab5edbe860479f220d789`  
		Last Modified: Tue, 21 Mar 2017 18:45:20 GMT  
		Size: 29.5 MB (29501289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim`

```console
$ docker pull pypy@sha256:a30ca9e4a6452e41b0d86b21ceb56842053d98bf5a6a6c3c1bf86352960d9b29
```

-	Platforms:
	-	linux; amd64

### `pypy:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84513255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1592cd3d590820beb931c661645408a4a6dbc7ecdced2089057560d6cd7306d`
-	Default Command: `["pypy3"]`

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
# Tue, 21 Mar 2017 18:35:24 GMT
ENV PYPY_SHA256SUM=921894884a647220a712ecdaad516d9c22fbadf3b4bb3a5db8f3635c60eabc7b
# Tue, 21 Mar 2017 18:35:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 18:35:58 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 21 Mar 2017 18:36:12 GMT
CMD ["pypy3"]
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
	-	`sha256:9aeed6df66a58faaaca57f50ce4b18c1b97680001f0ab5edbe860479f220d789`  
		Last Modified: Tue, 21 Mar 2017 18:45:20 GMT  
		Size: 29.5 MB (29501289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.7.1-onbuild`

**does not exist** (yet?)

## `pypy:3-5.7-onbuild`

```console
$ docker pull pypy@sha256:fca48815d054d19bfb187f0604559dcbc4035b4820b80797744531face760648
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274868794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28978f95c0e4263a38c2aab227f1a8c30763bdbeb65263b58a50feba92591f8b`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:07 GMT
ENV PYPY_VERSION=5.7.0
# Wed, 22 Mar 2017 22:43:30 GMT
ENV PYPY_SHA256SUM=921894884a647220a712ecdaad516d9c22fbadf3b4bb3a5db8f3635c60eabc7b
# Wed, 22 Mar 2017 22:43:31 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:43:53 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Wed, 22 Mar 2017 22:43:54 GMT
CMD ["pypy3"]
# Wed, 22 Mar 2017 22:43:55 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:43:55 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:43:56 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:43:56 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 22 Mar 2017 22:43:57 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf205f0dacc84d5ddf65ff8c84f075bac25d90c48cfe021993b41cc28efbd53`  
		Last Modified: Fri, 24 Mar 2017 00:17:28 GMT  
		Size: 29.4 MB (29428170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311a7ce4097cc71f1c93bd3ec26380c85a950b7e4155b3cf3f2067ea9af500aa`  
		Last Modified: Fri, 24 Mar 2017 00:19:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-onbuild`

```console
$ docker pull pypy@sha256:fca48815d054d19bfb187f0604559dcbc4035b4820b80797744531face760648
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274868794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28978f95c0e4263a38c2aab227f1a8c30763bdbeb65263b58a50feba92591f8b`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:07 GMT
ENV PYPY_VERSION=5.7.0
# Wed, 22 Mar 2017 22:43:30 GMT
ENV PYPY_SHA256SUM=921894884a647220a712ecdaad516d9c22fbadf3b4bb3a5db8f3635c60eabc7b
# Wed, 22 Mar 2017 22:43:31 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:43:53 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Wed, 22 Mar 2017 22:43:54 GMT
CMD ["pypy3"]
# Wed, 22 Mar 2017 22:43:55 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:43:55 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:43:56 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:43:56 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 22 Mar 2017 22:43:57 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf205f0dacc84d5ddf65ff8c84f075bac25d90c48cfe021993b41cc28efbd53`  
		Last Modified: Fri, 24 Mar 2017 00:17:28 GMT  
		Size: 29.4 MB (29428170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311a7ce4097cc71f1c93bd3ec26380c85a950b7e4155b3cf3f2067ea9af500aa`  
		Last Modified: Fri, 24 Mar 2017 00:19:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-onbuild`

```console
$ docker pull pypy@sha256:fca48815d054d19bfb187f0604559dcbc4035b4820b80797744531face760648
```

-	Platforms:
	-	linux; amd64

### `pypy:3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274868794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28978f95c0e4263a38c2aab227f1a8c30763bdbeb65263b58a50feba92591f8b`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:07 GMT
ENV PYPY_VERSION=5.7.0
# Wed, 22 Mar 2017 22:43:30 GMT
ENV PYPY_SHA256SUM=921894884a647220a712ecdaad516d9c22fbadf3b4bb3a5db8f3635c60eabc7b
# Wed, 22 Mar 2017 22:43:31 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:43:53 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Wed, 22 Mar 2017 22:43:54 GMT
CMD ["pypy3"]
# Wed, 22 Mar 2017 22:43:55 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:43:55 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:43:56 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:43:56 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 22 Mar 2017 22:43:57 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf205f0dacc84d5ddf65ff8c84f075bac25d90c48cfe021993b41cc28efbd53`  
		Last Modified: Fri, 24 Mar 2017 00:17:28 GMT  
		Size: 29.4 MB (29428170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311a7ce4097cc71f1c93bd3ec26380c85a950b7e4155b3cf3f2067ea9af500aa`  
		Last Modified: Fri, 24 Mar 2017 00:19:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:onbuild`

```console
$ docker pull pypy@sha256:fca48815d054d19bfb187f0604559dcbc4035b4820b80797744531face760648
```

-	Platforms:
	-	linux; amd64

### `pypy:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274868794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28978f95c0e4263a38c2aab227f1a8c30763bdbeb65263b58a50feba92591f8b`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:07 GMT
ENV PYPY_VERSION=5.7.0
# Wed, 22 Mar 2017 22:43:30 GMT
ENV PYPY_SHA256SUM=921894884a647220a712ecdaad516d9c22fbadf3b4bb3a5db8f3635c60eabc7b
# Wed, 22 Mar 2017 22:43:31 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:43:53 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Wed, 22 Mar 2017 22:43:54 GMT
CMD ["pypy3"]
# Wed, 22 Mar 2017 22:43:55 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:43:55 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:43:56 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:43:56 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 22 Mar 2017 22:43:57 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf205f0dacc84d5ddf65ff8c84f075bac25d90c48cfe021993b41cc28efbd53`  
		Last Modified: Fri, 24 Mar 2017 00:17:28 GMT  
		Size: 29.4 MB (29428170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311a7ce4097cc71f1c93bd3ec26380c85a950b7e4155b3cf3f2067ea9af500aa`  
		Last Modified: Fri, 24 Mar 2017 00:19:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
