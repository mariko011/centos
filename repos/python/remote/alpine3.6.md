## `python:alpine3.6`

```console
$ docker pull python@sha256:41f5b94108f82e7117bc38b889df6c6c7f6d14b43f97a6e28d2e231b6ff67845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `python:alpine3.6` - linux; amd64

```console
$ docker pull python@sha256:506bbca3803f3b5a34dfd3098d80a26f3b2ddefe307bf88fe16aa430a83b158c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31647865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b1ac8f23f73ba98aa20f5ec6bded403d304ab8a0889d4f729acce4356a1a69b`
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
# Wed, 13 Sep 2017 14:33:23 GMT
ENV PYTHON_VERSION=3.6.2
# Wed, 13 Sep 2017 14:35:02 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 13 Sep 2017 14:35:03 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 13 Sep 2017 14:35:03 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 13 Sep 2017 14:35:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 13 Sep 2017 14:35:11 GMT
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
	-	`sha256:fe273bdfb30af1d30ba4787718df104d12d7c678f510bf67e9e2412598feed3d`  
		Last Modified: Thu, 14 Sep 2017 23:59:16 GMT  
		Size: 27.4 MB (27383754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee9360c58a8dccbb6effa836d6d9797ca1a5a3742fca2739bb2b7f4b6e11fda`  
		Last Modified: Thu, 14 Sep 2017 23:59:06 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a835cf61b0e01d3ccd905132dc113eb071d790fcdc33180e7fdead0c73ac84c0`  
		Last Modified: Thu, 14 Sep 2017 23:59:08 GMT  
		Size: 1.9 MB (1922126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
