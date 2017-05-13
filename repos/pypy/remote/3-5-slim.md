## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:5fbb80e80d1d1b84e4a84cf4d520dc73a046cba022cc7cbb8efe1b4fe3340eae
```

-	Platforms:
	-	linux; amd64

### `pypy:3-5-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.0 MB (85988608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eac3e3d5a871b1954091e9d20aff8a4f2b65b68a048294c4816a5587047683ad`
-	Default Command: `["pypy3"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 02:59:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 02:59:27 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 15:27:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:27:25 GMT
ENV PYPY_VERSION=5.7.1
# Wed, 10 May 2017 15:28:15 GMT
ENV PYPY_SHA256SUM=2abaa54d88c9b70b64c37083e7e430a1d3a8f78f8de92e484a988b7aca1e50a7
# Wed, 10 May 2017 15:28:16 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 10 May 2017 15:28:46 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Wed, 10 May 2017 15:28:47 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3110ef7d6181163f7662045163b6f95a90f2879c3e8b3c14c77748bd52d6dacd`  
		Last Modified: Sat, 13 May 2017 17:58:14 GMT  
		Size: 3.6 MB (3639986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc427333f97e457fee055a3d30f641173c046d2a98384e95f5f782cd12b045c`  
		Last Modified: Sat, 13 May 2017 18:04:04 GMT  
		Size: 29.8 MB (29764606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
