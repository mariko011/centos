## `pypy:2-slim`

```console
$ docker pull pypy@sha256:bb554120536a4e16ecc10c749bff342ac7be9d403fcef9099d9306838488249f
```

-	Platforms:
	-	linux; amd64

### `pypy:2-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82812307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b3c918836b57b3eca873c2f9eacfd644babf51cd5e2ac27a52adba5daccc5b`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:46:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:46:27 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 19:46:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:46:37 GMT
ENV PYPY_VERSION=5.4.1
# Tue, 08 Nov 2016 19:46:37 GMT
ENV PYPY_SHA256SUM=9c85319778224d7fb0c348f55fe3fada15bb579c5f3870a13ad63b42a737dd72
# Tue, 08 Nov 2016 19:46:38 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 08 Nov 2016 19:47:06 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 08 Nov 2016 19:47:06 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92820f00ef60bfb54fbc89117ba3ed4072ba004a6bcdf80b064635c5e463161`  
		Last Modified: Tue, 08 Nov 2016 19:52:05 GMT  
		Size: 3.5 MB (3495227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a9057f468e9abefc70e5d9c024cb6de0ea28506bcaa6b6341a39fa7ed83786`  
		Last Modified: Tue, 08 Nov 2016 19:52:13 GMT  
		Size: 28.0 MB (27960091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
