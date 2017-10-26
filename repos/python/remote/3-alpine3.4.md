## `python:3-alpine3.4`

```console
$ docker pull python@sha256:faa60a68ab007c8d1c1b8409f3efb47278bf6a879987a76d685697ebf023bfce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `python:3-alpine3.4` - linux; amd64

```console
$ docker pull python@sha256:0f46b74260203784249b06abe167f47580ccf5c211049418706d501ae7d82082
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29687630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83da413805809a25edd2b050166d335b609b6c502ec433e0b42309e675d72ce9`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 25 Oct 2017 23:20:59 GMT
ADD file:90342832e4e7931e42954849ed51216e77b3c974270ed83e9da5648918fb5e66 in / 
# Wed, 25 Oct 2017 23:20:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:47:28 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 01:47:28 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:47:31 GMT
RUN apk add --no-cache ca-certificates
# Thu, 26 Oct 2017 01:47:31 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 26 Oct 2017 01:47:32 GMT
ENV PYTHON_VERSION=3.6.3
# Thu, 26 Oct 2017 01:51:01 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 26 Oct 2017 01:51:02 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 26 Oct 2017 01:51:03 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 26 Oct 2017 01:51:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps openssl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Oct 2017 01:51:13 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:49388a8c9c86a6f56d228954eede699c64fce6c671a989e3e21c391859694645`  
		Last Modified: Wed, 25 Oct 2017 23:22:36 GMT  
		Size: 2.4 MB (2385012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001230eb5e152b575d24ee589062d6353446ec3935c1ef5253fb31d29ee88bb7`  
		Last Modified: Thu, 26 Oct 2017 02:20:41 GMT  
		Size: 346.8 KB (346846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002c2c9c1a4ab8ffc38c6b7b327cde8ef557a9c31e0ecb2526d624f62bbd46d0`  
		Last Modified: Thu, 26 Oct 2017 02:20:53 GMT  
		Size: 25.0 MB (25028350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3040363a60c846a5ef6c6c9f961be8be260621485e01f5af5cdf4037c018a5b4`  
		Last Modified: Thu, 26 Oct 2017 02:20:41 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d682f8c94d1dacffb3fb3f8386364bd51a254daa069b74f994d7d51950b665fc`  
		Last Modified: Thu, 26 Oct 2017 02:20:42 GMT  
		Size: 1.9 MB (1927191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
