<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `pypy`

-	[`pypy:2-5.6.0`](#pypy2-560)
-	[`pypy:2-5.6`](#pypy2-56)
-	[`pypy:2-5`](#pypy2-5)
-	[`pypy:2`](#pypy2)
-	[`pypy:2-5.6.0-slim`](#pypy2-560-slim)
-	[`pypy:2-5.6-slim`](#pypy2-56-slim)
-	[`pypy:2-5-slim`](#pypy2-5-slim)
-	[`pypy:2-slim`](#pypy2-slim)
-	[`pypy:2-5.6.0-onbuild`](#pypy2-560-onbuild)
-	[`pypy:2-5.6-onbuild`](#pypy2-56-onbuild)
-	[`pypy:2-5-onbuild`](#pypy2-5-onbuild)
-	[`pypy:2-onbuild`](#pypy2-onbuild)
-	[`pypy:3-5.5.0-alpha`](#pypy3-550-alpha)
-	[`pypy:3-5.5.0`](#pypy3-550)
-	[`pypy:3-5.5`](#pypy3-55)
-	[`pypy:3-5`](#pypy3-5)
-	[`pypy:3`](#pypy3)
-	[`pypy:latest`](#pypylatest)
-	[`pypy:3-5.5.0-alpha-slim`](#pypy3-550-alpha-slim)
-	[`pypy:3-5.5.0-slim`](#pypy3-550-slim)
-	[`pypy:3-5.5-slim`](#pypy3-55-slim)
-	[`pypy:3-5-slim`](#pypy3-5-slim)
-	[`pypy:3-slim`](#pypy3-slim)
-	[`pypy:slim`](#pypyslim)
-	[`pypy:3-5.5.0-alpha-onbuild`](#pypy3-550-alpha-onbuild)
-	[`pypy:3-5.5.0-onbuild`](#pypy3-550-onbuild)
-	[`pypy:3-5.5-onbuild`](#pypy3-55-onbuild)
-	[`pypy:3-5-onbuild`](#pypy3-5-onbuild)
-	[`pypy:3-onbuild`](#pypy3-onbuild)
-	[`pypy:onbuild`](#pypyonbuild)

## `pypy:2-5.6.0`

```console
$ docker pull pypy@sha256:b8c734f6bce4e78f679292555c0adc0d1c2e1c8185a3fbda6b1d039492ae6fb8
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.6.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274721889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156eeaf297ae414cd8d52ffaf690809c8aafec482bfc633494a803809e150693`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_VERSION=5.6.0
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_SHA256SUM=aad55328cb0673a60b2633dcc3c36cf452917ac906b577eb3aed5876a7666fca
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:06 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:07 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce71ca1583441ee706ebe0e330ae601eb5c019497541c0a7556e9408bc43e7d`  
		Last Modified: Fri, 10 Feb 2017 17:50:56 GMT  
		Size: 28.3 MB (28305543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.6`

```console
$ docker pull pypy@sha256:b8c734f6bce4e78f679292555c0adc0d1c2e1c8185a3fbda6b1d039492ae6fb8
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274721889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156eeaf297ae414cd8d52ffaf690809c8aafec482bfc633494a803809e150693`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_VERSION=5.6.0
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_SHA256SUM=aad55328cb0673a60b2633dcc3c36cf452917ac906b577eb3aed5876a7666fca
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:06 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:07 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce71ca1583441ee706ebe0e330ae601eb5c019497541c0a7556e9408bc43e7d`  
		Last Modified: Fri, 10 Feb 2017 17:50:56 GMT  
		Size: 28.3 MB (28305543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5`

```console
$ docker pull pypy@sha256:b8c734f6bce4e78f679292555c0adc0d1c2e1c8185a3fbda6b1d039492ae6fb8
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274721889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156eeaf297ae414cd8d52ffaf690809c8aafec482bfc633494a803809e150693`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_VERSION=5.6.0
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_SHA256SUM=aad55328cb0673a60b2633dcc3c36cf452917ac906b577eb3aed5876a7666fca
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:06 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:07 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce71ca1583441ee706ebe0e330ae601eb5c019497541c0a7556e9408bc43e7d`  
		Last Modified: Fri, 10 Feb 2017 17:50:56 GMT  
		Size: 28.3 MB (28305543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2`

```console
$ docker pull pypy@sha256:b8c734f6bce4e78f679292555c0adc0d1c2e1c8185a3fbda6b1d039492ae6fb8
```

-	Platforms:
	-	linux; amd64

### `pypy:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274721889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156eeaf297ae414cd8d52ffaf690809c8aafec482bfc633494a803809e150693`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_VERSION=5.6.0
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_SHA256SUM=aad55328cb0673a60b2633dcc3c36cf452917ac906b577eb3aed5876a7666fca
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:06 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:07 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce71ca1583441ee706ebe0e330ae601eb5c019497541c0a7556e9408bc43e7d`  
		Last Modified: Fri, 10 Feb 2017 17:50:56 GMT  
		Size: 28.3 MB (28305543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.6.0-slim`

```console
$ docker pull pypy@sha256:1817c2473efb9f5b54d1b65c6e63a31691722d76a8823d7c49c342048802cbb8
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.6.0-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83228724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a57e2294e6e787ad4832dc69bc3b73bfa47ab6c7cba7cecc924a44bf07d61cc8`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:39:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:39:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 19:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYPY_VERSION=5.6.0
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYPY_SHA256SUM=aad55328cb0673a60b2633dcc3c36cf452917ac906b577eb3aed5876a7666fca
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 17 Jan 2017 19:40:12 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 17 Jan 2017 19:40:12 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e2cd65c141636cbca75b10169f8ead09a63cc79b1c35e3143ee6ff50127c2a`  
		Last Modified: Wed, 18 Jan 2017 07:02:50 GMT  
		Size: 3.5 MB (3502391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f457713d36f45b95d70b1aaa8eb5eb039d234d2bbc464454294431403377e06`  
		Last Modified: Wed, 18 Jan 2017 07:03:05 GMT  
		Size: 28.4 MB (28365123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.6-slim`

```console
$ docker pull pypy@sha256:1817c2473efb9f5b54d1b65c6e63a31691722d76a8823d7c49c342048802cbb8
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.6-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83228724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a57e2294e6e787ad4832dc69bc3b73bfa47ab6c7cba7cecc924a44bf07d61cc8`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:39:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:39:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 19:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYPY_VERSION=5.6.0
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYPY_SHA256SUM=aad55328cb0673a60b2633dcc3c36cf452917ac906b577eb3aed5876a7666fca
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 17 Jan 2017 19:40:12 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 17 Jan 2017 19:40:12 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e2cd65c141636cbca75b10169f8ead09a63cc79b1c35e3143ee6ff50127c2a`  
		Last Modified: Wed, 18 Jan 2017 07:02:50 GMT  
		Size: 3.5 MB (3502391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f457713d36f45b95d70b1aaa8eb5eb039d234d2bbc464454294431403377e06`  
		Last Modified: Wed, 18 Jan 2017 07:03:05 GMT  
		Size: 28.4 MB (28365123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:1817c2473efb9f5b54d1b65c6e63a31691722d76a8823d7c49c342048802cbb8
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83228724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a57e2294e6e787ad4832dc69bc3b73bfa47ab6c7cba7cecc924a44bf07d61cc8`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:39:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:39:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 19:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYPY_VERSION=5.6.0
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYPY_SHA256SUM=aad55328cb0673a60b2633dcc3c36cf452917ac906b577eb3aed5876a7666fca
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 17 Jan 2017 19:40:12 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 17 Jan 2017 19:40:12 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e2cd65c141636cbca75b10169f8ead09a63cc79b1c35e3143ee6ff50127c2a`  
		Last Modified: Wed, 18 Jan 2017 07:02:50 GMT  
		Size: 3.5 MB (3502391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f457713d36f45b95d70b1aaa8eb5eb039d234d2bbc464454294431403377e06`  
		Last Modified: Wed, 18 Jan 2017 07:03:05 GMT  
		Size: 28.4 MB (28365123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim`

```console
$ docker pull pypy@sha256:1817c2473efb9f5b54d1b65c6e63a31691722d76a8823d7c49c342048802cbb8
```

-	Platforms:
	-	linux; amd64

### `pypy:2-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83228724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a57e2294e6e787ad4832dc69bc3b73bfa47ab6c7cba7cecc924a44bf07d61cc8`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:39:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:39:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 19:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYPY_VERSION=5.6.0
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYPY_SHA256SUM=aad55328cb0673a60b2633dcc3c36cf452917ac906b577eb3aed5876a7666fca
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 17 Jan 2017 19:40:12 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 17 Jan 2017 19:40:12 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e2cd65c141636cbca75b10169f8ead09a63cc79b1c35e3143ee6ff50127c2a`  
		Last Modified: Wed, 18 Jan 2017 07:02:50 GMT  
		Size: 3.5 MB (3502391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f457713d36f45b95d70b1aaa8eb5eb039d234d2bbc464454294431403377e06`  
		Last Modified: Wed, 18 Jan 2017 07:03:05 GMT  
		Size: 28.4 MB (28365123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.6.0-onbuild`

```console
$ docker pull pypy@sha256:b03dd27deca4a857d968efa9cf4e15e33e51d94b472b0840cadc33792db9586c
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.6.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274722015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde3e712847e89f5f0bf3612db775d7fc633997f7d200e0bca31a267f215c802`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_VERSION=5.6.0
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_SHA256SUM=aad55328cb0673a60b2633dcc3c36cf452917ac906b577eb3aed5876a7666fca
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:06 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:07 GMT
CMD ["pypy"]
# Fri, 10 Feb 2017 01:56:08 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:56:08 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:56:09 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 10 Feb 2017 01:56:09 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 10 Feb 2017 01:56:09 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce71ca1583441ee706ebe0e330ae601eb5c019497541c0a7556e9408bc43e7d`  
		Last Modified: Fri, 10 Feb 2017 17:50:56 GMT  
		Size: 28.3 MB (28305543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8276d9886258e271022346576872e59c2b62699760a571dc423390caa9cf8f8`  
		Last Modified: Fri, 10 Feb 2017 17:52:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.6-onbuild`

```console
$ docker pull pypy@sha256:b03dd27deca4a857d968efa9cf4e15e33e51d94b472b0840cadc33792db9586c
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5.6-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274722015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde3e712847e89f5f0bf3612db775d7fc633997f7d200e0bca31a267f215c802`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_VERSION=5.6.0
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_SHA256SUM=aad55328cb0673a60b2633dcc3c36cf452917ac906b577eb3aed5876a7666fca
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:06 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:07 GMT
CMD ["pypy"]
# Fri, 10 Feb 2017 01:56:08 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:56:08 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:56:09 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 10 Feb 2017 01:56:09 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 10 Feb 2017 01:56:09 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce71ca1583441ee706ebe0e330ae601eb5c019497541c0a7556e9408bc43e7d`  
		Last Modified: Fri, 10 Feb 2017 17:50:56 GMT  
		Size: 28.3 MB (28305543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8276d9886258e271022346576872e59c2b62699760a571dc423390caa9cf8f8`  
		Last Modified: Fri, 10 Feb 2017 17:52:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-onbuild`

```console
$ docker pull pypy@sha256:b03dd27deca4a857d968efa9cf4e15e33e51d94b472b0840cadc33792db9586c
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274722015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde3e712847e89f5f0bf3612db775d7fc633997f7d200e0bca31a267f215c802`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_VERSION=5.6.0
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_SHA256SUM=aad55328cb0673a60b2633dcc3c36cf452917ac906b577eb3aed5876a7666fca
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:06 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:07 GMT
CMD ["pypy"]
# Fri, 10 Feb 2017 01:56:08 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:56:08 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:56:09 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 10 Feb 2017 01:56:09 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 10 Feb 2017 01:56:09 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce71ca1583441ee706ebe0e330ae601eb5c019497541c0a7556e9408bc43e7d`  
		Last Modified: Fri, 10 Feb 2017 17:50:56 GMT  
		Size: 28.3 MB (28305543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8276d9886258e271022346576872e59c2b62699760a571dc423390caa9cf8f8`  
		Last Modified: Fri, 10 Feb 2017 17:52:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-onbuild`

```console
$ docker pull pypy@sha256:b03dd27deca4a857d968efa9cf4e15e33e51d94b472b0840cadc33792db9586c
```

-	Platforms:
	-	linux; amd64

### `pypy:2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274722015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde3e712847e89f5f0bf3612db775d7fc633997f7d200e0bca31a267f215c802`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_VERSION=5.6.0
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYPY_SHA256SUM=aad55328cb0673a60b2633dcc3c36cf452917ac906b577eb3aed5876a7666fca
# Fri, 10 Feb 2017 01:55:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:06 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:07 GMT
CMD ["pypy"]
# Fri, 10 Feb 2017 01:56:08 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:56:08 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:56:09 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 10 Feb 2017 01:56:09 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 10 Feb 2017 01:56:09 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce71ca1583441ee706ebe0e330ae601eb5c019497541c0a7556e9408bc43e7d`  
		Last Modified: Fri, 10 Feb 2017 17:50:56 GMT  
		Size: 28.3 MB (28305543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8276d9886258e271022346576872e59c2b62699760a571dc423390caa9cf8f8`  
		Last Modified: Fri, 10 Feb 2017 17:52:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.5.0-alpha`

```console
$ docker pull pypy@sha256:09bf09e5f2a8c02e155f55c396a7cb46b0e4ba2fcfdcb106bfaa7764f73d6574
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.5.0-alpha` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272104439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a41382a8ab6543dc59b3689bc1824eff633b99c561b14d18313b90741e10fc4`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:56:10 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:30 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:31 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd4e2ad19a83f426d89b576375ae1a785b6091c0b05446e38d43984e048f2a0`  
		Last Modified: Fri, 10 Feb 2017 17:54:55 GMT  
		Size: 25.7 MB (25688093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.5.0`

```console
$ docker pull pypy@sha256:09bf09e5f2a8c02e155f55c396a7cb46b0e4ba2fcfdcb106bfaa7764f73d6574
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.5.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272104439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a41382a8ab6543dc59b3689bc1824eff633b99c561b14d18313b90741e10fc4`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:56:10 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:30 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:31 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd4e2ad19a83f426d89b576375ae1a785b6091c0b05446e38d43984e048f2a0`  
		Last Modified: Fri, 10 Feb 2017 17:54:55 GMT  
		Size: 25.7 MB (25688093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.5`

```console
$ docker pull pypy@sha256:09bf09e5f2a8c02e155f55c396a7cb46b0e4ba2fcfdcb106bfaa7764f73d6574
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272104439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a41382a8ab6543dc59b3689bc1824eff633b99c561b14d18313b90741e10fc4`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:56:10 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:30 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:31 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd4e2ad19a83f426d89b576375ae1a785b6091c0b05446e38d43984e048f2a0`  
		Last Modified: Fri, 10 Feb 2017 17:54:55 GMT  
		Size: 25.7 MB (25688093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5`

```console
$ docker pull pypy@sha256:09bf09e5f2a8c02e155f55c396a7cb46b0e4ba2fcfdcb106bfaa7764f73d6574
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272104439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a41382a8ab6543dc59b3689bc1824eff633b99c561b14d18313b90741e10fc4`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:56:10 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:30 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:31 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd4e2ad19a83f426d89b576375ae1a785b6091c0b05446e38d43984e048f2a0`  
		Last Modified: Fri, 10 Feb 2017 17:54:55 GMT  
		Size: 25.7 MB (25688093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3`

```console
$ docker pull pypy@sha256:09bf09e5f2a8c02e155f55c396a7cb46b0e4ba2fcfdcb106bfaa7764f73d6574
```

-	Platforms:
	-	linux; amd64

### `pypy:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272104439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a41382a8ab6543dc59b3689bc1824eff633b99c561b14d18313b90741e10fc4`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:56:10 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:30 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:31 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd4e2ad19a83f426d89b576375ae1a785b6091c0b05446e38d43984e048f2a0`  
		Last Modified: Fri, 10 Feb 2017 17:54:55 GMT  
		Size: 25.7 MB (25688093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:latest`

```console
$ docker pull pypy@sha256:09bf09e5f2a8c02e155f55c396a7cb46b0e4ba2fcfdcb106bfaa7764f73d6574
```

-	Platforms:
	-	linux; amd64

### `pypy:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272104439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a41382a8ab6543dc59b3689bc1824eff633b99c561b14d18313b90741e10fc4`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:56:10 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:30 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:31 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd4e2ad19a83f426d89b576375ae1a785b6091c0b05446e38d43984e048f2a0`  
		Last Modified: Fri, 10 Feb 2017 17:54:55 GMT  
		Size: 25.7 MB (25688093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.5.0-alpha-slim`

```console
$ docker pull pypy@sha256:ed164f295f1d6db138f0405b2df8dd7851174366c64892cd0e4624c5950db6a6
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.5.0-alpha-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80612374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c94d6f698ec29bcbed0a37b8ad8b845b7133489d334747c4930a2886fd77497`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:39:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:39:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 19:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:40:13 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 17 Jan 2017 19:40:13 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 17 Jan 2017 19:40:14 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 17 Jan 2017 19:40:42 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 17 Jan 2017 19:40:42 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e2cd65c141636cbca75b10169f8ead09a63cc79b1c35e3143ee6ff50127c2a`  
		Last Modified: Wed, 18 Jan 2017 07:02:50 GMT  
		Size: 3.5 MB (3502391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2253032e78af7b73db58c2bf40a7fc8c3cc5e45bb0655fb6b3a36508ac3030`  
		Last Modified: Wed, 18 Jan 2017 07:07:31 GMT  
		Size: 25.7 MB (25748773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.5.0-slim`

```console
$ docker pull pypy@sha256:ed164f295f1d6db138f0405b2df8dd7851174366c64892cd0e4624c5950db6a6
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.5.0-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80612374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c94d6f698ec29bcbed0a37b8ad8b845b7133489d334747c4930a2886fd77497`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:39:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:39:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 19:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:40:13 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 17 Jan 2017 19:40:13 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 17 Jan 2017 19:40:14 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 17 Jan 2017 19:40:42 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 17 Jan 2017 19:40:42 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e2cd65c141636cbca75b10169f8ead09a63cc79b1c35e3143ee6ff50127c2a`  
		Last Modified: Wed, 18 Jan 2017 07:02:50 GMT  
		Size: 3.5 MB (3502391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2253032e78af7b73db58c2bf40a7fc8c3cc5e45bb0655fb6b3a36508ac3030`  
		Last Modified: Wed, 18 Jan 2017 07:07:31 GMT  
		Size: 25.7 MB (25748773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.5-slim`

```console
$ docker pull pypy@sha256:ed164f295f1d6db138f0405b2df8dd7851174366c64892cd0e4624c5950db6a6
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.5-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80612374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c94d6f698ec29bcbed0a37b8ad8b845b7133489d334747c4930a2886fd77497`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:39:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:39:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 19:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:40:13 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 17 Jan 2017 19:40:13 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 17 Jan 2017 19:40:14 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 17 Jan 2017 19:40:42 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 17 Jan 2017 19:40:42 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e2cd65c141636cbca75b10169f8ead09a63cc79b1c35e3143ee6ff50127c2a`  
		Last Modified: Wed, 18 Jan 2017 07:02:50 GMT  
		Size: 3.5 MB (3502391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2253032e78af7b73db58c2bf40a7fc8c3cc5e45bb0655fb6b3a36508ac3030`  
		Last Modified: Wed, 18 Jan 2017 07:07:31 GMT  
		Size: 25.7 MB (25748773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:ed164f295f1d6db138f0405b2df8dd7851174366c64892cd0e4624c5950db6a6
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80612374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c94d6f698ec29bcbed0a37b8ad8b845b7133489d334747c4930a2886fd77497`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:39:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:39:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 19:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:40:13 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 17 Jan 2017 19:40:13 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 17 Jan 2017 19:40:14 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 17 Jan 2017 19:40:42 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 17 Jan 2017 19:40:42 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e2cd65c141636cbca75b10169f8ead09a63cc79b1c35e3143ee6ff50127c2a`  
		Last Modified: Wed, 18 Jan 2017 07:02:50 GMT  
		Size: 3.5 MB (3502391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2253032e78af7b73db58c2bf40a7fc8c3cc5e45bb0655fb6b3a36508ac3030`  
		Last Modified: Wed, 18 Jan 2017 07:07:31 GMT  
		Size: 25.7 MB (25748773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim`

```console
$ docker pull pypy@sha256:ed164f295f1d6db138f0405b2df8dd7851174366c64892cd0e4624c5950db6a6
```

-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80612374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c94d6f698ec29bcbed0a37b8ad8b845b7133489d334747c4930a2886fd77497`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:39:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:39:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 19:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:40:13 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 17 Jan 2017 19:40:13 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 17 Jan 2017 19:40:14 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 17 Jan 2017 19:40:42 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 17 Jan 2017 19:40:42 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e2cd65c141636cbca75b10169f8ead09a63cc79b1c35e3143ee6ff50127c2a`  
		Last Modified: Wed, 18 Jan 2017 07:02:50 GMT  
		Size: 3.5 MB (3502391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2253032e78af7b73db58c2bf40a7fc8c3cc5e45bb0655fb6b3a36508ac3030`  
		Last Modified: Wed, 18 Jan 2017 07:07:31 GMT  
		Size: 25.7 MB (25748773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim`

```console
$ docker pull pypy@sha256:ed164f295f1d6db138f0405b2df8dd7851174366c64892cd0e4624c5950db6a6
```

-	Platforms:
	-	linux; amd64

### `pypy:slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80612374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c94d6f698ec29bcbed0a37b8ad8b845b7133489d334747c4930a2886fd77497`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:39:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:39:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 19:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:40:13 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 17 Jan 2017 19:40:13 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 17 Jan 2017 19:40:14 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 17 Jan 2017 19:40:42 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 17 Jan 2017 19:40:42 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e2cd65c141636cbca75b10169f8ead09a63cc79b1c35e3143ee6ff50127c2a`  
		Last Modified: Wed, 18 Jan 2017 07:02:50 GMT  
		Size: 3.5 MB (3502391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2253032e78af7b73db58c2bf40a7fc8c3cc5e45bb0655fb6b3a36508ac3030`  
		Last Modified: Wed, 18 Jan 2017 07:07:31 GMT  
		Size: 25.7 MB (25748773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.5.0-alpha-onbuild`

```console
$ docker pull pypy@sha256:a5a6740fb7f7766edde113922e7cbccd1e1195dae6e360a7ff44078db3bef4ec
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.5.0-alpha-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272104565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d0ecb6dbebaf3bd2bb999cbe128ec74edc62017275c6c9306c7f803b4461561`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:56:10 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:30 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:31 GMT
CMD ["pypy3"]
# Fri, 10 Feb 2017 01:56:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:56:32 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd4e2ad19a83f426d89b576375ae1a785b6091c0b05446e38d43984e048f2a0`  
		Last Modified: Fri, 10 Feb 2017 17:54:55 GMT  
		Size: 25.7 MB (25688093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5637ea62846007f6865990f70ddb306bff1b674f15932984ddd89c689cbbd3ce`  
		Last Modified: Fri, 10 Feb 2017 17:56:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.5.0-onbuild`

```console
$ docker pull pypy@sha256:a5a6740fb7f7766edde113922e7cbccd1e1195dae6e360a7ff44078db3bef4ec
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.5.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272104565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d0ecb6dbebaf3bd2bb999cbe128ec74edc62017275c6c9306c7f803b4461561`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:56:10 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:30 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:31 GMT
CMD ["pypy3"]
# Fri, 10 Feb 2017 01:56:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:56:32 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd4e2ad19a83f426d89b576375ae1a785b6091c0b05446e38d43984e048f2a0`  
		Last Modified: Fri, 10 Feb 2017 17:54:55 GMT  
		Size: 25.7 MB (25688093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5637ea62846007f6865990f70ddb306bff1b674f15932984ddd89c689cbbd3ce`  
		Last Modified: Fri, 10 Feb 2017 17:56:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.5-onbuild`

```console
$ docker pull pypy@sha256:a5a6740fb7f7766edde113922e7cbccd1e1195dae6e360a7ff44078db3bef4ec
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5.5-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272104565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d0ecb6dbebaf3bd2bb999cbe128ec74edc62017275c6c9306c7f803b4461561`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:56:10 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:30 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:31 GMT
CMD ["pypy3"]
# Fri, 10 Feb 2017 01:56:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:56:32 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd4e2ad19a83f426d89b576375ae1a785b6091c0b05446e38d43984e048f2a0`  
		Last Modified: Fri, 10 Feb 2017 17:54:55 GMT  
		Size: 25.7 MB (25688093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5637ea62846007f6865990f70ddb306bff1b674f15932984ddd89c689cbbd3ce`  
		Last Modified: Fri, 10 Feb 2017 17:56:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5-onbuild`

```console
$ docker pull pypy@sha256:a5a6740fb7f7766edde113922e7cbccd1e1195dae6e360a7ff44078db3bef4ec
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272104565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d0ecb6dbebaf3bd2bb999cbe128ec74edc62017275c6c9306c7f803b4461561`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:56:10 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:30 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:31 GMT
CMD ["pypy3"]
# Fri, 10 Feb 2017 01:56:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:56:32 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd4e2ad19a83f426d89b576375ae1a785b6091c0b05446e38d43984e048f2a0`  
		Last Modified: Fri, 10 Feb 2017 17:54:55 GMT  
		Size: 25.7 MB (25688093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5637ea62846007f6865990f70ddb306bff1b674f15932984ddd89c689cbbd3ce`  
		Last Modified: Fri, 10 Feb 2017 17:56:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-onbuild`

```console
$ docker pull pypy@sha256:a5a6740fb7f7766edde113922e7cbccd1e1195dae6e360a7ff44078db3bef4ec
```

-	Platforms:
	-	linux; amd64

### `pypy:3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272104565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d0ecb6dbebaf3bd2bb999cbe128ec74edc62017275c6c9306c7f803b4461561`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:56:10 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:30 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:31 GMT
CMD ["pypy3"]
# Fri, 10 Feb 2017 01:56:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:56:32 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd4e2ad19a83f426d89b576375ae1a785b6091c0b05446e38d43984e048f2a0`  
		Last Modified: Fri, 10 Feb 2017 17:54:55 GMT  
		Size: 25.7 MB (25688093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5637ea62846007f6865990f70ddb306bff1b674f15932984ddd89c689cbbd3ce`  
		Last Modified: Fri, 10 Feb 2017 17:56:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:onbuild`

```console
$ docker pull pypy@sha256:a5a6740fb7f7766edde113922e7cbccd1e1195dae6e360a7ff44078db3bef4ec
```

-	Platforms:
	-	linux; amd64

### `pypy:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272104565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d0ecb6dbebaf3bd2bb999cbe128ec74edc62017275c6c9306c7f803b4461561`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:55:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 01:55:39 GMT
ENV LANG=C.UTF-8
# Fri, 10 Feb 2017 01:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:56:10 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Fri, 10 Feb 2017 01:56:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 10 Feb 2017 01:56:30 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Fri, 10 Feb 2017 01:56:31 GMT
CMD ["pypy3"]
# Fri, 10 Feb 2017 01:56:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:56:32 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD RUN pip install -r requirements.txt
# Fri, 10 Feb 2017 01:56:33 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b99677d00501ae5d33b455b23200c918f9101f77292424302423a3279f1a7a`  
		Last Modified: Fri, 10 Feb 2017 17:06:46 GMT  
		Size: 2.9 MB (2889215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd4e2ad19a83f426d89b576375ae1a785b6091c0b05446e38d43984e048f2a0`  
		Last Modified: Fri, 10 Feb 2017 17:54:55 GMT  
		Size: 25.7 MB (25688093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5637ea62846007f6865990f70ddb306bff1b674f15932984ddd89c689cbbd3ce`  
		Last Modified: Fri, 10 Feb 2017 17:56:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
