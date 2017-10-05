## `pypy:2-slim`

```console
$ docker pull pypy@sha256:332621dfe57a74de0a69a0fed23130b95b1e51742285cfaa4f3d62a7b70ee8ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:2-slim` - linux; amd64

```console
$ docker pull pypy@sha256:71425fc1e849499747a4271649dab01b0494ded6eabbcef56805ddb563a7c13f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61685487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5fb62cbe6d9ca628200361a7743cf2141a13552131d9ee8d7586187ade58e57`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:31:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 02:31:59 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 02:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYPY_VERSION=5.9.0
# Thu, 05 Oct 2017 19:03:30 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 05 Oct 2017 19:04:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 05 Oct 2017 19:04:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b063591b441612bcc5624be83cf8adc1e704bed139b73818c3070672ef28ff0`  
		Last Modified: Thu, 14 Sep 2017 02:36:16 GMT  
		Size: 2.9 MB (2859656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26eb65e84fa17865e42007735ff30950f162e2ccb792a107d16d541695ca07d2`  
		Last Modified: Thu, 05 Oct 2017 19:06:43 GMT  
		Size: 28.7 MB (28712697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
