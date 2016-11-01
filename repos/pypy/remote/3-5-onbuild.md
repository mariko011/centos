## `pypy:3-5-onbuild`

```console
$ docker pull pypy@sha256:1308b821e904de7d4e405d9c90933bd80dc24c5fd9f65ae47b0c77b9b4fcb3a8
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270638022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7801e80038fe9519b2bd867652a8c4d9d97c9e53c0ee23d37db33ed517f5734`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:46:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:46:58 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 23:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:35:00 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Tue, 01 Nov 2016 07:35:01 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Tue, 01 Nov 2016 07:35:01 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 01 Nov 2016 07:35:20 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Tue, 01 Nov 2016 07:35:21 GMT
CMD ["pypy3"]
# Tue, 01 Nov 2016 07:36:49 GMT
RUN mkdir -p /usr/src/app
# Tue, 01 Nov 2016 07:36:49 GMT
WORKDIR /usr/src/app
# Tue, 01 Nov 2016 07:36:50 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 01 Nov 2016 07:36:50 GMT
ONBUILD RUN pip install -r requirements.txt
# Tue, 01 Nov 2016 07:36:50 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd9291f3483a3992c1acaff27e767677b57bd191c8863a8e18368a0fbfbc593`  
		Last Modified: Tue, 01 Nov 2016 00:21:50 GMT  
		Size: 2.9 MB (2888973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b1fdc63484215fb343cecb444c27632cc3b5343257004e64b66a3ccbe75d28`  
		Last Modified: Tue, 01 Nov 2016 07:35:44 GMT  
		Size: 25.5 MB (25547237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7fd6305c8d521c9dd7eec125b36af271723ebe13ae67ef801cc59a59e3a1bb`  
		Last Modified: Tue, 01 Nov 2016 07:37:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
