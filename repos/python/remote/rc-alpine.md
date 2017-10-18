## `python:rc-alpine`

```console
$ docker pull python@sha256:0145ff259f9cd00c532d79fb83ee328b052118d6035f799952b54996eb61c1d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `python:rc-alpine` - linux; amd64

```console
$ docker pull python@sha256:82cc4577e7431c3151db88220227f0bfed52c40bf555865c3ae9e9e4b7017d6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.3 MB (32274872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c161933c0acb7f9598ccd17422fb0267d7c0e76a0c73e8b8c8f2e2ed29cc53bb`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 14:33:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:33:18 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:33:22 GMT
RUN apk add --no-cache ca-certificates
# Wed, 13 Sep 2017 14:33:22 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 18 Oct 2017 20:29:01 GMT
ENV PYTHON_VERSION=3.7.0a2
# Wed, 18 Oct 2017 20:30:53 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 18 Oct 2017 20:30:53 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 18 Oct 2017 20:30:54 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 18 Oct 2017 20:31:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 18 Oct 2017 20:31:01 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84ab652b0eeae14ab2dab3e19e1aa115a2bd5390f78261a782a68926f6dadd6`  
		Last Modified: Thu, 14 Sep 2017 23:59:07 GMT  
		Size: 351.4 KB (351355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3f4804e53c4ac2e9a0dc40606417c45e2b3ff9ece86995d4f889d2bfc4835b`  
		Last Modified: Wed, 18 Oct 2017 21:35:37 GMT  
		Size: 28.0 MB (28007172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a332980b2add20667f2a98f9016f15f5a89c835600b6876b68b0c9586ae433fb`  
		Last Modified: Wed, 18 Oct 2017 21:35:29 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a060e825287a3d0b462f313563cadaebeb9238bc9bfa5c74cf16d0a7391bc743`  
		Last Modified: Wed, 18 Oct 2017 21:35:30 GMT  
		Size: 1.9 MB (1925716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
