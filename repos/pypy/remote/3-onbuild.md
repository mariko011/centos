## `pypy:3-onbuild`

```console
$ docker pull pypy@sha256:56b812cba25a8ca76a778825649e829bce6833fb3c1471c1dbc56776ef91e24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-onbuild` - linux; amd64

```console
$ docker pull pypy@sha256:547fa77d04e806a3794c692689153165f22232c4bac7b154e065e3b0d41e2d66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282132977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a913a6d16048b7f4144a5db8a6ac6132ed056f90bb85ef509b8c56f28122cb`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:02:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:02:49 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:02:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:04:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 12 Sep 2017 20:04:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Sep 2017 20:04:22 GMT
CMD ["pypy3"]
# Tue, 12 Sep 2017 20:05:02 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Sep 2017 20:05:02 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 12 Sep 2017 20:05:02 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09b315b3734364c40cf6840d6ba911eed8bdaf41ca570af85a14edd87e95022`  
		Last Modified: Tue, 12 Sep 2017 20:05:12 GMT  
		Size: 3.2 MB (3167285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7c75751441d2e0b4acd73733e55f955192f0f58d6ee57f9ac81a1ae5f8a205`  
		Last Modified: Tue, 12 Sep 2017 20:06:17 GMT  
		Size: 25.0 MB (25046938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f02c629bc92e5d4b45671513bcfdd789fc2c85cf59d324316fc97065405c3d`  
		Last Modified: Tue, 12 Sep 2017 20:06:12 GMT  
		Size: 4.1 MB (4148440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ede0654349d629223b19aafbb7e4e00469f95a6f7293a788bbc3d37928833b7`  
		Last Modified: Tue, 12 Sep 2017 20:07:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
