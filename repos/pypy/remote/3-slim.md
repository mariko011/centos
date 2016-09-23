## `pypy:3-slim`

```console
$ docker pull pypy@sha256:dc62acefc312215815c06ddc620c0e306b1a0618d33ab3e3a72e13edea3fabb3
```

-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80141131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4c74c7d3772b6a2ab07647076da0e432c3372276a777798ef570a4038a9dae`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:21:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:21:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 22:21:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:22:59 GMT
ENV PYPY_VERSION=5.2.0-alpha1
# Fri, 23 Sep 2016 22:22:59 GMT
ENV PYPY_SHA256SUM=f5e66ab24267d6ddf662d07c512d06c10ebc732ae62093dabbd775ac63b9060a
# Fri, 23 Sep 2016 22:23:00 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:23:25 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Fri, 23 Sep 2016 22:23:26 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0773653d4b8996f254fe25db22c20e1a0f9c07f953ff88ed7c9d743a0bfaccf6`  
		Last Modified: Fri, 23 Sep 2016 22:22:14 GMT  
		Size: 3.5 MB (3464867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d71a4c0e42cf57a151ad65a9a90cb35c12da38c4797b65616562dbc37f043d`  
		Last Modified: Fri, 23 Sep 2016 22:23:42 GMT  
		Size: 25.3 MB (25321900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
