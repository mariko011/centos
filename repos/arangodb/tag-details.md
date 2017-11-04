<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.6`](#arangodb326)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:88e547d1691d74ce4d915cc1ccfc7ffc0fdf6c1cfb91c1c4f922d9f37772a71f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:450892cc06f0715d507202193ffd21d424db15fa8d527579b58694e3a72ea540
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113331366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8863af19f063a1645b051545f0ef5ce8977696cd0c0765857132087a6308e0ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 23:11:31 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 03 Nov 2017 23:11:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 03 Nov 2017 23:11:33 GMT
ENV ARCHITECTURE=amd64
# Fri, 03 Nov 2017 23:11:33 GMT
ENV ARANGO_VERSION=2.8.11
# Fri, 03 Nov 2017 23:11:33 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Fri, 03 Nov 2017 23:11:33 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Fri, 03 Nov 2017 23:11:33 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Fri, 03 Nov 2017 23:11:33 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Fri, 03 Nov 2017 23:12:02 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 03 Nov 2017 23:12:02 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Fri, 03 Nov 2017 23:12:03 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 03 Nov 2017 23:12:03 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Fri, 03 Nov 2017 23:12:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:12:03 GMT
EXPOSE 8529/tcp
# Fri, 03 Nov 2017 23:12:04 GMT
USER [arangodb]
# Fri, 03 Nov 2017 23:12:04 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ca94498dbcc4b6a3035275e51d3508c5bf85042f25db928f69e45a55fa28f2`  
		Last Modified: Fri, 03 Nov 2017 23:12:55 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb44c0f08644ed755552ef7b200440b6bf428ae3562566475ed9099e5eaba93`  
		Last Modified: Fri, 03 Nov 2017 23:13:04 GMT  
		Size: 60.7 MB (60727571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d7609fcf3242bbe65b8c20738036b3fbe5a7bb80f48b85e0e57dd8f3f4f9f9`  
		Last Modified: Fri, 03 Nov 2017 23:12:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc645308c514d15e8aa3315ab7f01bc2707cf8e319adaeecbe2a50d5dbd23af`  
		Last Modified: Fri, 03 Nov 2017 23:12:54 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:88e547d1691d74ce4d915cc1ccfc7ffc0fdf6c1cfb91c1c4f922d9f37772a71f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:450892cc06f0715d507202193ffd21d424db15fa8d527579b58694e3a72ea540
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113331366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8863af19f063a1645b051545f0ef5ce8977696cd0c0765857132087a6308e0ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 23:11:31 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 03 Nov 2017 23:11:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 03 Nov 2017 23:11:33 GMT
ENV ARCHITECTURE=amd64
# Fri, 03 Nov 2017 23:11:33 GMT
ENV ARANGO_VERSION=2.8.11
# Fri, 03 Nov 2017 23:11:33 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Fri, 03 Nov 2017 23:11:33 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Fri, 03 Nov 2017 23:11:33 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Fri, 03 Nov 2017 23:11:33 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Fri, 03 Nov 2017 23:12:02 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 03 Nov 2017 23:12:02 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Fri, 03 Nov 2017 23:12:03 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 03 Nov 2017 23:12:03 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Fri, 03 Nov 2017 23:12:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:12:03 GMT
EXPOSE 8529/tcp
# Fri, 03 Nov 2017 23:12:04 GMT
USER [arangodb]
# Fri, 03 Nov 2017 23:12:04 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ca94498dbcc4b6a3035275e51d3508c5bf85042f25db928f69e45a55fa28f2`  
		Last Modified: Fri, 03 Nov 2017 23:12:55 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb44c0f08644ed755552ef7b200440b6bf428ae3562566475ed9099e5eaba93`  
		Last Modified: Fri, 03 Nov 2017 23:13:04 GMT  
		Size: 60.7 MB (60727571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d7609fcf3242bbe65b8c20738036b3fbe5a7bb80f48b85e0e57dd8f3f4f9f9`  
		Last Modified: Fri, 03 Nov 2017 23:12:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc645308c514d15e8aa3315ab7f01bc2707cf8e319adaeecbe2a50d5dbd23af`  
		Last Modified: Fri, 03 Nov 2017 23:12:54 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:4d17874beff36b2c508501c125e4147f1a0d6fa7ca5fca7c19b4bfabc6c770e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:7f00bba0401898f3ccd1d7f5deed95032b137c075fb340dee0734d3734ca5806
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111840336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb61b45a68c3821bd0ce00e91ac1197c54c9e66d9db7e85876f9bac9cbe200f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 23:12:10 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 03 Nov 2017 23:12:11 GMT
ENV ARCHITECTURE=amd64
# Fri, 03 Nov 2017 23:12:11 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 03 Nov 2017 23:12:11 GMT
ENV ARANGO_VERSION=3.2.6
# Fri, 03 Nov 2017 23:12:11 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 03 Nov 2017 23:12:11 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.6-1_amd64.deb
# Fri, 03 Nov 2017 23:12:12 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb
# Fri, 03 Nov 2017 23:12:12 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb.asc
# Fri, 03 Nov 2017 23:12:20 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:12:24 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 03 Nov 2017 23:12:33 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:12:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 23:12:47 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 03 Nov 2017 23:12:47 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 03 Nov 2017 23:12:47 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Fri, 03 Nov 2017 23:12:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:12:48 GMT
EXPOSE 8529/tcp
# Fri, 03 Nov 2017 23:12:48 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f78864bb5261e1d8c3467280d52c95fdb2277fd90f91f3dc098bf279c38a0de`  
		Last Modified: Fri, 03 Nov 2017 23:13:16 GMT  
		Size: 6.9 MB (6920828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ba71fa930d20cc0e6771e3227dc9ad43bf501adbf1577a3578720cb1ef37f6`  
		Last Modified: Fri, 03 Nov 2017 23:13:13 GMT  
		Size: 3.5 KB (3468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e5f7d00092da4db7444bc14f6d7eaeaa9329a4365c69a4939c6c6eb57b8360`  
		Last Modified: Fri, 03 Nov 2017 23:13:14 GMT  
		Size: 7.4 MB (7351341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed0fcd0e2c12b68f28925884daf108414a9b1943bfc2a91effe238fc6a6e1eb`  
		Last Modified: Fri, 03 Nov 2017 23:13:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e3bead3fc60d7d821ad4b5a84151739a5337f24f58bf24f5f5acae48c3a6ff`  
		Last Modified: Fri, 03 Nov 2017 23:13:21 GMT  
		Size: 52.4 MB (52433667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ef3acb3b8ee0e3e30ff802b9e1847daf1b3a87843f6f1c81fe4dd218a8bfc1`  
		Last Modified: Fri, 03 Nov 2017 23:13:13 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.6`

```console
$ docker pull arangodb@sha256:4d17874beff36b2c508501c125e4147f1a0d6fa7ca5fca7c19b4bfabc6c770e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.6` - linux; amd64

```console
$ docker pull arangodb@sha256:7f00bba0401898f3ccd1d7f5deed95032b137c075fb340dee0734d3734ca5806
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111840336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb61b45a68c3821bd0ce00e91ac1197c54c9e66d9db7e85876f9bac9cbe200f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 23:12:10 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 03 Nov 2017 23:12:11 GMT
ENV ARCHITECTURE=amd64
# Fri, 03 Nov 2017 23:12:11 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 03 Nov 2017 23:12:11 GMT
ENV ARANGO_VERSION=3.2.6
# Fri, 03 Nov 2017 23:12:11 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 03 Nov 2017 23:12:11 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.6-1_amd64.deb
# Fri, 03 Nov 2017 23:12:12 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb
# Fri, 03 Nov 2017 23:12:12 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb.asc
# Fri, 03 Nov 2017 23:12:20 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:12:24 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 03 Nov 2017 23:12:33 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:12:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 23:12:47 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 03 Nov 2017 23:12:47 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 03 Nov 2017 23:12:47 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Fri, 03 Nov 2017 23:12:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:12:48 GMT
EXPOSE 8529/tcp
# Fri, 03 Nov 2017 23:12:48 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f78864bb5261e1d8c3467280d52c95fdb2277fd90f91f3dc098bf279c38a0de`  
		Last Modified: Fri, 03 Nov 2017 23:13:16 GMT  
		Size: 6.9 MB (6920828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ba71fa930d20cc0e6771e3227dc9ad43bf501adbf1577a3578720cb1ef37f6`  
		Last Modified: Fri, 03 Nov 2017 23:13:13 GMT  
		Size: 3.5 KB (3468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e5f7d00092da4db7444bc14f6d7eaeaa9329a4365c69a4939c6c6eb57b8360`  
		Last Modified: Fri, 03 Nov 2017 23:13:14 GMT  
		Size: 7.4 MB (7351341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed0fcd0e2c12b68f28925884daf108414a9b1943bfc2a91effe238fc6a6e1eb`  
		Last Modified: Fri, 03 Nov 2017 23:13:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e3bead3fc60d7d821ad4b5a84151739a5337f24f58bf24f5f5acae48c3a6ff`  
		Last Modified: Fri, 03 Nov 2017 23:13:21 GMT  
		Size: 52.4 MB (52433667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ef3acb3b8ee0e3e30ff802b9e1847daf1b3a87843f6f1c81fe4dd218a8bfc1`  
		Last Modified: Fri, 03 Nov 2017 23:13:13 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:4d17874beff36b2c508501c125e4147f1a0d6fa7ca5fca7c19b4bfabc6c770e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:7f00bba0401898f3ccd1d7f5deed95032b137c075fb340dee0734d3734ca5806
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111840336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb61b45a68c3821bd0ce00e91ac1197c54c9e66d9db7e85876f9bac9cbe200f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 23:12:10 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 03 Nov 2017 23:12:11 GMT
ENV ARCHITECTURE=amd64
# Fri, 03 Nov 2017 23:12:11 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 03 Nov 2017 23:12:11 GMT
ENV ARANGO_VERSION=3.2.6
# Fri, 03 Nov 2017 23:12:11 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 03 Nov 2017 23:12:11 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.6-1_amd64.deb
# Fri, 03 Nov 2017 23:12:12 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb
# Fri, 03 Nov 2017 23:12:12 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb.asc
# Fri, 03 Nov 2017 23:12:20 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:12:24 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 03 Nov 2017 23:12:33 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:12:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 23:12:47 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 03 Nov 2017 23:12:47 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 03 Nov 2017 23:12:47 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Fri, 03 Nov 2017 23:12:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:12:48 GMT
EXPOSE 8529/tcp
# Fri, 03 Nov 2017 23:12:48 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f78864bb5261e1d8c3467280d52c95fdb2277fd90f91f3dc098bf279c38a0de`  
		Last Modified: Fri, 03 Nov 2017 23:13:16 GMT  
		Size: 6.9 MB (6920828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ba71fa930d20cc0e6771e3227dc9ad43bf501adbf1577a3578720cb1ef37f6`  
		Last Modified: Fri, 03 Nov 2017 23:13:13 GMT  
		Size: 3.5 KB (3468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e5f7d00092da4db7444bc14f6d7eaeaa9329a4365c69a4939c6c6eb57b8360`  
		Last Modified: Fri, 03 Nov 2017 23:13:14 GMT  
		Size: 7.4 MB (7351341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed0fcd0e2c12b68f28925884daf108414a9b1943bfc2a91effe238fc6a6e1eb`  
		Last Modified: Fri, 03 Nov 2017 23:13:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e3bead3fc60d7d821ad4b5a84151739a5337f24f58bf24f5f5acae48c3a6ff`  
		Last Modified: Fri, 03 Nov 2017 23:13:21 GMT  
		Size: 52.4 MB (52433667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ef3acb3b8ee0e3e30ff802b9e1847daf1b3a87843f6f1c81fe4dd218a8bfc1`  
		Last Modified: Fri, 03 Nov 2017 23:13:13 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
