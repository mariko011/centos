## `python:3-onbuild`

```console
$ docker pull python@sha256:6a2998f2c84602b1b648e844bd03e2a8b4a64d1bb42d66a31b4ee206c752b5c9
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

### `python:3-onbuild` - linux; amd64

```console
$ docker pull python@sha256:e3ca7ddd06d20581abfcb74802522268de0002207c9633bf35c5aa86f8d68eef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274229743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88395b6e543810c2c26f5e7357e4880d6e310ef70fba1887d4a0171545c0c774`
-	Default Command: `["python3"]`

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
# Wed, 13 Sep 2017 14:25:47 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 04 Oct 2017 00:25:54 GMT
ENV PYTHON_VERSION=3.6.3
# Wed, 04 Oct 2017 00:27:41 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 04 Oct 2017 00:27:42 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 04 Oct 2017 00:27:42 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 04 Oct 2017 00:27:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 04 Oct 2017 00:27:46 GMT
CMD ["python3"]
# Wed, 04 Oct 2017 00:31:02 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Oct 2017 00:31:02 GMT
WORKDIR /usr/src/app
# Wed, 04 Oct 2017 00:31:02 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 04 Oct 2017 00:31:02 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 04 Oct 2017 00:31:02 GMT
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
	-	`sha256:c3eac66dc8f6ae3983a7f37e3da84a8acb828faf909be2d6649e9d7c9caffc28`  
		Last Modified: Wed, 04 Oct 2017 00:35:09 GMT  
		Size: 19.6 MB (19629725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494ffdf1660cdec946ae13d6b726debbcec4c393a7eecfabe97caf3961f62c36`  
		Last Modified: Wed, 04 Oct 2017 00:35:03 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ec737c23de3b1ae2b1ce3dce1fd20e0cb246e4c73584dcd4f9d2f50063324e`  
		Last Modified: Wed, 04 Oct 2017 00:35:04 GMT  
		Size: 1.7 MB (1660805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41de197d930499726982821bfd83853d2fe6120b495ae2b3667678e146282e45`  
		Last Modified: Wed, 04 Oct 2017 00:36:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-onbuild` - linux; arm variant v5

```console
$ docker pull python@sha256:5bdddac3392a7edd733f7bb1f55b76203df120445c1207456aaa2148ee57727c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251658270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc358336e6396cd8ee2bd712c625e59f1d635206f34fcffd675765d3571ee9ef`
-	Default Command: `["python3"]`

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
# Thu, 28 Sep 2017 23:52:22 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 04 Oct 2017 23:01:53 GMT
ENV PYTHON_VERSION=3.6.3
# Wed, 04 Oct 2017 23:04:17 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 04 Oct 2017 23:04:17 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 04 Oct 2017 23:04:18 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 04 Oct 2017 23:04:26 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 04 Oct 2017 23:04:26 GMT
CMD ["python3"]
# Wed, 04 Oct 2017 23:08:33 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Oct 2017 23:08:33 GMT
WORKDIR /usr/src/app
# Wed, 04 Oct 2017 23:08:34 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 04 Oct 2017 23:08:34 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 04 Oct 2017 23:08:34 GMT
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
	-	`sha256:712183f7b7494fdb104cd1ba5ec4a80814f9206bd4544c0ba8b3012bdf995319`  
		Last Modified: Wed, 04 Oct 2017 23:09:48 GMT  
		Size: 19.2 MB (19234052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cec9897b4e6e6f58935a02ae44235b247caea7f140f14199be2946798d9eb2c`  
		Last Modified: Wed, 04 Oct 2017 23:09:40 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e16c7297d01a8a4df68cd3e837d9161047b920d1ee5b3abd34af65a9dc0711a`  
		Last Modified: Wed, 04 Oct 2017 23:09:40 GMT  
		Size: 1.7 MB (1661321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e452651bf79110758568c09f814b908ab2c28560948a2e9ba074604ed8facfa`  
		Last Modified: Wed, 04 Oct 2017 23:10:20 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-onbuild` - linux; arm variant v7

```console
$ docker pull python@sha256:108a02d28b99fc1e66b8704998859361f97dc0058cd7fc14e8e34762ed1f7c23
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243775128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81428bc46bb516ee2f4eebcbb7bee7aa0c01c93618b161f9f2928e59a059b941`
-	Default Command: `["python3"]`

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
# Wed, 27 Sep 2017 01:15:39 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 04 Oct 2017 07:01:52 GMT
ENV PYTHON_VERSION=3.6.3
# Wed, 04 Oct 2017 07:04:06 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 04 Oct 2017 07:04:07 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 04 Oct 2017 07:04:07 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 04 Oct 2017 07:04:15 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 04 Oct 2017 07:04:15 GMT
CMD ["python3"]
# Wed, 04 Oct 2017 07:08:08 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Oct 2017 07:08:08 GMT
WORKDIR /usr/src/app
# Wed, 04 Oct 2017 07:08:09 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 04 Oct 2017 07:08:09 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 04 Oct 2017 07:08:09 GMT
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
	-	`sha256:0327775c5790dd21fb985479f7a6e0e24d4f563257ae52031a12c68cde6c8b7f`  
		Last Modified: Wed, 04 Oct 2017 07:09:23 GMT  
		Size: 18.8 MB (18777746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85076ca2c66a7edf677959aa13395cc32b390680c721b4faad400a065c883ee1`  
		Last Modified: Wed, 04 Oct 2017 07:09:17 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45df8f279d5ee49fc52a7120a6eecb8f97396d1a5b583286548eff10f130271c`  
		Last Modified: Wed, 04 Oct 2017 07:09:18 GMT  
		Size: 1.7 MB (1661313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cca88680085d0647997532021a9a1bfbc9e58d864c515855386bde4ae60186`  
		Last Modified: Wed, 04 Oct 2017 07:10:06 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-onbuild` - linux; arm64 variant v8

```console
$ docker pull python@sha256:e3ba2aa4803e2c655ce8876ffd28a25dc9050824f6b39b9c49331fe19b4f9bc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249797904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca63150213072d0830b112f9d85b363b3e81d309a5761a02ba1bff35abbb09c`
-	Default Command: `["python3"]`

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
# Thu, 14 Sep 2017 22:31:31 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 04 Oct 2017 10:45:02 GMT
ENV PYTHON_VERSION=3.6.3
# Wed, 04 Oct 2017 10:48:46 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 04 Oct 2017 10:48:48 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 04 Oct 2017 10:48:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 04 Oct 2017 10:49:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 04 Oct 2017 10:49:02 GMT
CMD ["python3"]
# Wed, 04 Oct 2017 10:56:45 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Oct 2017 10:56:45 GMT
WORKDIR /usr/src/app
# Wed, 04 Oct 2017 10:56:46 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 04 Oct 2017 10:56:46 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 04 Oct 2017 10:56:47 GMT
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
	-	`sha256:fc059387b1d6fc8de3690d202398f61a6cded286a62cb4116e00a7eaa0bc67a8`  
		Last Modified: Wed, 04 Oct 2017 10:58:41 GMT  
		Size: 19.8 MB (19829209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1133689554bdb14f6a6b9d5d9c28d7e1620991f258d872d36d1875d48153b854`  
		Last Modified: Wed, 04 Oct 2017 10:58:33 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb9f15bf1710449e9224e5aa0a01e93c80eadd66a3904a4008a7253e438f3ee`  
		Last Modified: Wed, 04 Oct 2017 10:58:34 GMT  
		Size: 1.7 MB (1661159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83d461a02f42b6e17aeca7e8e1085612f0bee728833b6512d0e21cf50f12fe1`  
		Last Modified: Wed, 04 Oct 2017 11:00:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-onbuild` - linux; 386

```console
$ docker pull python@sha256:56e49a13a5deef58ee3ed6978756469ed9c99c23b1c1716aa8fc066a990fe9e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276141825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b307b7f4485fd934e1c3f68687591c7638c97e212526dfcebbc55db36c527e`
-	Default Command: `["python3"]`

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
# Sat, 09 Sep 2017 15:50:47 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 04 Oct 2017 16:00:53 GMT
ENV PYTHON_VERSION=3.6.3
# Wed, 04 Oct 2017 16:03:18 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 04 Oct 2017 16:03:19 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 04 Oct 2017 16:03:19 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 04 Oct 2017 16:03:24 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 04 Oct 2017 16:03:24 GMT
CMD ["python3"]
# Wed, 04 Oct 2017 16:07:30 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Oct 2017 16:07:30 GMT
WORKDIR /usr/src/app
# Wed, 04 Oct 2017 16:07:30 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 04 Oct 2017 16:07:30 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 04 Oct 2017 16:07:31 GMT
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
	-	`sha256:8eaa243f921b50cf351a91d024f2507674e6ad3b4ab0dc0cdb4632bbba744cf8`  
		Last Modified: Wed, 04 Oct 2017 16:08:40 GMT  
		Size: 18.1 MB (18102494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efda2335f2b454af5851b7b56b834a31941d2d9b8cd1d28ba8106605b261e61`  
		Last Modified: Wed, 04 Oct 2017 16:08:36 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5f6606502387a194ea3839319a8df8cbc4bdfbd9df8116634b01af40361334`  
		Last Modified: Wed, 04 Oct 2017 16:08:36 GMT  
		Size: 1.7 MB (1660940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8153263dca069bf207e4b2cd52dc3bdd1bc46202b4eec63f149419e89271d8`  
		Last Modified: Wed, 04 Oct 2017 16:09:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-onbuild` - linux; ppc64le

```console
$ docker pull python@sha256:a590b3339a6cc76e155701564897e64d4a5b994563526d30ef5bc353461bc5c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261636552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91237c8ee00268f6a9672dd0b41e0dcdd46aba6b341133ebde350a3f40e46ab9`
-	Default Command: `["python3"]`

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
# Thu, 14 Sep 2017 23:38:42 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 04 Oct 2017 07:58:45 GMT
ENV PYTHON_VERSION=3.6.3
# Wed, 04 Oct 2017 08:02:30 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 04 Oct 2017 08:02:40 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 04 Oct 2017 08:02:52 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 04 Oct 2017 08:03:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 04 Oct 2017 08:03:21 GMT
CMD ["python3"]
# Wed, 04 Oct 2017 08:24:49 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Oct 2017 08:24:51 GMT
WORKDIR /usr/src/app
# Wed, 04 Oct 2017 08:24:53 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 04 Oct 2017 08:24:55 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 04 Oct 2017 08:24:58 GMT
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
	-	`sha256:40ef893fc806fdaf89ff1e85ee906e1285960f74a4a004cca571b3fafa75688a`  
		Last Modified: Wed, 04 Oct 2017 08:26:18 GMT  
		Size: 20.4 MB (20360501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c042b960c971e39460544c452b105fa7565d7a62142e9d7c1ffcfd25ac2a004`  
		Last Modified: Wed, 04 Oct 2017 08:26:11 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183a6fda8698b3785905eb458eafb3e26463f2c5ec114f983c0904ab69a1c6f6`  
		Last Modified: Wed, 04 Oct 2017 08:26:12 GMT  
		Size: 1.7 MB (1661424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f2922c6acab142df1b5d310fb116887301a7020febc4f29ba2bd203d14f473`  
		Last Modified: Wed, 04 Oct 2017 08:27:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-onbuild` - linux; s390x

```console
$ docker pull python@sha256:7249dcb63d7fb67d3f5967944e94e1d0325ab64ddb9b06dfec0ddd9736b4fc1d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257137930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a0b5944f4cb0c8fcac2b0806826c066226830d72fc094641cba2769034ef83d`
-	Default Command: `["python3"]`

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
# Fri, 08 Sep 2017 17:09:28 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 04 Oct 2017 13:54:16 GMT
ENV PYTHON_VERSION=3.6.3
# Wed, 04 Oct 2017 13:55:44 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 04 Oct 2017 13:55:44 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 04 Oct 2017 13:55:44 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 04 Oct 2017 13:55:49 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 04 Oct 2017 13:55:50 GMT
CMD ["python3"]
# Wed, 04 Oct 2017 13:58:47 GMT
RUN mkdir -p /usr/src/app
# Wed, 04 Oct 2017 13:58:47 GMT
WORKDIR /usr/src/app
# Wed, 04 Oct 2017 13:58:48 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 04 Oct 2017 13:58:48 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 04 Oct 2017 13:58:48 GMT
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
	-	`sha256:4109a4060bcdc55eabfa080a0c9924c5ba0848d8796a87a92a7cfcbfd73be70d`  
		Last Modified: Wed, 04 Oct 2017 14:00:00 GMT  
		Size: 20.7 MB (20739323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446b488a0e1e43e235b9196d0f399f1f004690d19d766f44f38a547836b4b054`  
		Last Modified: Wed, 04 Oct 2017 13:59:54 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85a60cf3d82d11dfa5c791c8a1d75f307076040af13db45c2387c56bd150002`  
		Last Modified: Wed, 04 Oct 2017 13:59:54 GMT  
		Size: 1.7 MB (1660909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b218c482248824c3b33715eccb6e45f385887b14411a441a8d822fa16929a49`  
		Last Modified: Wed, 04 Oct 2017 14:00:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
