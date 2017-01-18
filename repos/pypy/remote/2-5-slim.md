## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:1817c2473efb9f5b54d1b65c6e63a31691722d76a8823d7c49c342048802cbb8
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83228724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a57e2294e6e787ad4832dc69bc3b73bfa47ab6c7cba7cecc924a44bf07d61cc8`
-	Default Command: `["pypy"]`

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
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYPY_VERSION=5.6.0
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYPY_SHA256SUM=aad55328cb0673a60b2633dcc3c36cf452917ac906b577eb3aed5876a7666fca
# Tue, 17 Jan 2017 19:39:45 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 17 Jan 2017 19:40:12 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 17 Jan 2017 19:40:12 GMT
CMD ["pypy"]
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
	-	`sha256:3f457713d36f45b95d70b1aaa8eb5eb039d234d2bbc464454294431403377e06`  
		Last Modified: Wed, 18 Jan 2017 07:03:05 GMT  
		Size: 28.4 MB (28365123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
