## `pypy:3-slim`

```console
$ docker pull pypy@sha256:a129d4f3692ad21fde908d9b4e86edf9996a1420ff842676c5ecc55d050f8a83
```

-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80608274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e50d0f874870ffaf8804864cbb3ac25e7588c7b69a1c9c45f7ff47cde251f3d`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:36:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Dec 2016 17:36:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:37:28 GMT
ENV PYPY_VERSION=5.5.0-alpha
# Wed, 14 Dec 2016 17:37:28 GMT
ENV PYPY_SHA256SUM=41ef7c25fd04eeb20deaa83c5d88c10aef2bbc8bcfd9e53e7cc61136220861cc
# Wed, 14 Dec 2016 17:37:29 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Dec 2016 17:37:57 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.3-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Wed, 14 Dec 2016 17:37:57 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bd42c39bdfdd6e975e6c8b3a30a2beb75f9991e6cb0239f6484bae58fe7f43`  
		Last Modified: Wed, 21 Dec 2016 19:15:36 GMT  
		Size: 3.5 MB (3495709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58bdba209c550364c8c1028c50aa2276db92ed627ea0a3897e694ba180c525a`  
		Last Modified: Wed, 21 Dec 2016 19:23:17 GMT  
		Size: 25.7 MB (25749440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
