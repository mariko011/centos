## `python:2-slim-jessie`

```console
$ docker pull python@sha256:b1e93780db625d06bedbb6ef42653a748eff45f5b7ea2c0074af06c8cf92f939
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

### `python:2-slim-jessie` - linux; amd64

```console
$ docker pull python@sha256:71caee703f37c9b3b5ad9a9c2028e9670de92f75319ad225e91016828316c4bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49722351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:110a3ab654cb455d49ca49035935da6b473b4a623af26df3a7913749d20e58e9`
-	Default Command: `["python2"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 23:34:38 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 23:34:38 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 00:04:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:04:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 04 Nov 2017 00:04:57 GMT
ENV PYTHON_VERSION=2.7.14
# Sat, 04 Nov 2017 00:07:15 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 04 Nov 2017 00:07:16 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 04 Nov 2017 00:07:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 04 Nov 2017 00:07:31 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84e1d862e032c23eb0cc9b3b5618d5e51b7c7a391ed329e2e55ba714b1edde5`  
		Last Modified: Sat, 04 Nov 2017 00:23:37 GMT  
		Size: 2.7 MB (2710555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e43112ed79bf37575f185aa2ad7aaeb888c9d17c3533542b27d863e1f96d8fa`  
		Last Modified: Sat, 04 Nov 2017 00:23:40 GMT  
		Size: 14.9 MB (14933551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b773e21a5a119421bb500405737b5182df4ee1a6de0bebbb6203704981878190`  
		Last Modified: Sat, 04 Nov 2017 00:23:37 GMT  
		Size: 2.0 MB (1964927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; arm variant v5

```console
$ docker pull python@sha256:af5a9798fed28edae88582663ef9453f131ae29a8598013ff6c53cd557dcc0f0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47728442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159ab44abd8d30eab7271a1aeacbe23c9c7616a26f7ccfe6dd562e163e7b6ecc`
-	Default Command: `["python2"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:24 GMT
ADD file:b3e61e5275e7047cc330ef997896c9e74467b5134f0cada4325564a122204b61 in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:44:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:44:56 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 23:24:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:24:07 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 03 Nov 2017 23:24:08 GMT
ENV PYTHON_VERSION=2.7.14
# Fri, 03 Nov 2017 23:27:48 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 03 Nov 2017 23:27:49 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 03 Nov 2017 23:28:35 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 03 Nov 2017 23:28:35 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:355c947ce54f583e3c4723632384e762cf27a159cb11b7ff6af3106dc7bf8e99`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 28.4 MB (28424201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f91f7589995f7a342198df7b143aa6913aa1100198a45ae694b67bec8b24a55`  
		Last Modified: Fri, 03 Nov 2017 23:32:37 GMT  
		Size: 2.5 MB (2479678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9485e7bfffc89d2479d25f894d603c3e16a84699d9c7d6c2f87a7193da45ab0`  
		Last Modified: Fri, 03 Nov 2017 23:32:41 GMT  
		Size: 14.9 MB (14859905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e9173becee83e7311b09b6e2c111330e4d685253ff339b515c2f69ed9d2f1d`  
		Last Modified: Fri, 03 Nov 2017 23:32:37 GMT  
		Size: 2.0 MB (1964658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; arm variant v7

```console
$ docker pull python@sha256:b349cd6654fdfb19e0a548a82056f9673fdfbc234cc3dac9709f91d1360f9e13
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45146721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d41b30b1cb4214a47f07b96fed7d2f5387cb8fcd63389d7f9b3531bf3a536d8`
-	Default Command: `["python2"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:13:29 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:23:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:23:46 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 04 Nov 2017 07:23:46 GMT
ENV PYTHON_VERSION=2.7.14
# Sat, 04 Nov 2017 07:27:17 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 04 Nov 2017 07:27:17 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 04 Nov 2017 07:28:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 04 Nov 2017 07:28:02 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47473bf43c7f4a8e630ce2c04299a81d9fcd95adaff484087aee068beb19f568`  
		Last Modified: Sat, 04 Nov 2017 07:33:33 GMT  
		Size: 2.4 MB (2360029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f06d4b93d5115eaf2c5a83ffdaa16ee4e4c4a1080b0cce11490b6da1fcc5f2`  
		Last Modified: Sat, 04 Nov 2017 07:33:37 GMT  
		Size: 14.5 MB (14540929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dab12447a611d333000508bae994f4583c307cd745794efdd80cfdb7ec65a7f`  
		Last Modified: Sat, 04 Nov 2017 07:33:34 GMT  
		Size: 2.0 MB (1964781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; arm64 variant v8

```console
$ docker pull python@sha256:f4496fabe470da0fed1d5bc1f599ec6eab473bce850070daca6a347ca178ee40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46973718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08cdb9f14ea8eb0721fccb9d2e0c04b4bfa61aaccdf5f998942c19fdee5996fb`
-	Default Command: `["python2"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 24 Oct 2017 11:02:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Oct 2017 11:02:36 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 11:42:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Oct 2017 11:42:43 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 24 Oct 2017 11:42:44 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 02 Nov 2017 12:44:48 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 02 Nov 2017 12:44:49 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 02 Nov 2017 12:45:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 02 Nov 2017 12:45:51 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0a03f874a29add6a039fbfc450cf600f7d3bfb72a8a06d0fb061ddeff1b13c`  
		Last Modified: Tue, 24 Oct 2017 11:58:55 GMT  
		Size: 2.5 MB (2479588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8322f570558249135b8f5fb7a3bde232404da9c18e1ea6121225b630e436c5b8`  
		Last Modified: Thu, 02 Nov 2017 18:08:09 GMT  
		Size: 15.0 MB (15048189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846a38da8a96ec8c904ccc448bb7c84f7e7597a82e931a1a4c5aa5fabdf680bd`  
		Last Modified: Thu, 02 Nov 2017 18:08:01 GMT  
		Size: 2.0 MB (1965350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; 386

```console
$ docker pull python@sha256:09610d008a4d82ffa293e250fed05dcc9cb29ae9db6ded430e64e6aa7bcd41d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50995790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f53b1a57acc69cc5be12fa9360f2c9f1e5e843584a05c6154e419b940c5643c`
-	Default Command: `["python2"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:11:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:11:27 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 16:46:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Oct 2017 16:46:59 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 24 Oct 2017 16:47:00 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 02 Nov 2017 16:25:04 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 02 Nov 2017 16:25:04 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 02 Nov 2017 16:25:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 02 Nov 2017 16:25:48 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da8099ca822e21034a3f1c8c73f0dc68aeef954f4569259ec1b0119de1025a9`  
		Last Modified: Tue, 24 Oct 2017 16:59:09 GMT  
		Size: 4.8 MB (4809761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b29982a5bdadc7aeb435720a914da5ee5b9ad5917f67435ace917bef818b3c`  
		Last Modified: Thu, 02 Nov 2017 16:36:16 GMT  
		Size: 14.0 MB (13956621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44705524a20de3f0bce39c065092111d1829d897447d48ec7b3be965032a8cd7`  
		Last Modified: Thu, 02 Nov 2017 16:36:13 GMT  
		Size: 2.0 MB (1964954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; ppc64le

```console
$ docker pull python@sha256:53fcdaca3e1ccd1525920db66591877ec95e593e778865ba0978327ac5e965c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49389187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ee996416f80803bd1b642593558b44e8fce81cc8d2fc3813e065809fab5b89`
-	Default Command: `["python2"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:16 GMT
ADD file:2116c25fe6275b240bd8d3a4bfe6f707d53b8f7c679a08dc4e82f9351e32073f in / 
# Mon, 09 Oct 2017 21:43:18 GMT
CMD ["bash"]
# Tue, 24 Oct 2017 08:20:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Oct 2017 08:20:48 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 08:53:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 08:53:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 04 Nov 2017 08:53:50 GMT
ENV PYTHON_VERSION=2.7.14
# Sat, 04 Nov 2017 09:01:22 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 04 Nov 2017 09:01:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 04 Nov 2017 09:02:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 04 Nov 2017 09:02:28 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:3e88472df41b6d64a43bb66e5def74c4e222f868fe8eb13015accec0b9812609`  
		Last Modified: Mon, 09 Oct 2017 21:49:29 GMT  
		Size: 29.3 MB (29306532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96590ad7ddc76b8da9c7c1263b0a5944ae14c3c39be307e68b98ff7a3ff20fc7`  
		Last Modified: Sat, 04 Nov 2017 09:07:33 GMT  
		Size: 2.6 MB (2607772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2d1bab7f4cc1201cacf27d556f0149ff7b5a6366ec826cdc6d0a9b233017c4`  
		Last Modified: Sat, 04 Nov 2017 09:07:37 GMT  
		Size: 15.5 MB (15508284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5a6b2d41cddaf13ea901bb40272ca59eee09ee69aa81b350bf74a3747cca63`  
		Last Modified: Sat, 04 Nov 2017 09:07:33 GMT  
		Size: 2.0 MB (1966599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; s390x

```console
$ docker pull python@sha256:cfe97efc18bb67b5cedc49701b5624e4541c7e3ab862646f4afee3ed230fffb2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50812842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e01d56024499bdf72ee363719b2b7eb5dedefb3ddfe773e1793d113a4c3a6b`
-	Default Command: `["python2"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:6cb76b1e40d19c5c42495dcfac0822e2e2e999e93fbe2274c6b7222bb6659b20 in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Tue, 24 Oct 2017 13:57:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Oct 2017 13:57:44 GMT
ENV LANG=C.UTF-8
# Tue, 24 Oct 2017 14:09:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Oct 2017 14:09:02 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 24 Oct 2017 14:09:02 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 02 Nov 2017 14:09:29 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 02 Nov 2017 14:09:29 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 02 Nov 2017 14:09:47 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 02 Nov 2017 14:09:48 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:e5707ed2790f9e4144aedd6b69cce68d5bbd2267ce4f8885c072ee882ab1a8ad`  
		Last Modified: Mon, 09 Oct 2017 21:46:52 GMT  
		Size: 30.3 MB (30294195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308701414483f9c75e4626d0dfc58ee66895838ae1c716bdf97c2e2d55be02c3`  
		Last Modified: Tue, 24 Oct 2017 14:14:19 GMT  
		Size: 2.7 MB (2709930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2146d77ec694eef41d07d355e847cf1ee8f91d89482588075b7888a2988f58f`  
		Last Modified: Thu, 02 Nov 2017 14:13:03 GMT  
		Size: 15.8 MB (15844727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111a50f10b4c7e8eb0b92cbe2081919c90247d07509799b0441f4b165b8d6d21`  
		Last Modified: Thu, 02 Nov 2017 14:12:59 GMT  
		Size: 2.0 MB (1963990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
