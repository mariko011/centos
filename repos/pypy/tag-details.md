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

```console
$ docker pull pypy@sha256:5f187ef8e065a684d827f64490709a1e9a9f053849e64c82aea3587d1f9c0104
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.4.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271988144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9a0e449d90c006e28f8c484cea1a6627b725590eb6f8c9acfb582375ba3259`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:52:58 GMT
ENV PYPY_VERSION=5.4.0
# Wed, 31 Aug 2016 17:53:10 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 17:53:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 17:53:23 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 17:53:23 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0340452152167d1d1c14246bdac8c377063c869c4451d16c0febfd37260e31a0`  
		Last Modified: Wed, 31 Aug 2016 17:54:26 GMT  
		Size: 24.2 MB (24242409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1a4b1f51271c7a871bef683721af1a7fc323f415a1a7bf09a22a79d09214e`  
		Last Modified: Wed, 31 Aug 2016 17:54:15 GMT  
		Size: 5.4 MB (5383055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.4`

```console
$ docker pull pypy@sha256:5f187ef8e065a684d827f64490709a1e9a9f053849e64c82aea3587d1f9c0104
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271988144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9a0e449d90c006e28f8c484cea1a6627b725590eb6f8c9acfb582375ba3259`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:52:58 GMT
ENV PYPY_VERSION=5.4.0
# Wed, 31 Aug 2016 17:53:10 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 17:53:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 17:53:23 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 17:53:23 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0340452152167d1d1c14246bdac8c377063c869c4451d16c0febfd37260e31a0`  
		Last Modified: Wed, 31 Aug 2016 17:54:26 GMT  
		Size: 24.2 MB (24242409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1a4b1f51271c7a871bef683721af1a7fc323f415a1a7bf09a22a79d09214e`  
		Last Modified: Wed, 31 Aug 2016 17:54:15 GMT  
		Size: 5.4 MB (5383055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5`

```console
$ docker pull pypy@sha256:5f187ef8e065a684d827f64490709a1e9a9f053849e64c82aea3587d1f9c0104
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271988144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9a0e449d90c006e28f8c484cea1a6627b725590eb6f8c9acfb582375ba3259`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:52:58 GMT
ENV PYPY_VERSION=5.4.0
# Wed, 31 Aug 2016 17:53:10 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 17:53:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 17:53:23 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 17:53:23 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0340452152167d1d1c14246bdac8c377063c869c4451d16c0febfd37260e31a0`  
		Last Modified: Wed, 31 Aug 2016 17:54:26 GMT  
		Size: 24.2 MB (24242409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1a4b1f51271c7a871bef683721af1a7fc323f415a1a7bf09a22a79d09214e`  
		Last Modified: Wed, 31 Aug 2016 17:54:15 GMT  
		Size: 5.4 MB (5383055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2`

```console
$ docker pull pypy@sha256:5f187ef8e065a684d827f64490709a1e9a9f053849e64c82aea3587d1f9c0104
```

-	Platforms:
	-	linux; amd64

### `pypy:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271988144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9a0e449d90c006e28f8c484cea1a6627b725590eb6f8c9acfb582375ba3259`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:52:58 GMT
ENV PYPY_VERSION=5.4.0
# Wed, 31 Aug 2016 17:53:10 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 17:53:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 17:53:23 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 17:53:23 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0340452152167d1d1c14246bdac8c377063c869c4451d16c0febfd37260e31a0`  
		Last Modified: Wed, 31 Aug 2016 17:54:26 GMT  
		Size: 24.2 MB (24242409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1a4b1f51271c7a871bef683721af1a7fc323f415a1a7bf09a22a79d09214e`  
		Last Modified: Wed, 31 Aug 2016 17:54:15 GMT  
		Size: 5.4 MB (5383055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.4.0-slim`

```console
$ docker pull pypy@sha256:65fb67a2f3ce22ef66023d55efc80e6433e41283444b56389d33a9aaf6bc7dad
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.4.0-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86501874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea13da95768c0f29c96dc5f3b7219593d073b975eef7a2eeed6134cf48cce28`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:09:07 GMT
RUN apt-get purge -y python.*
# Tue, 30 Aug 2016 21:09:07 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:09:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:53:24 GMT
ENV PYPY_VERSION=5.4.0
# Wed, 31 Aug 2016 17:53:24 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 17:53:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 31 Aug 2016 17:53:59 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107c2f6f9f84689c4d85a21149424704a735f71716123a38c8a4efbd3aa45e62`  
		Last Modified: Wed, 31 Aug 2016 17:55:05 GMT  
		Size: 3.4 MB (3442217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfbb137774e806d450994c6ac866e01d2e9a4330d45b8e4f02330701f6061506`  
		Last Modified: Wed, 31 Aug 2016 17:55:19 GMT  
		Size: 31.7 MB (31692389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.4-slim`

```console
$ docker pull pypy@sha256:65fb67a2f3ce22ef66023d55efc80e6433e41283444b56389d33a9aaf6bc7dad
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.4-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86501874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea13da95768c0f29c96dc5f3b7219593d073b975eef7a2eeed6134cf48cce28`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:09:07 GMT
RUN apt-get purge -y python.*
# Tue, 30 Aug 2016 21:09:07 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:09:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:53:24 GMT
ENV PYPY_VERSION=5.4.0
# Wed, 31 Aug 2016 17:53:24 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 17:53:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 31 Aug 2016 17:53:59 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107c2f6f9f84689c4d85a21149424704a735f71716123a38c8a4efbd3aa45e62`  
		Last Modified: Wed, 31 Aug 2016 17:55:05 GMT  
		Size: 3.4 MB (3442217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfbb137774e806d450994c6ac866e01d2e9a4330d45b8e4f02330701f6061506`  
		Last Modified: Wed, 31 Aug 2016 17:55:19 GMT  
		Size: 31.7 MB (31692389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:65fb67a2f3ce22ef66023d55efc80e6433e41283444b56389d33a9aaf6bc7dad
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86501874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea13da95768c0f29c96dc5f3b7219593d073b975eef7a2eeed6134cf48cce28`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:09:07 GMT
RUN apt-get purge -y python.*
# Tue, 30 Aug 2016 21:09:07 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:09:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:53:24 GMT
ENV PYPY_VERSION=5.4.0
# Wed, 31 Aug 2016 17:53:24 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 17:53:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 31 Aug 2016 17:53:59 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107c2f6f9f84689c4d85a21149424704a735f71716123a38c8a4efbd3aa45e62`  
		Last Modified: Wed, 31 Aug 2016 17:55:05 GMT  
		Size: 3.4 MB (3442217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfbb137774e806d450994c6ac866e01d2e9a4330d45b8e4f02330701f6061506`  
		Last Modified: Wed, 31 Aug 2016 17:55:19 GMT  
		Size: 31.7 MB (31692389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim`

```console
$ docker pull pypy@sha256:65fb67a2f3ce22ef66023d55efc80e6433e41283444b56389d33a9aaf6bc7dad
```

-	Platforms:
	-	linux; amd64

### `pypy:2-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86501874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea13da95768c0f29c96dc5f3b7219593d073b975eef7a2eeed6134cf48cce28`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:09:07 GMT
RUN apt-get purge -y python.*
# Tue, 30 Aug 2016 21:09:07 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:09:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:53:24 GMT
ENV PYPY_VERSION=5.4.0
# Wed, 31 Aug 2016 17:53:24 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 17:53:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 31 Aug 2016 17:53:59 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107c2f6f9f84689c4d85a21149424704a735f71716123a38c8a4efbd3aa45e62`  
		Last Modified: Wed, 31 Aug 2016 17:55:05 GMT  
		Size: 3.4 MB (3442217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfbb137774e806d450994c6ac866e01d2e9a4330d45b8e4f02330701f6061506`  
		Last Modified: Wed, 31 Aug 2016 17:55:19 GMT  
		Size: 31.7 MB (31692389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.4.0-onbuild`

```console
$ docker pull pypy@sha256:a2a856c315b529845bc1e8d7c24a436b7422075cc7f147331f06d9ebd6be9364
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.4.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271988271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c3e1a3d7dc04a4a33f6191490dfcd8a1d5087ce42c4757e6fbc26dc1f9ceb2`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:52:58 GMT
ENV PYPY_VERSION=5.4.0
# Wed, 31 Aug 2016 17:53:10 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 17:53:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 17:53:23 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 17:53:23 GMT
CMD ["pypy"]
# Wed, 31 Aug 2016 17:54:03 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 17:54:03 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 17:54:04 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 31 Aug 2016 17:54:04 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 31 Aug 2016 17:54:04 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0340452152167d1d1c14246bdac8c377063c869c4451d16c0febfd37260e31a0`  
		Last Modified: Wed, 31 Aug 2016 17:54:26 GMT  
		Size: 24.2 MB (24242409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1a4b1f51271c7a871bef683721af1a7fc323f415a1a7bf09a22a79d09214e`  
		Last Modified: Wed, 31 Aug 2016 17:54:15 GMT  
		Size: 5.4 MB (5383055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306d85bc1d0bdea9e18cde42294b0b1b0907cab3796a0f570ea741cd8660ebd`  
		Last Modified: Wed, 31 Aug 2016 17:55:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.4-onbuild`

```console
$ docker pull pypy@sha256:a2a856c315b529845bc1e8d7c24a436b7422075cc7f147331f06d9ebd6be9364
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.4-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271988271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c3e1a3d7dc04a4a33f6191490dfcd8a1d5087ce42c4757e6fbc26dc1f9ceb2`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:52:58 GMT
ENV PYPY_VERSION=5.4.0
# Wed, 31 Aug 2016 17:53:10 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 17:53:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 17:53:23 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 17:53:23 GMT
CMD ["pypy"]
# Wed, 31 Aug 2016 17:54:03 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 17:54:03 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 17:54:04 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 31 Aug 2016 17:54:04 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 31 Aug 2016 17:54:04 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0340452152167d1d1c14246bdac8c377063c869c4451d16c0febfd37260e31a0`  
		Last Modified: Wed, 31 Aug 2016 17:54:26 GMT  
		Size: 24.2 MB (24242409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1a4b1f51271c7a871bef683721af1a7fc323f415a1a7bf09a22a79d09214e`  
		Last Modified: Wed, 31 Aug 2016 17:54:15 GMT  
		Size: 5.4 MB (5383055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306d85bc1d0bdea9e18cde42294b0b1b0907cab3796a0f570ea741cd8660ebd`  
		Last Modified: Wed, 31 Aug 2016 17:55:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-onbuild`

```console
$ docker pull pypy@sha256:a2a856c315b529845bc1e8d7c24a436b7422075cc7f147331f06d9ebd6be9364
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271988271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c3e1a3d7dc04a4a33f6191490dfcd8a1d5087ce42c4757e6fbc26dc1f9ceb2`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:52:58 GMT
ENV PYPY_VERSION=5.4.0
# Wed, 31 Aug 2016 17:53:10 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 17:53:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 17:53:23 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 17:53:23 GMT
CMD ["pypy"]
# Wed, 31 Aug 2016 17:54:03 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 17:54:03 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 17:54:04 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 31 Aug 2016 17:54:04 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 31 Aug 2016 17:54:04 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0340452152167d1d1c14246bdac8c377063c869c4451d16c0febfd37260e31a0`  
		Last Modified: Wed, 31 Aug 2016 17:54:26 GMT  
		Size: 24.2 MB (24242409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1a4b1f51271c7a871bef683721af1a7fc323f415a1a7bf09a22a79d09214e`  
		Last Modified: Wed, 31 Aug 2016 17:54:15 GMT  
		Size: 5.4 MB (5383055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306d85bc1d0bdea9e18cde42294b0b1b0907cab3796a0f570ea741cd8660ebd`  
		Last Modified: Wed, 31 Aug 2016 17:55:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-onbuild`

```console
$ docker pull pypy@sha256:a2a856c315b529845bc1e8d7c24a436b7422075cc7f147331f06d9ebd6be9364
```

-	Platforms:
	-	linux; amd64

### `pypy:2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271988271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c3e1a3d7dc04a4a33f6191490dfcd8a1d5087ce42c4757e6fbc26dc1f9ceb2`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:52:58 GMT
ENV PYPY_VERSION=5.4.0
# Wed, 31 Aug 2016 17:53:10 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 17:53:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 17:53:23 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 17:53:23 GMT
CMD ["pypy"]
# Wed, 31 Aug 2016 17:54:03 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 17:54:03 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 17:54:04 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 31 Aug 2016 17:54:04 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 31 Aug 2016 17:54:04 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0340452152167d1d1c14246bdac8c377063c869c4451d16c0febfd37260e31a0`  
		Last Modified: Wed, 31 Aug 2016 17:54:26 GMT  
		Size: 24.2 MB (24242409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1a4b1f51271c7a871bef683721af1a7fc323f415a1a7bf09a22a79d09214e`  
		Last Modified: Wed, 31 Aug 2016 17:54:15 GMT  
		Size: 5.4 MB (5383055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306d85bc1d0bdea9e18cde42294b0b1b0907cab3796a0f570ea741cd8660ebd`  
		Last Modified: Wed, 31 Aug 2016 17:55:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2.0-alpha1`

```console
$ docker pull pypy@sha256:49bb0856b96975f0271145551801f8b7255fa0f2383247afed1fd96263f137db
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2.0-alpha1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269407875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d03d276071273400e590b78f83e7c76d5765dd6612b0a6d1edf9a6c6584122`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:36:56 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:03 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 02:37:04 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:11 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 02:37:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f13ef8d9bc2a97c4e9cc49b2c5b5d7c5c6a538193f9e64965a29822eb83781`  
		Last Modified: Wed, 31 Aug 2016 17:56:45 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14983c6fa790adda977c40253b46d8035c12b060bef7a1db65ab0c0f909d401d`  
		Last Modified: Wed, 31 Aug 2016 17:56:35 GMT  
		Size: 5.7 MB (5687148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2.0`

```console
$ docker pull pypy@sha256:49bb0856b96975f0271145551801f8b7255fa0f2383247afed1fd96263f137db
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269407875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d03d276071273400e590b78f83e7c76d5765dd6612b0a6d1edf9a6c6584122`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:36:56 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:03 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 02:37:04 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:11 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 02:37:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f13ef8d9bc2a97c4e9cc49b2c5b5d7c5c6a538193f9e64965a29822eb83781`  
		Last Modified: Wed, 31 Aug 2016 17:56:45 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14983c6fa790adda977c40253b46d8035c12b060bef7a1db65ab0c0f909d401d`  
		Last Modified: Wed, 31 Aug 2016 17:56:35 GMT  
		Size: 5.7 MB (5687148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2`

```console
$ docker pull pypy@sha256:49bb0856b96975f0271145551801f8b7255fa0f2383247afed1fd96263f137db
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269407875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d03d276071273400e590b78f83e7c76d5765dd6612b0a6d1edf9a6c6584122`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:36:56 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:03 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 02:37:04 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:11 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 02:37:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f13ef8d9bc2a97c4e9cc49b2c5b5d7c5c6a538193f9e64965a29822eb83781`  
		Last Modified: Wed, 31 Aug 2016 17:56:45 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14983c6fa790adda977c40253b46d8035c12b060bef7a1db65ab0c0f909d401d`  
		Last Modified: Wed, 31 Aug 2016 17:56:35 GMT  
		Size: 5.7 MB (5687148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5`

```console
$ docker pull pypy@sha256:49bb0856b96975f0271145551801f8b7255fa0f2383247afed1fd96263f137db
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269407875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d03d276071273400e590b78f83e7c76d5765dd6612b0a6d1edf9a6c6584122`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:36:56 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:03 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 02:37:04 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:11 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 02:37:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f13ef8d9bc2a97c4e9cc49b2c5b5d7c5c6a538193f9e64965a29822eb83781`  
		Last Modified: Wed, 31 Aug 2016 17:56:45 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14983c6fa790adda977c40253b46d8035c12b060bef7a1db65ab0c0f909d401d`  
		Last Modified: Wed, 31 Aug 2016 17:56:35 GMT  
		Size: 5.7 MB (5687148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3`

```console
$ docker pull pypy@sha256:49bb0856b96975f0271145551801f8b7255fa0f2383247afed1fd96263f137db
```

-	Platforms:
	-	linux; amd64

### `pypy:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269407875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d03d276071273400e590b78f83e7c76d5765dd6612b0a6d1edf9a6c6584122`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:36:56 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:03 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 02:37:04 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:11 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 02:37:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f13ef8d9bc2a97c4e9cc49b2c5b5d7c5c6a538193f9e64965a29822eb83781`  
		Last Modified: Wed, 31 Aug 2016 17:56:45 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14983c6fa790adda977c40253b46d8035c12b060bef7a1db65ab0c0f909d401d`  
		Last Modified: Wed, 31 Aug 2016 17:56:35 GMT  
		Size: 5.7 MB (5687148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:latest`

```console
$ docker pull pypy@sha256:49bb0856b96975f0271145551801f8b7255fa0f2383247afed1fd96263f137db
```

-	Platforms:
	-	linux; amd64

### `pypy:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269407875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d03d276071273400e590b78f83e7c76d5765dd6612b0a6d1edf9a6c6584122`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:36:56 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:03 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 02:37:04 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:11 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 02:37:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f13ef8d9bc2a97c4e9cc49b2c5b5d7c5c6a538193f9e64965a29822eb83781`  
		Last Modified: Wed, 31 Aug 2016 17:56:45 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14983c6fa790adda977c40253b46d8035c12b060bef7a1db65ab0c0f909d401d`  
		Last Modified: Wed, 31 Aug 2016 17:56:35 GMT  
		Size: 5.7 MB (5687148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2.0-alpha1-slim`

```console
$ docker pull pypy@sha256:9cda3d5a8a1bd88395011e8d3b3eb682c259f354964928e050fbe252ad68a6a3
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2.0-alpha1-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83995860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b2e1ad200ab0e9e52faa0cbd0ee1d5239ecad01c441650af208ed09d5c5f01`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:09:07 GMT
RUN apt-get purge -y python.*
# Tue, 30 Aug 2016 21:09:07 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:09:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:37:12 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:12 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 31 Aug 2016 02:37:36 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107c2f6f9f84689c4d85a21149424704a735f71716123a38c8a4efbd3aa45e62`  
		Last Modified: Wed, 31 Aug 2016 17:55:05 GMT  
		Size: 3.4 MB (3442217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c7ee3c5131353ae8db7bdcb486b671e29b78950e7b27be00b5b811a1407827`  
		Last Modified: Wed, 31 Aug 2016 17:57:53 GMT  
		Size: 29.2 MB (29186375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2.0-slim`

```console
$ docker pull pypy@sha256:9cda3d5a8a1bd88395011e8d3b3eb682c259f354964928e050fbe252ad68a6a3
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2.0-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83995860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b2e1ad200ab0e9e52faa0cbd0ee1d5239ecad01c441650af208ed09d5c5f01`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:09:07 GMT
RUN apt-get purge -y python.*
# Tue, 30 Aug 2016 21:09:07 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:09:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:37:12 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:12 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 31 Aug 2016 02:37:36 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107c2f6f9f84689c4d85a21149424704a735f71716123a38c8a4efbd3aa45e62`  
		Last Modified: Wed, 31 Aug 2016 17:55:05 GMT  
		Size: 3.4 MB (3442217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c7ee3c5131353ae8db7bdcb486b671e29b78950e7b27be00b5b811a1407827`  
		Last Modified: Wed, 31 Aug 2016 17:57:53 GMT  
		Size: 29.2 MB (29186375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2-slim`

```console
$ docker pull pypy@sha256:9cda3d5a8a1bd88395011e8d3b3eb682c259f354964928e050fbe252ad68a6a3
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83995860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b2e1ad200ab0e9e52faa0cbd0ee1d5239ecad01c441650af208ed09d5c5f01`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:09:07 GMT
RUN apt-get purge -y python.*
# Tue, 30 Aug 2016 21:09:07 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:09:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:37:12 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:12 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 31 Aug 2016 02:37:36 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107c2f6f9f84689c4d85a21149424704a735f71716123a38c8a4efbd3aa45e62`  
		Last Modified: Wed, 31 Aug 2016 17:55:05 GMT  
		Size: 3.4 MB (3442217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c7ee3c5131353ae8db7bdcb486b671e29b78950e7b27be00b5b811a1407827`  
		Last Modified: Wed, 31 Aug 2016 17:57:53 GMT  
		Size: 29.2 MB (29186375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:9cda3d5a8a1bd88395011e8d3b3eb682c259f354964928e050fbe252ad68a6a3
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83995860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b2e1ad200ab0e9e52faa0cbd0ee1d5239ecad01c441650af208ed09d5c5f01`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:09:07 GMT
RUN apt-get purge -y python.*
# Tue, 30 Aug 2016 21:09:07 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:09:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:37:12 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:12 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 31 Aug 2016 02:37:36 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107c2f6f9f84689c4d85a21149424704a735f71716123a38c8a4efbd3aa45e62`  
		Last Modified: Wed, 31 Aug 2016 17:55:05 GMT  
		Size: 3.4 MB (3442217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c7ee3c5131353ae8db7bdcb486b671e29b78950e7b27be00b5b811a1407827`  
		Last Modified: Wed, 31 Aug 2016 17:57:53 GMT  
		Size: 29.2 MB (29186375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim`

```console
$ docker pull pypy@sha256:9cda3d5a8a1bd88395011e8d3b3eb682c259f354964928e050fbe252ad68a6a3
```

-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83995860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b2e1ad200ab0e9e52faa0cbd0ee1d5239ecad01c441650af208ed09d5c5f01`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:09:07 GMT
RUN apt-get purge -y python.*
# Tue, 30 Aug 2016 21:09:07 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:09:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:37:12 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:12 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 31 Aug 2016 02:37:36 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107c2f6f9f84689c4d85a21149424704a735f71716123a38c8a4efbd3aa45e62`  
		Last Modified: Wed, 31 Aug 2016 17:55:05 GMT  
		Size: 3.4 MB (3442217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c7ee3c5131353ae8db7bdcb486b671e29b78950e7b27be00b5b811a1407827`  
		Last Modified: Wed, 31 Aug 2016 17:57:53 GMT  
		Size: 29.2 MB (29186375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim`

```console
$ docker pull pypy@sha256:9cda3d5a8a1bd88395011e8d3b3eb682c259f354964928e050fbe252ad68a6a3
```

-	Platforms:
	-	linux; amd64

### `pypy:slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83995860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b2e1ad200ab0e9e52faa0cbd0ee1d5239ecad01c441650af208ed09d5c5f01`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:09:07 GMT
RUN apt-get purge -y python.*
# Tue, 30 Aug 2016 21:09:07 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 21:09:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:37:12 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:12 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y bzip2 curl --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1 	&& curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION 	&& apt-get purge -y --auto-remove bzip2 curl
# Wed, 31 Aug 2016 02:37:36 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107c2f6f9f84689c4d85a21149424704a735f71716123a38c8a4efbd3aa45e62`  
		Last Modified: Wed, 31 Aug 2016 17:55:05 GMT  
		Size: 3.4 MB (3442217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c7ee3c5131353ae8db7bdcb486b671e29b78950e7b27be00b5b811a1407827`  
		Last Modified: Wed, 31 Aug 2016 17:57:53 GMT  
		Size: 29.2 MB (29186375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2.0-alpha1-onbuild`

```console
$ docker pull pypy@sha256:2ce4f3f854c23037a23206a1983f5499368d91b51570dee70c22d896a0853921
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2.0-alpha1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269408001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86766c4ba101825481e159f27f998e26669b3f96065fafb5ac94774a1ebc484`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:36:56 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:03 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 02:37:04 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:11 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 02:37:12 GMT
CMD ["pypy3"]
# Wed, 31 Aug 2016 02:37:37 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 02:37:37 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 02:37:37 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 31 Aug 2016 02:37:38 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 31 Aug 2016 02:37:38 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f13ef8d9bc2a97c4e9cc49b2c5b5d7c5c6a538193f9e64965a29822eb83781`  
		Last Modified: Wed, 31 Aug 2016 17:56:45 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14983c6fa790adda977c40253b46d8035c12b060bef7a1db65ab0c0f909d401d`  
		Last Modified: Wed, 31 Aug 2016 17:56:35 GMT  
		Size: 5.7 MB (5687148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770248eccfbb7579787c2c8eb658d48f0a58f4ad10251a867fa3b4743505ef6c`  
		Last Modified: Wed, 31 Aug 2016 17:58:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2.0-onbuild`

```console
$ docker pull pypy@sha256:2ce4f3f854c23037a23206a1983f5499368d91b51570dee70c22d896a0853921
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269408001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86766c4ba101825481e159f27f998e26669b3f96065fafb5ac94774a1ebc484`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:36:56 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:03 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 02:37:04 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:11 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 02:37:12 GMT
CMD ["pypy3"]
# Wed, 31 Aug 2016 02:37:37 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 02:37:37 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 02:37:37 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 31 Aug 2016 02:37:38 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 31 Aug 2016 02:37:38 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f13ef8d9bc2a97c4e9cc49b2c5b5d7c5c6a538193f9e64965a29822eb83781`  
		Last Modified: Wed, 31 Aug 2016 17:56:45 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14983c6fa790adda977c40253b46d8035c12b060bef7a1db65ab0c0f909d401d`  
		Last Modified: Wed, 31 Aug 2016 17:56:35 GMT  
		Size: 5.7 MB (5687148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770248eccfbb7579787c2c8eb658d48f0a58f4ad10251a867fa3b4743505ef6c`  
		Last Modified: Wed, 31 Aug 2016 17:58:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.2-onbuild`

```console
$ docker pull pypy@sha256:2ce4f3f854c23037a23206a1983f5499368d91b51570dee70c22d896a0853921
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269408001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86766c4ba101825481e159f27f998e26669b3f96065fafb5ac94774a1ebc484`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:36:56 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:03 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 02:37:04 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:11 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 02:37:12 GMT
CMD ["pypy3"]
# Wed, 31 Aug 2016 02:37:37 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 02:37:37 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 02:37:37 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 31 Aug 2016 02:37:38 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 31 Aug 2016 02:37:38 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f13ef8d9bc2a97c4e9cc49b2c5b5d7c5c6a538193f9e64965a29822eb83781`  
		Last Modified: Wed, 31 Aug 2016 17:56:45 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14983c6fa790adda977c40253b46d8035c12b060bef7a1db65ab0c0f909d401d`  
		Last Modified: Wed, 31 Aug 2016 17:56:35 GMT  
		Size: 5.7 MB (5687148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770248eccfbb7579787c2c8eb658d48f0a58f4ad10251a867fa3b4743505ef6c`  
		Last Modified: Wed, 31 Aug 2016 17:58:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-onbuild`

```console
$ docker pull pypy@sha256:2ce4f3f854c23037a23206a1983f5499368d91b51570dee70c22d896a0853921
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269408001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86766c4ba101825481e159f27f998e26669b3f96065fafb5ac94774a1ebc484`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:36:56 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:03 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 02:37:04 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:11 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 02:37:12 GMT
CMD ["pypy3"]
# Wed, 31 Aug 2016 02:37:37 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 02:37:37 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 02:37:37 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 31 Aug 2016 02:37:38 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 31 Aug 2016 02:37:38 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f13ef8d9bc2a97c4e9cc49b2c5b5d7c5c6a538193f9e64965a29822eb83781`  
		Last Modified: Wed, 31 Aug 2016 17:56:45 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14983c6fa790adda977c40253b46d8035c12b060bef7a1db65ab0c0f909d401d`  
		Last Modified: Wed, 31 Aug 2016 17:56:35 GMT  
		Size: 5.7 MB (5687148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770248eccfbb7579787c2c8eb658d48f0a58f4ad10251a867fa3b4743505ef6c`  
		Last Modified: Wed, 31 Aug 2016 17:58:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-onbuild`

```console
$ docker pull pypy@sha256:2ce4f3f854c23037a23206a1983f5499368d91b51570dee70c22d896a0853921
```

-	Platforms:
	-	linux; amd64

### `pypy:3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269408001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86766c4ba101825481e159f27f998e26669b3f96065fafb5ac94774a1ebc484`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:36:56 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:03 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 02:37:04 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:11 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 02:37:12 GMT
CMD ["pypy3"]
# Wed, 31 Aug 2016 02:37:37 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 02:37:37 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 02:37:37 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 31 Aug 2016 02:37:38 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 31 Aug 2016 02:37:38 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f13ef8d9bc2a97c4e9cc49b2c5b5d7c5c6a538193f9e64965a29822eb83781`  
		Last Modified: Wed, 31 Aug 2016 17:56:45 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14983c6fa790adda977c40253b46d8035c12b060bef7a1db65ab0c0f909d401d`  
		Last Modified: Wed, 31 Aug 2016 17:56:35 GMT  
		Size: 5.7 MB (5687148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770248eccfbb7579787c2c8eb658d48f0a58f4ad10251a867fa3b4743505ef6c`  
		Last Modified: Wed, 31 Aug 2016 17:58:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:onbuild`

```console
$ docker pull pypy@sha256:2ce4f3f854c23037a23206a1983f5499368d91b51570dee70c22d896a0853921
```

-	Platforms:
	-	linux; amd64

### `pypy:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269408001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86766c4ba101825481e159f27f998e26669b3f96065fafb5ac94774a1ebc484`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:36:14 GMT
RUN apt-get purge -y python.*
# Wed, 31 Aug 2016 02:36:14 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:36:56 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Wed, 31 Aug 2016 02:37:03 GMT
RUN set -x 	&& curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 		| tar -xjC /usr/local --strip-components=1
# Wed, 31 Aug 2016 02:37:04 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:37:11 GMT
RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | pypy3 	&& pip install --upgrade pip==$PYTHON_PIP_VERSION
# Wed, 31 Aug 2016 02:37:12 GMT
CMD ["pypy3"]
# Wed, 31 Aug 2016 02:37:37 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 02:37:37 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 02:37:37 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 31 Aug 2016 02:37:38 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 31 Aug 2016 02:37:38 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63bbef2adf4f22ac366181c03c92a5198e482ef965a23ed31e1f864cf07c78ef`  
		Last Modified: Wed, 31 Aug 2016 17:54:14 GMT  
		Size: 222.4 KB (222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f13ef8d9bc2a97c4e9cc49b2c5b5d7c5c6a538193f9e64965a29822eb83781`  
		Last Modified: Wed, 31 Aug 2016 17:56:45 GMT  
		Size: 21.4 MB (21358047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14983c6fa790adda977c40253b46d8035c12b060bef7a1db65ab0c0f909d401d`  
		Last Modified: Wed, 31 Aug 2016 17:56:35 GMT  
		Size: 5.7 MB (5687148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770248eccfbb7579787c2c8eb658d48f0a58f4ad10251a867fa3b4743505ef6c`  
		Last Modified: Wed, 31 Aug 2016 17:58:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
