## `pypy:slim`

```console
$ docker pull pypy@sha256:2dc02952aa34d3e21030a4abc54c134c8396ad6506a818735534fd6479d14ce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:slim` - linux; amd64

```console
$ docker pull pypy@sha256:03759835e98c06856454f82c4d0c519d4d2b7750eec4efd9d16fe153831b3687
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62732532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d13f145677830fd9ae1cf9430bbd8f218a17e749bc1f54d7581c83d0cd64a2`
-	Default Command: `["pypy3"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:37:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:37:13 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 10:37:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:37:40 GMT
ENV PYPY_VERSION=5.9.0
# Sat, 04 Nov 2017 10:37:40 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 04 Nov 2017 10:40:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='d8c41ede3758127718944cc2fd6bf78ed4303d946f85596cac91281ccce36165' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 04 Nov 2017 10:40:04 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e0e50eebe243e4b2fedcbaf3e7aa0269c809cd8823f62254a7cef9373fe22b`  
		Last Modified: Sat, 04 Nov 2017 10:40:52 GMT  
		Size: 2.9 MB (2859722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62309fa49f2684043c6b13ab37f6abfc48298f04fe99e7c7696a92d149c34b4b`  
		Last Modified: Sat, 04 Nov 2017 10:42:17 GMT  
		Size: 29.8 MB (29759492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
