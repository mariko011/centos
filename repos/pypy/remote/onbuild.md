## `pypy:onbuild`

```console
$ docker pull pypy@sha256:09c7cd8a2db1aee8d8a1cd5d87789cf58e833506f72bee29baa48c57b93133b0
```

-	Platforms:
	-	linux; amd64

### `pypy:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271561031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2907564a95959156ef6a1970de060290196a78d6e2b38bb1a747c7cbc9653acc`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:13:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 05:13:41 GMT
ENV LANG=C.UTF-8
# Sat, 24 Sep 2016 05:13:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:15:54 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Sat, 24 Sep 2016 05:15:54 GMT
ENV PYPY_SHA256SUM=f5e66ab24267d6ddf662d07c512d06c10ebc732ae62093dabbd775ac63b9060a
# Sat, 24 Sep 2016 05:15:55 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Sat, 24 Sep 2016 05:16:13 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Sat, 24 Sep 2016 05:16:13 GMT
CMD ["pypy3"]
# Sat, 24 Sep 2016 05:17:28 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 05:17:28 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 05:17:29 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 24 Sep 2016 05:17:29 GMT
ONBUILD RUN pip install -r requirements.txt
# Sat, 24 Sep 2016 05:17:29 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766692404ca72f4e31e248eb82f8eca6b2fcc15b22930ec50e3804cc3efe0aba`  
		Last Modified: Sat, 24 Sep 2016 05:14:22 GMT  
		Size: 2.9 MB (2888618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8381f2e3242d79fa93754800df8c847da7982acb4628f81eb2e5d6bdfd8743f`  
		Last Modified: Sat, 24 Sep 2016 05:16:30 GMT  
		Size: 25.2 MB (25249893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da4c484a9d6d217464c33f7ea83fb08b50d36468a9cf675ed6111750e8d16c2`  
		Last Modified: Sat, 24 Sep 2016 05:17:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
