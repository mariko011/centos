<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `python`

-	[`python:2.7.13`](#python2713)
-	[`python:2.7`](#python27)
-	[`python:2`](#python2)
-	[`python:2.7.13-slim`](#python2713-slim)
-	[`python:2.7-slim`](#python27-slim)
-	[`python:2-slim`](#python2-slim)
-	[`python:2.7.13-alpine`](#python2713-alpine)
-	[`python:2.7-alpine`](#python27-alpine)
-	[`python:2-alpine`](#python2-alpine)
-	[`python:2.7.13-wheezy`](#python2713-wheezy)
-	[`python:2.7-wheezy`](#python27-wheezy)
-	[`python:2-wheezy`](#python2-wheezy)
-	[`python:2.7.13-onbuild`](#python2713-onbuild)
-	[`python:2.7-onbuild`](#python27-onbuild)
-	[`python:2-onbuild`](#python2-onbuild)
-	[`python:2.7.13-windowsservercore`](#python2713-windowsservercore)
-	[`python:2.7-windowsservercore`](#python27-windowsservercore)
-	[`python:2-windowsservercore`](#python2-windowsservercore)
-	[`python:3.3.6`](#python336)
-	[`python:3.3`](#python33)
-	[`python:3.3.6-slim`](#python336-slim)
-	[`python:3.3-slim`](#python33-slim)
-	[`python:3.3.6-alpine`](#python336-alpine)
-	[`python:3.3-alpine`](#python33-alpine)
-	[`python:3.3.6-wheezy`](#python336-wheezy)
-	[`python:3.3-wheezy`](#python33-wheezy)
-	[`python:3.3.6-onbuild`](#python336-onbuild)
-	[`python:3.3-onbuild`](#python33-onbuild)
-	[`python:3.4.6`](#python346)
-	[`python:3.4`](#python34)
-	[`python:3.4.6-slim`](#python346-slim)
-	[`python:3.4-slim`](#python34-slim)
-	[`python:3.4.6-alpine`](#python346-alpine)
-	[`python:3.4-alpine`](#python34-alpine)
-	[`python:3.4.6-wheezy`](#python346-wheezy)
-	[`python:3.4-wheezy`](#python34-wheezy)
-	[`python:3.4.6-onbuild`](#python346-onbuild)
-	[`python:3.4-onbuild`](#python34-onbuild)
-	[`python:3.5.3`](#python353)
-	[`python:3.5`](#python35)
-	[`python:3.5.3-slim`](#python353-slim)
-	[`python:3.5-slim`](#python35-slim)
-	[`python:3.5.3-alpine`](#python353-alpine)
-	[`python:3.5-alpine`](#python35-alpine)
-	[`python:3.5.3-onbuild`](#python353-onbuild)
-	[`python:3.5-onbuild`](#python35-onbuild)
-	[`python:3.5.3-windowsservercore`](#python353-windowsservercore)
-	[`python:3.5-windowsservercore`](#python35-windowsservercore)
-	[`python:3.6.1`](#python361)
-	[`python:3.6`](#python36)
-	[`python:3`](#python3)
-	[`python:latest`](#pythonlatest)
-	[`python:3.6.1-slim`](#python361-slim)
-	[`python:3.6-slim`](#python36-slim)
-	[`python:3-slim`](#python3-slim)
-	[`python:slim`](#pythonslim)
-	[`python:3.6.1-alpine`](#python361-alpine)
-	[`python:3.6-alpine`](#python36-alpine)
-	[`python:3-alpine`](#python3-alpine)
-	[`python:alpine`](#pythonalpine)
-	[`python:3.6.1-onbuild`](#python361-onbuild)
-	[`python:3.6-onbuild`](#python36-onbuild)
-	[`python:3-onbuild`](#python3-onbuild)
-	[`python:onbuild`](#pythononbuild)
-	[`python:3.6.1-windowsservercore`](#python361-windowsservercore)
-	[`python:3.6-windowsservercore`](#python36-windowsservercore)
-	[`python:3-windowsservercore`](#python3-windowsservercore)
-	[`python:windowsservercore`](#pythonwindowsservercore)

## `python:2.7.13`

```console
$ docker pull python@sha256:bda277274d53484e4026f96379205760a424061933f91816a6d66784c5e8afdf
```

-	Platforms:
	-	linux; amd64

### `python:2.7.13` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264744203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68caceba17ab7f1dd16d9c14f1ed9ff8c8d61ed329dd8f158cb1c576ab478437`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:58 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 22 Mar 2017 22:43:58 GMT
ENV PYTHON_VERSION=2.7.13
# Wed, 22 Mar 2017 22:43:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:45:40 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:45:42 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 Mar 2017 22:45:42 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69702776c3990c81d7c279a5b3f178797d860f41f08a8d5b4191f716ea55e442`  
		Last Modified: Thu, 23 Mar 2017 17:01:32 GMT  
		Size: 16.0 MB (15976547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be4e7612dd45b7e1ab601570de7e890bf6c8565b1d9f5a918465dc20809b472`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 3.3 MB (3327159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2.7`

```console
$ docker pull python@sha256:bda277274d53484e4026f96379205760a424061933f91816a6d66784c5e8afdf
```

-	Platforms:
	-	linux; amd64

### `python:2.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264744203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68caceba17ab7f1dd16d9c14f1ed9ff8c8d61ed329dd8f158cb1c576ab478437`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:58 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 22 Mar 2017 22:43:58 GMT
ENV PYTHON_VERSION=2.7.13
# Wed, 22 Mar 2017 22:43:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:45:40 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:45:42 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 Mar 2017 22:45:42 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69702776c3990c81d7c279a5b3f178797d860f41f08a8d5b4191f716ea55e442`  
		Last Modified: Thu, 23 Mar 2017 17:01:32 GMT  
		Size: 16.0 MB (15976547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be4e7612dd45b7e1ab601570de7e890bf6c8565b1d9f5a918465dc20809b472`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 3.3 MB (3327159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2`

```console
$ docker pull python@sha256:bda277274d53484e4026f96379205760a424061933f91816a6d66784c5e8afdf
```

-	Platforms:
	-	linux; amd64

### `python:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264744203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68caceba17ab7f1dd16d9c14f1ed9ff8c8d61ed329dd8f158cb1c576ab478437`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:58 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 22 Mar 2017 22:43:58 GMT
ENV PYTHON_VERSION=2.7.13
# Wed, 22 Mar 2017 22:43:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:45:40 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:45:42 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 Mar 2017 22:45:42 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69702776c3990c81d7c279a5b3f178797d860f41f08a8d5b4191f716ea55e442`  
		Last Modified: Thu, 23 Mar 2017 17:01:32 GMT  
		Size: 16.0 MB (15976547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be4e7612dd45b7e1ab601570de7e890bf6c8565b1d9f5a918465dc20809b472`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 3.3 MB (3327159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2.7.13-slim`

```console
$ docker pull python@sha256:ca74abc54d21a6f1f16aaa483b931fe2f536eff5b9b5e77856c61173969605d2
```

-	Platforms:
	-	linux; amd64

### `python:2.7.13-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71326076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3048b49749a19d400f201abef968b732d68029c138a3a85c0d0e2b97e0c8f38e`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 21 Mar 2017 23:42:40 GMT
ENV PYTHON_VERSION=2.7.13
# Tue, 21 Mar 2017 23:42:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:44:39 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:44:39 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e707e000d50cb9ff7196cba36993274734b64a712732e5737df9d6e71f43d8`  
		Last Modified: Thu, 23 Mar 2017 17:02:42 GMT  
		Size: 16.5 MB (16471980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2.7-slim`

```console
$ docker pull python@sha256:ca74abc54d21a6f1f16aaa483b931fe2f536eff5b9b5e77856c61173969605d2
```

-	Platforms:
	-	linux; amd64

### `python:2.7-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71326076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3048b49749a19d400f201abef968b732d68029c138a3a85c0d0e2b97e0c8f38e`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 21 Mar 2017 23:42:40 GMT
ENV PYTHON_VERSION=2.7.13
# Tue, 21 Mar 2017 23:42:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:44:39 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:44:39 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e707e000d50cb9ff7196cba36993274734b64a712732e5737df9d6e71f43d8`  
		Last Modified: Thu, 23 Mar 2017 17:02:42 GMT  
		Size: 16.5 MB (16471980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2-slim`

```console
$ docker pull python@sha256:ca74abc54d21a6f1f16aaa483b931fe2f536eff5b9b5e77856c61173969605d2
```

-	Platforms:
	-	linux; amd64

### `python:2-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71326076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3048b49749a19d400f201abef968b732d68029c138a3a85c0d0e2b97e0c8f38e`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 21 Mar 2017 23:42:40 GMT
ENV PYTHON_VERSION=2.7.13
# Tue, 21 Mar 2017 23:42:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:44:39 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:44:39 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e707e000d50cb9ff7196cba36993274734b64a712732e5737df9d6e71f43d8`  
		Last Modified: Thu, 23 Mar 2017 17:02:42 GMT  
		Size: 16.5 MB (16471980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2.7.13-alpine`

```console
$ docker pull python@sha256:912be638dbb626dd1774b58a4afd0f279950fad57fd8cb13a57504dd998f9b00
```

-	Platforms:
	-	linux; amd64

### `python:2.7.13-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24091071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b63d02d8829b621f5b41dff0cc1de4ffe85d614dc47310f8ec9743d8364873ac`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:23:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:23:02 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 23:23:03 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 23:23:04 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 03 Mar 2017 23:23:04 GMT
ENV PYTHON_VERSION=2.7.13
# Fri, 03 Mar 2017 23:23:04 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 03 Mar 2017 23:24:43 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 03 Mar 2017 23:24:44 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ede2d2484a67ae3a88912d400c46f4f76e8f62f1003ed10c6f95893603781`  
		Last Modified: Sat, 04 Mar 2017 06:57:30 GMT  
		Size: 348.7 KB (348731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf524d29fe8c357e911bbf185bb7f6dd0de975d0002d1e1fea8a94dac54caaf`  
		Last Modified: Sat, 04 Mar 2017 06:57:43 GMT  
		Size: 21.4 MB (21428956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2.7-alpine`

```console
$ docker pull python@sha256:912be638dbb626dd1774b58a4afd0f279950fad57fd8cb13a57504dd998f9b00
```

-	Platforms:
	-	linux; amd64

### `python:2.7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24091071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b63d02d8829b621f5b41dff0cc1de4ffe85d614dc47310f8ec9743d8364873ac`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:23:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:23:02 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 23:23:03 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 23:23:04 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 03 Mar 2017 23:23:04 GMT
ENV PYTHON_VERSION=2.7.13
# Fri, 03 Mar 2017 23:23:04 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 03 Mar 2017 23:24:43 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 03 Mar 2017 23:24:44 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ede2d2484a67ae3a88912d400c46f4f76e8f62f1003ed10c6f95893603781`  
		Last Modified: Sat, 04 Mar 2017 06:57:30 GMT  
		Size: 348.7 KB (348731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf524d29fe8c357e911bbf185bb7f6dd0de975d0002d1e1fea8a94dac54caaf`  
		Last Modified: Sat, 04 Mar 2017 06:57:43 GMT  
		Size: 21.4 MB (21428956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2-alpine`

```console
$ docker pull python@sha256:912be638dbb626dd1774b58a4afd0f279950fad57fd8cb13a57504dd998f9b00
```

-	Platforms:
	-	linux; amd64

### `python:2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24091071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b63d02d8829b621f5b41dff0cc1de4ffe85d614dc47310f8ec9743d8364873ac`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:23:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:23:02 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 23:23:03 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 23:23:04 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 03 Mar 2017 23:23:04 GMT
ENV PYTHON_VERSION=2.7.13
# Fri, 03 Mar 2017 23:23:04 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 03 Mar 2017 23:24:43 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 03 Mar 2017 23:24:44 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ede2d2484a67ae3a88912d400c46f4f76e8f62f1003ed10c6f95893603781`  
		Last Modified: Sat, 04 Mar 2017 06:57:30 GMT  
		Size: 348.7 KB (348731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf524d29fe8c357e911bbf185bb7f6dd0de975d0002d1e1fea8a94dac54caaf`  
		Last Modified: Sat, 04 Mar 2017 06:57:43 GMT  
		Size: 21.4 MB (21428956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2.7.13-wheezy`

```console
$ docker pull python@sha256:f9b34a1dd540f5546723c54f4fba2bf71a793f4506ec65bdc0368568839e21a3
```

-	Platforms:
	-	linux; amd64

### `python:2.7.13-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199874189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:866c3c51b9467907a8aa23a99dcd3b1874ba37c3dded75c915e988b0e71f21bd`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:57:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:58:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:45:46 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:45:46 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:46:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:46:01 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 22 Mar 2017 22:46:01 GMT
ENV PYTHON_VERSION=2.7.13
# Wed, 22 Mar 2017 22:46:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:47:35 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:47:37 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 Mar 2017 22:47:37 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd07181070a737cb357be3bea64f2aa58df705e14b1fce01b2b99cb4811f69b8`  
		Last Modified: Tue, 21 Mar 2017 20:10:33 GMT  
		Size: 37.4 MB (37442499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8750db8db04d2739634c5b74f813c6a57c80097cb876a8f9316d44e3cba9e04`  
		Last Modified: Tue, 21 Mar 2017 20:11:34 GMT  
		Size: 95.4 MB (95409786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031e6d32cc9a6b8b97001684513b4f422ffb70f8be577bf86a388d4172b499d4`  
		Last Modified: Thu, 23 Mar 2017 17:05:04 GMT  
		Size: 3.2 MB (3229081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85c3fb95c317ddd6b5b2b3722be245134e51b9b99d207ea76fb1f36e15369a6`  
		Last Modified: Thu, 23 Mar 2017 17:05:09 GMT  
		Size: 16.4 MB (16369451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2401761a0d4a7174f61ed80b8f9b93a9964997aa4ceb91f2672533750a044be`  
		Last Modified: Thu, 23 Mar 2017 17:05:04 GMT  
		Size: 3.3 MB (3327167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2.7-wheezy`

```console
$ docker pull python@sha256:f9b34a1dd540f5546723c54f4fba2bf71a793f4506ec65bdc0368568839e21a3
```

-	Platforms:
	-	linux; amd64

### `python:2.7-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199874189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:866c3c51b9467907a8aa23a99dcd3b1874ba37c3dded75c915e988b0e71f21bd`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:57:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:58:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:45:46 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:45:46 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:46:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:46:01 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 22 Mar 2017 22:46:01 GMT
ENV PYTHON_VERSION=2.7.13
# Wed, 22 Mar 2017 22:46:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:47:35 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:47:37 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 Mar 2017 22:47:37 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd07181070a737cb357be3bea64f2aa58df705e14b1fce01b2b99cb4811f69b8`  
		Last Modified: Tue, 21 Mar 2017 20:10:33 GMT  
		Size: 37.4 MB (37442499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8750db8db04d2739634c5b74f813c6a57c80097cb876a8f9316d44e3cba9e04`  
		Last Modified: Tue, 21 Mar 2017 20:11:34 GMT  
		Size: 95.4 MB (95409786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031e6d32cc9a6b8b97001684513b4f422ffb70f8be577bf86a388d4172b499d4`  
		Last Modified: Thu, 23 Mar 2017 17:05:04 GMT  
		Size: 3.2 MB (3229081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85c3fb95c317ddd6b5b2b3722be245134e51b9b99d207ea76fb1f36e15369a6`  
		Last Modified: Thu, 23 Mar 2017 17:05:09 GMT  
		Size: 16.4 MB (16369451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2401761a0d4a7174f61ed80b8f9b93a9964997aa4ceb91f2672533750a044be`  
		Last Modified: Thu, 23 Mar 2017 17:05:04 GMT  
		Size: 3.3 MB (3327167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2-wheezy`

```console
$ docker pull python@sha256:f9b34a1dd540f5546723c54f4fba2bf71a793f4506ec65bdc0368568839e21a3
```

-	Platforms:
	-	linux; amd64

### `python:2-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199874189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:866c3c51b9467907a8aa23a99dcd3b1874ba37c3dded75c915e988b0e71f21bd`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:57:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:58:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:45:46 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:45:46 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:46:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:46:01 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 22 Mar 2017 22:46:01 GMT
ENV PYTHON_VERSION=2.7.13
# Wed, 22 Mar 2017 22:46:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:47:35 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:47:37 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 Mar 2017 22:47:37 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd07181070a737cb357be3bea64f2aa58df705e14b1fce01b2b99cb4811f69b8`  
		Last Modified: Tue, 21 Mar 2017 20:10:33 GMT  
		Size: 37.4 MB (37442499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8750db8db04d2739634c5b74f813c6a57c80097cb876a8f9316d44e3cba9e04`  
		Last Modified: Tue, 21 Mar 2017 20:11:34 GMT  
		Size: 95.4 MB (95409786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031e6d32cc9a6b8b97001684513b4f422ffb70f8be577bf86a388d4172b499d4`  
		Last Modified: Thu, 23 Mar 2017 17:05:04 GMT  
		Size: 3.2 MB (3229081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85c3fb95c317ddd6b5b2b3722be245134e51b9b99d207ea76fb1f36e15369a6`  
		Last Modified: Thu, 23 Mar 2017 17:05:09 GMT  
		Size: 16.4 MB (16369451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2401761a0d4a7174f61ed80b8f9b93a9964997aa4ceb91f2672533750a044be`  
		Last Modified: Thu, 23 Mar 2017 17:05:04 GMT  
		Size: 3.3 MB (3327167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2.7.13-onbuild`

```console
$ docker pull python@sha256:e778f746b87f3f02376021bb5b75cd23fb09d8a0fa729bcc74e9e2509ddfe81d
```

-	Platforms:
	-	linux; amd64

### `python:2.7.13-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264744328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5754a7fac135b9cae7e02e34cc7ba941f03a33fb00cf31f12fbb71b8d389ece2`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:58 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 22 Mar 2017 22:43:58 GMT
ENV PYTHON_VERSION=2.7.13
# Wed, 22 Mar 2017 22:43:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:45:40 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:45:42 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 Mar 2017 22:45:42 GMT
CMD ["python2"]
# Wed, 22 Mar 2017 22:45:44 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:45:44 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:45:44 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:45:45 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 22 Mar 2017 22:45:45 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69702776c3990c81d7c279a5b3f178797d860f41f08a8d5b4191f716ea55e442`  
		Last Modified: Thu, 23 Mar 2017 17:01:32 GMT  
		Size: 16.0 MB (15976547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be4e7612dd45b7e1ab601570de7e890bf6c8565b1d9f5a918465dc20809b472`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 3.3 MB (3327159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fec94ae3b8f362b475091df3277a1fcae596eb017e8c67adce5c22d5ee409`  
		Last Modified: Thu, 23 Mar 2017 17:06:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2.7-onbuild`

```console
$ docker pull python@sha256:e778f746b87f3f02376021bb5b75cd23fb09d8a0fa729bcc74e9e2509ddfe81d
```

-	Platforms:
	-	linux; amd64

### `python:2.7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264744328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5754a7fac135b9cae7e02e34cc7ba941f03a33fb00cf31f12fbb71b8d389ece2`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:58 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 22 Mar 2017 22:43:58 GMT
ENV PYTHON_VERSION=2.7.13
# Wed, 22 Mar 2017 22:43:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:45:40 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:45:42 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 Mar 2017 22:45:42 GMT
CMD ["python2"]
# Wed, 22 Mar 2017 22:45:44 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:45:44 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:45:44 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:45:45 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 22 Mar 2017 22:45:45 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69702776c3990c81d7c279a5b3f178797d860f41f08a8d5b4191f716ea55e442`  
		Last Modified: Thu, 23 Mar 2017 17:01:32 GMT  
		Size: 16.0 MB (15976547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be4e7612dd45b7e1ab601570de7e890bf6c8565b1d9f5a918465dc20809b472`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 3.3 MB (3327159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fec94ae3b8f362b475091df3277a1fcae596eb017e8c67adce5c22d5ee409`  
		Last Modified: Thu, 23 Mar 2017 17:06:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2-onbuild`

```console
$ docker pull python@sha256:e778f746b87f3f02376021bb5b75cd23fb09d8a0fa729bcc74e9e2509ddfe81d
```

-	Platforms:
	-	linux; amd64

### `python:2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264744328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5754a7fac135b9cae7e02e34cc7ba941f03a33fb00cf31f12fbb71b8d389ece2`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:43:58 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 22 Mar 2017 22:43:58 GMT
ENV PYTHON_VERSION=2.7.13
# Wed, 22 Mar 2017 22:43:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:45:40 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:45:42 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 Mar 2017 22:45:42 GMT
CMD ["python2"]
# Wed, 22 Mar 2017 22:45:44 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:45:44 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:45:44 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:45:45 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 22 Mar 2017 22:45:45 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69702776c3990c81d7c279a5b3f178797d860f41f08a8d5b4191f716ea55e442`  
		Last Modified: Thu, 23 Mar 2017 17:01:32 GMT  
		Size: 16.0 MB (15976547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be4e7612dd45b7e1ab601570de7e890bf6c8565b1d9f5a918465dc20809b472`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 3.3 MB (3327159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fec94ae3b8f362b475091df3277a1fcae596eb017e8c67adce5c22d5ee409`  
		Last Modified: Thu, 23 Mar 2017 17:06:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2.7.13-windowsservercore`

```console
$ docker pull python@sha256:1e706ade30b8cb2eeffef606df1566ce334909f62d3f42e9d5e218880a4f6244
```

-	Platforms:
	-	windows; amd64

### `python:2.7.13-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5268317664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7fa06c559a06e37d2be68c620ca3889d59678720f7a06d3074d17279a0250e4`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Mar 2017 23:09:10 GMT
ENV PYTHON_VERSION=2.7.13
# Wed, 22 Mar 2017 23:09:12 GMT
ENV PYTHON_RELEASE=2.7.13
# Wed, 22 Mar 2017 23:09:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 23:11:24 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.msi'); 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	(New-Object System.Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py'); 	python get-pip.py $pipInstall; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 Mar 2017 23:11:52 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 Mar 2017 23:11:56 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38b81868546f40306c419273fd242e9d57181e4603e6a484c23373ffcd42353`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae25f8d480b9d53ef54f1467341b03f0a168e3374cbd1f03ad41deed53f708a6`  
		Last Modified: Thu, 23 Mar 2017 17:00:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48be5612655320e6ffdefe20da7ec23549141ce2337b1a422d6478b6387de636`  
		Last Modified: Thu, 23 Mar 2017 17:00:44 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd47f93fec56b5e4c1cd16f207639d2e66ff719857794a9e066bf9a63987887`  
		Last Modified: Thu, 23 Mar 2017 17:00:53 GMT  
		Size: 44.3 MB (44319250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959c3a38f33e2a2a6196c7afb451391ab4709f4de4bb94d75e0e164da9cdc71b`  
		Last Modified: Thu, 23 Mar 2017 17:00:46 GMT  
		Size: 6.7 MB (6738604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba88d3b8b4844b9d3c0a1798022701ff48501284e55fca485ebec30daa843a38`  
		Last Modified: Thu, 23 Mar 2017 17:00:44 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2.7-windowsservercore`

```console
$ docker pull python@sha256:1e706ade30b8cb2eeffef606df1566ce334909f62d3f42e9d5e218880a4f6244
```

-	Platforms:
	-	windows; amd64

### `python:2.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5268317664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7fa06c559a06e37d2be68c620ca3889d59678720f7a06d3074d17279a0250e4`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Mar 2017 23:09:10 GMT
ENV PYTHON_VERSION=2.7.13
# Wed, 22 Mar 2017 23:09:12 GMT
ENV PYTHON_RELEASE=2.7.13
# Wed, 22 Mar 2017 23:09:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 23:11:24 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.msi'); 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	(New-Object System.Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py'); 	python get-pip.py $pipInstall; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 Mar 2017 23:11:52 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 Mar 2017 23:11:56 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38b81868546f40306c419273fd242e9d57181e4603e6a484c23373ffcd42353`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae25f8d480b9d53ef54f1467341b03f0a168e3374cbd1f03ad41deed53f708a6`  
		Last Modified: Thu, 23 Mar 2017 17:00:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48be5612655320e6ffdefe20da7ec23549141ce2337b1a422d6478b6387de636`  
		Last Modified: Thu, 23 Mar 2017 17:00:44 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd47f93fec56b5e4c1cd16f207639d2e66ff719857794a9e066bf9a63987887`  
		Last Modified: Thu, 23 Mar 2017 17:00:53 GMT  
		Size: 44.3 MB (44319250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959c3a38f33e2a2a6196c7afb451391ab4709f4de4bb94d75e0e164da9cdc71b`  
		Last Modified: Thu, 23 Mar 2017 17:00:46 GMT  
		Size: 6.7 MB (6738604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba88d3b8b4844b9d3c0a1798022701ff48501284e55fca485ebec30daa843a38`  
		Last Modified: Thu, 23 Mar 2017 17:00:44 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:2-windowsservercore`

```console
$ docker pull python@sha256:1e706ade30b8cb2eeffef606df1566ce334909f62d3f42e9d5e218880a4f6244
```

-	Platforms:
	-	windows; amd64

### `python:2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5268317664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7fa06c559a06e37d2be68c620ca3889d59678720f7a06d3074d17279a0250e4`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Mar 2017 23:09:10 GMT
ENV PYTHON_VERSION=2.7.13
# Wed, 22 Mar 2017 23:09:12 GMT
ENV PYTHON_RELEASE=2.7.13
# Wed, 22 Mar 2017 23:09:15 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 23:11:24 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.msi'); 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	(New-Object System.Net.WebClient).DownloadFile('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py'); 	python get-pip.py $pipInstall; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 Mar 2017 23:11:52 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 Mar 2017 23:11:56 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38b81868546f40306c419273fd242e9d57181e4603e6a484c23373ffcd42353`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae25f8d480b9d53ef54f1467341b03f0a168e3374cbd1f03ad41deed53f708a6`  
		Last Modified: Thu, 23 Mar 2017 17:00:44 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48be5612655320e6ffdefe20da7ec23549141ce2337b1a422d6478b6387de636`  
		Last Modified: Thu, 23 Mar 2017 17:00:44 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd47f93fec56b5e4c1cd16f207639d2e66ff719857794a9e066bf9a63987887`  
		Last Modified: Thu, 23 Mar 2017 17:00:53 GMT  
		Size: 44.3 MB (44319250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959c3a38f33e2a2a6196c7afb451391ab4709f4de4bb94d75e0e164da9cdc71b`  
		Last Modified: Thu, 23 Mar 2017 17:00:46 GMT  
		Size: 6.7 MB (6738604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba88d3b8b4844b9d3c0a1798022701ff48501284e55fca485ebec30daa843a38`  
		Last Modified: Thu, 23 Mar 2017 17:00:44 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.3.6`

```console
$ docker pull python@sha256:e1a158cc0a3249f318ff643a4f81c2061db743f6545cbff082b980388729945d
```

-	Platforms:
	-	linux; amd64

### `python:3.3.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261828787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75ec53e5e8e1d71f0c38dced69c6c0077e1e1a848ad3deb1dbf6e31930b69a86`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:49:18 GMT
ENV GPG_KEY=26DEA9D4613391EF3E25C9FF0A5B101836580288
# Wed, 22 Mar 2017 22:49:18 GMT
ENV PYTHON_VERSION=3.3.6
# Wed, 22 Mar 2017 22:49:19 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:51:06 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:51:07 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:51:08 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99065c2e6280165eaaa8528a9cab82786e886bc3fd78ab7422e2fdc3a0a0543`  
		Last Modified: Thu, 23 Mar 2017 17:08:38 GMT  
		Size: 16.4 MB (16388055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6263da3f9e0f8c763385994230aec4586e653a2d588930d20a8285006cd8597`  
		Last Modified: Thu, 23 Mar 2017 17:08:29 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.3`

```console
$ docker pull python@sha256:e1a158cc0a3249f318ff643a4f81c2061db743f6545cbff082b980388729945d
```

-	Platforms:
	-	linux; amd64

### `python:3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261828787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75ec53e5e8e1d71f0c38dced69c6c0077e1e1a848ad3deb1dbf6e31930b69a86`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:49:18 GMT
ENV GPG_KEY=26DEA9D4613391EF3E25C9FF0A5B101836580288
# Wed, 22 Mar 2017 22:49:18 GMT
ENV PYTHON_VERSION=3.3.6
# Wed, 22 Mar 2017 22:49:19 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:51:06 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:51:07 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:51:08 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99065c2e6280165eaaa8528a9cab82786e886bc3fd78ab7422e2fdc3a0a0543`  
		Last Modified: Thu, 23 Mar 2017 17:08:38 GMT  
		Size: 16.4 MB (16388055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6263da3f9e0f8c763385994230aec4586e653a2d588930d20a8285006cd8597`  
		Last Modified: Thu, 23 Mar 2017 17:08:29 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.3.6-slim`

```console
$ docker pull python@sha256:1d7eeec58a0d12b8058d3e44cf4b62c78f023803e0979e26005742c2dc2d60c5
```

-	Platforms:
	-	linux; amd64

### `python:3.3.6-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71738036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc592ba7a020081ba49205ca2be88696aa397afd27a61a94793609d97f21d4f2`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:46:45 GMT
ENV GPG_KEY=26DEA9D4613391EF3E25C9FF0A5B101836580288
# Tue, 21 Mar 2017 23:46:45 GMT
ENV PYTHON_VERSION=3.3.6
# Tue, 21 Mar 2017 23:46:46 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:49:08 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:49:09 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 21 Mar 2017 23:49:09 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e680dab167f2e6342f86a3aee6cb109915f8eeb85d4a674cb370c84e4eccf069`  
		Last Modified: Thu, 23 Mar 2017 17:09:49 GMT  
		Size: 16.9 MB (16883706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8f82b1ec0be98e1c7479bd1076507d96369bb4da2bb7f9129dc511afedee55`  
		Last Modified: Thu, 23 Mar 2017 17:09:39 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.3-slim`

```console
$ docker pull python@sha256:1d7eeec58a0d12b8058d3e44cf4b62c78f023803e0979e26005742c2dc2d60c5
```

-	Platforms:
	-	linux; amd64

### `python:3.3-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71738036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc592ba7a020081ba49205ca2be88696aa397afd27a61a94793609d97f21d4f2`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:46:45 GMT
ENV GPG_KEY=26DEA9D4613391EF3E25C9FF0A5B101836580288
# Tue, 21 Mar 2017 23:46:45 GMT
ENV PYTHON_VERSION=3.3.6
# Tue, 21 Mar 2017 23:46:46 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:49:08 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:49:09 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 21 Mar 2017 23:49:09 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e680dab167f2e6342f86a3aee6cb109915f8eeb85d4a674cb370c84e4eccf069`  
		Last Modified: Thu, 23 Mar 2017 17:09:49 GMT  
		Size: 16.9 MB (16883706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8f82b1ec0be98e1c7479bd1076507d96369bb4da2bb7f9129dc511afedee55`  
		Last Modified: Thu, 23 Mar 2017 17:09:39 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.3.6-alpine`

```console
$ docker pull python@sha256:934283c3d5f00b3ae3cc16f1b3796fa0305fff34645ec039b631388df55bd033
```

-	Platforms:
	-	linux; amd64

### `python:3.3.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24371583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4a62aea74cdbce4037312ddba02c90d982a8dbd465a5842b799d62198a2ee1`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:23:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:23:02 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 23:23:03 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 23:26:26 GMT
ENV GPG_KEY=26DEA9D4613391EF3E25C9FF0A5B101836580288
# Fri, 03 Mar 2017 23:26:27 GMT
ENV PYTHON_VERSION=3.3.6
# Fri, 03 Mar 2017 23:26:27 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 03 Mar 2017 23:28:21 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 03 Mar 2017 23:28:22 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 03 Mar 2017 23:28:22 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ede2d2484a67ae3a88912d400c46f4f76e8f62f1003ed10c6f95893603781`  
		Last Modified: Sat, 04 Mar 2017 06:57:30 GMT  
		Size: 348.7 KB (348731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb43b229fb4c8f3074fd71b9d7b00118bc28d957c39c252513afab201c5086c`  
		Last Modified: Sat, 04 Mar 2017 06:59:34 GMT  
		Size: 21.7 MB (21709243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994b2d22ce466d889a47db00a5917efe836babc31a53ec78df1a1d5396ccb297`  
		Last Modified: Sat, 04 Mar 2017 06:59:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.3-alpine`

```console
$ docker pull python@sha256:934283c3d5f00b3ae3cc16f1b3796fa0305fff34645ec039b631388df55bd033
```

-	Platforms:
	-	linux; amd64

### `python:3.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24371583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4a62aea74cdbce4037312ddba02c90d982a8dbd465a5842b799d62198a2ee1`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:23:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:23:02 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 23:23:03 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 23:26:26 GMT
ENV GPG_KEY=26DEA9D4613391EF3E25C9FF0A5B101836580288
# Fri, 03 Mar 2017 23:26:27 GMT
ENV PYTHON_VERSION=3.3.6
# Fri, 03 Mar 2017 23:26:27 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 03 Mar 2017 23:28:21 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 03 Mar 2017 23:28:22 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 03 Mar 2017 23:28:22 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ede2d2484a67ae3a88912d400c46f4f76e8f62f1003ed10c6f95893603781`  
		Last Modified: Sat, 04 Mar 2017 06:57:30 GMT  
		Size: 348.7 KB (348731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb43b229fb4c8f3074fd71b9d7b00118bc28d957c39c252513afab201c5086c`  
		Last Modified: Sat, 04 Mar 2017 06:59:34 GMT  
		Size: 21.7 MB (21709243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994b2d22ce466d889a47db00a5917efe836babc31a53ec78df1a1d5396ccb297`  
		Last Modified: Sat, 04 Mar 2017 06:59:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.3.6-wheezy`

```console
$ docker pull python@sha256:5f032290308ca636f309d4355b93d82326092920607b7cb4518b3677a6beb6de
```

-	Platforms:
	-	linux; amd64

### `python:3.3.6-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196668435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae30d155ffd85e043fac4c95f438cceebc46fc7b299b2d22d652a7042873fcd`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:57:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:58:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:45:46 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:45:46 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:46:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:51:11 GMT
ENV GPG_KEY=26DEA9D4613391EF3E25C9FF0A5B101836580288
# Wed, 22 Mar 2017 22:51:12 GMT
ENV PYTHON_VERSION=3.3.6
# Wed, 22 Mar 2017 22:51:12 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:52:51 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:52:51 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:52:52 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd07181070a737cb357be3bea64f2aa58df705e14b1fce01b2b99cb4811f69b8`  
		Last Modified: Tue, 21 Mar 2017 20:10:33 GMT  
		Size: 37.4 MB (37442499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8750db8db04d2739634c5b74f813c6a57c80097cb876a8f9316d44e3cba9e04`  
		Last Modified: Tue, 21 Mar 2017 20:11:34 GMT  
		Size: 95.4 MB (95409786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031e6d32cc9a6b8b97001684513b4f422ffb70f8be577bf86a388d4172b499d4`  
		Last Modified: Thu, 23 Mar 2017 17:05:04 GMT  
		Size: 3.2 MB (3229081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ad3e2a03905b4fd0ef52f5c87178801246988817ba85b633c04dc3cb7ffcc8`  
		Last Modified: Thu, 23 Mar 2017 17:12:07 GMT  
		Size: 16.5 MB (16490631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d6588e8c3685673a117d843d1619be3d1d9784bd249f4a7e5a55929a986109`  
		Last Modified: Thu, 23 Mar 2017 17:11:58 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.3-wheezy`

```console
$ docker pull python@sha256:5f032290308ca636f309d4355b93d82326092920607b7cb4518b3677a6beb6de
```

-	Platforms:
	-	linux; amd64

### `python:3.3-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196668435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae30d155ffd85e043fac4c95f438cceebc46fc7b299b2d22d652a7042873fcd`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:57:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:58:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:45:46 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:45:46 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:46:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:51:11 GMT
ENV GPG_KEY=26DEA9D4613391EF3E25C9FF0A5B101836580288
# Wed, 22 Mar 2017 22:51:12 GMT
ENV PYTHON_VERSION=3.3.6
# Wed, 22 Mar 2017 22:51:12 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:52:51 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:52:51 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:52:52 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd07181070a737cb357be3bea64f2aa58df705e14b1fce01b2b99cb4811f69b8`  
		Last Modified: Tue, 21 Mar 2017 20:10:33 GMT  
		Size: 37.4 MB (37442499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8750db8db04d2739634c5b74f813c6a57c80097cb876a8f9316d44e3cba9e04`  
		Last Modified: Tue, 21 Mar 2017 20:11:34 GMT  
		Size: 95.4 MB (95409786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031e6d32cc9a6b8b97001684513b4f422ffb70f8be577bf86a388d4172b499d4`  
		Last Modified: Thu, 23 Mar 2017 17:05:04 GMT  
		Size: 3.2 MB (3229081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ad3e2a03905b4fd0ef52f5c87178801246988817ba85b633c04dc3cb7ffcc8`  
		Last Modified: Thu, 23 Mar 2017 17:12:07 GMT  
		Size: 16.5 MB (16490631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d6588e8c3685673a117d843d1619be3d1d9784bd249f4a7e5a55929a986109`  
		Last Modified: Thu, 23 Mar 2017 17:11:58 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.3.6-onbuild`

```console
$ docker pull python@sha256:58f0dcfdc4d0d755cc4a57c17d43fd6d8545efbfd8f5da58125c2d42a76e2cc1
```

-	Platforms:
	-	linux; amd64

### `python:3.3.6-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261828913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cddcd16b86ace748828c8facb9062f44065d3eee488115bad8d2922d5c98ac1d`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:49:18 GMT
ENV GPG_KEY=26DEA9D4613391EF3E25C9FF0A5B101836580288
# Wed, 22 Mar 2017 22:49:18 GMT
ENV PYTHON_VERSION=3.3.6
# Wed, 22 Mar 2017 22:49:19 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:51:06 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:51:07 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:51:08 GMT
CMD ["python3"]
# Wed, 22 Mar 2017 22:51:09 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:51:09 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:51:10 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:51:10 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 22 Mar 2017 22:51:10 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99065c2e6280165eaaa8528a9cab82786e886bc3fd78ab7422e2fdc3a0a0543`  
		Last Modified: Thu, 23 Mar 2017 17:08:38 GMT  
		Size: 16.4 MB (16388055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6263da3f9e0f8c763385994230aec4586e653a2d588930d20a8285006cd8597`  
		Last Modified: Thu, 23 Mar 2017 17:08:29 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5cc2269c2414a77194eff3a76895a05c0ea51b1389d8ce9cfb10eb54977b3a`  
		Last Modified: Thu, 23 Mar 2017 17:13:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.3-onbuild`

```console
$ docker pull python@sha256:58f0dcfdc4d0d755cc4a57c17d43fd6d8545efbfd8f5da58125c2d42a76e2cc1
```

-	Platforms:
	-	linux; amd64

### `python:3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261828913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cddcd16b86ace748828c8facb9062f44065d3eee488115bad8d2922d5c98ac1d`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:49:18 GMT
ENV GPG_KEY=26DEA9D4613391EF3E25C9FF0A5B101836580288
# Wed, 22 Mar 2017 22:49:18 GMT
ENV PYTHON_VERSION=3.3.6
# Wed, 22 Mar 2017 22:49:19 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:51:06 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:51:07 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:51:08 GMT
CMD ["python3"]
# Wed, 22 Mar 2017 22:51:09 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:51:09 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:51:10 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:51:10 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 22 Mar 2017 22:51:10 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99065c2e6280165eaaa8528a9cab82786e886bc3fd78ab7422e2fdc3a0a0543`  
		Last Modified: Thu, 23 Mar 2017 17:08:38 GMT  
		Size: 16.4 MB (16388055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6263da3f9e0f8c763385994230aec4586e653a2d588930d20a8285006cd8597`  
		Last Modified: Thu, 23 Mar 2017 17:08:29 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5cc2269c2414a77194eff3a76895a05c0ea51b1389d8ce9cfb10eb54977b3a`  
		Last Modified: Thu, 23 Mar 2017 17:13:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.4.6`

```console
$ docker pull python@sha256:4d086dd5605f90c162552dec28336eb9b77d80243745c36579ade3012871cc00
```

-	Platforms:
	-	linux; amd64

### `python:3.4.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264617735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c588c14f484e0b15b77356922221d078f8de928bdd4df8911ce4c598c8dc6c7f`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:52:52 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 22 Mar 2017 22:52:53 GMT
ENV PYTHON_VERSION=3.4.6
# Wed, 22 Mar 2017 22:52:53 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:54:43 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:54:44 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:54:44 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c87196279957c8efb62524b484ae744fc96994ea6f7570d2baec671876876d`  
		Last Modified: Thu, 23 Mar 2017 17:14:26 GMT  
		Size: 19.2 MB (19176971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82427238bf097f992fef5b4ce2f62919c38718c63b622e601cc9e5577d98595e`  
		Last Modified: Thu, 23 Mar 2017 17:14:18 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.4`

```console
$ docker pull python@sha256:4d086dd5605f90c162552dec28336eb9b77d80243745c36579ade3012871cc00
```

-	Platforms:
	-	linux; amd64

### `python:3.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264617735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c588c14f484e0b15b77356922221d078f8de928bdd4df8911ce4c598c8dc6c7f`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:52:52 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 22 Mar 2017 22:52:53 GMT
ENV PYTHON_VERSION=3.4.6
# Wed, 22 Mar 2017 22:52:53 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:54:43 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:54:44 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:54:44 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c87196279957c8efb62524b484ae744fc96994ea6f7570d2baec671876876d`  
		Last Modified: Thu, 23 Mar 2017 17:14:26 GMT  
		Size: 19.2 MB (19176971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82427238bf097f992fef5b4ce2f62919c38718c63b622e601cc9e5577d98595e`  
		Last Modified: Thu, 23 Mar 2017 17:14:18 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.4.6-slim`

```console
$ docker pull python@sha256:974fe587bee3d78ab3015cec7e7de31640ab708d7f63293c876f2842903658f5
```

-	Platforms:
	-	linux; amd64

### `python:3.4.6-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.5 MB (74526026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2ef2b36fd0df8dade94f4992f017c5c16fa1b7f3664fd1a4643a8934c29593`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:49:10 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 21 Mar 2017 23:49:10 GMT
ENV PYTHON_VERSION=3.4.6
# Tue, 21 Mar 2017 23:49:10 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:51:27 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:51:28 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 21 Mar 2017 23:51:28 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0360ad2839b45404dd5c295352e769eb1149aaa192bbdf8bda5907f4d478905`  
		Last Modified: Thu, 23 Mar 2017 17:15:38 GMT  
		Size: 19.7 MB (19671662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8414e8f0a1291c4069de5aec74901daaba6f46e8c6616d0e21774f8b395f5a48`  
		Last Modified: Thu, 23 Mar 2017 17:15:30 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.4-slim`

```console
$ docker pull python@sha256:974fe587bee3d78ab3015cec7e7de31640ab708d7f63293c876f2842903658f5
```

-	Platforms:
	-	linux; amd64

### `python:3.4-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.5 MB (74526026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2ef2b36fd0df8dade94f4992f017c5c16fa1b7f3664fd1a4643a8934c29593`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:49:10 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 21 Mar 2017 23:49:10 GMT
ENV PYTHON_VERSION=3.4.6
# Tue, 21 Mar 2017 23:49:10 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:51:27 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:51:28 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 21 Mar 2017 23:51:28 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0360ad2839b45404dd5c295352e769eb1149aaa192bbdf8bda5907f4d478905`  
		Last Modified: Thu, 23 Mar 2017 17:15:38 GMT  
		Size: 19.7 MB (19671662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8414e8f0a1291c4069de5aec74901daaba6f46e8c6616d0e21774f8b395f5a48`  
		Last Modified: Thu, 23 Mar 2017 17:15:30 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.4.6-alpine`

```console
$ docker pull python@sha256:7810dade5342b49ca28230195e21068783cd3bc69b0972248d286759ec9b42f1
```

-	Platforms:
	-	linux; amd64

### `python:3.4.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27153281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac5db25a0cac77528a63b6ff5a2a9800d3f34f0acf726326024a43497aa3f16`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:23:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:23:02 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 23:23:03 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 23:28:22 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Fri, 03 Mar 2017 23:28:23 GMT
ENV PYTHON_VERSION=3.4.6
# Fri, 03 Mar 2017 23:28:23 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 03 Mar 2017 23:30:20 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 03 Mar 2017 23:30:21 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 03 Mar 2017 23:30:21 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ede2d2484a67ae3a88912d400c46f4f76e8f62f1003ed10c6f95893603781`  
		Last Modified: Sat, 04 Mar 2017 06:57:30 GMT  
		Size: 348.7 KB (348731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4090ce711e7d17ab76898f1a5bcd6fa8e6689e93e151442283d3574d3bcc7`  
		Last Modified: Sat, 04 Mar 2017 07:00:56 GMT  
		Size: 24.5 MB (24490907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d91dc7bbe43e4244e5d0a1a42dc02f880442acb93ee01546293ff15e5d808f`  
		Last Modified: Sat, 04 Mar 2017 07:00:42 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.4-alpine`

```console
$ docker pull python@sha256:7810dade5342b49ca28230195e21068783cd3bc69b0972248d286759ec9b42f1
```

-	Platforms:
	-	linux; amd64

### `python:3.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27153281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac5db25a0cac77528a63b6ff5a2a9800d3f34f0acf726326024a43497aa3f16`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:23:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:23:02 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 23:23:03 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 23:28:22 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Fri, 03 Mar 2017 23:28:23 GMT
ENV PYTHON_VERSION=3.4.6
# Fri, 03 Mar 2017 23:28:23 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 03 Mar 2017 23:30:20 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 03 Mar 2017 23:30:21 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 03 Mar 2017 23:30:21 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ede2d2484a67ae3a88912d400c46f4f76e8f62f1003ed10c6f95893603781`  
		Last Modified: Sat, 04 Mar 2017 06:57:30 GMT  
		Size: 348.7 KB (348731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4090ce711e7d17ab76898f1a5bcd6fa8e6689e93e151442283d3574d3bcc7`  
		Last Modified: Sat, 04 Mar 2017 07:00:56 GMT  
		Size: 24.5 MB (24490907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d91dc7bbe43e4244e5d0a1a42dc02f880442acb93ee01546293ff15e5d808f`  
		Last Modified: Sat, 04 Mar 2017 07:00:42 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.4.6-wheezy`

```console
$ docker pull python@sha256:91af18a587dcfdb1b0754b5b2c268357c7141cdf611e1077711839bd07790760
```

-	Platforms:
	-	linux; amd64

### `python:3.4.6-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.5 MB (199460829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692381e18e2d6c3737a4590fca00903c1f65dc126c1fbbae87c1261707e38e2f`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:57:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:58:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:45:46 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:45:46 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:46:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:54:48 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 22 Mar 2017 22:54:48 GMT
ENV PYTHON_VERSION=3.4.6
# Wed, 22 Mar 2017 22:54:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:56:29 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:56:30 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:56:30 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd07181070a737cb357be3bea64f2aa58df705e14b1fce01b2b99cb4811f69b8`  
		Last Modified: Tue, 21 Mar 2017 20:10:33 GMT  
		Size: 37.4 MB (37442499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8750db8db04d2739634c5b74f813c6a57c80097cb876a8f9316d44e3cba9e04`  
		Last Modified: Tue, 21 Mar 2017 20:11:34 GMT  
		Size: 95.4 MB (95409786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031e6d32cc9a6b8b97001684513b4f422ffb70f8be577bf86a388d4172b499d4`  
		Last Modified: Thu, 23 Mar 2017 17:05:04 GMT  
		Size: 3.2 MB (3229081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27cd92686c531a6a1224b7e15e3d5c2fdf93e5ec87f932893e2be7fcf40dd097`  
		Last Modified: Thu, 23 Mar 2017 17:17:43 GMT  
		Size: 19.3 MB (19282990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6045ee97e56ad26dd77ce4dcc991a1851be77690528d0329b95f78e13af12681`  
		Last Modified: Thu, 23 Mar 2017 17:17:34 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.4-wheezy`

```console
$ docker pull python@sha256:91af18a587dcfdb1b0754b5b2c268357c7141cdf611e1077711839bd07790760
```

-	Platforms:
	-	linux; amd64

### `python:3.4-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.5 MB (199460829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692381e18e2d6c3737a4590fca00903c1f65dc126c1fbbae87c1261707e38e2f`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:57:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:58:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:45:46 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:45:46 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:46:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:54:48 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 22 Mar 2017 22:54:48 GMT
ENV PYTHON_VERSION=3.4.6
# Wed, 22 Mar 2017 22:54:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:56:29 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:56:30 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:56:30 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd07181070a737cb357be3bea64f2aa58df705e14b1fce01b2b99cb4811f69b8`  
		Last Modified: Tue, 21 Mar 2017 20:10:33 GMT  
		Size: 37.4 MB (37442499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8750db8db04d2739634c5b74f813c6a57c80097cb876a8f9316d44e3cba9e04`  
		Last Modified: Tue, 21 Mar 2017 20:11:34 GMT  
		Size: 95.4 MB (95409786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031e6d32cc9a6b8b97001684513b4f422ffb70f8be577bf86a388d4172b499d4`  
		Last Modified: Thu, 23 Mar 2017 17:05:04 GMT  
		Size: 3.2 MB (3229081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27cd92686c531a6a1224b7e15e3d5c2fdf93e5ec87f932893e2be7fcf40dd097`  
		Last Modified: Thu, 23 Mar 2017 17:17:43 GMT  
		Size: 19.3 MB (19282990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6045ee97e56ad26dd77ce4dcc991a1851be77690528d0329b95f78e13af12681`  
		Last Modified: Thu, 23 Mar 2017 17:17:34 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.4.6-onbuild`

```console
$ docker pull python@sha256:ed3b1d89753abe773e88a9ab4bfa1091e9d11891a279c2e237d7669f9abfba25
```

-	Platforms:
	-	linux; amd64

### `python:3.4.6-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264617862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eceb39ac8e69df1bf662314de31ac3791702db838957e97d979cc3f99fdb6378`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:52:52 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 22 Mar 2017 22:52:53 GMT
ENV PYTHON_VERSION=3.4.6
# Wed, 22 Mar 2017 22:52:53 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:54:43 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:54:44 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:54:44 GMT
CMD ["python3"]
# Wed, 22 Mar 2017 22:54:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:54:46 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:54:46 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:54:47 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 22 Mar 2017 22:54:47 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c87196279957c8efb62524b484ae744fc96994ea6f7570d2baec671876876d`  
		Last Modified: Thu, 23 Mar 2017 17:14:26 GMT  
		Size: 19.2 MB (19176971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82427238bf097f992fef5b4ce2f62919c38718c63b622e601cc9e5577d98595e`  
		Last Modified: Thu, 23 Mar 2017 17:14:18 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3b709e45d7c8002e22c3378d3fefd998bc3cd955deeff5273bf7eb17f06904`  
		Last Modified: Thu, 23 Mar 2017 17:18:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.4-onbuild`

```console
$ docker pull python@sha256:ed3b1d89753abe773e88a9ab4bfa1091e9d11891a279c2e237d7669f9abfba25
```

-	Platforms:
	-	linux; amd64

### `python:3.4-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264617862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eceb39ac8e69df1bf662314de31ac3791702db838957e97d979cc3f99fdb6378`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:52:52 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 22 Mar 2017 22:52:53 GMT
ENV PYTHON_VERSION=3.4.6
# Wed, 22 Mar 2017 22:52:53 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:54:43 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:54:44 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:54:44 GMT
CMD ["python3"]
# Wed, 22 Mar 2017 22:54:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:54:46 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:54:46 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:54:47 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 22 Mar 2017 22:54:47 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c87196279957c8efb62524b484ae744fc96994ea6f7570d2baec671876876d`  
		Last Modified: Thu, 23 Mar 2017 17:14:26 GMT  
		Size: 19.2 MB (19176971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82427238bf097f992fef5b4ce2f62919c38718c63b622e601cc9e5577d98595e`  
		Last Modified: Thu, 23 Mar 2017 17:14:18 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3b709e45d7c8002e22c3378d3fefd998bc3cd955deeff5273bf7eb17f06904`  
		Last Modified: Thu, 23 Mar 2017 17:18:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.5.3`

```console
$ docker pull python@sha256:84ab28e9b482a9b1e681eb791c5e65f2869d6c790b83a69fbc1349a9fc415a3d
```

-	Platforms:
	-	linux; amd64

### `python:3.5.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (265971066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d5e4e52fcfe02fabbc31f856d838dcc5279bbd564a899b29838a685da9e7cfb`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:52:52 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 22 Mar 2017 22:56:31 GMT
ENV PYTHON_VERSION=3.5.3
# Wed, 22 Mar 2017 22:56:31 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:58:03 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:58:04 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:58:04 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27387ba2d03b641eab998dd54b31c1b4985980b4fed3df398aae09d809244eb7`  
		Last Modified: Thu, 23 Mar 2017 17:19:51 GMT  
		Size: 20.5 MB (20530303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b905e4f59a3fcae71b0635d06066148089a2198644490f72ddca916a4d1f0d3`  
		Last Modified: Thu, 23 Mar 2017 17:19:42 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.5`

```console
$ docker pull python@sha256:84ab28e9b482a9b1e681eb791c5e65f2869d6c790b83a69fbc1349a9fc415a3d
```

-	Platforms:
	-	linux; amd64

### `python:3.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (265971066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d5e4e52fcfe02fabbc31f856d838dcc5279bbd564a899b29838a685da9e7cfb`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:52:52 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 22 Mar 2017 22:56:31 GMT
ENV PYTHON_VERSION=3.5.3
# Wed, 22 Mar 2017 22:56:31 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:58:03 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:58:04 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:58:04 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27387ba2d03b641eab998dd54b31c1b4985980b4fed3df398aae09d809244eb7`  
		Last Modified: Thu, 23 Mar 2017 17:19:51 GMT  
		Size: 20.5 MB (20530303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b905e4f59a3fcae71b0635d06066148089a2198644490f72ddca916a4d1f0d3`  
		Last Modified: Thu, 23 Mar 2017 17:19:42 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.5.3-slim`

```console
$ docker pull python@sha256:86f23e6e4e10de66fa34511e4a067e303ba7440a829e22b2bc8f9f07365c71ae
```

-	Platforms:
	-	linux; amd64

### `python:3.5.3-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75877263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f9609991d314aee5c98f584a3bd5e7b1710c21826127305c4e2533e2adb6c1`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:49:10 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 21 Mar 2017 23:51:29 GMT
ENV PYTHON_VERSION=3.5.3
# Tue, 21 Mar 2017 23:51:29 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:53:39 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:53:40 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 21 Mar 2017 23:53:40 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2de4a7388336b46a346e0bf64a76a8965b708727e0868d7904f5a8f71b7fa4`  
		Last Modified: Thu, 23 Mar 2017 17:21:04 GMT  
		Size: 21.0 MB (21022901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a420ae4d5b818ecdf4927aa32a84c6fb2f37c9c65ab02691783610fb7e7fc7`  
		Last Modified: Thu, 23 Mar 2017 17:20:54 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.5-slim`

```console
$ docker pull python@sha256:86f23e6e4e10de66fa34511e4a067e303ba7440a829e22b2bc8f9f07365c71ae
```

-	Platforms:
	-	linux; amd64

### `python:3.5-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75877263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f9609991d314aee5c98f584a3bd5e7b1710c21826127305c4e2533e2adb6c1`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:49:10 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 21 Mar 2017 23:51:29 GMT
ENV PYTHON_VERSION=3.5.3
# Tue, 21 Mar 2017 23:51:29 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:53:39 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:53:40 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 21 Mar 2017 23:53:40 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2de4a7388336b46a346e0bf64a76a8965b708727e0868d7904f5a8f71b7fa4`  
		Last Modified: Thu, 23 Mar 2017 17:21:04 GMT  
		Size: 21.0 MB (21022901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a420ae4d5b818ecdf4927aa32a84c6fb2f37c9c65ab02691783610fb7e7fc7`  
		Last Modified: Thu, 23 Mar 2017 17:20:54 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.5.3-alpine`

```console
$ docker pull python@sha256:ae48fde28cccb38299e321acd472c26d68d78f576bd74e01b608f5cfd2de8faa
```

-	Platforms:
	-	linux; amd64

### `python:3.5.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28680701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0f7ff6065d0ac77f2cf0fca0c1ded5ce592a542c0f42eb998ead64252770bb`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:23:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:23:02 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 23:23:03 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 23:28:22 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Fri, 03 Mar 2017 23:30:22 GMT
ENV PYTHON_VERSION=3.5.3
# Fri, 03 Mar 2017 23:30:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 03 Mar 2017 23:31:58 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 03 Mar 2017 23:31:59 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 03 Mar 2017 23:31:59 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ede2d2484a67ae3a88912d400c46f4f76e8f62f1003ed10c6f95893603781`  
		Last Modified: Sat, 04 Mar 2017 06:57:30 GMT  
		Size: 348.7 KB (348731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3a6ebe4f27666b7f92a819ab5de1db6873e09e93ff9e6da3a9ae4dd40527cd`  
		Last Modified: Sat, 04 Mar 2017 07:02:07 GMT  
		Size: 26.0 MB (26018328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5784c2cef3ce6642a0913c398666880670999657c1ba990b9f15f4ab35f55f01`  
		Last Modified: Sat, 04 Mar 2017 07:01:51 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.5-alpine`

```console
$ docker pull python@sha256:ae48fde28cccb38299e321acd472c26d68d78f576bd74e01b608f5cfd2de8faa
```

-	Platforms:
	-	linux; amd64

### `python:3.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28680701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0f7ff6065d0ac77f2cf0fca0c1ded5ce592a542c0f42eb998ead64252770bb`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:23:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:23:02 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 23:23:03 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 23:28:22 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Fri, 03 Mar 2017 23:30:22 GMT
ENV PYTHON_VERSION=3.5.3
# Fri, 03 Mar 2017 23:30:22 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 03 Mar 2017 23:31:58 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 03 Mar 2017 23:31:59 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 03 Mar 2017 23:31:59 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ede2d2484a67ae3a88912d400c46f4f76e8f62f1003ed10c6f95893603781`  
		Last Modified: Sat, 04 Mar 2017 06:57:30 GMT  
		Size: 348.7 KB (348731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3a6ebe4f27666b7f92a819ab5de1db6873e09e93ff9e6da3a9ae4dd40527cd`  
		Last Modified: Sat, 04 Mar 2017 07:02:07 GMT  
		Size: 26.0 MB (26018328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5784c2cef3ce6642a0913c398666880670999657c1ba990b9f15f4ab35f55f01`  
		Last Modified: Sat, 04 Mar 2017 07:01:51 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.5.3-onbuild`

```console
$ docker pull python@sha256:ae6b08d9fd9d33cc05ee57849e837a6574c982347ae4b38ead4f07d4d2940369
```

-	Platforms:
	-	linux; amd64

### `python:3.5.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (265971193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70dd9094f1bf8c0a8889b1c7b4bd3563ca8e0b7a973eca6a4dd7b9eaaf22f447`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:52:52 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 22 Mar 2017 22:56:31 GMT
ENV PYTHON_VERSION=3.5.3
# Wed, 22 Mar 2017 22:56:31 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:58:03 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:58:04 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:58:04 GMT
CMD ["python3"]
# Wed, 22 Mar 2017 22:58:05 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:58:05 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:58:06 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:58:06 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 22 Mar 2017 22:58:07 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27387ba2d03b641eab998dd54b31c1b4985980b4fed3df398aae09d809244eb7`  
		Last Modified: Thu, 23 Mar 2017 17:19:51 GMT  
		Size: 20.5 MB (20530303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b905e4f59a3fcae71b0635d06066148089a2198644490f72ddca916a4d1f0d3`  
		Last Modified: Thu, 23 Mar 2017 17:19:42 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a71377b9aa479341a8add9ac8b4ff078b3ac2fa09ad54f35f6129d1428a30b2`  
		Last Modified: Thu, 23 Mar 2017 17:23:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.5-onbuild`

```console
$ docker pull python@sha256:ae6b08d9fd9d33cc05ee57849e837a6574c982347ae4b38ead4f07d4d2940369
```

-	Platforms:
	-	linux; amd64

### `python:3.5-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (265971193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70dd9094f1bf8c0a8889b1c7b4bd3563ca8e0b7a973eca6a4dd7b9eaaf22f447`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:52:52 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 22 Mar 2017 22:56:31 GMT
ENV PYTHON_VERSION=3.5.3
# Wed, 22 Mar 2017 22:56:31 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 22:58:03 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 22 Mar 2017 22:58:04 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 22 Mar 2017 22:58:04 GMT
CMD ["python3"]
# Wed, 22 Mar 2017 22:58:05 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 22:58:05 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 22:58:06 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Wed, 22 Mar 2017 22:58:06 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Wed, 22 Mar 2017 22:58:07 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27387ba2d03b641eab998dd54b31c1b4985980b4fed3df398aae09d809244eb7`  
		Last Modified: Thu, 23 Mar 2017 17:19:51 GMT  
		Size: 20.5 MB (20530303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b905e4f59a3fcae71b0635d06066148089a2198644490f72ddca916a4d1f0d3`  
		Last Modified: Thu, 23 Mar 2017 17:19:42 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a71377b9aa479341a8add9ac8b4ff078b3ac2fa09ad54f35f6129d1428a30b2`  
		Last Modified: Thu, 23 Mar 2017 17:23:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.5.3-windowsservercore`

```console
$ docker pull python@sha256:03ffacb1ffda772394ce805a24e942775c632aefca9c69525d6f4668bbab8fc8
```

-	Platforms:
	-	windows; amd64

### `python:3.5.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5271674910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e6ffa969f2d511bb7df60dac2664becfe38b8ca5b53613fbc1b48592286c75d`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Mar 2017 23:12:00 GMT
ENV PYTHON_VERSION=3.5.3
# Wed, 22 Mar 2017 23:12:03 GMT
ENV PYTHON_RELEASE=3.5.3
# Wed, 22 Mar 2017 23:12:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 23:14:24 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	pip install --no-cache-dir --upgrade --force-reinstall $pipInstall; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 Mar 2017 23:14:29 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5e57b7c6840088faf366f131cfc470d2fd4bf74997e54f6e34f77c592426c6`  
		Last Modified: Thu, 23 Mar 2017 17:01:05 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3f6af5543b97978bd08c9a104b4fa91bdb09b25b3357d7e540addaf7f01596`  
		Last Modified: Thu, 23 Mar 2017 17:01:05 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7e64a88756caee70905887b38910687e8fc03dd7f6a55a3fe7c7948ed72938`  
		Last Modified: Thu, 23 Mar 2017 17:01:05 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8794655db7d82ea72c7f74774885758f165fc1f96ce549372b54534544fd77a2`  
		Last Modified: Thu, 23 Mar 2017 17:01:16 GMT  
		Size: 54.4 MB (54415085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7d67c5135cb10d748e54790f6d1f6e8f9997aaf2fd77a3dc0699d8f50ca742`  
		Last Modified: Thu, 23 Mar 2017 17:01:06 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.5-windowsservercore`

```console
$ docker pull python@sha256:03ffacb1ffda772394ce805a24e942775c632aefca9c69525d6f4668bbab8fc8
```

-	Platforms:
	-	windows; amd64

### `python:3.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5271674910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e6ffa969f2d511bb7df60dac2664becfe38b8ca5b53613fbc1b48592286c75d`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Mar 2017 23:12:00 GMT
ENV PYTHON_VERSION=3.5.3
# Wed, 22 Mar 2017 23:12:03 GMT
ENV PYTHON_RELEASE=3.5.3
# Wed, 22 Mar 2017 23:12:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 23:14:24 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	pip install --no-cache-dir --upgrade --force-reinstall $pipInstall; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 Mar 2017 23:14:29 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5e57b7c6840088faf366f131cfc470d2fd4bf74997e54f6e34f77c592426c6`  
		Last Modified: Thu, 23 Mar 2017 17:01:05 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3f6af5543b97978bd08c9a104b4fa91bdb09b25b3357d7e540addaf7f01596`  
		Last Modified: Thu, 23 Mar 2017 17:01:05 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7e64a88756caee70905887b38910687e8fc03dd7f6a55a3fe7c7948ed72938`  
		Last Modified: Thu, 23 Mar 2017 17:01:05 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8794655db7d82ea72c7f74774885758f165fc1f96ce549372b54534544fd77a2`  
		Last Modified: Thu, 23 Mar 2017 17:01:16 GMT  
		Size: 54.4 MB (54415085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7d67c5135cb10d748e54790f6d1f6e8f9997aaf2fd77a3dc0699d8f50ca742`  
		Last Modified: Thu, 23 Mar 2017 17:01:06 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.6.1`

```console
$ docker pull python@sha256:0a979dbff79f466aad8d92a89980ebe19cbd481b135d8cc9c0d843d8cf802ef9
```

-	Platforms:
	-	linux; amd64

### `python:3.6.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266271158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787e9f4da78e3ee12627f22c7a13b7525474c358023454d802057dc1c408e490`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:47:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 02:32:47 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 02:32:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 02:35:16 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 02:35:17 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 02:35:18 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fe59875298c7f7a1c0682bee33645011e38c715f176c5c802a8ecd6b3e73c1`  
		Last Modified: Thu, 23 Mar 2017 17:24:29 GMT  
		Size: 20.8 MB (20830394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1d7ae0c4bff87b01dabb6e7f35ef1d64146f90c8a665a33614f77400b137b`  
		Last Modified: Thu, 23 Mar 2017 17:24:19 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.6`

```console
$ docker pull python@sha256:0a979dbff79f466aad8d92a89980ebe19cbd481b135d8cc9c0d843d8cf802ef9
```

-	Platforms:
	-	linux; amd64

### `python:3.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266271158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787e9f4da78e3ee12627f22c7a13b7525474c358023454d802057dc1c408e490`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:47:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 02:32:47 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 02:32:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 02:35:16 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 02:35:17 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 02:35:18 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fe59875298c7f7a1c0682bee33645011e38c715f176c5c802a8ecd6b3e73c1`  
		Last Modified: Thu, 23 Mar 2017 17:24:29 GMT  
		Size: 20.8 MB (20830394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1d7ae0c4bff87b01dabb6e7f35ef1d64146f90c8a665a33614f77400b137b`  
		Last Modified: Thu, 23 Mar 2017 17:24:19 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3`

```console
$ docker pull python@sha256:0a979dbff79f466aad8d92a89980ebe19cbd481b135d8cc9c0d843d8cf802ef9
```

-	Platforms:
	-	linux; amd64

### `python:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266271158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787e9f4da78e3ee12627f22c7a13b7525474c358023454d802057dc1c408e490`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:47:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 02:32:47 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 02:32:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 02:35:16 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 02:35:17 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 02:35:18 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fe59875298c7f7a1c0682bee33645011e38c715f176c5c802a8ecd6b3e73c1`  
		Last Modified: Thu, 23 Mar 2017 17:24:29 GMT  
		Size: 20.8 MB (20830394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1d7ae0c4bff87b01dabb6e7f35ef1d64146f90c8a665a33614f77400b137b`  
		Last Modified: Thu, 23 Mar 2017 17:24:19 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:latest`

```console
$ docker pull python@sha256:0a979dbff79f466aad8d92a89980ebe19cbd481b135d8cc9c0d843d8cf802ef9
```

-	Platforms:
	-	linux; amd64

### `python:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266271158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787e9f4da78e3ee12627f22c7a13b7525474c358023454d802057dc1c408e490`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:47:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 02:32:47 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 02:32:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 02:35:16 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 02:35:17 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 02:35:18 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fe59875298c7f7a1c0682bee33645011e38c715f176c5c802a8ecd6b3e73c1`  
		Last Modified: Thu, 23 Mar 2017 17:24:29 GMT  
		Size: 20.8 MB (20830394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1d7ae0c4bff87b01dabb6e7f35ef1d64146f90c8a665a33614f77400b137b`  
		Last Modified: Thu, 23 Mar 2017 17:24:19 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.6.1-slim`

```console
$ docker pull python@sha256:d70e4714326b99ddc9d4dc81d37b89e0becb6b46a01b2c0bb5f8d4029332a562
```

-	Platforms:
	-	linux; amd64

### `python:3.6.1-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76222445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60952d8b5aebc054a0a023b89af3e868931cc365cb3ec16880a1a4dd994fdb46`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:44:40 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 02:13:17 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 02:13:17 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 02:16:07 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 02:17:57 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 02:17:57 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08988d34c9e95aef208530054ff447263a5b3185dc49a50e730e8c4ad050b8bc`  
		Last Modified: Thu, 23 Mar 2017 17:26:49 GMT  
		Size: 21.4 MB (21368083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47695491c1242e87c8d12501e0d5bfd600080df087d33fdd43e5c1706786092f`  
		Last Modified: Thu, 23 Mar 2017 17:26:37 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.6-slim`

```console
$ docker pull python@sha256:d70e4714326b99ddc9d4dc81d37b89e0becb6b46a01b2c0bb5f8d4029332a562
```

-	Platforms:
	-	linux; amd64

### `python:3.6-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76222445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60952d8b5aebc054a0a023b89af3e868931cc365cb3ec16880a1a4dd994fdb46`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:44:40 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 02:13:17 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 02:13:17 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 02:16:07 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 02:17:57 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 02:17:57 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08988d34c9e95aef208530054ff447263a5b3185dc49a50e730e8c4ad050b8bc`  
		Last Modified: Thu, 23 Mar 2017 17:26:49 GMT  
		Size: 21.4 MB (21368083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47695491c1242e87c8d12501e0d5bfd600080df087d33fdd43e5c1706786092f`  
		Last Modified: Thu, 23 Mar 2017 17:26:37 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3-slim`

```console
$ docker pull python@sha256:d70e4714326b99ddc9d4dc81d37b89e0becb6b46a01b2c0bb5f8d4029332a562
```

-	Platforms:
	-	linux; amd64

### `python:3-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76222445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60952d8b5aebc054a0a023b89af3e868931cc365cb3ec16880a1a4dd994fdb46`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:44:40 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 02:13:17 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 02:13:17 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 02:16:07 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 02:17:57 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 02:17:57 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08988d34c9e95aef208530054ff447263a5b3185dc49a50e730e8c4ad050b8bc`  
		Last Modified: Thu, 23 Mar 2017 17:26:49 GMT  
		Size: 21.4 MB (21368083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47695491c1242e87c8d12501e0d5bfd600080df087d33fdd43e5c1706786092f`  
		Last Modified: Thu, 23 Mar 2017 17:26:37 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:slim`

```console
$ docker pull python@sha256:d70e4714326b99ddc9d4dc81d37b89e0becb6b46a01b2c0bb5f8d4029332a562
```

-	Platforms:
	-	linux; amd64

### `python:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76222445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60952d8b5aebc054a0a023b89af3e868931cc365cb3ec16880a1a4dd994fdb46`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:44:40 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 02:13:17 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 02:13:17 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 02:16:07 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 02:17:57 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 02:17:57 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08988d34c9e95aef208530054ff447263a5b3185dc49a50e730e8c4ad050b8bc`  
		Last Modified: Thu, 23 Mar 2017 17:26:49 GMT  
		Size: 21.4 MB (21368083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47695491c1242e87c8d12501e0d5bfd600080df087d33fdd43e5c1706786092f`  
		Last Modified: Thu, 23 Mar 2017 17:26:37 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.6.1-alpine`

```console
$ docker pull python@sha256:6ebe18fd00f5175b5f1fe45bfb131f22f5d997f4fe361546cf0a13de396b8009
```

-	Platforms:
	-	linux; amd64

### `python:3.6.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29039723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5896cb39aa34aaab094b3731df6460ef0a900d87f3b4cb37c51b5cedc7cf757c`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:23:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:23:02 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 23:23:03 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 23:24:44 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 16:58:39 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 16:58:40 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 17:00:21 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 17:00:22 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 17:00:22 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ede2d2484a67ae3a88912d400c46f4f76e8f62f1003ed10c6f95893603781`  
		Last Modified: Sat, 04 Mar 2017 06:57:30 GMT  
		Size: 348.7 KB (348731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f793c0921682b338e18751ec7f51d567ac65e8a14149064e31d08d785685c7c`  
		Last Modified: Thu, 23 Mar 2017 17:29:10 GMT  
		Size: 26.4 MB (26377349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a8b874587743da7f9f9df2ea96bc864183a1c7557da95be18ee738e08dbaf3`  
		Last Modified: Thu, 23 Mar 2017 17:28:57 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.6-alpine`

```console
$ docker pull python@sha256:6ebe18fd00f5175b5f1fe45bfb131f22f5d997f4fe361546cf0a13de396b8009
```

-	Platforms:
	-	linux; amd64

### `python:3.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29039723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5896cb39aa34aaab094b3731df6460ef0a900d87f3b4cb37c51b5cedc7cf757c`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:23:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:23:02 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 23:23:03 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 23:24:44 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 16:58:39 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 16:58:40 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 17:00:21 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 17:00:22 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 17:00:22 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ede2d2484a67ae3a88912d400c46f4f76e8f62f1003ed10c6f95893603781`  
		Last Modified: Sat, 04 Mar 2017 06:57:30 GMT  
		Size: 348.7 KB (348731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f793c0921682b338e18751ec7f51d567ac65e8a14149064e31d08d785685c7c`  
		Last Modified: Thu, 23 Mar 2017 17:29:10 GMT  
		Size: 26.4 MB (26377349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a8b874587743da7f9f9df2ea96bc864183a1c7557da95be18ee738e08dbaf3`  
		Last Modified: Thu, 23 Mar 2017 17:28:57 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3-alpine`

```console
$ docker pull python@sha256:6ebe18fd00f5175b5f1fe45bfb131f22f5d997f4fe361546cf0a13de396b8009
```

-	Platforms:
	-	linux; amd64

### `python:3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29039723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5896cb39aa34aaab094b3731df6460ef0a900d87f3b4cb37c51b5cedc7cf757c`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:23:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:23:02 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 23:23:03 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 23:24:44 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 16:58:39 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 16:58:40 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 17:00:21 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 17:00:22 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 17:00:22 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ede2d2484a67ae3a88912d400c46f4f76e8f62f1003ed10c6f95893603781`  
		Last Modified: Sat, 04 Mar 2017 06:57:30 GMT  
		Size: 348.7 KB (348731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f793c0921682b338e18751ec7f51d567ac65e8a14149064e31d08d785685c7c`  
		Last Modified: Thu, 23 Mar 2017 17:29:10 GMT  
		Size: 26.4 MB (26377349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a8b874587743da7f9f9df2ea96bc864183a1c7557da95be18ee738e08dbaf3`  
		Last Modified: Thu, 23 Mar 2017 17:28:57 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:alpine`

```console
$ docker pull python@sha256:6ebe18fd00f5175b5f1fe45bfb131f22f5d997f4fe361546cf0a13de396b8009
```

-	Platforms:
	-	linux; amd64

### `python:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29039723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5896cb39aa34aaab094b3731df6460ef0a900d87f3b4cb37c51b5cedc7cf757c`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:23:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:23:02 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 23:23:03 GMT
RUN apk add --no-cache ca-certificates
# Fri, 03 Mar 2017 23:24:44 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 16:58:39 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 16:58:40 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 17:00:21 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		openssl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 17:00:22 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 17:00:22 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8ede2d2484a67ae3a88912d400c46f4f76e8f62f1003ed10c6f95893603781`  
		Last Modified: Sat, 04 Mar 2017 06:57:30 GMT  
		Size: 348.7 KB (348731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f793c0921682b338e18751ec7f51d567ac65e8a14149064e31d08d785685c7c`  
		Last Modified: Thu, 23 Mar 2017 17:29:10 GMT  
		Size: 26.4 MB (26377349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a8b874587743da7f9f9df2ea96bc864183a1c7557da95be18ee738e08dbaf3`  
		Last Modified: Thu, 23 Mar 2017 17:28:57 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.6.1-onbuild`

```console
$ docker pull python@sha256:44fcc0481da2a777cc78657329e4f0aeda10c7508d226b6413c8b2749dd601f5
```

-	Platforms:
	-	linux; amd64

### `python:3.6.1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266271283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7869830be56c56be51a98ce1e88d0b6710dd3b2aed8429ed63e699fb703cde6`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:47:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 02:32:47 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 02:32:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 02:35:16 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 02:35:17 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 02:35:18 GMT
CMD ["python3"]
# Thu, 23 Mar 2017 02:35:19 GMT
RUN mkdir -p /usr/src/app
# Thu, 23 Mar 2017 02:35:20 GMT
WORKDIR /usr/src/app
# Thu, 23 Mar 2017 02:35:21 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 23 Mar 2017 02:35:21 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Thu, 23 Mar 2017 02:35:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fe59875298c7f7a1c0682bee33645011e38c715f176c5c802a8ecd6b3e73c1`  
		Last Modified: Thu, 23 Mar 2017 17:24:29 GMT  
		Size: 20.8 MB (20830394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1d7ae0c4bff87b01dabb6e7f35ef1d64146f90c8a665a33614f77400b137b`  
		Last Modified: Thu, 23 Mar 2017 17:24:19 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe58492b7240822ee18cd60d4d2252d7b7ae6585a1830fc8741353dde9260d6`  
		Last Modified: Thu, 23 Mar 2017 17:31:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.6-onbuild`

```console
$ docker pull python@sha256:44fcc0481da2a777cc78657329e4f0aeda10c7508d226b6413c8b2749dd601f5
```

-	Platforms:
	-	linux; amd64

### `python:3.6-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266271283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7869830be56c56be51a98ce1e88d0b6710dd3b2aed8429ed63e699fb703cde6`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:47:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 02:32:47 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 02:32:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 02:35:16 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 02:35:17 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 02:35:18 GMT
CMD ["python3"]
# Thu, 23 Mar 2017 02:35:19 GMT
RUN mkdir -p /usr/src/app
# Thu, 23 Mar 2017 02:35:20 GMT
WORKDIR /usr/src/app
# Thu, 23 Mar 2017 02:35:21 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 23 Mar 2017 02:35:21 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Thu, 23 Mar 2017 02:35:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fe59875298c7f7a1c0682bee33645011e38c715f176c5c802a8ecd6b3e73c1`  
		Last Modified: Thu, 23 Mar 2017 17:24:29 GMT  
		Size: 20.8 MB (20830394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1d7ae0c4bff87b01dabb6e7f35ef1d64146f90c8a665a33614f77400b137b`  
		Last Modified: Thu, 23 Mar 2017 17:24:19 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe58492b7240822ee18cd60d4d2252d7b7ae6585a1830fc8741353dde9260d6`  
		Last Modified: Thu, 23 Mar 2017 17:31:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3-onbuild`

```console
$ docker pull python@sha256:44fcc0481da2a777cc78657329e4f0aeda10c7508d226b6413c8b2749dd601f5
```

-	Platforms:
	-	linux; amd64

### `python:3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266271283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7869830be56c56be51a98ce1e88d0b6710dd3b2aed8429ed63e699fb703cde6`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:47:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 02:32:47 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 02:32:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 02:35:16 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 02:35:17 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 02:35:18 GMT
CMD ["python3"]
# Thu, 23 Mar 2017 02:35:19 GMT
RUN mkdir -p /usr/src/app
# Thu, 23 Mar 2017 02:35:20 GMT
WORKDIR /usr/src/app
# Thu, 23 Mar 2017 02:35:21 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 23 Mar 2017 02:35:21 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Thu, 23 Mar 2017 02:35:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fe59875298c7f7a1c0682bee33645011e38c715f176c5c802a8ecd6b3e73c1`  
		Last Modified: Thu, 23 Mar 2017 17:24:29 GMT  
		Size: 20.8 MB (20830394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1d7ae0c4bff87b01dabb6e7f35ef1d64146f90c8a665a33614f77400b137b`  
		Last Modified: Thu, 23 Mar 2017 17:24:19 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe58492b7240822ee18cd60d4d2252d7b7ae6585a1830fc8741353dde9260d6`  
		Last Modified: Thu, 23 Mar 2017 17:31:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:onbuild`

```console
$ docker pull python@sha256:44fcc0481da2a777cc78657329e4f0aeda10c7508d226b6413c8b2749dd601f5
```

-	Platforms:
	-	linux; amd64

### `python:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266271283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7869830be56c56be51a98ce1e88d0b6710dd3b2aed8429ed63e699fb703cde6`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:42:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 22:42:58 GMT
ENV LANG=C.UTF-8
# Wed, 22 Mar 2017 22:43:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:47:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 23 Mar 2017 02:32:47 GMT
ENV PYTHON_VERSION=3.6.1
# Thu, 23 Mar 2017 02:32:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 23 Mar 2017 02:35:16 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 23 Mar 2017 02:35:17 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 23 Mar 2017 02:35:18 GMT
CMD ["python3"]
# Thu, 23 Mar 2017 02:35:19 GMT
RUN mkdir -p /usr/src/app
# Thu, 23 Mar 2017 02:35:20 GMT
WORKDIR /usr/src/app
# Thu, 23 Mar 2017 02:35:21 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 23 Mar 2017 02:35:21 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Thu, 23 Mar 2017 02:35:22 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824bd01a76a3b27f2a3f1ed93100d5adde6e508babd2434c1b286602249a8e8f`  
		Last Modified: Thu, 23 Mar 2017 17:01:24 GMT  
		Size: 2.9 MB (2889406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fe59875298c7f7a1c0682bee33645011e38c715f176c5c802a8ecd6b3e73c1`  
		Last Modified: Thu, 23 Mar 2017 17:24:29 GMT  
		Size: 20.8 MB (20830394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1d7ae0c4bff87b01dabb6e7f35ef1d64146f90c8a665a33614f77400b137b`  
		Last Modified: Thu, 23 Mar 2017 17:24:19 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe58492b7240822ee18cd60d4d2252d7b7ae6585a1830fc8741353dde9260d6`  
		Last Modified: Thu, 23 Mar 2017 17:31:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.6.1-windowsservercore`

```console
$ docker pull python@sha256:13be01472afae2db36b29aa069157100f81ae949e17f1eed6aa196857dc9434a
```

-	Platforms:
	-	windows; amd64

### `python:3.6.1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5273268149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ada6946b53aab085212946237101c383a2e689e88206a7d192027dcebbdddb3`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Mar 2017 23:14:32 GMT
ENV PYTHON_VERSION=3.6.1
# Wed, 22 Mar 2017 23:14:35 GMT
ENV PYTHON_RELEASE=3.6.1
# Wed, 22 Mar 2017 23:14:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 23:16:50 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	pip install --no-cache-dir --upgrade --force-reinstall $pipInstall; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 Mar 2017 23:16:54 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8565cb51b9e0aec85b647f8ac01ac16cc2bacd5d26ab99ad6c24218316e735`  
		Last Modified: Thu, 23 Mar 2017 17:01:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e0cfaf2bd07251dad416ee1fde6aafd009f18d0f4a15347b46525ee57f45d6`  
		Last Modified: Thu, 23 Mar 2017 17:01:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa5cc98a9a893c706d6f678b0b1999e8934209edcb30582d182332a1ccf9f16`  
		Last Modified: Thu, 23 Mar 2017 17:01:26 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660e824bcdb8ce7edb9097211a5fd8d4efddfeb4ed7c6da585a3eebfaa7db4be`  
		Last Modified: Thu, 23 Mar 2017 17:01:36 GMT  
		Size: 56.0 MB (56008335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2aa158b1164d4289984c889b723e21b1a0525f6e0227066eeec48fc2ca23eee`  
		Last Modified: Thu, 23 Mar 2017 17:01:27 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3.6-windowsservercore`

```console
$ docker pull python@sha256:13be01472afae2db36b29aa069157100f81ae949e17f1eed6aa196857dc9434a
```

-	Platforms:
	-	windows; amd64

### `python:3.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5273268149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ada6946b53aab085212946237101c383a2e689e88206a7d192027dcebbdddb3`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Mar 2017 23:14:32 GMT
ENV PYTHON_VERSION=3.6.1
# Wed, 22 Mar 2017 23:14:35 GMT
ENV PYTHON_RELEASE=3.6.1
# Wed, 22 Mar 2017 23:14:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 23:16:50 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	pip install --no-cache-dir --upgrade --force-reinstall $pipInstall; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 Mar 2017 23:16:54 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8565cb51b9e0aec85b647f8ac01ac16cc2bacd5d26ab99ad6c24218316e735`  
		Last Modified: Thu, 23 Mar 2017 17:01:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e0cfaf2bd07251dad416ee1fde6aafd009f18d0f4a15347b46525ee57f45d6`  
		Last Modified: Thu, 23 Mar 2017 17:01:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa5cc98a9a893c706d6f678b0b1999e8934209edcb30582d182332a1ccf9f16`  
		Last Modified: Thu, 23 Mar 2017 17:01:26 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660e824bcdb8ce7edb9097211a5fd8d4efddfeb4ed7c6da585a3eebfaa7db4be`  
		Last Modified: Thu, 23 Mar 2017 17:01:36 GMT  
		Size: 56.0 MB (56008335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2aa158b1164d4289984c889b723e21b1a0525f6e0227066eeec48fc2ca23eee`  
		Last Modified: Thu, 23 Mar 2017 17:01:27 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:3-windowsservercore`

```console
$ docker pull python@sha256:13be01472afae2db36b29aa069157100f81ae949e17f1eed6aa196857dc9434a
```

-	Platforms:
	-	windows; amd64

### `python:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5273268149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ada6946b53aab085212946237101c383a2e689e88206a7d192027dcebbdddb3`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Mar 2017 23:14:32 GMT
ENV PYTHON_VERSION=3.6.1
# Wed, 22 Mar 2017 23:14:35 GMT
ENV PYTHON_RELEASE=3.6.1
# Wed, 22 Mar 2017 23:14:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 23:16:50 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	pip install --no-cache-dir --upgrade --force-reinstall $pipInstall; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 Mar 2017 23:16:54 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8565cb51b9e0aec85b647f8ac01ac16cc2bacd5d26ab99ad6c24218316e735`  
		Last Modified: Thu, 23 Mar 2017 17:01:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e0cfaf2bd07251dad416ee1fde6aafd009f18d0f4a15347b46525ee57f45d6`  
		Last Modified: Thu, 23 Mar 2017 17:01:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa5cc98a9a893c706d6f678b0b1999e8934209edcb30582d182332a1ccf9f16`  
		Last Modified: Thu, 23 Mar 2017 17:01:26 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660e824bcdb8ce7edb9097211a5fd8d4efddfeb4ed7c6da585a3eebfaa7db4be`  
		Last Modified: Thu, 23 Mar 2017 17:01:36 GMT  
		Size: 56.0 MB (56008335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2aa158b1164d4289984c889b723e21b1a0525f6e0227066eeec48fc2ca23eee`  
		Last Modified: Thu, 23 Mar 2017 17:01:27 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:windowsservercore`

```console
$ docker pull python@sha256:13be01472afae2db36b29aa069157100f81ae949e17f1eed6aa196857dc9434a
```

-	Platforms:
	-	windows; amd64

### `python:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5273268149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ada6946b53aab085212946237101c383a2e689e88206a7d192027dcebbdddb3`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 22 Mar 2017 23:14:32 GMT
ENV PYTHON_VERSION=3.6.1
# Wed, 22 Mar 2017 23:14:35 GMT
ENV PYTHON_RELEASE=3.6.1
# Wed, 22 Mar 2017 23:14:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 22 Mar 2017 23:16:50 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	(New-Object System.Net.WebClient).DownloadFile($url, 'python.exe'); 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		$pipInstall = ('pip=={0}' -f $env:PYTHON_PIP_VERSION); 	Write-Host ('Installing {0} ...' -f $pipInstall); 	pip install --no-cache-dir --upgrade --force-reinstall $pipInstall; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 Mar 2017 23:16:54 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8565cb51b9e0aec85b647f8ac01ac16cc2bacd5d26ab99ad6c24218316e735`  
		Last Modified: Thu, 23 Mar 2017 17:01:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e0cfaf2bd07251dad416ee1fde6aafd009f18d0f4a15347b46525ee57f45d6`  
		Last Modified: Thu, 23 Mar 2017 17:01:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa5cc98a9a893c706d6f678b0b1999e8934209edcb30582d182332a1ccf9f16`  
		Last Modified: Thu, 23 Mar 2017 17:01:26 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660e824bcdb8ce7edb9097211a5fd8d4efddfeb4ed7c6da585a3eebfaa7db4be`  
		Last Modified: Thu, 23 Mar 2017 17:01:36 GMT  
		Size: 56.0 MB (56008335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2aa158b1164d4289984c889b723e21b1a0525f6e0227066eeec48fc2ca23eee`  
		Last Modified: Thu, 23 Mar 2017 17:01:27 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
