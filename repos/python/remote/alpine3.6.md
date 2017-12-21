## `python:alpine3.6`

```console
$ docker pull python@sha256:e443a6d770dc66024426d8d5b0bab5991492aaeda833d1586567d80d781f80cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `python:alpine3.6` - linux; amd64

```console
$ docker pull python@sha256:fe130eeec6634c1ac87f5d682e299c93bad0ffb907d0c16efd49b00370744935
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30507795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea1f86f1a94500d8b3444b56d0ec42a7dda9ae4fbec49e070a42b353b124f33`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:37:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 04 Dec 2017 16:35:04 GMT
ENV LANG=C.UTF-8
# Mon, 04 Dec 2017 16:35:07 GMT
RUN apk add --no-cache ca-certificates
# Mon, 04 Dec 2017 16:35:10 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 21 Dec 2017 01:46:33 GMT
ENV PYTHON_VERSION=3.6.4
# Thu, 21 Dec 2017 01:48:53 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 21 Dec 2017 01:48:56 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 21 Dec 2017 01:48:56 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 21 Dec 2017 01:49:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 21 Dec 2017 01:49:03 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12143a78200d8b767aa9ccf5f352acfeb881455a66abc29541cf1510c6a098ab`  
		Last Modified: Mon, 04 Dec 2017 16:50:08 GMT  
		Size: 351.0 KB (351006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f906b3509051167ace73fbfdca95c6378b66cdd6ddb48634d59baafa9a6b536`  
		Last Modified: Thu, 21 Dec 2017 01:57:44 GMT  
		Size: 26.2 MB (26232092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7fb43a127d7435ddaafe2847c64314c426016fb8e8c2815942c9278f7b66eb7`  
		Last Modified: Thu, 21 Dec 2017 01:57:40 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3feee29ebaec582e6a1de149c73c0b55df808fdd37fe9f1a546a1f4f4190b5a8`  
		Last Modified: Thu, 21 Dec 2017 01:57:41 GMT  
		Size: 1.9 MB (1932965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:alpine3.6` - linux; arm variant v6

```console
$ docker pull python@sha256:01289adbc7956cd2af7e58d76968bb039356eefb248774c38cf34d79b2fdb4d1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30413716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac49d0fde14b16055b5b12f2572837bdb7447eaf44388ba64d64256e1a320154`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:27:04 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:27:04 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 05:27:07 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 05:27:07 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 21 Dec 2017 04:42:46 GMT
ENV PYTHON_VERSION=3.6.4
# Thu, 21 Dec 2017 04:44:55 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 21 Dec 2017 04:44:56 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 21 Dec 2017 04:44:56 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 21 Dec 2017 04:45:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 21 Dec 2017 04:45:07 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8815f8619ffb1524cd1fb52776f089f15e9bf9fb1df3bc1b5c6542db5f81eaae`  
		Last Modified: Thu, 26 Oct 2017 05:35:11 GMT  
		Size: 352.1 KB (352150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ec5831e5ddec1b42f0debcfa34765dccbd21bdacdec875eca13b19022c72a9`  
		Last Modified: Thu, 21 Dec 2017 04:45:54 GMT  
		Size: 26.2 MB (26162637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bdc385c60253bc53fff779b478f7a13823b5f034cf594f0234d4ab9c91c69a`  
		Last Modified: Thu, 21 Dec 2017 04:45:45 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb00bf9887e3e9f4c4df3a7d61dd1571ae2afcbef9845c7b06ff2947eef75ee5`  
		Last Modified: Thu, 21 Dec 2017 04:45:46 GMT  
		Size: 1.9 MB (1932542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
