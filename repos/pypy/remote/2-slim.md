## `pypy:2-slim`

```console
$ docker pull pypy@sha256:93244c6450f81a6e026b9f335945c89d81901cac575fd78587ea06ef378d88fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7

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

### `pypy:2-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c6d44520478afb440d9ebc2e2a472172947d264b080f06179bdad3fbbdc5a40f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57141342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac329cf6ce8703d26053dd6da5fbb9bb1e921014bd0bad4504b8e2cdbcf39a81`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Sep 2017 14:24:39 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Wed, 27 Sep 2017 14:24:40 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:42:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 15:42:23 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:42:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 16:08:57 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 16:08:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 16:10:09 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 06 Oct 2017 16:10:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e94aa09407315b00ceec47b90961e6d711cbea50b303b5ac7db479f80e57b2b9`  
		Last Modified: Wed, 27 Sep 2017 14:28:45 GMT  
		Size: 28.4 MB (28424172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb99bdb781d42ba88c3e71f2be74066a3a62130f5a8b6d6c06a23f686388eab`  
		Last Modified: Wed, 27 Sep 2017 15:44:33 GMT  
		Size: 2.6 MB (2608030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a4f565c4fb98890bcaaef303644e236813065d07d65b3bcc71b67865d87e4d`  
		Last Modified: Fri, 06 Oct 2017 16:10:59 GMT  
		Size: 26.1 MB (26109140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; arm variant v7

```console
$ docker pull pypy@sha256:088364fba6143b2e3a15df60aa8db53fe46db1d064e0582b2e50d4973a08786a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54957206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff02a1955fbb7416b35b6cfa878e5b5f71fb470cb7954a9014d5d1b771e4baee`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 06:30:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 06:30:22 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 06:31:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 12:45:10 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 12:45:10 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 12:46:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 06 Oct 2017 12:46:16 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1955c5dbfd77c0556bde4c87788215b60b58428b2eed3812f0e6c9bdafaccaaf`  
		Last Modified: Wed, 27 Sep 2017 06:33:00 GMT  
		Size: 2.5 MB (2476147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfa7fa0d6b05a816abe2f5ba173de51963bf9dc9eed8113a187d72d163b204`  
		Last Modified: Fri, 06 Oct 2017 12:47:19 GMT  
		Size: 26.2 MB (26200878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
