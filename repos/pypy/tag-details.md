<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `pypy`

-	[`pypy:2-5.8.0`](#pypy2-580)
-	[`pypy:2-5.8`](#pypy2-58)
-	[`pypy:2-5`](#pypy2-5)
-	[`pypy:2`](#pypy2)
-	[`pypy:2-5.8.0-slim`](#pypy2-580-slim)
-	[`pypy:2-5.8-slim`](#pypy2-58-slim)
-	[`pypy:2-5-slim`](#pypy2-5-slim)
-	[`pypy:2-slim`](#pypy2-slim)
-	[`pypy:2-5.8.0-onbuild`](#pypy2-580-onbuild)
-	[`pypy:2-5.8-onbuild`](#pypy2-58-onbuild)
-	[`pypy:2-5-onbuild`](#pypy2-5-onbuild)
-	[`pypy:2-onbuild`](#pypy2-onbuild)
-	[`pypy:3-5.8.0`](#pypy3-580)
-	[`pypy:3-5.8`](#pypy3-58)
-	[`pypy:3-5`](#pypy3-5)
-	[`pypy:3`](#pypy3)
-	[`pypy:latest`](#pypylatest)
-	[`pypy:3-5.8.0-slim`](#pypy3-580-slim)
-	[`pypy:3-5.8-slim`](#pypy3-58-slim)
-	[`pypy:3-5-slim`](#pypy3-5-slim)
-	[`pypy:3-slim`](#pypy3-slim)
-	[`pypy:slim`](#pypyslim)
-	[`pypy:3-5.8.0-onbuild`](#pypy3-580-onbuild)
-	[`pypy:3-5.8-onbuild`](#pypy3-58-onbuild)
-	[`pypy:3-5-onbuild`](#pypy3-5-onbuild)
-	[`pypy:3-onbuild`](#pypy3-onbuild)
-	[`pypy:onbuild`](#pypyonbuild)

## `pypy:2-5.8.0`

```console
$ docker pull pypy@sha256:22bf63518e79d77a654ceea82bc7d36526223a388632ccb29386e514b2c7db5b
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277962505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f09d6b3478eb1fa2bb95789942dfeb35df2cd57f5a999c6c5c06bef81b77dab`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Wed, 26 Jul 2017 08:57:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:57:30 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:57:38 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:57:38 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402bbe362f112464b6172c5db5ed97b867b6395563dd8a7a8491273910119f3f`  
		Last Modified: Wed, 26 Jul 2017 08:59:58 GMT  
		Size: 24.4 MB (24364496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85baab21a76f2e38aeacb67eede9fa716decce1ed530b04171f0f6ec756732bb`  
		Last Modified: Wed, 26 Jul 2017 08:59:53 GMT  
		Size: 3.7 MB (3746724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8`

```console
$ docker pull pypy@sha256:22bf63518e79d77a654ceea82bc7d36526223a388632ccb29386e514b2c7db5b
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277962505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f09d6b3478eb1fa2bb95789942dfeb35df2cd57f5a999c6c5c06bef81b77dab`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Wed, 26 Jul 2017 08:57:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:57:30 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:57:38 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:57:38 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402bbe362f112464b6172c5db5ed97b867b6395563dd8a7a8491273910119f3f`  
		Last Modified: Wed, 26 Jul 2017 08:59:58 GMT  
		Size: 24.4 MB (24364496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85baab21a76f2e38aeacb67eede9fa716decce1ed530b04171f0f6ec756732bb`  
		Last Modified: Wed, 26 Jul 2017 08:59:53 GMT  
		Size: 3.7 MB (3746724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5`

```console
$ docker pull pypy@sha256:22bf63518e79d77a654ceea82bc7d36526223a388632ccb29386e514b2c7db5b
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277962505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f09d6b3478eb1fa2bb95789942dfeb35df2cd57f5a999c6c5c06bef81b77dab`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Wed, 26 Jul 2017 08:57:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:57:30 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:57:38 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:57:38 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402bbe362f112464b6172c5db5ed97b867b6395563dd8a7a8491273910119f3f`  
		Last Modified: Wed, 26 Jul 2017 08:59:58 GMT  
		Size: 24.4 MB (24364496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85baab21a76f2e38aeacb67eede9fa716decce1ed530b04171f0f6ec756732bb`  
		Last Modified: Wed, 26 Jul 2017 08:59:53 GMT  
		Size: 3.7 MB (3746724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2`

```console
$ docker pull pypy@sha256:22bf63518e79d77a654ceea82bc7d36526223a388632ccb29386e514b2c7db5b
```

-	Platforms:
	-	linux; amd64

### `pypy:2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277962505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f09d6b3478eb1fa2bb95789942dfeb35df2cd57f5a999c6c5c06bef81b77dab`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Wed, 26 Jul 2017 08:57:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:57:30 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:57:38 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:57:38 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402bbe362f112464b6172c5db5ed97b867b6395563dd8a7a8491273910119f3f`  
		Last Modified: Wed, 26 Jul 2017 08:59:58 GMT  
		Size: 24.4 MB (24364496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85baab21a76f2e38aeacb67eede9fa716decce1ed530b04171f0f6ec756732bb`  
		Last Modified: Wed, 26 Jul 2017 08:59:53 GMT  
		Size: 3.7 MB (3746724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8.0-slim`

```console
$ docker pull pypy@sha256:b9be339fbb3414ff499615c33882cc27a9170be274b5f37e4d6f073698cdaeff
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8.0-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61097147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202524cbf2b39b8948f198bef0fd63df9eff3c3fd003b6cb7517f298e53fd3f6`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:58:02 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Wed, 26 Jul 2017 08:58:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:58:37 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 26 Jul 2017 08:58:37 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23674f050acb5aaeb6a444d1e2290e1e88193d4e95b290d4524dc1a2e8dd67e2`  
		Last Modified: Wed, 26 Jul 2017 09:00:28 GMT  
		Size: 28.1 MB (28115811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8-slim`

```console
$ docker pull pypy@sha256:b9be339fbb3414ff499615c33882cc27a9170be274b5f37e4d6f073698cdaeff
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61097147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202524cbf2b39b8948f198bef0fd63df9eff3c3fd003b6cb7517f298e53fd3f6`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:58:02 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Wed, 26 Jul 2017 08:58:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:58:37 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 26 Jul 2017 08:58:37 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23674f050acb5aaeb6a444d1e2290e1e88193d4e95b290d4524dc1a2e8dd67e2`  
		Last Modified: Wed, 26 Jul 2017 09:00:28 GMT  
		Size: 28.1 MB (28115811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:b9be339fbb3414ff499615c33882cc27a9170be274b5f37e4d6f073698cdaeff
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61097147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202524cbf2b39b8948f198bef0fd63df9eff3c3fd003b6cb7517f298e53fd3f6`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:58:02 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Wed, 26 Jul 2017 08:58:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:58:37 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 26 Jul 2017 08:58:37 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23674f050acb5aaeb6a444d1e2290e1e88193d4e95b290d4524dc1a2e8dd67e2`  
		Last Modified: Wed, 26 Jul 2017 09:00:28 GMT  
		Size: 28.1 MB (28115811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim`

```console
$ docker pull pypy@sha256:b9be339fbb3414ff499615c33882cc27a9170be274b5f37e4d6f073698cdaeff
```

-	Platforms:
	-	linux; amd64

### `pypy:2-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61097147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202524cbf2b39b8948f198bef0fd63df9eff3c3fd003b6cb7517f298e53fd3f6`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:58:02 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Wed, 26 Jul 2017 08:58:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:58:37 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 26 Jul 2017 08:58:37 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23674f050acb5aaeb6a444d1e2290e1e88193d4e95b290d4524dc1a2e8dd67e2`  
		Last Modified: Wed, 26 Jul 2017 09:00:28 GMT  
		Size: 28.1 MB (28115811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8.0-onbuild`

```console
$ docker pull pypy@sha256:ee1219d7be08712f3053a104450a0ebedaf3d31054c1de84d87bf91e1d19b128
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8.0-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277962631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a6d7284901e1e19bc483dae23c612879c16853115ccf08fd4568e4e0102961`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Wed, 26 Jul 2017 08:57:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:57:30 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:57:38 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:57:38 GMT
CMD ["pypy"]
# Wed, 26 Jul 2017 08:58:40 GMT
RUN mkdir -p /usr/src/app
# Wed, 26 Jul 2017 08:58:40 GMT
WORKDIR /usr/src/app
# Wed, 26 Jul 2017 08:58:41 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 26 Jul 2017 08:58:41 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 26 Jul 2017 08:58:41 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402bbe362f112464b6172c5db5ed97b867b6395563dd8a7a8491273910119f3f`  
		Last Modified: Wed, 26 Jul 2017 08:59:58 GMT  
		Size: 24.4 MB (24364496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85baab21a76f2e38aeacb67eede9fa716decce1ed530b04171f0f6ec756732bb`  
		Last Modified: Wed, 26 Jul 2017 08:59:53 GMT  
		Size: 3.7 MB (3746724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedd8440ca601711ada1864cf41e5d6ef1083f082916edee8d995174ca2c31e2`  
		Last Modified: Wed, 26 Jul 2017 09:00:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.8-onbuild`

```console
$ docker pull pypy@sha256:ee1219d7be08712f3053a104450a0ebedaf3d31054c1de84d87bf91e1d19b128
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.8-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277962631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a6d7284901e1e19bc483dae23c612879c16853115ccf08fd4568e4e0102961`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Wed, 26 Jul 2017 08:57:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:57:30 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:57:38 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:57:38 GMT
CMD ["pypy"]
# Wed, 26 Jul 2017 08:58:40 GMT
RUN mkdir -p /usr/src/app
# Wed, 26 Jul 2017 08:58:40 GMT
WORKDIR /usr/src/app
# Wed, 26 Jul 2017 08:58:41 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 26 Jul 2017 08:58:41 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 26 Jul 2017 08:58:41 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402bbe362f112464b6172c5db5ed97b867b6395563dd8a7a8491273910119f3f`  
		Last Modified: Wed, 26 Jul 2017 08:59:58 GMT  
		Size: 24.4 MB (24364496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85baab21a76f2e38aeacb67eede9fa716decce1ed530b04171f0f6ec756732bb`  
		Last Modified: Wed, 26 Jul 2017 08:59:53 GMT  
		Size: 3.7 MB (3746724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedd8440ca601711ada1864cf41e5d6ef1083f082916edee8d995174ca2c31e2`  
		Last Modified: Wed, 26 Jul 2017 09:00:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-onbuild`

```console
$ docker pull pypy@sha256:ee1219d7be08712f3053a104450a0ebedaf3d31054c1de84d87bf91e1d19b128
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277962631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a6d7284901e1e19bc483dae23c612879c16853115ccf08fd4568e4e0102961`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Wed, 26 Jul 2017 08:57:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:57:30 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:57:38 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:57:38 GMT
CMD ["pypy"]
# Wed, 26 Jul 2017 08:58:40 GMT
RUN mkdir -p /usr/src/app
# Wed, 26 Jul 2017 08:58:40 GMT
WORKDIR /usr/src/app
# Wed, 26 Jul 2017 08:58:41 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 26 Jul 2017 08:58:41 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 26 Jul 2017 08:58:41 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402bbe362f112464b6172c5db5ed97b867b6395563dd8a7a8491273910119f3f`  
		Last Modified: Wed, 26 Jul 2017 08:59:58 GMT  
		Size: 24.4 MB (24364496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85baab21a76f2e38aeacb67eede9fa716decce1ed530b04171f0f6ec756732bb`  
		Last Modified: Wed, 26 Jul 2017 08:59:53 GMT  
		Size: 3.7 MB (3746724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedd8440ca601711ada1864cf41e5d6ef1083f082916edee8d995174ca2c31e2`  
		Last Modified: Wed, 26 Jul 2017 09:00:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-onbuild`

```console
$ docker pull pypy@sha256:ee1219d7be08712f3053a104450a0ebedaf3d31054c1de84d87bf91e1d19b128
```

-	Platforms:
	-	linux; amd64

### `pypy:2-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277962631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a6d7284901e1e19bc483dae23c612879c16853115ccf08fd4568e4e0102961`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Wed, 26 Jul 2017 08:57:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:57:30 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:57:38 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:57:38 GMT
CMD ["pypy"]
# Wed, 26 Jul 2017 08:58:40 GMT
RUN mkdir -p /usr/src/app
# Wed, 26 Jul 2017 08:58:40 GMT
WORKDIR /usr/src/app
# Wed, 26 Jul 2017 08:58:41 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 26 Jul 2017 08:58:41 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 26 Jul 2017 08:58:41 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402bbe362f112464b6172c5db5ed97b867b6395563dd8a7a8491273910119f3f`  
		Last Modified: Wed, 26 Jul 2017 08:59:58 GMT  
		Size: 24.4 MB (24364496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85baab21a76f2e38aeacb67eede9fa716decce1ed530b04171f0f6ec756732bb`  
		Last Modified: Wed, 26 Jul 2017 08:59:53 GMT  
		Size: 3.7 MB (3746724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedd8440ca601711ada1864cf41e5d6ef1083f082916edee8d995174ca2c31e2`  
		Last Modified: Wed, 26 Jul 2017 09:00:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8.0`

```console
$ docker pull pypy@sha256:149851065a65f25f73d1cfdb26343acece3610a130ba9480ab3ebae6b6500daf
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279069923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d44eae4f7dba1497470b17baee887daffbf4cc2ce10e3246bd5cfebaaf07b2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:58:53 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:59:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:59:02 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f17ef0070ad4d5e73de775d3771bbedaf7a2f21b17cb9e25b91f59f9d9de19a`  
		Last Modified: Wed, 26 Jul 2017 09:01:20 GMT  
		Size: 25.0 MB (25008883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7e67abe6ae2bafc5941976da13ca349ab5dd2065161dcd6f2839fa87d1231f`  
		Last Modified: Wed, 26 Jul 2017 09:01:15 GMT  
		Size: 4.2 MB (4209755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8`

```console
$ docker pull pypy@sha256:149851065a65f25f73d1cfdb26343acece3610a130ba9480ab3ebae6b6500daf
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279069923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d44eae4f7dba1497470b17baee887daffbf4cc2ce10e3246bd5cfebaaf07b2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:58:53 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:59:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:59:02 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f17ef0070ad4d5e73de775d3771bbedaf7a2f21b17cb9e25b91f59f9d9de19a`  
		Last Modified: Wed, 26 Jul 2017 09:01:20 GMT  
		Size: 25.0 MB (25008883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7e67abe6ae2bafc5941976da13ca349ab5dd2065161dcd6f2839fa87d1231f`  
		Last Modified: Wed, 26 Jul 2017 09:01:15 GMT  
		Size: 4.2 MB (4209755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5`

```console
$ docker pull pypy@sha256:149851065a65f25f73d1cfdb26343acece3610a130ba9480ab3ebae6b6500daf
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279069923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d44eae4f7dba1497470b17baee887daffbf4cc2ce10e3246bd5cfebaaf07b2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:58:53 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:59:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:59:02 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f17ef0070ad4d5e73de775d3771bbedaf7a2f21b17cb9e25b91f59f9d9de19a`  
		Last Modified: Wed, 26 Jul 2017 09:01:20 GMT  
		Size: 25.0 MB (25008883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7e67abe6ae2bafc5941976da13ca349ab5dd2065161dcd6f2839fa87d1231f`  
		Last Modified: Wed, 26 Jul 2017 09:01:15 GMT  
		Size: 4.2 MB (4209755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3`

```console
$ docker pull pypy@sha256:149851065a65f25f73d1cfdb26343acece3610a130ba9480ab3ebae6b6500daf
```

-	Platforms:
	-	linux; amd64

### `pypy:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279069923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d44eae4f7dba1497470b17baee887daffbf4cc2ce10e3246bd5cfebaaf07b2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:58:53 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:59:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:59:02 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f17ef0070ad4d5e73de775d3771bbedaf7a2f21b17cb9e25b91f59f9d9de19a`  
		Last Modified: Wed, 26 Jul 2017 09:01:20 GMT  
		Size: 25.0 MB (25008883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7e67abe6ae2bafc5941976da13ca349ab5dd2065161dcd6f2839fa87d1231f`  
		Last Modified: Wed, 26 Jul 2017 09:01:15 GMT  
		Size: 4.2 MB (4209755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:latest`

```console
$ docker pull pypy@sha256:149851065a65f25f73d1cfdb26343acece3610a130ba9480ab3ebae6b6500daf
```

-	Platforms:
	-	linux; amd64

### `pypy:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279069923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d44eae4f7dba1497470b17baee887daffbf4cc2ce10e3246bd5cfebaaf07b2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:58:53 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:59:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:59:02 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f17ef0070ad4d5e73de775d3771bbedaf7a2f21b17cb9e25b91f59f9d9de19a`  
		Last Modified: Wed, 26 Jul 2017 09:01:20 GMT  
		Size: 25.0 MB (25008883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7e67abe6ae2bafc5941976da13ca349ab5dd2065161dcd6f2839fa87d1231f`  
		Last Modified: Wed, 26 Jul 2017 09:01:15 GMT  
		Size: 4.2 MB (4209755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8.0-slim`

```console
$ docker pull pypy@sha256:0242be0bbd38563071ac7590b7989f6d593ec3948144a2aeba898465f132bec0
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8.0-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62276604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8441d8940b4a38674a921881e56e2d3db2af6469a55beca5719ceddeab4378c`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:59:05 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:59:05 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:59:40 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 26 Jul 2017 08:59:40 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fb05ce258f209358f33f39423f27a2990d0ea5a20ad9a69734196d07f1c617`  
		Last Modified: Wed, 26 Jul 2017 09:01:54 GMT  
		Size: 29.3 MB (29295268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8-slim`

```console
$ docker pull pypy@sha256:0242be0bbd38563071ac7590b7989f6d593ec3948144a2aeba898465f132bec0
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62276604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8441d8940b4a38674a921881e56e2d3db2af6469a55beca5719ceddeab4378c`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:59:05 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:59:05 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:59:40 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 26 Jul 2017 08:59:40 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fb05ce258f209358f33f39423f27a2990d0ea5a20ad9a69734196d07f1c617`  
		Last Modified: Wed, 26 Jul 2017 09:01:54 GMT  
		Size: 29.3 MB (29295268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:0242be0bbd38563071ac7590b7989f6d593ec3948144a2aeba898465f132bec0
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62276604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8441d8940b4a38674a921881e56e2d3db2af6469a55beca5719ceddeab4378c`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:59:05 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:59:05 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:59:40 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 26 Jul 2017 08:59:40 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fb05ce258f209358f33f39423f27a2990d0ea5a20ad9a69734196d07f1c617`  
		Last Modified: Wed, 26 Jul 2017 09:01:54 GMT  
		Size: 29.3 MB (29295268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim`

```console
$ docker pull pypy@sha256:0242be0bbd38563071ac7590b7989f6d593ec3948144a2aeba898465f132bec0
```

-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62276604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8441d8940b4a38674a921881e56e2d3db2af6469a55beca5719ceddeab4378c`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:59:05 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:59:05 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:59:40 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 26 Jul 2017 08:59:40 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fb05ce258f209358f33f39423f27a2990d0ea5a20ad9a69734196d07f1c617`  
		Last Modified: Wed, 26 Jul 2017 09:01:54 GMT  
		Size: 29.3 MB (29295268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim`

```console
$ docker pull pypy@sha256:0242be0bbd38563071ac7590b7989f6d593ec3948144a2aeba898465f132bec0
```

-	Platforms:
	-	linux; amd64

### `pypy:slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62276604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8441d8940b4a38674a921881e56e2d3db2af6469a55beca5719ceddeab4378c`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:57:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:57:41 GMT
ENV LANG=C.UTF-8
# Wed, 26 Jul 2017 08:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:58:01 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:59:05 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:59:05 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:59:40 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 26 Jul 2017 08:59:40 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87188b697cbb36766a4e0ad55b0a9b16ba4b6256a182aea7400c8bc1d142cdf`  
		Last Modified: Wed, 26 Jul 2017 09:00:23 GMT  
		Size: 2.9 MB (2859618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fb05ce258f209358f33f39423f27a2990d0ea5a20ad9a69734196d07f1c617`  
		Last Modified: Wed, 26 Jul 2017 09:01:54 GMT  
		Size: 29.3 MB (29295268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8.0-onbuild`

```console
$ docker pull pypy@sha256:2273c066268bc483c5a3d713733cda078c6732517e2340892176ec97a10611f8
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8.0-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279070049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c69322194a02b03606f0f118595e893550d85d15ea79450de404d0704a6f10e7`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:58:53 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:59:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:59:02 GMT
CMD ["pypy3"]
# Wed, 26 Jul 2017 08:59:44 GMT
RUN mkdir -p /usr/src/app
# Wed, 26 Jul 2017 08:59:44 GMT
WORKDIR /usr/src/app
# Wed, 26 Jul 2017 08:59:44 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 26 Jul 2017 08:59:44 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 26 Jul 2017 08:59:45 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f17ef0070ad4d5e73de775d3771bbedaf7a2f21b17cb9e25b91f59f9d9de19a`  
		Last Modified: Wed, 26 Jul 2017 09:01:20 GMT  
		Size: 25.0 MB (25008883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7e67abe6ae2bafc5941976da13ca349ab5dd2065161dcd6f2839fa87d1231f`  
		Last Modified: Wed, 26 Jul 2017 09:01:15 GMT  
		Size: 4.2 MB (4209755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f07f02ef163dfee827c96481420e2c9c9ab2ac9c9c5fb1d5b1a3bd3da09ae86`  
		Last Modified: Wed, 26 Jul 2017 09:02:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.8-onbuild`

```console
$ docker pull pypy@sha256:2273c066268bc483c5a3d713733cda078c6732517e2340892176ec97a10611f8
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.8-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279070049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c69322194a02b03606f0f118595e893550d85d15ea79450de404d0704a6f10e7`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:58:53 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:59:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:59:02 GMT
CMD ["pypy3"]
# Wed, 26 Jul 2017 08:59:44 GMT
RUN mkdir -p /usr/src/app
# Wed, 26 Jul 2017 08:59:44 GMT
WORKDIR /usr/src/app
# Wed, 26 Jul 2017 08:59:44 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 26 Jul 2017 08:59:44 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 26 Jul 2017 08:59:45 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f17ef0070ad4d5e73de775d3771bbedaf7a2f21b17cb9e25b91f59f9d9de19a`  
		Last Modified: Wed, 26 Jul 2017 09:01:20 GMT  
		Size: 25.0 MB (25008883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7e67abe6ae2bafc5941976da13ca349ab5dd2065161dcd6f2839fa87d1231f`  
		Last Modified: Wed, 26 Jul 2017 09:01:15 GMT  
		Size: 4.2 MB (4209755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f07f02ef163dfee827c96481420e2c9c9ab2ac9c9c5fb1d5b1a3bd3da09ae86`  
		Last Modified: Wed, 26 Jul 2017 09:02:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-onbuild`

```console
$ docker pull pypy@sha256:2273c066268bc483c5a3d713733cda078c6732517e2340892176ec97a10611f8
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279070049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c69322194a02b03606f0f118595e893550d85d15ea79450de404d0704a6f10e7`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:58:53 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:59:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:59:02 GMT
CMD ["pypy3"]
# Wed, 26 Jul 2017 08:59:44 GMT
RUN mkdir -p /usr/src/app
# Wed, 26 Jul 2017 08:59:44 GMT
WORKDIR /usr/src/app
# Wed, 26 Jul 2017 08:59:44 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 26 Jul 2017 08:59:44 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 26 Jul 2017 08:59:45 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f17ef0070ad4d5e73de775d3771bbedaf7a2f21b17cb9e25b91f59f9d9de19a`  
		Last Modified: Wed, 26 Jul 2017 09:01:20 GMT  
		Size: 25.0 MB (25008883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7e67abe6ae2bafc5941976da13ca349ab5dd2065161dcd6f2839fa87d1231f`  
		Last Modified: Wed, 26 Jul 2017 09:01:15 GMT  
		Size: 4.2 MB (4209755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f07f02ef163dfee827c96481420e2c9c9ab2ac9c9c5fb1d5b1a3bd3da09ae86`  
		Last Modified: Wed, 26 Jul 2017 09:02:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-onbuild`

```console
$ docker pull pypy@sha256:2273c066268bc483c5a3d713733cda078c6732517e2340892176ec97a10611f8
```

-	Platforms:
	-	linux; amd64

### `pypy:3-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279070049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c69322194a02b03606f0f118595e893550d85d15ea79450de404d0704a6f10e7`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:58:53 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:59:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:59:02 GMT
CMD ["pypy3"]
# Wed, 26 Jul 2017 08:59:44 GMT
RUN mkdir -p /usr/src/app
# Wed, 26 Jul 2017 08:59:44 GMT
WORKDIR /usr/src/app
# Wed, 26 Jul 2017 08:59:44 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 26 Jul 2017 08:59:44 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 26 Jul 2017 08:59:45 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f17ef0070ad4d5e73de775d3771bbedaf7a2f21b17cb9e25b91f59f9d9de19a`  
		Last Modified: Wed, 26 Jul 2017 09:01:20 GMT  
		Size: 25.0 MB (25008883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7e67abe6ae2bafc5941976da13ca349ab5dd2065161dcd6f2839fa87d1231f`  
		Last Modified: Wed, 26 Jul 2017 09:01:15 GMT  
		Size: 4.2 MB (4209755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f07f02ef163dfee827c96481420e2c9c9ab2ac9c9c5fb1d5b1a3bd3da09ae86`  
		Last Modified: Wed, 26 Jul 2017 09:02:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:onbuild`

```console
$ docker pull pypy@sha256:2273c066268bc483c5a3d713733cda078c6732517e2340892176ec97a10611f8
```

-	Platforms:
	-	linux; amd64

### `pypy:onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279070049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c69322194a02b03606f0f118595e893550d85d15ea79450de404d0704a6f10e7`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:46:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:46:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:46:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:57:21 GMT
ENV PYPY_VERSION=5.8.0
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYPY_SHA256SUM=57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035
# Wed, 26 Jul 2017 08:58:44 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Jul 2017 08:58:53 GMT
RUN set -ex; 	wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2
# Wed, 26 Jul 2017 08:59:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 26 Jul 2017 08:59:02 GMT
CMD ["pypy3"]
# Wed, 26 Jul 2017 08:59:44 GMT
RUN mkdir -p /usr/src/app
# Wed, 26 Jul 2017 08:59:44 GMT
WORKDIR /usr/src/app
# Wed, 26 Jul 2017 08:59:44 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 26 Jul 2017 08:59:44 GMT
ONBUILD RUN pip install -r requirements.txt
# Wed, 26 Jul 2017 08:59:45 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032924b710ba95b71e9a2d971e705bab895ddf7a219994c2cf8761f6959e62ed`  
		Last Modified: Mon, 24 Jul 2017 20:19:29 GMT  
		Size: 2.9 MB (2897388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f17ef0070ad4d5e73de775d3771bbedaf7a2f21b17cb9e25b91f59f9d9de19a`  
		Last Modified: Wed, 26 Jul 2017 09:01:20 GMT  
		Size: 25.0 MB (25008883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7e67abe6ae2bafc5941976da13ca349ab5dd2065161dcd6f2839fa87d1231f`  
		Last Modified: Wed, 26 Jul 2017 09:01:15 GMT  
		Size: 4.2 MB (4209755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f07f02ef163dfee827c96481420e2c9c9ab2ac9c9c5fb1d5b1a3bd3da09ae86`  
		Last Modified: Wed, 26 Jul 2017 09:02:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
