## `pypy:2-slim`

```console
$ docker pull pypy@sha256:21d731cf1dd03c6688aa49ddd1057096ca0d1073677cf187db2cf55124b972b1
```

-	Platforms:
	-	linux; amd64

### `pypy:2-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83224708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f64b2957034d329944fa30c0b94834263819a1cdfdb7ab1e225948c95de11035`
-	Default Command: `["pypy"]`

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
# Wed, 14 Dec 2016 17:36:58 GMT
ENV PYPY_VERSION=5.6.0
# Wed, 14 Dec 2016 17:36:59 GMT
ENV PYPY_SHA256SUM=aad55328cb0673a60b2633dcc3c36cf452917ac906b577eb3aed5876a7666fca
# Wed, 14 Dec 2016 17:36:59 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Dec 2016 17:37:27 GMT
RUN set -ex 	&& fetchDeps=' 		bzip2 		wget 	' 	&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2" 	&& echo "$PYPY_SHA256SUM  pypy.tar.bz2" | sha256sum -c 	&& tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2 	&& rm pypy.tar.bz2 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& pypy /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& apt-get purge -y --auto-remove $fetchDeps 	&& rm -rf ~/.cache
# Wed, 14 Dec 2016 17:37:27 GMT
CMD ["pypy"]
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
	-	`sha256:56fe19e681540bc0df70761b64cc92c40c4665df84f304260300bcc79c91a34d`  
		Last Modified: Wed, 21 Dec 2016 19:16:00 GMT  
		Size: 28.4 MB (28365874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
