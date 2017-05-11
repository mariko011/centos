## `python:alpine`

```console
$ docker pull python@sha256:7def74071037709abafc4a812a0ae258a44c4e70285a739b260695d77cf2c31a
```

-	Platforms:
	-	linux; amd64

### `python:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29795851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e25b301e53a4e8a99583f3cffe2c029d4d843c651f0972c5aed15854b4dc3e8`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 19:31:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 19:31:48 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 19:31:51 GMT
RUN apk add --no-cache ca-certificates
# Wed, 10 May 2017 19:42:08 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 10 May 2017 19:42:09 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 11 May 2017 22:20:21 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 11 May 2017 22:20:22 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 11 May 2017 22:20:23 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 11 May 2017 22:20:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps openssl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 11 May 2017 22:20:31 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581a2604819e4cb5997a23050465a850a728e19ddf896f87fa4d434a680a34bf`  
		Last Modified: Wed, 10 May 2017 19:44:14 GMT  
		Size: 346.8 KB (346793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada98fe44e3a755b5e83d1a2e9020bcfdb947d0aa50bcb9823168b6e285c3b9b`  
		Last Modified: Thu, 11 May 2017 22:42:44 GMT  
		Size: 25.1 MB (25135102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b4de28adfd4eb4401b7f53b44601ffe7eb1a195373193d872757114907c62f`  
		Last Modified: Thu, 11 May 2017 22:42:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd83fe4359ec05c1323882251f44fa7d39bbddb917b8522fd26df9293ff50e3`  
		Last Modified: Thu, 11 May 2017 22:42:39 GMT  
		Size: 1.9 MB (1930694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
