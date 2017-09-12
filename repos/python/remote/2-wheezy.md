## `python:2-wheezy`

```console
$ docker pull python@sha256:2b00b69b020c8bf143d9217fc77e037ca13b751a9b1bfe98f51c691adceef02d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `python:2-wheezy` - linux; amd64

```console
$ docker pull python@sha256:295c6ed4998d943de36b3fc449abc61257a021dd07a1919d5c5ebeef1fb35eef
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.5 MB (205463838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d5208561c930fa9e059d0c0009150b2c4918bf534899e18c561448fad2192f5`
-	Default Command: `["python2"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:32:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:32:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:33:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:34:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 06:52:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:52:05 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 06:52:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:21:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 08 Sep 2017 07:21:19 GMT
ENV PYTHON_VERSION=2.7.13
# Fri, 08 Sep 2017 07:22:59 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 08 Sep 2017 07:23:00 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 08 Sep 2017 07:23:04 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 08 Sep 2017 07:23:07 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 08 Sep 2017 07:23:07 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb9984d33964d5be0a6994369af9b8e3099ef8b1da68a1a5ef6509716353f79`  
		Last Modified: Thu, 07 Sep 2017 23:57:20 GMT  
		Size: 6.9 MB (6949665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a84b444cb453f4d88f25076f8ba7a1773542acb94bb75e545aab62c0b9bc171`  
		Last Modified: Thu, 07 Sep 2017 23:57:42 GMT  
		Size: 37.9 MB (37946126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2947e36f6ad5f9e87de65eabfaac942f5083d727008d68ef5c2876d163d207f7`  
		Last Modified: Fri, 08 Sep 2017 00:01:34 GMT  
		Size: 99.3 MB (99345746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0e9c5010c733e43ed7ad3c7e48e258ab3500f8b347a24c31ae01e2bfdb4a6a`  
		Last Modified: Fri, 08 Sep 2017 07:30:15 GMT  
		Size: 3.2 MB (3236808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4073268e323d96e35451e53053a9ae3ab475175726151003a6796b4a3afba28c`  
		Last Modified: Fri, 08 Sep 2017 07:42:11 GMT  
		Size: 14.9 MB (14894869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae72362cb3e0661d413182ea07971b0ea01e0c9673631115f5996b85cd94be`  
		Last Modified: Fri, 08 Sep 2017 07:42:06 GMT  
		Size: 1.7 MB (1658181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd93dc9a113cb6aee70c3c876dd5d3008a70caf6cda7a0ab00997999f0e04f0e`  
		Last Modified: Fri, 08 Sep 2017 07:42:07 GMT  
		Size: 3.3 MB (3329316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; arm variant v7

```console
$ docker pull python@sha256:03d0dd031261793eb8b39652b4309a2954fecce56ec0c3741201bad8f3f76946
```

-	Docker Version: 17.06.0-ce-rc5
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.2 MB (181236493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f69041bc22c2c115ae71c7e17b1456f7cbd2d0fb1bbaeb6cf9c459c241bb87d`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 25 Jul 2017 13:01:57 GMT
ADD file:383f867e58ac7d7020c618a7428b47b8b1911785ac6ae78a6751fb7f55eeb5c2 in / 
# Tue, 25 Jul 2017 13:01:59 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 16:08:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 16:08:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 16:10:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 16:15:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 20:45:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Jul 2017 20:45:06 GMT
ENV LANG=C.UTF-8
# Tue, 25 Jul 2017 20:45:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 04:06:28 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 26 Jul 2017 04:06:29 GMT
ENV PYTHON_VERSION=2.7.13
# Wed, 26 Jul 2017 04:13:07 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 26 Jul 2017 04:13:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 04:13:29 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 26 Jul 2017 04:13:36 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 26 Jul 2017 04:13:37 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:ada306cd59ed8be1f27f62bff2346a7c5647fef217a4b7fe851279c6c305e1f1`  
		Last Modified: Tue, 25 Jul 2017 13:16:28 GMT  
		Size: 35.7 MB (35656025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3022f7eea76622533539f67c00891bc85a8855c36e35d2730491ceab3e668a`  
		Last Modified: Tue, 25 Jul 2017 16:31:33 GMT  
		Size: 6.4 MB (6369159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162bf562bebaffdd23faf61dcf484af819c71b3b2c1b6bb4a622dc0ab9b16922`  
		Last Modified: Tue, 25 Jul 2017 16:32:28 GMT  
		Size: 34.9 MB (34856730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c19778d04d244ada6225629ce6e071cf92e137a2df855ba505677896ba1d55f`  
		Last Modified: Tue, 25 Jul 2017 16:34:04 GMT  
		Size: 83.1 MB (83096150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6bf7572ec3956dbfcb00849a3831cd66d878d6977cb36f59a6e5b797d2c5d`  
		Last Modified: Wed, 26 Jul 2017 04:20:51 GMT  
		Size: 3.2 MB (3248878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55de97f685d25f489fc8dc2ccae76d92247cc3653eb0d8f6b38ec3418594f0b1`  
		Last Modified: Wed, 26 Jul 2017 04:26:09 GMT  
		Size: 13.0 MB (13022469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37a2ca2c4988e747f90908b6aff766fc7d9cff63dd7b0154fa5e9e05dd3ccc6`  
		Last Modified: Wed, 26 Jul 2017 04:26:01 GMT  
		Size: 1.7 MB (1657563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17377bf84b576dfeaf8b4a48b1a599021b4114906d44fce1ab5f000f81025d33`  
		Last Modified: Wed, 26 Jul 2017 04:26:00 GMT  
		Size: 3.3 MB (3329519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; 386

```console
$ docker pull python@sha256:9ba7734099be08e64dc95ba1be2982c2e38b1e78e8a1c81b64c95fafad3ed14b
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.5 MB (206471052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6536678bfd7eaa1df3ad25afa034326290d3dc3508b79ecffea9c78d1b3ebbab`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 08 Sep 2017 13:20:48 GMT
ADD file:6e69a03d6dde108627b32e45abd197b90df267d161800ebec8416063a64aef06 in / 
# Fri, 08 Sep 2017 13:20:48 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:52:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:52:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:53:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:08:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 16:08:01 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 16:08:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:32:58 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 09 Sep 2017 16:32:59 GMT
ENV PYTHON_VERSION=2.7.13
# Sat, 09 Sep 2017 16:34:46 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 09 Sep 2017 16:34:49 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 09 Sep 2017 16:34:54 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 09 Sep 2017 16:34:56 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 09 Sep 2017 16:34:56 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:62bb183541ac6fc75244fe087faa7c427d0bc7cd70f749e3415bc6cb2e02638a`  
		Last Modified: Fri, 08 Sep 2017 13:29:31 GMT  
		Size: 37.4 MB (37433264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79e19235ec8912002a9f320de08671905f5729502dc642eb94047db21c0467e`  
		Last Modified: Sat, 09 Sep 2017 14:08:40 GMT  
		Size: 8.8 MB (8799111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc5b4cb9f9beaf6ce08c9ec324ca4399cec2945bbbf8d613aebda1f0065adc5`  
		Last Modified: Sat, 09 Sep 2017 14:09:05 GMT  
		Size: 37.1 MB (37053834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a556aeddf6daf0e9fe9777f08305d99a3cf5569a6351e4627e34048b90d95c70`  
		Last Modified: Sat, 09 Sep 2017 14:10:10 GMT  
		Size: 100.2 MB (100172054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272b7c0c017514613bc693888d4e5f598cc3fa280f36775294a7bae5fc059a75`  
		Last Modified: Sat, 09 Sep 2017 16:39:29 GMT  
		Size: 3.5 MB (3473525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5026152feb10809dff061e4c57c60d36a30e0bc42d2518f9587ced2d59d2613d`  
		Last Modified: Sat, 09 Sep 2017 16:43:44 GMT  
		Size: 14.6 MB (14551695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b30ebeed0a9e9879d5f3c566048bc069e99433a448d8f9757acc2bd28d651310`  
		Last Modified: Sat, 09 Sep 2017 16:43:40 GMT  
		Size: 1.7 MB (1658181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7405b83a88db28d6890190bdf1c535433b4e4ad4303de464bcc634aacb2b7a54`  
		Last Modified: Sat, 09 Sep 2017 16:43:41 GMT  
		Size: 3.3 MB (3329388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
