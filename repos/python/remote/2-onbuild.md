## `python:2-onbuild`

```console
$ docker pull python@sha256:7467d4d419660ec4d1243493fbe3af3ac4c64367b3304bba4e823ee6884c9b42
```

-	Platforms:
	-	linux; amd64

### `python:2-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.3 MB (269334601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c00d8c982e68ad91b68f1d0cd3a8073e32fbfa473443253a8b8c0bc3c5cb8321`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:14:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 08 Jul 2017 04:54:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 08 Jul 2017 04:54:11 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jul 2017 04:54:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 08 Jul 2017 04:55:29 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 08 Jul 2017 04:55:29 GMT
ENV PYTHON_VERSION=2.7.13
# Sat, 08 Jul 2017 04:57:08 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 08 Jul 2017 04:57:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 08 Jul 2017 04:57:12 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 08 Jul 2017 04:57:14 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 08 Jul 2017 04:57:14 GMT
CMD ["python2"]
# Sat, 08 Jul 2017 04:57:22 GMT
RUN mkdir -p /usr/src/app
# Sat, 08 Jul 2017 04:57:22 GMT
WORKDIR /usr/src/app
# Sat, 08 Jul 2017 04:57:23 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 08 Jul 2017 04:57:23 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Sat, 08 Jul 2017 04:57:23 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6575234aef399808d6e3b63e57255301698ec6b1d5e62994f2df6605eed4e24`  
		Last Modified: Fri, 07 Jul 2017 03:13:58 GMT  
		Size: 43.2 MB (43227586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af5f3519ed25221b1b1ebd27ca51b29c699bccc4404f8866c6de452a2d06301`  
		Last Modified: Fri, 07 Jul 2017 03:15:27 GMT  
		Size: 131.9 MB (131854236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27868e2bc876c3ad2363f9b6769bb192e8e2e05d61bee6b0941830ae5659cc2e`  
		Last Modified: Mon, 10 Jul 2017 21:16:27 GMT  
		Size: 2.9 MB (2897421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2220f854b5b32bdfb817ce1735e4fe69ea3ce8f794786426a913118a998dc83e`  
		Last Modified: Mon, 10 Jul 2017 21:16:29 GMT  
		Size: 14.5 MB (14490456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a1fb227b32a5cd93ae5f09b955830d099a0b451739da3d6e3e17ae6f8e3752`  
		Last Modified: Mon, 10 Jul 2017 21:16:26 GMT  
		Size: 1.7 MB (1656279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f189970704ee7565a15cf0e90a4cc7fcafdb246527e865c74f023658e85760`  
		Last Modified: Mon, 10 Jul 2017 21:16:26 GMT  
		Size: 3.3 MB (3329323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e49575c7c0c2eddbfdc5c81343a601fbb2cd32137ef798a4c9d9adace82ae62`  
		Last Modified: Mon, 10 Jul 2017 21:18:57 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
