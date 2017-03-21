## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:c2078fe939020c8e36c552c1cd53dfc06709fe335107afdf0f6f1f39427fbba9
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83400995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c0829749f6cef3ab859059caa33dfde236b82977fe5656101d58c8daefb80c`
-	Default Command: `["pypy"]`

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
# Tue, 21 Mar 2017 18:34:06 GMT
ENV PYPY_SHA256SUM=64bed80e299b09c13296f577a0f52c5d4be9f7c699a390ca6026f967aeff3846
# Tue, 21 Mar 2017 18:34:06 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 18:34:36 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Tue, 21 Mar 2017 18:34:37 GMT
CMD ["pypy"]
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
	-	`sha256:b0b7fb974dad09923d602b58fd41f59aa253e659341514361df9142306525996`  
		Last Modified: Tue, 21 Mar 2017 18:38:44 GMT  
		Size: 28.4 MB (28389029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
