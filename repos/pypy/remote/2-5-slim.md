## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:df333df91c4d578963e4fd674d9225cb17e65cc5a5543ff9ab180d89b8350b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `pypy:2-5-slim` - linux; amd64

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

### `pypy:2-5-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:b99501a0c3839c6fded69e59327e37ac4abbd1ee290e1e9822c9d601942140fe
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57141151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62995900ab9ce4c7c779ba81f4b060fa18d2d5f9db6e88f9abcfc03579964e66`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:24 GMT
ADD file:b3e61e5275e7047cc330ef997896c9e74467b5134f0cada4325564a122204b61 in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:44:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:44:56 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 23:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:45:35 GMT
ENV PYPY_VERSION=5.9.0
# Mon, 09 Oct 2017 23:45:36 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 09 Oct 2017 23:46:52 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 09 Oct 2017 23:46:53 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:355c947ce54f583e3c4723632384e762cf27a159cb11b7ff6af3106dc7bf8e99`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 28.4 MB (28424201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3baf8e4c5aff84e78725c83128f86c67f931a1577b92c1c8df5d6186eac9a2`  
		Last Modified: Mon, 09 Oct 2017 23:47:34 GMT  
		Size: 2.6 MB (2608031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b19ad8613629884221e827951594d9698eefda27a31fbcbb148ea3c5262c4f`  
		Last Modified: Mon, 09 Oct 2017 23:47:43 GMT  
		Size: 26.1 MB (26108919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-slim` - linux; arm variant v7

```console
$ docker pull pypy@sha256:39509d13ce78de842fd2922a62ec88a36f25e382bdbf69b8a918c79129426c73
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54957779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df13578566593c9db494df9d5d8a6cf9796bff7942672d816cfe4ca9c1db70ad`
-	Default Command: `["pypy"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 22:13:29 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:14:12 GMT
ENV PYPY_VERSION=5.9.0
# Mon, 09 Oct 2017 22:14:12 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 09 Oct 2017 22:15:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 09 Oct 2017 22:15:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039a7388aeb06b497f3d06c990392cb69bc39900f190f66bda620a11031c2a49`  
		Last Modified: Mon, 09 Oct 2017 22:15:54 GMT  
		Size: 2.5 MB (2476099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0eb80fc7c26ef567b5e9322a30b6395eda2c4b20cafa14f15561723e891d59d`  
		Last Modified: Mon, 09 Oct 2017 22:16:04 GMT  
		Size: 26.2 MB (26200698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-slim` - linux; 386

```console
$ docker pull pypy@sha256:553cc7408234b51bb5e97bf39fcd7e30e5ba4953fabad20e0b551f6ec987fee8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.1 MB (60104590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74eb7de3e35e49e8bf1a60a64a9f0dfcb7b3730e7d9f4c0e3933ca2ae5bf611d`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:07:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 16:07:05 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 16:08:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Oct 2017 17:43:00 GMT
ENV PYPY_VERSION=5.9.0
# Fri, 06 Oct 2017 17:43:00 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 06 Oct 2017 17:43:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='790febd4f09e22d6e2f81154efc7dc4b2feec72712aaf4f82aa91b550abb4b48' ;; 		armel) pypyArch='linux-armel'; sha256='ac0676d91dfb388c799ec5c2845f42018a666423376f52f3ae13d61fd2e6f87d' ;; 		armhf) pypyArch='linux-armhf-raring'; sha256='2597b7b21acdef4f2b81074a594157c9450363c74a17f005548c6b102f93cff4' ;; 		i386) pypyArch='linux32'; sha256='a2431a9e4ef879da1a2b56b111013b4a6efb87d4173a37bf650de47834ac5fe4' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 06 Oct 2017 17:43:56 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35578cc2bc5875ce205d68e4c8b09dcec530d6a339bf0a0131d92bca6779f93`  
		Last Modified: Fri, 08 Sep 2017 16:09:38 GMT  
		Size: 5.0 MB (4957792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cc72d350978197e9fa045f7d0dbf7db20aa1abaf2d24ff7a3286a62cd0db5b`  
		Last Modified: Fri, 06 Oct 2017 17:44:50 GMT  
		Size: 24.9 MB (24882632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
