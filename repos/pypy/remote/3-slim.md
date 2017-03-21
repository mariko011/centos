## `pypy:3-slim`

```console
$ docker pull pypy@sha256:a30ca9e4a6452e41b0d86b21ceb56842053d98bf5a6a6c3c1bf86352960d9b29
```

-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84513255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1592cd3d590820beb931c661645408a4a6dbc7ecdced2089057560d6cd7306d`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 18:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 18:34:05 GMT
ENV PYPY_VERSION=5.7.0
# Tue, 21 Mar 2017 18:35:24 GMT
ENV PYPY_SHA256SUM=921894884a647220a712ecdaad516d9c22fbadf3b4bb3a5db8f3635c60eabc7b
# Tue, 21 Mar 2017 18:35:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 18:35:58 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 21 Mar 2017 18:36:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca97e48e76c47880b3e6e92b5f4408c4feaa30fc7237cb393e7865ebd245db5c`  
		Last Modified: Tue, 21 Mar 2017 18:38:34 GMT  
		Size: 3.6 MB (3573490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aeed6df66a58faaaca57f50ce4b18c1b97680001f0ab5edbe860479f220d789`  
		Last Modified: Tue, 21 Mar 2017 18:45:20 GMT  
		Size: 29.5 MB (29501289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
