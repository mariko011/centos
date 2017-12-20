## `python:rc-alpine3.7`

```console
$ docker pull python@sha256:923d32fa92b60f31ad21dbb74dcd0014522b5c7b6de271cd8b124e9c82d4cc33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `python:rc-alpine3.7` - linux; amd64

```console
$ docker pull python@sha256:e5b2de2bfef3fca0ea67446ce00ad0784be1f43661efb9c2f47c2c68a7d1ca68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30854048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea09749dc413b573012a1ef858d49ec40e0677d18799a7cb25dd073d75202a7`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 19 Dec 2017 17:33:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Dec 2017 17:33:44 GMT
ENV LANG=C.UTF-8
# Tue, 19 Dec 2017 17:33:48 GMT
RUN apk add --no-cache ca-certificates
# Tue, 19 Dec 2017 17:33:54 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 19 Dec 2017 17:33:54 GMT
ENV PYTHON_VERSION=3.7.0a3
# Tue, 19 Dec 2017 17:35:38 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 19 Dec 2017 17:37:27 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 19 Dec 2017 17:37:28 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 19 Dec 2017 17:37:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 19 Dec 2017 17:37:36 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7511e2b5361e480062ea82e001f7539da5286944bd1c792c47f1e4fc583c9cc2`  
		Last Modified: Tue, 19 Dec 2017 17:55:15 GMT  
		Size: 308.0 KB (308011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ed4f6645f543fe897ba58e79917bfcf500471693716b54cb01b11837fc4a63`  
		Last Modified: Tue, 19 Dec 2017 17:55:22 GMT  
		Size: 26.7 MB (26703373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20ac448e979e4778a950e352b15728da48e015174d091ae998e410f3b9c09de`  
		Last Modified: Tue, 19 Dec 2017 17:55:14 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5f8a3493e3ee74ddfd268ac603ef49f31d2044f7c23b0dab9c2ae615c5bac1`  
		Last Modified: Tue, 19 Dec 2017 17:55:15 GMT  
		Size: 1.8 MB (1777524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-alpine3.7` - linux; arm variant v6

```console
$ docker pull python@sha256:00d81cc83ea56e1350635e8ac8b5a3b6bdc08449ebf8239c0b838531970f9c0b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29573982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb70f4abaf070e371a77a26e2e73d5fe1b76ad2bba6a28f1d02e2d9c1842749d`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 20 Dec 2017 04:40:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Dec 2017 04:40:26 GMT
ENV LANG=C.UTF-8
# Wed, 20 Dec 2017 04:40:31 GMT
RUN apk add --no-cache ca-certificates
# Wed, 20 Dec 2017 04:40:31 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 20 Dec 2017 04:40:32 GMT
ENV PYTHON_VERSION=3.7.0a3
# Wed, 20 Dec 2017 04:42:34 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 20 Dec 2017 04:42:35 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 20 Dec 2017 04:42:36 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 20 Dec 2017 04:42:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 20 Dec 2017 04:42:49 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d9ae9cdefc5545624aa88c89890de707d4e6136015214f6507c877da344c70`  
		Last Modified: Wed, 20 Dec 2017 04:54:30 GMT  
		Size: 308.8 KB (308784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629852cbe96a260aa615e0b6bdce443a5b007b98b1b750191ada124ab1c121a0`  
		Last Modified: Wed, 20 Dec 2017 04:54:39 GMT  
		Size: 25.4 MB (25448355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325aeb33f3301e644d7cce11df57f7ed5f0c178dda16956b820a6b6f0cb5b66e`  
		Last Modified: Wed, 20 Dec 2017 04:54:31 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ba532b86f275d48d26655a560fe0851cd3c91827612070fe7cf76847f34be8`  
		Last Modified: Wed, 20 Dec 2017 04:54:31 GMT  
		Size: 1.8 MB (1778140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
