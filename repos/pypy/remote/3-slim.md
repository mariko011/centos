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
