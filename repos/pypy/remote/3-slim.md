## `pypy:3-slim`

```console
$ docker pull pypy@sha256:3b4f968e6a02d3ca1fa7d720681c3091fd3b0b2818570a682a7d1123bc0b7bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

```console
$ docker pull pypy@sha256:ce514dc8c39e99691e09b8185f0bde16243d8f9802a6870551212545889605c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62472143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136edbc38a7d1517c4bbe2c497d6e2ed30aba492f7ec8ff84adc424e95d64fa5`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 20:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 20:03:06 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 20:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYPY_VERSION=5.8.0
# Tue, 12 Sep 2017 20:03:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Sep 2017 20:05:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='57d871a7f1135719c138cee4e3533c3275d682a76a40ff668e95150c65923035' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Sep 2017 20:05:01 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f0e105f4d1e2a64d222e956ae25b06bf589d9aa50492bac8ddea509e3f601c`  
		Last Modified: Tue, 12 Sep 2017 20:05:36 GMT  
		Size: 2.9 MB (2859587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246c0deb056430eb6d4bd4c28baa66dfb008e295c08c24aaf078f648b249b1b7`  
		Last Modified: Tue, 12 Sep 2017 20:06:46 GMT  
		Size: 29.5 MB (29499422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
