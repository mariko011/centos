## `python:slim`

```console
$ docker pull python@sha256:aa1781b8d48a2f5dc248cbe58193b4345abf3ca87b08535ccaefe7f6ed0327b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `python:slim` - linux; amd64

```console
$ docker pull python@sha256:b1f6500256b5c9f6ed3249df671049c0311fd0c81bac56b3a1aa5895c50cc7b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54696727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c23cb4208584eccf9d5aed4c68547b35e34fe20e2b94837a73e1387903ef6762`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:02:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:02:31 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 20:29:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Oct 2017 20:29:14 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Mon, 23 Oct 2017 20:29:14 GMT
ENV PYTHON_VERSION=3.6.3
# Mon, 23 Oct 2017 20:31:31 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 23 Oct 2017 20:31:32 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 23 Oct 2017 20:31:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 23 Oct 2017 20:31:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 23 Oct 2017 20:31:56 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41122b4bdfb1683d0fc70a29de8e6212ef9294c746fb519b8a2f84cab268a1d`  
		Last Modified: Mon, 23 Oct 2017 20:45:55 GMT  
		Size: 2.9 MB (2859598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a539ca9f40751dd55bb7653d1f1a9bfb90997a7ea8056533e77fdc944c837c`  
		Last Modified: Mon, 23 Oct 2017 20:45:58 GMT  
		Size: 19.8 MB (19754756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2abb6d8fe86a05c5566710c710bdd8a59337436de186aaf2191423e521ffbd`  
		Last Modified: Mon, 23 Oct 2017 20:45:55 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5058883765cd1a71d80bc94b307831df8b27e1546c2773426ec656bb6127097e`  
		Last Modified: Mon, 23 Oct 2017 20:45:55 GMT  
		Size: 2.0 MB (1968814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:slim` - linux; arm variant v5

```console
$ docker pull python@sha256:f6c228c7738681289c2cf3700c750e0968cc1993781c3ba7a4b88110e140c285
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52342689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7c90eb6502329277295771cde4e4a2b0ce64159460cfd8fe5e8e2de8794e34`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:24 GMT
ADD file:b3e61e5275e7047cc330ef997896c9e74467b5134f0cada4325564a122204b61 in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:44:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:44:56 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 23:07:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Oct 2017 23:07:22 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Mon, 23 Oct 2017 23:07:22 GMT
ENV PYTHON_VERSION=3.6.3
# Mon, 23 Oct 2017 23:10:17 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 23 Oct 2017 23:10:17 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 23 Oct 2017 23:10:18 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 23 Oct 2017 23:11:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 23 Oct 2017 23:11:03 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:355c947ce54f583e3c4723632384e762cf27a159cb11b7ff6af3106dc7bf8e99`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 28.4 MB (28424201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9cb5f689a4d1953efe3e7db16d40ef4489ffc55197c0b8954bcbc33079da80`  
		Last Modified: Mon, 23 Oct 2017 23:31:33 GMT  
		Size: 2.6 MB (2608007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517f676dc4c6ae00618001e7fbcc9d05318276d4afb7da71e64720db28b9efd1`  
		Last Modified: Mon, 23 Oct 2017 23:31:38 GMT  
		Size: 19.3 MB (19341841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf9bae20eb8438db3df08d95de88bd0263a7eb7c7645847cd9ef1c05fa04ae3`  
		Last Modified: Mon, 23 Oct 2017 23:31:31 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0597fea153cce9ceaf2053de5c8f5b06ebead1bd62448bf10ba36ef0da5af13`  
		Last Modified: Mon, 23 Oct 2017 23:31:32 GMT  
		Size: 2.0 MB (1968400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:slim` - linux; arm variant v7

```console
$ docker pull python@sha256:47838a268eab5c05629bd09ee8fe42827d24fdf6007e2e9f39f47217fda3a850
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49610190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a33bb17c299fe8c2ec249fc59d9139cedfbbb925eedce3378452c3c3d5f329`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:13:29 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 07:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Oct 2017 07:06:32 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 24 Oct 2017 07:06:32 GMT
ENV PYTHON_VERSION=3.6.3
# Tue, 24 Oct 2017 07:09:10 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 24 Oct 2017 07:09:11 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 24 Oct 2017 07:09:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 24 Oct 2017 07:09:55 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 24 Oct 2017 07:09:55 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09799cf89de31c8d8a5af1d540289615f29e160428453cd61e784df3c8308b83`  
		Last Modified: Tue, 24 Oct 2017 07:26:51 GMT  
		Size: 2.5 MB (2476110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1c8574901fa233737e544bf862ee5badd1163ca5a881ad4a752d5c06a3e69b`  
		Last Modified: Tue, 24 Oct 2017 07:26:56 GMT  
		Size: 18.9 MB (18884417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad493e40133b04c21f137a275649c14ce10b3571f54daa2a4f7d582b973444b`  
		Last Modified: Tue, 24 Oct 2017 07:26:49 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107e03118b580a639ee2e0d1db02f7f2afce9ee50c127c45b70f79550f007b07`  
		Last Modified: Tue, 24 Oct 2017 07:26:50 GMT  
		Size: 2.0 MB (1968440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:slim` - linux; arm64 variant v8

```console
$ docker pull python@sha256:7593881cc762c257f9a3d8a8f6553c821eb0e42f88bd2d6c4bfbf176f129ded5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.0 MB (52019196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b605cc6ccbd67aa523a422123c2c1756cbe05c64372211f7f69e56ffeafb36`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 24 Oct 2017 11:02:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Oct 2017 11:02:36 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 11:03:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Oct 2017 11:03:15 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 24 Oct 2017 11:03:16 GMT
ENV PYTHON_VERSION=3.6.3
# Tue, 24 Oct 2017 11:10:07 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 24 Oct 2017 11:10:08 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 24 Oct 2017 11:10:09 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 24 Oct 2017 11:11:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 24 Oct 2017 11:11:02 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da78b0687502b9b35d4a8a2bb9f13f7ec9700e9ace3817ed4563b31cf3877638`  
		Last Modified: Tue, 24 Oct 2017 11:54:31 GMT  
		Size: 2.6 MB (2619616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89721915b31dda5fb246b26f7e77fc87b271924fb49192146240db2afd170887`  
		Last Modified: Tue, 24 Oct 2017 11:55:03 GMT  
		Size: 19.9 MB (19949595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba3fa741ca8f105854ad524f93bbc1772da7910554b64256eb592d060d314f5`  
		Last Modified: Tue, 24 Oct 2017 11:54:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf16aa134057b2b6f7b29e6add8d17822b06a4d48603a147f1cd37a9ee4d7e6`  
		Last Modified: Tue, 24 Oct 2017 11:54:31 GMT  
		Size: 2.0 MB (1969154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:slim` - linux; 386

```console
$ docker pull python@sha256:18f552997d066b7f17800c0bce378dd72a5f437d573d6cda2a8547872de3e8a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55425449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1875fa49c2d9e26861f16a9179cdcb42c8afde5e391bfdcd26f7dadc265163c0`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:11:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:11:27 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 16:11:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Oct 2017 16:11:12 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 24 Oct 2017 16:11:12 GMT
ENV PYTHON_VERSION=3.6.3
# Tue, 24 Oct 2017 16:14:18 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 24 Oct 2017 16:14:18 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 24 Oct 2017 16:14:18 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 24 Oct 2017 16:15:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 24 Oct 2017 16:15:02 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b510c03d1224ef93df5f1c39481333313222b7e4ef03fe788b9c53a85517c31f`  
		Last Modified: Tue, 24 Oct 2017 16:56:36 GMT  
		Size: 5.0 MB (4957897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410defec8a90ff81befd30895fe69ab09757dfa04fdd1397e314b08aa360f79f`  
		Last Modified: Tue, 24 Oct 2017 16:56:38 GMT  
		Size: 18.2 MB (18233984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8cdc0c45f8f9039e43a27271f7284bbf94def78ab83b3ede9b38f693ba98b26`  
		Last Modified: Tue, 24 Oct 2017 16:56:34 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315f07e1467a15623a8dbf03a5c73ca4b065d2cd30e558c0f0627778998ad93c`  
		Last Modified: Tue, 24 Oct 2017 16:56:35 GMT  
		Size: 2.0 MB (1968873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:slim` - linux; ppc64le

```console
$ docker pull python@sha256:7b474b48e46a887f8501ffa715bd43e1ef78736c2f9ce81fc2dec4e8c8ad4d7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54528279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5308016ad0acceba6062ea41cd0f1e7e19c2fc783048ac1e10b1a3414dd450`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:16 GMT
ADD file:2116c25fe6275b240bd8d3a4bfe6f707d53b8f7c679a08dc4e82f9351e32073f in / 
# Mon, 09 Oct 2017 21:43:18 GMT
CMD ["bash"]
# Tue, 24 Oct 2017 08:20:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Oct 2017 08:20:48 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 08:21:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Oct 2017 08:21:41 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 24 Oct 2017 08:21:43 GMT
ENV PYTHON_VERSION=3.6.3
# Tue, 24 Oct 2017 08:33:44 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 24 Oct 2017 08:33:48 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 24 Oct 2017 08:33:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 24 Oct 2017 08:35:13 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 24 Oct 2017 08:35:15 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:3e88472df41b6d64a43bb66e5def74c4e222f868fe8eb13015accec0b9812609`  
		Last Modified: Mon, 09 Oct 2017 21:49:29 GMT  
		Size: 29.3 MB (29306532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadefaf9b6f049291a16065b7e2c31956461237827064f77a062ac033b407f86`  
		Last Modified: Tue, 24 Oct 2017 09:40:02 GMT  
		Size: 2.8 MB (2762549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ae3186246652f86eec53989e10483450c3380e26673a65d8a9037edec58657`  
		Last Modified: Tue, 24 Oct 2017 09:40:08 GMT  
		Size: 20.5 MB (20488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e5e82c892eb3b40679460dbcbaf20aebe274629b8283176cf777feb2a7128a`  
		Last Modified: Tue, 24 Oct 2017 09:40:00 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d06b62e24369f507fe3b28023d94c1087061ddb7fbc4721da7dfcc5d68e45593`  
		Last Modified: Tue, 24 Oct 2017 09:40:02 GMT  
		Size: 2.0 MB (1970725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:slim` - linux; s390x

```console
$ docker pull python@sha256:ef5f7f3eb65d199d77fa16b0fddab35e59fdc552d904ccaae0536d0b546459db
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.0 MB (55979334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be9e53a5ba5604800aeef5740f032b6b065eac67739a43c4eca66626101a7dba`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:6cb76b1e40d19c5c42495dcfac0822e2e2e999e93fbe2274c6b7222bb6659b20 in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Tue, 24 Oct 2017 13:57:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Oct 2017 13:57:44 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 13:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Oct 2017 13:58:01 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 24 Oct 2017 13:58:01 GMT
ENV PYTHON_VERSION=3.6.3
# Tue, 24 Oct 2017 14:00:04 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 24 Oct 2017 14:00:05 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 24 Oct 2017 14:00:05 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 24 Oct 2017 14:00:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 24 Oct 2017 14:00:37 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:e5707ed2790f9e4144aedd6b69cce68d5bbd2267ce4f8885c072ee882ab1a8ad`  
		Last Modified: Mon, 09 Oct 2017 21:46:52 GMT  
		Size: 30.3 MB (30294195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0182a4bb03e45272858dbb41d0b7892fd5235d043547e0b70285bf8c4339c46a`  
		Last Modified: Tue, 24 Oct 2017 14:12:46 GMT  
		Size: 2.9 MB (2859479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a939476b83f111007ad23da3b9d0c59ca8b9e83dbe797d566b88516d3c3fbd70`  
		Last Modified: Tue, 24 Oct 2017 14:12:50 GMT  
		Size: 20.9 MB (20857528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79489104e7a3b89962fe722351873694681534b25f11e4b15c6b936921168a22`  
		Last Modified: Tue, 24 Oct 2017 14:12:44 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed6b3a28a8ec3a3cff99ecc36bea5cea3216bae13dc31be6b95b34a230caa6c`  
		Last Modified: Tue, 24 Oct 2017 14:12:45 GMT  
		Size: 2.0 MB (1967890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
