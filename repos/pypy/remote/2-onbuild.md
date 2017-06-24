## `pypy:2-onbuild`

```console
$ docker pull pypy@sha256:d737c20f8cddaac321f2eb4889c2f0e0d4f2ad05632e03f0076eb4603d023ef4
```

-	Platforms:
	-	linux; amd64

### `pypy:2-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277934645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e01a9c0decdd445a24c7c8950fadf95c1c0a11c89b578d250cf7a0dd5a4fa66c`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:13:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:13:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:13:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:57 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:14:58 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Fri, 23 Jun 2017 04:14:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:15:12 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Fri, 23 Jun 2017 04:15:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Jun 2017 04:15:22 GMT
CMD ["pypy"]
# Fri, 23 Jun 2017 04:17:03 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Jun 2017 04:17:04 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 04:17:05 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 23 Jun 2017 04:17:06 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 23 Jun 2017 04:17:07 GMT
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
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb658fb0990a639c73970536d0835a6ca0a5b0b1a3648e4dff1acbf04fe3da`  
		Last Modified: Wed, 21 Jun 2017 18:56:18 GMT  
		Size: 2.9 MB (2897400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f5ed0236f46554f325e358ec0525b26f97445282239262e2ac1e37378ae740`  
		Last Modified: Sat, 24 Jun 2017 20:37:34 GMT  
		Size: 24.4 MB (24364503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c48efdacad839a1a9b4a188bf7dd1ccdb52330d5e038aeef377c3a358555047`  
		Last Modified: Sat, 24 Jun 2017 20:37:27 GMT  
		Size: 3.7 MB (3743289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1e583304e6560f5bc06ff781a7dbef8386da243ec91b6b55b8953c735aae59`  
		Last Modified: Sat, 24 Jun 2017 20:41:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
