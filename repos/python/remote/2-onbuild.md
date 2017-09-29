## `python:2-onbuild`

```console
$ docker pull python@sha256:29d4da910e6ea26ed17fb0dc6c93f47119263c61f12da1e0e41afbd9c1b14a24
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

### `python:2-onbuild` - linux; amd64

```console
$ docker pull python@sha256:05e6566e245958e3efe0616ec743c76d3d6d53c76abd9fb8de92b4693f3b842f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.7 MB (272744475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82754808109aa57bb84dc0ee911fdae5c1a2825be556b88b83fdb39b88376c2b`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:25:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 14:25:25 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 14:25:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:42:20 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 18 Sep 2017 20:46:38 GMT
ENV PYTHON_VERSION=2.7.14
# Mon, 18 Sep 2017 20:48:30 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 18 Sep 2017 20:48:30 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 18 Sep 2017 20:48:34 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 18 Sep 2017 20:48:36 GMT
RUN pip install --no-cache-dir virtualenv
# Mon, 18 Sep 2017 20:48:36 GMT
CMD ["python2"]
# Mon, 18 Sep 2017 20:51:44 GMT
RUN mkdir -p /usr/src/app
# Mon, 18 Sep 2017 20:51:44 GMT
WORKDIR /usr/src/app
# Mon, 18 Sep 2017 20:51:44 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Mon, 18 Sep 2017 20:51:44 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Mon, 18 Sep 2017 20:51:44 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71152c33fd217d4408c0e7a2f308e66c0be1a58f4af9069be66b8e97f7534d2`  
		Last Modified: Thu, 14 Sep 2017 02:35:37 GMT  
		Size: 3.2 MB (3167302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299c2fe5f47feb6da535169f72b288b1df2cf299173ee3298fdfb06508c8e977`  
		Last Modified: Mon, 18 Sep 2017 20:58:43 GMT  
		Size: 14.8 MB (14816458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6116a194f6b508c448a9d80be2a407aadaaf89be34e6c8cc6fee325380d240ec`  
		Last Modified: Mon, 18 Sep 2017 20:58:41 GMT  
		Size: 1.7 MB (1658378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3631cfa2c8cc79c0d3ef7376f63afb2fca7ee6e523f38bcbba3647920bf817d1`  
		Last Modified: Mon, 18 Sep 2017 20:58:42 GMT  
		Size: 3.3 MB (3330669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7856d9514ab9994aa416ca306e31a80be8a43ea051df8bd20e5bca4808490e72`  
		Last Modified: Mon, 18 Sep 2017 20:59:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-onbuild` - linux; arm variant v5

```console
$ docker pull python@sha256:ee92110586f78b11f5b48c5d733f52afe5e5f6135a2164773876d4368109613c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250500251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774b4c2929a9cc3054b828e0d6875f35bba8aa8d1b1f87bba9f7a8267b8cb3fe`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:27 GMT
ADD file:195667b0ccd6dad7d7793044adefb6ab0b4934a95d6383e0e1b09275397bc1e7 in / 
# Wed, 27 Sep 2017 14:24:27 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:47:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 14:48:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:50:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:41:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:41:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:41:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Sep 2017 00:25:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 29 Sep 2017 00:25:56 GMT
ENV PYTHON_VERSION=2.7.14
# Fri, 29 Sep 2017 00:29:49 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 29 Sep 2017 00:29:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 29 Sep 2017 00:30:01 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 29 Sep 2017 00:30:07 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 29 Sep 2017 00:30:08 GMT
CMD ["python2"]
# Fri, 29 Sep 2017 00:35:45 GMT
RUN mkdir -p /usr/src/app
# Fri, 29 Sep 2017 00:35:45 GMT
WORKDIR /usr/src/app
# Fri, 29 Sep 2017 00:35:45 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 29 Sep 2017 00:35:46 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Fri, 29 Sep 2017 00:35:46 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:0000473879860f50b5d7e33d60cdb2bd20eccd2563da6dfab9023b079c54f91b`  
		Last Modified: Wed, 27 Sep 2017 14:28:25 GMT  
		Size: 50.9 MB (50879797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383dc0c402c2a94402ca03cfa2ec05c87d8e91d968961c72d52a7f47b0823a7f`  
		Last Modified: Wed, 27 Sep 2017 15:01:39 GMT  
		Size: 18.7 MB (18653386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f74949e400501d481c94167878e868e2f27c74d3f8c91f4bbcf56d37d05513`  
		Last Modified: Wed, 27 Sep 2017 15:02:00 GMT  
		Size: 42.7 MB (42737712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eee7764fc2c0c4199afd2676a8fbf5f54e89f39b0b9b15c261687df14ca6c03`  
		Last Modified: Wed, 27 Sep 2017 15:02:59 GMT  
		Size: 115.5 MB (115471390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cee302b5c12b2ba5a076e787bc024569172b428f1d2b107d3afdd9d470d7d7d`  
		Last Modified: Wed, 27 Sep 2017 15:44:19 GMT  
		Size: 3.0 MB (3020206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecedb6bc8d86c18221e6633c0fe98aeebc17d120f5af39fa9934bc291b6ea02`  
		Last Modified: Fri, 29 Sep 2017 00:44:09 GMT  
		Size: 14.7 MB (14748114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ca91702222d7d6e7302fb1cfabab271047008cf92d4eba9f0d71c0d8032b24`  
		Last Modified: Fri, 29 Sep 2017 00:44:04 GMT  
		Size: 1.7 MB (1658690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a3fdf4d13541c2a5ba9eb898a998c55fabd13e40919f00405eb2fe8fb3d9f`  
		Last Modified: Fri, 29 Sep 2017 00:44:07 GMT  
		Size: 3.3 MB (3330791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2597c6fb3a13cb2e7929937f69f6addf5c1c4d55f227ce55314f16676dc45f1b`  
		Last Modified: Fri, 29 Sep 2017 00:44:34 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-onbuild` - linux; arm variant v7

```console
$ docker pull python@sha256:9d3751a65c62c16034074f3d3f243b35e9044ca35d56d5cefcc5049d0f8c1fb7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.8 MB (242758516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5dfcd2347bd20bb17dbd0e0bb911deeaa7b28015a0b39c6e09edb75dab3c25`
-	Default Command: `["python2"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:17 GMT
ADD file:ef59ce7fe68882b1b44bc3c4a5e9e465561cb257fb63f8c2b3c247abb012486b in / 
# Sat, 09 Sep 2017 01:40:18 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:33:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 00:45:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:59:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 01:15:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 01:15:10 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 01:15:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 01:53:51 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Sep 2017 01:53:51 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 27 Sep 2017 01:56:53 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 27 Sep 2017 01:56:53 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 27 Sep 2017 01:57:01 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Sep 2017 01:57:04 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 27 Sep 2017 01:57:04 GMT
CMD ["python2"]
# Thu, 28 Sep 2017 03:05:49 GMT
RUN mkdir -p /usr/src/app
# Thu, 28 Sep 2017 03:05:50 GMT
WORKDIR /usr/src/app
# Thu, 28 Sep 2017 03:05:50 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 28 Sep 2017 03:05:50 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Thu, 28 Sep 2017 03:05:50 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:e925dd4ffa2a7ffdc23dbce8d2b25866e687204da4ed5a664a51d787e32366d4`  
		Last Modified: Sat, 09 Sep 2017 01:50:36 GMT  
		Size: 48.7 MB (48682076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bfbf7dfc788cb4ca7c7d227e3465a4e211416e4c7f0e008f3ae90db3dd0bb1`  
		Last Modified: Tue, 19 Sep 2017 02:40:07 GMT  
		Size: 18.3 MB (18262683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015138dd660daf8e5560cc269a592e9abf2796753a8c7d62949428056b7d1917`  
		Last Modified: Tue, 19 Sep 2017 02:40:50 GMT  
		Size: 39.7 MB (39689147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88b2b5023e5b605d9611426b7cc69289141483394d1d1de9ab3773fcb770ffd`  
		Last Modified: Tue, 19 Sep 2017 02:42:03 GMT  
		Size: 113.8 MB (113804084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b2e2247c84aeaea494a2931d4d8ddb2ddc3f6362d6c1d29110395cc265aa9c`  
		Last Modified: Wed, 27 Sep 2017 03:14:14 GMT  
		Size: 2.9 MB (2897675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6627ef54a564fe622dc9d57fdaae2d9d77ced8c34f91b720b76e12a57da444b7`  
		Last Modified: Wed, 27 Sep 2017 03:16:50 GMT  
		Size: 14.4 MB (14433264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e593a48e3299bb66249b9af8993282371e927743b7d41ab189c5e6a15ed2ca13`  
		Last Modified: Wed, 27 Sep 2017 03:16:45 GMT  
		Size: 1.7 MB (1658691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c42e477cef4764fca1ba143d0f761dba6f1b6d18182e5d74a5c12750b1b4b0`  
		Last Modified: Wed, 27 Sep 2017 03:16:45 GMT  
		Size: 3.3 MB (3330730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88956e70b132c51dce343d3aa6d17d97092cf951053494e8794da7d94993b40`  
		Last Modified: Thu, 28 Sep 2017 03:06:53 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-onbuild` - linux; arm64 variant v8

```console
$ docker pull python@sha256:9af73a42e532e6dca4d72743c20009ac59e6b69fbe9b4bba0fe007860f417564
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248229297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a08e15e121445cdcddb085d54ba4e824177a4f0099ee63725e8e918c7dea82`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:32:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:32:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:34:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:42:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:30:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 22:31:00 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 22:31:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:08:48 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 19 Sep 2017 01:26:32 GMT
ENV PYTHON_VERSION=2.7.14
# Tue, 19 Sep 2017 01:31:41 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 19 Sep 2017 01:31:42 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 19 Sep 2017 01:32:03 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 19 Sep 2017 01:32:12 GMT
RUN pip install --no-cache-dir virtualenv
# Tue, 19 Sep 2017 01:32:13 GMT
CMD ["python2"]
# Tue, 19 Sep 2017 01:42:35 GMT
RUN mkdir -p /usr/src/app
# Tue, 19 Sep 2017 01:42:36 GMT
WORKDIR /usr/src/app
# Tue, 19 Sep 2017 01:42:38 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 19 Sep 2017 01:42:39 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Tue, 19 Sep 2017 01:42:40 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e054bfb02234c6e2b5305981d365c3b31101ec460b0d90df3b099305c03196`  
		Last Modified: Thu, 14 Sep 2017 22:01:15 GMT  
		Size: 18.7 MB (18737603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498121800d24d5e5d3f5d851e16ca4b4b663cabd018a246961dca07ae046f06b`  
		Last Modified: Thu, 14 Sep 2017 22:01:47 GMT  
		Size: 41.0 MB (40988522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f6cc0761da5c1bc61d59c5cbe9188f22bc173d6f1038d6cccf1292f0b79594`  
		Last Modified: Thu, 14 Sep 2017 22:02:40 GMT  
		Size: 115.6 MB (115645790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079a440ab84601bf3e264a13c2b1161289e6da5afd785448504599e57d3e4e8f`  
		Last Modified: Thu, 14 Sep 2017 23:15:30 GMT  
		Size: 3.0 MB (3005793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4fba072a8a3553aed1aaadce6ac8d69a07d838f19603126dd76e4d2faf49967`  
		Last Modified: Tue, 19 Sep 2017 01:44:16 GMT  
		Size: 14.9 MB (14932698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ebf8a66feb1592e45d97528a94e2c15c5c5c5f082a12111926aa5f0b408dfc`  
		Last Modified: Tue, 19 Sep 2017 01:44:11 GMT  
		Size: 1.7 MB (1658483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86759db28a62048b5ee922467d7ebd345da8b699a7bab4b6aa9cd93c82b825c3`  
		Last Modified: Tue, 19 Sep 2017 01:44:11 GMT  
		Size: 3.3 MB (3330820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449d4438b0792e4939b1f0e94664835d9a3fdeb7a69406fc09de3d9b14cba6b4`  
		Last Modified: Tue, 19 Sep 2017 01:45:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-onbuild` - linux; 386

```console
$ docker pull python@sha256:a86a0ae692fd77b75b0a94435aea57ade5ad3cd044337950d423d17963b69963
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.2 MB (275191844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ee5ad5b5bd2167ac5c70895e7b78c07c1c11e01b81a6eb65a9d098bfa36ae4`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:49:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 15:49:57 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:50:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:30:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 18 Sep 2017 20:51:40 GMT
ENV PYTHON_VERSION=2.7.14
# Mon, 18 Sep 2017 20:55:43 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 18 Sep 2017 20:55:44 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 18 Sep 2017 20:55:51 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 18 Sep 2017 20:55:54 GMT
RUN pip install --no-cache-dir virtualenv
# Mon, 18 Sep 2017 20:55:55 GMT
CMD ["python2"]
# Mon, 18 Sep 2017 21:07:28 GMT
RUN mkdir -p /usr/src/app
# Mon, 18 Sep 2017 21:07:28 GMT
WORKDIR /usr/src/app
# Mon, 18 Sep 2017 21:07:29 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Mon, 18 Sep 2017 21:07:29 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Mon, 18 Sep 2017 21:07:29 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75754178d7dbc31bf0f650bd7481f81245ac3428df088b755295300bab3dbdcd`  
		Last Modified: Sat, 09 Sep 2017 16:24:59 GMT  
		Size: 3.3 MB (3271520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7878a19a38ec84398f5c5ae10ac2e48235cb4e3c025202810779e3498442243b`  
		Last Modified: Mon, 18 Sep 2017 21:15:47 GMT  
		Size: 13.8 MB (13824953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ec1a8b7e2e7c6b6a4ade653cc69ff57dde31d399580e0eadc6402803b520c6`  
		Last Modified: Mon, 18 Sep 2017 21:15:43 GMT  
		Size: 1.7 MB (1658107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e824e82e8232bac057c8275579abcee0f126d9cc46341562f3f07a0a85468826`  
		Last Modified: Mon, 18 Sep 2017 21:15:43 GMT  
		Size: 3.3 MB (3330635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33b873d7aa2a0964353840e9f8a6bdc45cb3dcf29ee5969e2a1bd70f2a49eea`  
		Last Modified: Mon, 18 Sep 2017 21:16:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-onbuild` - linux; ppc64le

```console
$ docker pull python@sha256:d55520aa55fd7eeb2b322ead533a0e60dc56ba2252bbf3024fd3e7aa23dd6213
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (259987720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07f487986afd9722996275f6b7143b6e9e58e8bc4086754917078c98f0be465`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:03:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:04:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:05:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:37:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 23:37:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 23:38:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 00:07:12 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 18 Sep 2017 20:48:32 GMT
ENV PYTHON_VERSION=2.7.14
# Mon, 18 Sep 2017 20:51:32 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 18 Sep 2017 20:51:34 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 18 Sep 2017 20:51:44 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 18 Sep 2017 20:51:50 GMT
RUN pip install --no-cache-dir virtualenv
# Mon, 18 Sep 2017 20:51:52 GMT
CMD ["python2"]
# Mon, 18 Sep 2017 21:06:40 GMT
RUN mkdir -p /usr/src/app
# Mon, 18 Sep 2017 21:06:41 GMT
WORKDIR /usr/src/app
# Mon, 18 Sep 2017 21:06:43 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Mon, 18 Sep 2017 21:06:44 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Mon, 18 Sep 2017 21:06:46 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48596af2c38701f94440e222bf8f3d4b2da85e2982c97ae15186eba523249e0b`  
		Last Modified: Thu, 14 Sep 2017 22:21:02 GMT  
		Size: 19.2 MB (19199596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb50d2f41608755ef40ba4bd126fcb6e790d99a751079c32edae61c9ebad7a9`  
		Last Modified: Thu, 14 Sep 2017 22:21:29 GMT  
		Size: 42.7 MB (42728149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade55670af5d621ffaed3b528ca5af97655b36bfbe022557861d40a4f00be68`  
		Last Modified: Thu, 14 Sep 2017 22:22:15 GMT  
		Size: 122.7 MB (122728339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1885fa66131cad4d16842bd7c58d8d33c16df8cca7000354c95a0b1159d7388d`  
		Last Modified: Fri, 15 Sep 2017 00:13:13 GMT  
		Size: 3.1 MB (3148566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3352cd331731a99195ec320999ac6bbee4b81ccf31261ce62f20d0a9a1aaa92`  
		Last Modified: Mon, 18 Sep 2017 21:08:10 GMT  
		Size: 15.4 MB (15383895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b950a691b724d27739a037634969ec8b4c6d8b2f82ba71e17428c1b09b973ee`  
		Last Modified: Mon, 18 Sep 2017 21:08:06 GMT  
		Size: 1.7 MB (1658714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d581927d724219fdb7d482aa48d43196953882163a15d3977876f7cf7802b8b9`  
		Last Modified: Mon, 18 Sep 2017 21:08:06 GMT  
		Size: 3.3 MB (3330727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbb11f86c0d6721b3a7809a21a6b6742067fdf553ead9cacc1859f2440c8dd9`  
		Last Modified: Mon, 18 Sep 2017 21:09:37 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-onbuild` - linux; s390x

```console
$ docker pull python@sha256:f5cf6162ca97360092dc903cf9550f21989bcae4083a841a16666a06a266089a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255446538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24d947d2f6e4b10e95162c3f0f8db5d94924f3bbd1a80b9865005589a4054944`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:49:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 16:49:26 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 16:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:20:50 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 18 Sep 2017 21:22:20 GMT
ENV PYTHON_VERSION=2.7.14
# Mon, 18 Sep 2017 21:24:03 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 18 Sep 2017 21:24:04 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 18 Sep 2017 21:24:08 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 18 Sep 2017 21:24:10 GMT
RUN pip install --no-cache-dir virtualenv
# Mon, 18 Sep 2017 21:24:10 GMT
CMD ["python2"]
# Mon, 18 Sep 2017 21:27:02 GMT
RUN mkdir -p /usr/src/app
# Mon, 18 Sep 2017 21:27:02 GMT
WORKDIR /usr/src/app
# Mon, 18 Sep 2017 21:27:02 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Mon, 18 Sep 2017 21:27:02 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Mon, 18 Sep 2017 21:27:02 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2b0b88855133667c4e538927ce376c5bf507b588172c448fb8d1d2e3646de4`  
		Last Modified: Fri, 08 Sep 2017 17:23:32 GMT  
		Size: 3.2 MB (3194775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe62337a1fb011bc4c0aba5bed82f5001704f0644603d4545481fc5933209890`  
		Last Modified: Mon, 18 Sep 2017 21:27:36 GMT  
		Size: 15.7 MB (15720079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf49baa533783f051c14c7fbaa2ab7add0ea2e858c5a63d3b1b76986015ee953`  
		Last Modified: Mon, 18 Sep 2017 21:27:33 GMT  
		Size: 1.7 MB (1658338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edc1a784152351c62145594e1fb146122ccf4789bb8bf110a9f5c2f81f8225c`  
		Last Modified: Mon, 18 Sep 2017 21:27:33 GMT  
		Size: 3.3 MB (3330664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfd1d19749ea7155b18697094c45596780f4bc8961f9b9e17126a984b95858f`  
		Last Modified: Mon, 18 Sep 2017 21:28:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
