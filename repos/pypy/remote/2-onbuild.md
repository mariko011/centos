## `pypy:2-onbuild`

```console
$ docker pull pypy@sha256:c47c5f94da7722b5fcc2c807fbd7aec56874829982637f6cf196259c3c6d4147
```

-	Platforms:
	-	linux; amd64

### `pypy:2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272812718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c62c2dab30abddad2e2f438346e7f65fb0912b4754b63788bba19beed87cb6`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 08:13:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 08:13:48 GMT
ENV LANG=C.UTF-8
# Sat, 22 Oct 2016 08:14:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 08:14:04 GMT
ENV PYPY_VERSION=5.4.1
# Sat, 22 Oct 2016 08:14:05 GMT
ENV PYPY_SHA256SUM=9c85319778224d7fb0c348f55fe3fada15bb579c5f3870a13ad63b42a737dd72
# Sat, 22 Oct 2016 08:14:05 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Sat, 22 Oct 2016 08:14:25 GMT
RUN set -ex 	&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& rm -rf ~/.cache
# Sat, 22 Oct 2016 08:14:25 GMT
CMD ["pypy"]
# Sat, 22 Oct 2016 08:15:29 GMT
RUN mkdir -p /usr/src/app
# Sat, 22 Oct 2016 08:15:30 GMT
WORKDIR /usr/src/app
# Sat, 22 Oct 2016 08:15:30 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 22 Oct 2016 08:15:30 GMT
ONBUILD RUN pip install -r requirements.txt
# Sat, 22 Oct 2016 08:15:31 GMT
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
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132c9d27525983cb3721ca71e5394563226dd5875b1b908cecd516f6919380ad`  
		Last Modified: Sat, 22 Oct 2016 08:14:37 GMT  
		Size: 2.9 MB (2888599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3bd9aa36e4829904e4d3d5fd6a06cb7f40b24dea51be802acac20d6ece46ff`  
		Last Modified: Sat, 22 Oct 2016 08:14:47 GMT  
		Size: 27.8 MB (27776662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c15e9e9de0d2f8b973c52d565b3ebccc8a04415342ab6c0595f13b2f33eb42f`  
		Last Modified: Sat, 22 Oct 2016 08:15:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
