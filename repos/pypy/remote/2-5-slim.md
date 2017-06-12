## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:c86821822f14a33a91b17e70f9c883abbf90d35fe3a7928f5af08b09bfd34bca
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61069900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffb1ff12530e388c8592f70c7a92d54da51313433c9c08f090737f3c95c7fb6`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Fri, 09 Jun 2017 06:15:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Jun 2017 06:15:36 GMT
ENV LANG=C.UTF-8
# Fri, 09 Jun 2017 06:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 21:36:35 GMT
ENV PYPY_VERSION=5.8.0
# Mon, 12 Jun 2017 21:36:36 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Mon, 12 Jun 2017 21:36:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 12 Jun 2017 21:37:34 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 12 Jun 2017 21:37:35 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6ddb2379b3f9bb65c3b3a2dae0ff04fdcb98cc277e1b231856b874b2d83b69`  
		Last Modified: Fri, 09 Jun 2017 06:24:50 GMT  
		Size: 2.9 MB (2858132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78db6104ec8be2589f5cf41a697e536bd13061bdd287d86410543a4ffe2bbcf2`  
		Last Modified: Mon, 12 Jun 2017 22:04:37 GMT  
		Size: 28.1 MB (28113170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
