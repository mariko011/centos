<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `pypy`

-	[`pypy:2-5.4.0`](#pypy2-540)
-	[`pypy:2-5.4`](#pypy2-54)
-	[`pypy:2-5`](#pypy2-5)
-	[`pypy:2`](#pypy2)
-	[`pypy:2-5.4.0-slim`](#pypy2-540-slim)
-	[`pypy:2-5.4-slim`](#pypy2-54-slim)
-	[`pypy:2-5-slim`](#pypy2-5-slim)
-	[`pypy:2-slim`](#pypy2-slim)
-	[`pypy:2-5.4.0-onbuild`](#pypy2-540-onbuild)
-	[`pypy:2-5.4-onbuild`](#pypy2-54-onbuild)
-	[`pypy:2-5-onbuild`](#pypy2-5-onbuild)
-	[`pypy:2-onbuild`](#pypy2-onbuild)
-	[`pypy:3-5.2.0-alpha1`](#pypy3-520-alpha1)
-	[`pypy:3-5.2.0`](#pypy3-520)
-	[`pypy:3-5.2`](#pypy3-52)
-	[`pypy:3-5`](#pypy3-5)
-	[`pypy:3`](#pypy3)
-	[`pypy:latest`](#pypylatest)
-	[`pypy:3-5.2.0-alpha1-slim`](#pypy3-520-alpha1-slim)
-	[`pypy:3-5.2.0-slim`](#pypy3-520-slim)
-	[`pypy:3-5.2-slim`](#pypy3-52-slim)
-	[`pypy:3-5-slim`](#pypy3-5-slim)
-	[`pypy:3-slim`](#pypy3-slim)
-	[`pypy:slim`](#pypyslim)
-	[`pypy:3-5.2.0-alpha1-onbuild`](#pypy3-520-alpha1-onbuild)
-	[`pypy:3-5.2.0-onbuild`](#pypy3-520-onbuild)
-	[`pypy:3-5.2-onbuild`](#pypy3-52-onbuild)
-	[`pypy:3-5-onbuild`](#pypy3-5-onbuild)
-	[`pypy:3-onbuild`](#pypy3-onbuild)
-	[`pypy:onbuild`](#pypyonbuild)

## `pypy:2-5.4.0`

**does not exist** (yet?)

## `pypy:2-5.4`

**does not exist** (yet?)

## `pypy:2-5`

```console
$ docker pull pypy@sha256:48c40ff2c868a84bff642f1177d11654b3775050741ff4995e99072448c761cc
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272189879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d1cd7f560cdaf3aaa54b5de94f5004e0a911959fc9cc0b2f72988af3742fa8d`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:34:03 GMT
ENV PYPY_VERSION=5.3.1
# Fri, 26 Aug 2016 20:34:14 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:34:15 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:34:26 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:34:28 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81a0b178897dff6bdef18a239d2ac06c30186fea7d9fe29ff1a628d1858c0c7`  
		Last Modified: Fri, 26 Aug 2016 20:34:51 GMT  
		Size: 24.0 MB (23963639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d2901f86be03308624dfcb839db3079f500c26995ff014f51c5cc58513a68c`  
		Last Modified: Fri, 26 Aug 2016 20:34:43 GMT  
		Size: 5.4 MB (5369934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2`

```console
$ docker pull pypy@sha256:48c40ff2c868a84bff642f1177d11654b3775050741ff4995e99072448c761cc
```

-	Platforms:
	-	linux; amd64

### `pypy:2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272189879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d1cd7f560cdaf3aaa54b5de94f5004e0a911959fc9cc0b2f72988af3742fa8d`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:34:03 GMT
ENV PYPY_VERSION=5.3.1
# Fri, 26 Aug 2016 20:34:14 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:34:15 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:34:26 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:34:28 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81a0b178897dff6bdef18a239d2ac06c30186fea7d9fe29ff1a628d1858c0c7`  
		Last Modified: Fri, 26 Aug 2016 20:34:51 GMT  
		Size: 24.0 MB (23963639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d2901f86be03308624dfcb839db3079f500c26995ff014f51c5cc58513a68c`  
		Last Modified: Fri, 26 Aug 2016 20:34:43 GMT  
		Size: 5.4 MB (5369934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.4.0-slim`

**does not exist** (yet?)

## `pypy:2-5.4-slim`

**does not exist** (yet?)

## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:e43c11d80a31029d990ea4b8500d5dcabb4f7a4105c329117118bef337995b33
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-slim` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86157804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6decf64feb7c7bd8bb259b5474a4e4691e26c8a3d4f37600de55ebeafaaea915`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 18:44:45 GMT
RUN apt-get purge -y python.*
# Fri, 10 Jun 2016 18:44:45 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jun 2016 18:46:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Jun 2016 22:53:19 GMT
ENV PYPY_VERSION=5.3.1
# Fri, 17 Jun 2016 22:53:20 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 17 Jun 2016 22:54:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Fri, 17 Jun 2016 22:54:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406d3e76a0e7801bad4aee03d8141c5b30d8ef8fd39410857cac20323fe73cb6`  
		Last Modified: Wed, 15 Jun 2016 21:15:24 GMT  
		Size: 3.5 MB (3462735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348153c145559ac325ede79fa46cb93b88556056d519f6dc168ea695146d1479`  
		Last Modified: Fri, 17 Jun 2016 22:55:43 GMT  
		Size: 31.3 MB (31342534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim`

```console
$ docker pull pypy@sha256:e43c11d80a31029d990ea4b8500d5dcabb4f7a4105c329117118bef337995b33
```

-	Platforms:
	-	linux; amd64

### `pypy:2-slim` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86157804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6decf64feb7c7bd8bb259b5474a4e4691e26c8a3d4f37600de55ebeafaaea915`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 18:44:45 GMT
RUN apt-get purge -y python.*
# Fri, 10 Jun 2016 18:44:45 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jun 2016 18:46:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Jun 2016 22:53:19 GMT
ENV PYPY_VERSION=5.3.1
# Fri, 17 Jun 2016 22:53:20 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 17 Jun 2016 22:54:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Fri, 17 Jun 2016 22:54:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406d3e76a0e7801bad4aee03d8141c5b30d8ef8fd39410857cac20323fe73cb6`  
		Last Modified: Wed, 15 Jun 2016 21:15:24 GMT  
		Size: 3.5 MB (3462735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348153c145559ac325ede79fa46cb93b88556056d519f6dc168ea695146d1479`  
		Last Modified: Fri, 17 Jun 2016 22:55:43 GMT  
		Size: 31.3 MB (31342534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.4.0-onbuild`

**does not exist** (yet?)

## `pypy:2-5.4-onbuild`

**does not exist** (yet?)

## `pypy:2-5-onbuild`

```console
$ docker pull pypy@sha256:a2d352c1d9e8716cf94279bfdb68ff778091349413fc22eeca5cb998029eae3f
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272190006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23b7c71925a2df3ae5317dd1a4763badee06ce24773463cc328f11cd0d3c911`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:34:03 GMT
ENV PYPY_VERSION=5.3.1
# Fri, 26 Aug 2016 20:34:14 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:34:15 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:34:26 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:34:28 GMT
CMD ["pypy"]
# Fri, 26 Aug 2016 20:35:42 GMT
RUN mkdir -p /usr/src/app
# Fri, 26 Aug 2016 20:35:44 GMT
WORKDIR /usr/src/app
# Fri, 26 Aug 2016 20:35:45 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 26 Aug 2016 20:35:46 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 26 Aug 2016 20:35:47 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81a0b178897dff6bdef18a239d2ac06c30186fea7d9fe29ff1a628d1858c0c7`  
		Last Modified: Fri, 26 Aug 2016 20:34:51 GMT  
		Size: 24.0 MB (23963639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d2901f86be03308624dfcb839db3079f500c26995ff014f51c5cc58513a68c`  
		Last Modified: Fri, 26 Aug 2016 20:34:43 GMT  
		Size: 5.4 MB (5369934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25b5d63aad0e84d0b72ef1f16a11a0e56407c448c483e7375b6fda73b22aa39`  
		Last Modified: Fri, 26 Aug 2016 20:36:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-onbuild`

```console
$ docker pull pypy@sha256:c0dd11f08b6fd479aa4f2d9ffa358cef7295b9b511743fba4ed0ddca7a4c526d
```

-	Platforms:
	-	linux; amd64

### `pypy:2-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271579269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0fba077e665b55ad7d620e155273223523f4ef09a3794d6c49299aef5a120de`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:23:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 21:21:56 GMT
RUN apt-get purge -y python.*
# Mon, 01 Aug 2016 21:21:57 GMT
ENV LANG=C.UTF-8
# Mon, 01 Aug 2016 21:21:57 GMT
ENV PYPY_VERSION=5.3.1
# Mon, 01 Aug 2016 21:22:06 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Mon, 01 Aug 2016 21:22:07 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 01 Aug 2016 21:22:17 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Mon, 01 Aug 2016 21:22:18 GMT
CMD ["pypy"]
# Mon, 01 Aug 2016 21:30:23 GMT
RUN mkdir -p /usr/src/app
# Mon, 01 Aug 2016 21:30:24 GMT
WORKDIR /usr/src/app
# Mon, 01 Aug 2016 21:30:25 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Mon, 01 Aug 2016 21:30:26 GMT
ONBUILD RUN pip install -r requirements.txt
# Mon, 01 Aug 2016 21:30:26 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7c7db0ecddc25b1ef5266bc81bd590d595bd0fb62411f45c29e1c0d918efed`  
		Last Modified: Mon, 01 Aug 2016 21:22:28 GMT  
		Size: 221.8 KB (221848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20312044a23292c59f53a10128a381b9f278b43388a519b0b4813afecd91ed31`  
		Last Modified: Mon, 01 Aug 2016 21:22:36 GMT  
		Size: 24.0 MB (23963651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b3ae0c948826d08744dc000f9712d55ad09f8e72f0a01793e666a8b3f63f9b`  
		Last Modified: Mon, 01 Aug 2016 21:22:29 GMT  
		Size: 5.3 MB (5313137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f69579c0ee94439f5087d9ec6829bb140fee58c3d06c4e75ba334e9364bb49b`  
		Last Modified: Mon, 01 Aug 2016 21:30:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2.0-alpha1`

```console
$ docker pull pypy@sha256:4c6c9ff5cbf75c23d25abcc8f8a61fb6c410c1747a5b705e94efae05f7d7b2d3
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2.0-alpha1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269886055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01fa33dbda45953f67ee72e090676408fdd09f230390140459e6524eef8fa539`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:36:50 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Fri, 26 Aug 2016 20:37:00 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:37:02 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:37:14 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:37:15 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145b75ecd5c79b769ba92d8cbe1428205a65309631f9a4d38a7e3779142c00ce`  
		Last Modified: Fri, 26 Aug 2016 20:37:37 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49afa6af1412d578881dd8ca2645c642b54428b4fc1203e79fdf10503a9f584f`  
		Last Modified: Fri, 26 Aug 2016 20:37:31 GMT  
		Size: 5.7 MB (5671702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2.0`

```console
$ docker pull pypy@sha256:4c6c9ff5cbf75c23d25abcc8f8a61fb6c410c1747a5b705e94efae05f7d7b2d3
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269886055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01fa33dbda45953f67ee72e090676408fdd09f230390140459e6524eef8fa539`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:36:50 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Fri, 26 Aug 2016 20:37:00 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:37:02 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:37:14 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:37:15 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145b75ecd5c79b769ba92d8cbe1428205a65309631f9a4d38a7e3779142c00ce`  
		Last Modified: Fri, 26 Aug 2016 20:37:37 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49afa6af1412d578881dd8ca2645c642b54428b4fc1203e79fdf10503a9f584f`  
		Last Modified: Fri, 26 Aug 2016 20:37:31 GMT  
		Size: 5.7 MB (5671702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2`

```console
$ docker pull pypy@sha256:4c6c9ff5cbf75c23d25abcc8f8a61fb6c410c1747a5b705e94efae05f7d7b2d3
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269886055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01fa33dbda45953f67ee72e090676408fdd09f230390140459e6524eef8fa539`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:36:50 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Fri, 26 Aug 2016 20:37:00 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:37:02 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:37:14 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:37:15 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145b75ecd5c79b769ba92d8cbe1428205a65309631f9a4d38a7e3779142c00ce`  
		Last Modified: Fri, 26 Aug 2016 20:37:37 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49afa6af1412d578881dd8ca2645c642b54428b4fc1203e79fdf10503a9f584f`  
		Last Modified: Fri, 26 Aug 2016 20:37:31 GMT  
		Size: 5.7 MB (5671702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5`

```console
$ docker pull pypy@sha256:4c6c9ff5cbf75c23d25abcc8f8a61fb6c410c1747a5b705e94efae05f7d7b2d3
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269886055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01fa33dbda45953f67ee72e090676408fdd09f230390140459e6524eef8fa539`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:36:50 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Fri, 26 Aug 2016 20:37:00 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:37:02 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:37:14 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:37:15 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145b75ecd5c79b769ba92d8cbe1428205a65309631f9a4d38a7e3779142c00ce`  
		Last Modified: Fri, 26 Aug 2016 20:37:37 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49afa6af1412d578881dd8ca2645c642b54428b4fc1203e79fdf10503a9f584f`  
		Last Modified: Fri, 26 Aug 2016 20:37:31 GMT  
		Size: 5.7 MB (5671702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3`

```console
$ docker pull pypy@sha256:4c6c9ff5cbf75c23d25abcc8f8a61fb6c410c1747a5b705e94efae05f7d7b2d3
```

-	Platforms:
	-	linux; amd64

### `pypy:3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269886055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01fa33dbda45953f67ee72e090676408fdd09f230390140459e6524eef8fa539`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:36:50 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Fri, 26 Aug 2016 20:37:00 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:37:02 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:37:14 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:37:15 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145b75ecd5c79b769ba92d8cbe1428205a65309631f9a4d38a7e3779142c00ce`  
		Last Modified: Fri, 26 Aug 2016 20:37:37 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49afa6af1412d578881dd8ca2645c642b54428b4fc1203e79fdf10503a9f584f`  
		Last Modified: Fri, 26 Aug 2016 20:37:31 GMT  
		Size: 5.7 MB (5671702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:latest`

```console
$ docker pull pypy@sha256:4c6c9ff5cbf75c23d25abcc8f8a61fb6c410c1747a5b705e94efae05f7d7b2d3
```

-	Platforms:
	-	linux; amd64

### `pypy:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269886055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01fa33dbda45953f67ee72e090676408fdd09f230390140459e6524eef8fa539`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:36:50 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Fri, 26 Aug 2016 20:37:00 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:37:02 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:37:14 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:37:15 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145b75ecd5c79b769ba92d8cbe1428205a65309631f9a4d38a7e3779142c00ce`  
		Last Modified: Fri, 26 Aug 2016 20:37:37 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49afa6af1412d578881dd8ca2645c642b54428b4fc1203e79fdf10503a9f584f`  
		Last Modified: Fri, 26 Aug 2016 20:37:31 GMT  
		Size: 5.7 MB (5671702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2.0-alpha1-slim`

```console
$ docker pull pypy@sha256:6583f6a5e676523cf92144329e0872a943a18ec9d530d8108b77c9d190fb0202
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2.0-alpha1-slim` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83916992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41236683e6f7d90cec07b9aeb6ba275ee1da7ed9f1590d548ef0a65d2774b3a6`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 18:44:45 GMT
RUN apt-get purge -y python.*
# Fri, 10 Jun 2016 18:44:45 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jun 2016 18:46:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 Jun 2016 21:13:10 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 15 Jun 2016 21:13:11 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 15 Jun 2016 21:14:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 15 Jun 2016 21:14:39 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406d3e76a0e7801bad4aee03d8141c5b30d8ef8fd39410857cac20323fe73cb6`  
		Last Modified: Wed, 15 Jun 2016 21:15:24 GMT  
		Size: 3.5 MB (3462735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb07f56699855474cf7dbeae8971221c6b9a1209f0f7a25209246ac1894223c`  
		Last Modified: Wed, 15 Jun 2016 21:17:07 GMT  
		Size: 29.1 MB (29101722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2.0-slim`

```console
$ docker pull pypy@sha256:6583f6a5e676523cf92144329e0872a943a18ec9d530d8108b77c9d190fb0202
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2.0-slim` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83916992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41236683e6f7d90cec07b9aeb6ba275ee1da7ed9f1590d548ef0a65d2774b3a6`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 18:44:45 GMT
RUN apt-get purge -y python.*
# Fri, 10 Jun 2016 18:44:45 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jun 2016 18:46:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 Jun 2016 21:13:10 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 15 Jun 2016 21:13:11 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 15 Jun 2016 21:14:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 15 Jun 2016 21:14:39 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406d3e76a0e7801bad4aee03d8141c5b30d8ef8fd39410857cac20323fe73cb6`  
		Last Modified: Wed, 15 Jun 2016 21:15:24 GMT  
		Size: 3.5 MB (3462735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb07f56699855474cf7dbeae8971221c6b9a1209f0f7a25209246ac1894223c`  
		Last Modified: Wed, 15 Jun 2016 21:17:07 GMT  
		Size: 29.1 MB (29101722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2-slim`

```console
$ docker pull pypy@sha256:6583f6a5e676523cf92144329e0872a943a18ec9d530d8108b77c9d190fb0202
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2-slim` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83916992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41236683e6f7d90cec07b9aeb6ba275ee1da7ed9f1590d548ef0a65d2774b3a6`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 18:44:45 GMT
RUN apt-get purge -y python.*
# Fri, 10 Jun 2016 18:44:45 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jun 2016 18:46:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 Jun 2016 21:13:10 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 15 Jun 2016 21:13:11 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 15 Jun 2016 21:14:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 15 Jun 2016 21:14:39 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406d3e76a0e7801bad4aee03d8141c5b30d8ef8fd39410857cac20323fe73cb6`  
		Last Modified: Wed, 15 Jun 2016 21:15:24 GMT  
		Size: 3.5 MB (3462735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb07f56699855474cf7dbeae8971221c6b9a1209f0f7a25209246ac1894223c`  
		Last Modified: Wed, 15 Jun 2016 21:17:07 GMT  
		Size: 29.1 MB (29101722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:6583f6a5e676523cf92144329e0872a943a18ec9d530d8108b77c9d190fb0202
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-slim` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83916992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41236683e6f7d90cec07b9aeb6ba275ee1da7ed9f1590d548ef0a65d2774b3a6`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 18:44:45 GMT
RUN apt-get purge -y python.*
# Fri, 10 Jun 2016 18:44:45 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jun 2016 18:46:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 Jun 2016 21:13:10 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 15 Jun 2016 21:13:11 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 15 Jun 2016 21:14:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 15 Jun 2016 21:14:39 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406d3e76a0e7801bad4aee03d8141c5b30d8ef8fd39410857cac20323fe73cb6`  
		Last Modified: Wed, 15 Jun 2016 21:15:24 GMT  
		Size: 3.5 MB (3462735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb07f56699855474cf7dbeae8971221c6b9a1209f0f7a25209246ac1894223c`  
		Last Modified: Wed, 15 Jun 2016 21:17:07 GMT  
		Size: 29.1 MB (29101722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim`

```console
$ docker pull pypy@sha256:6583f6a5e676523cf92144329e0872a943a18ec9d530d8108b77c9d190fb0202
```

-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83916992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41236683e6f7d90cec07b9aeb6ba275ee1da7ed9f1590d548ef0a65d2774b3a6`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 18:44:45 GMT
RUN apt-get purge -y python.*
# Fri, 10 Jun 2016 18:44:45 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jun 2016 18:46:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 Jun 2016 21:13:10 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 15 Jun 2016 21:13:11 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 15 Jun 2016 21:14:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 15 Jun 2016 21:14:39 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406d3e76a0e7801bad4aee03d8141c5b30d8ef8fd39410857cac20323fe73cb6`  
		Last Modified: Wed, 15 Jun 2016 21:15:24 GMT  
		Size: 3.5 MB (3462735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb07f56699855474cf7dbeae8971221c6b9a1209f0f7a25209246ac1894223c`  
		Last Modified: Wed, 15 Jun 2016 21:17:07 GMT  
		Size: 29.1 MB (29101722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim`

```console
$ docker pull pypy@sha256:6583f6a5e676523cf92144329e0872a943a18ec9d530d8108b77c9d190fb0202
```

-	Platforms:
	-	linux; amd64

### `pypy:slim` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83916992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41236683e6f7d90cec07b9aeb6ba275ee1da7ed9f1590d548ef0a65d2774b3a6`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 18:44:45 GMT
RUN apt-get purge -y python.*
# Fri, 10 Jun 2016 18:44:45 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jun 2016 18:46:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 Jun 2016 21:13:10 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 15 Jun 2016 21:13:11 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 15 Jun 2016 21:14:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 15 Jun 2016 21:14:39 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406d3e76a0e7801bad4aee03d8141c5b30d8ef8fd39410857cac20323fe73cb6`  
		Last Modified: Wed, 15 Jun 2016 21:15:24 GMT  
		Size: 3.5 MB (3462735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb07f56699855474cf7dbeae8971221c6b9a1209f0f7a25209246ac1894223c`  
		Last Modified: Wed, 15 Jun 2016 21:17:07 GMT  
		Size: 29.1 MB (29101722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2.0-alpha1-onbuild`

```console
$ docker pull pypy@sha256:011d3b50eb3d8e1c62a2ce8e2a4c045b097fb76e9a5d5d9f190d4493fe3d60bb
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2.0-alpha1-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269886182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6f4dfbed7778bc657effcd3ca709f6c0d44147573d4202e87da2160aeca9f5`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:36:50 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Fri, 26 Aug 2016 20:37:00 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:37:02 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:37:14 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:37:15 GMT
CMD ["pypy3"]
# Fri, 26 Aug 2016 20:38:51 GMT
RUN mkdir -p /usr/src/app
# Fri, 26 Aug 2016 20:38:53 GMT
WORKDIR /usr/src/app
# Fri, 26 Aug 2016 20:38:54 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 26 Aug 2016 20:38:55 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 26 Aug 2016 20:38:56 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145b75ecd5c79b769ba92d8cbe1428205a65309631f9a4d38a7e3779142c00ce`  
		Last Modified: Fri, 26 Aug 2016 20:37:37 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49afa6af1412d578881dd8ca2645c642b54428b4fc1203e79fdf10503a9f584f`  
		Last Modified: Fri, 26 Aug 2016 20:37:31 GMT  
		Size: 5.7 MB (5671702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc91043c193aaf1b3148f300f65be62ea23ca4ea3f6f2eccfa44c8a42951f26`  
		Last Modified: Fri, 26 Aug 2016 20:39:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2.0-onbuild`

```console
$ docker pull pypy@sha256:011d3b50eb3d8e1c62a2ce8e2a4c045b097fb76e9a5d5d9f190d4493fe3d60bb
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2.0-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269886182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6f4dfbed7778bc657effcd3ca709f6c0d44147573d4202e87da2160aeca9f5`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:36:50 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Fri, 26 Aug 2016 20:37:00 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:37:02 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:37:14 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:37:15 GMT
CMD ["pypy3"]
# Fri, 26 Aug 2016 20:38:51 GMT
RUN mkdir -p /usr/src/app
# Fri, 26 Aug 2016 20:38:53 GMT
WORKDIR /usr/src/app
# Fri, 26 Aug 2016 20:38:54 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 26 Aug 2016 20:38:55 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 26 Aug 2016 20:38:56 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145b75ecd5c79b769ba92d8cbe1428205a65309631f9a4d38a7e3779142c00ce`  
		Last Modified: Fri, 26 Aug 2016 20:37:37 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49afa6af1412d578881dd8ca2645c642b54428b4fc1203e79fdf10503a9f584f`  
		Last Modified: Fri, 26 Aug 2016 20:37:31 GMT  
		Size: 5.7 MB (5671702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc91043c193aaf1b3148f300f65be62ea23ca4ea3f6f2eccfa44c8a42951f26`  
		Last Modified: Fri, 26 Aug 2016 20:39:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2-onbuild`

```console
$ docker pull pypy@sha256:011d3b50eb3d8e1c62a2ce8e2a4c045b097fb76e9a5d5d9f190d4493fe3d60bb
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269886182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6f4dfbed7778bc657effcd3ca709f6c0d44147573d4202e87da2160aeca9f5`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:36:50 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Fri, 26 Aug 2016 20:37:00 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:37:02 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:37:14 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:37:15 GMT
CMD ["pypy3"]
# Fri, 26 Aug 2016 20:38:51 GMT
RUN mkdir -p /usr/src/app
# Fri, 26 Aug 2016 20:38:53 GMT
WORKDIR /usr/src/app
# Fri, 26 Aug 2016 20:38:54 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 26 Aug 2016 20:38:55 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 26 Aug 2016 20:38:56 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145b75ecd5c79b769ba92d8cbe1428205a65309631f9a4d38a7e3779142c00ce`  
		Last Modified: Fri, 26 Aug 2016 20:37:37 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49afa6af1412d578881dd8ca2645c642b54428b4fc1203e79fdf10503a9f584f`  
		Last Modified: Fri, 26 Aug 2016 20:37:31 GMT  
		Size: 5.7 MB (5671702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc91043c193aaf1b3148f300f65be62ea23ca4ea3f6f2eccfa44c8a42951f26`  
		Last Modified: Fri, 26 Aug 2016 20:39:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-onbuild`

```console
$ docker pull pypy@sha256:011d3b50eb3d8e1c62a2ce8e2a4c045b097fb76e9a5d5d9f190d4493fe3d60bb
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269886182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6f4dfbed7778bc657effcd3ca709f6c0d44147573d4202e87da2160aeca9f5`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:36:50 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Fri, 26 Aug 2016 20:37:00 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:37:02 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:37:14 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:37:15 GMT
CMD ["pypy3"]
# Fri, 26 Aug 2016 20:38:51 GMT
RUN mkdir -p /usr/src/app
# Fri, 26 Aug 2016 20:38:53 GMT
WORKDIR /usr/src/app
# Fri, 26 Aug 2016 20:38:54 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 26 Aug 2016 20:38:55 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 26 Aug 2016 20:38:56 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145b75ecd5c79b769ba92d8cbe1428205a65309631f9a4d38a7e3779142c00ce`  
		Last Modified: Fri, 26 Aug 2016 20:37:37 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49afa6af1412d578881dd8ca2645c642b54428b4fc1203e79fdf10503a9f584f`  
		Last Modified: Fri, 26 Aug 2016 20:37:31 GMT  
		Size: 5.7 MB (5671702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc91043c193aaf1b3148f300f65be62ea23ca4ea3f6f2eccfa44c8a42951f26`  
		Last Modified: Fri, 26 Aug 2016 20:39:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-onbuild`

```console
$ docker pull pypy@sha256:011d3b50eb3d8e1c62a2ce8e2a4c045b097fb76e9a5d5d9f190d4493fe3d60bb
```

-	Platforms:
	-	linux; amd64

### `pypy:3-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269886182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6f4dfbed7778bc657effcd3ca709f6c0d44147573d4202e87da2160aeca9f5`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:36:50 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Fri, 26 Aug 2016 20:37:00 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:37:02 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:37:14 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:37:15 GMT
CMD ["pypy3"]
# Fri, 26 Aug 2016 20:38:51 GMT
RUN mkdir -p /usr/src/app
# Fri, 26 Aug 2016 20:38:53 GMT
WORKDIR /usr/src/app
# Fri, 26 Aug 2016 20:38:54 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 26 Aug 2016 20:38:55 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 26 Aug 2016 20:38:56 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145b75ecd5c79b769ba92d8cbe1428205a65309631f9a4d38a7e3779142c00ce`  
		Last Modified: Fri, 26 Aug 2016 20:37:37 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49afa6af1412d578881dd8ca2645c642b54428b4fc1203e79fdf10503a9f584f`  
		Last Modified: Fri, 26 Aug 2016 20:37:31 GMT  
		Size: 5.7 MB (5671702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc91043c193aaf1b3148f300f65be62ea23ca4ea3f6f2eccfa44c8a42951f26`  
		Last Modified: Fri, 26 Aug 2016 20:39:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:onbuild`

```console
$ docker pull pypy@sha256:011d3b50eb3d8e1c62a2ce8e2a4c045b097fb76e9a5d5d9f190d4493fe3d60bb
```

-	Platforms:
	-	linux; amd64

### `pypy:onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269886182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6f4dfbed7778bc657effcd3ca709f6c0d44147573d4202e87da2160aeca9f5`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Aug 2016 16:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 20:34:01 GMT
RUN apt-get purge -y python.*
# Fri, 26 Aug 2016 20:34:02 GMT
ENV LANG=C.UTF-8
# Fri, 26 Aug 2016 20:36:50 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Fri, 26 Aug 2016 20:37:00 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Fri, 26 Aug 2016 20:37:02 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 26 Aug 2016 20:37:14 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Fri, 26 Aug 2016 20:37:15 GMT
CMD ["pypy3"]
# Fri, 26 Aug 2016 20:38:51 GMT
RUN mkdir -p /usr/src/app
# Fri, 26 Aug 2016 20:38:53 GMT
WORKDIR /usr/src/app
# Fri, 26 Aug 2016 20:38:54 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 26 Aug 2016 20:38:55 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 26 Aug 2016 20:38:56 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855820c726566646e66b20293d2eeeb642e888fbe4302a3cdf6021af5f304c26`  
		Last Modified: Wed, 24 Aug 2016 16:53:02 GMT  
		Size: 130.2 MB (130245689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52cf15cdd9f6b70777473ed6ed7dd36eaeb1f394b77f058fb59a5516cd6f388`  
		Last Modified: Fri, 26 Aug 2016 20:34:41 GMT  
		Size: 222.6 KB (222643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145b75ecd5c79b769ba92d8cbe1428205a65309631f9a4d38a7e3779142c00ce`  
		Last Modified: Fri, 26 Aug 2016 20:37:37 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49afa6af1412d578881dd8ca2645c642b54428b4fc1203e79fdf10503a9f584f`  
		Last Modified: Fri, 26 Aug 2016 20:37:31 GMT  
		Size: 5.7 MB (5671702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc91043c193aaf1b3148f300f65be62ea23ca4ea3f6f2eccfa44c8a42951f26`  
		Last Modified: Fri, 26 Aug 2016 20:39:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
