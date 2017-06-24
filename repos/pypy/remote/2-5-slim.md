## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:38b18fb8b52c8fc421d0ad977e07e253e05dac5847e3c9a56b5e444c53d3bae7
```

-	Platforms:
	-	linux; amd64

### `pypy:2-5-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61104226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06138c09fc7b401147c16de2e105ba02dbcca6836b5a95afa2f2c94f39ac9577`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:15:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:15:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 04:16:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:16:06 GMT
ENV PYPY_VERSION=5.8.0
# Fri, 23 Jun 2017 04:16:07 GMT
ENV PYPY_SHA256SUM=6274292d0e954a2609b15978cde6efa30942ba20aa5d2acbbf1c70c0a54e9b1e
# Fri, 23 Jun 2017 04:16:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Jun 2017 04:16:36 GMT
RUN set -ex; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-linux64.tar.bz2"; 	echo "$PYPY_SHA256SUM *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 23 Jun 2017 04:16:37 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06309528502813b1bf8496a0df75f32fe057460ad23ea27cdfdc2f9c4458baac`  
		Last Modified: Sat, 24 Jun 2017 20:39:27 GMT  
		Size: 2.9 MB (2860866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7c9a16e82c8d16005340912586abb9cbcc5e62939721519f6ec08d6b52aedb`  
		Last Modified: Sat, 24 Jun 2017 20:39:35 GMT  
		Size: 28.1 MB (28113071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
