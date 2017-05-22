<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.21`](#arangodb3121)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:9b6372650ba8b718f4c591cb7404b107ae8e275c5323b901bb17e98dc4663fce
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113300538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af97f3668c9d363ca6b6a9e27c4c31faa10b01003e759492c14b6b79748a56a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 15:55:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 09 May 2017 15:55:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 09 May 2017 15:55:53 GMT
ENV ARCHITECTURE=amd64
# Tue, 09 May 2017 15:55:54 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 09 May 2017 15:55:55 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 09 May 2017 15:55:55 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 09 May 2017 15:55:56 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 09 May 2017 15:55:57 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 09 May 2017 15:56:37 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 09 May 2017 15:56:42 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 09 May 2017 15:56:43 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 09 May 2017 15:56:44 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 09 May 2017 15:57:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 May 2017 15:57:03 GMT
EXPOSE 8529/tcp
# Tue, 09 May 2017 15:57:04 GMT
USER [arangodb]
# Tue, 09 May 2017 15:57:05 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cf5303f30c8f4594f13514724ba97c5fd98c84c6add0e5a10fee44624b99e3`  
		Last Modified: Thu, 11 May 2017 14:30:51 GMT  
		Size: 7.4 KB (7416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faab528c8fdfef316bd92d995756bef804904afb4101e61deef065d39b686f28`  
		Last Modified: Thu, 11 May 2017 14:31:05 GMT  
		Size: 60.7 MB (60707850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36e04668fafceec87c46faa6164e1696c60a1ccaf071118743ad9fb13fc0736`  
		Last Modified: Thu, 11 May 2017 14:30:51 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a138a1a26a93c13f5c1239cedb6a89358ed39236832daa1d459138522403ecba`  
		Last Modified: Thu, 11 May 2017 14:30:51 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:9b6372650ba8b718f4c591cb7404b107ae8e275c5323b901bb17e98dc4663fce
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113300538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af97f3668c9d363ca6b6a9e27c4c31faa10b01003e759492c14b6b79748a56a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 15:55:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 09 May 2017 15:55:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 09 May 2017 15:55:53 GMT
ENV ARCHITECTURE=amd64
# Tue, 09 May 2017 15:55:54 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 09 May 2017 15:55:55 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 09 May 2017 15:55:55 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 09 May 2017 15:55:56 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 09 May 2017 15:55:57 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 09 May 2017 15:56:37 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 09 May 2017 15:56:42 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 09 May 2017 15:56:43 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 09 May 2017 15:56:44 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 09 May 2017 15:57:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 May 2017 15:57:03 GMT
EXPOSE 8529/tcp
# Tue, 09 May 2017 15:57:04 GMT
USER [arangodb]
# Tue, 09 May 2017 15:57:05 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cf5303f30c8f4594f13514724ba97c5fd98c84c6add0e5a10fee44624b99e3`  
		Last Modified: Thu, 11 May 2017 14:30:51 GMT  
		Size: 7.4 KB (7416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faab528c8fdfef316bd92d995756bef804904afb4101e61deef065d39b686f28`  
		Last Modified: Thu, 11 May 2017 14:31:05 GMT  
		Size: 60.7 MB (60707850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36e04668fafceec87c46faa6164e1696c60a1ccaf071118743ad9fb13fc0736`  
		Last Modified: Thu, 11 May 2017 14:30:51 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a138a1a26a93c13f5c1239cedb6a89358ed39236832daa1d459138522403ecba`  
		Last Modified: Thu, 11 May 2017 14:30:51 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1`

```console
$ docker pull arangodb@sha256:7d8250eeb441683385bbb2fce520e09ad2dad473ec6718fb60f5e88f51a4e080
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139254138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f1fac548b28c606183eedbb3df8c1dd7ffac666154f8f46b1cc08ec6bd6f74`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 15:55:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 09 May 2017 15:57:25 GMT
ENV ARCHITECTURE=amd64
# Tue, 09 May 2017 15:57:26 GMT
ENV DEB_PACKAGE_VERSION=1
# Mon, 22 May 2017 19:33:24 GMT
ENV ARANGO_VERSION=3.1.21
# Mon, 22 May 2017 19:33:25 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Mon, 22 May 2017 19:33:25 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.21-1_amd64.deb
# Mon, 22 May 2017 19:33:26 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.21-1_amd64.deb
# Mon, 22 May 2017 19:33:27 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.21-1_amd64.deb.asc
# Mon, 22 May 2017 19:33:29 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 22 May 2017 19:34:08 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 22 May 2017 19:34:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 22 May 2017 19:34:43 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 22 May 2017 19:35:02 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 22 May 2017 19:35:04 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Mon, 22 May 2017 19:35:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 May 2017 19:35:26 GMT
EXPOSE 8529/tcp
# Mon, 22 May 2017 19:35:27 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6fa57b8609bbe20f16b26bd937cd096f70b9de82ae54ebc8541f2fb4b8a712`  
		Last Modified: Mon, 22 May 2017 19:37:32 GMT  
		Size: 7.4 KB (7408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f17c1decd6479b2861ef04953db3b92de70886e789703801d000c328190ff79`  
		Last Modified: Mon, 22 May 2017 19:37:35 GMT  
		Size: 6.9 MB (6900106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cd99d5bf3aaa576bb77335e5a4fc38757d0b8aae63dbd5fb4adb1bbbe2e7fb`  
		Last Modified: Mon, 22 May 2017 19:37:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ad9fd6fa0094ef0eb698c0fd4069009aec47bd0a38959ae6f8cc43f83337a1`  
		Last Modified: Mon, 22 May 2017 19:37:45 GMT  
		Size: 79.8 MB (79760913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b3bdf93a617c661c01ae306323623c49e18e3c029814aebf7fa4bf5bd637cd`  
		Last Modified: Mon, 22 May 2017 19:37:33 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.21`

```console
$ docker pull arangodb@sha256:7d8250eeb441683385bbb2fce520e09ad2dad473ec6718fb60f5e88f51a4e080
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1.21` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139254138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f1fac548b28c606183eedbb3df8c1dd7ffac666154f8f46b1cc08ec6bd6f74`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 15:55:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 09 May 2017 15:57:25 GMT
ENV ARCHITECTURE=amd64
# Tue, 09 May 2017 15:57:26 GMT
ENV DEB_PACKAGE_VERSION=1
# Mon, 22 May 2017 19:33:24 GMT
ENV ARANGO_VERSION=3.1.21
# Mon, 22 May 2017 19:33:25 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Mon, 22 May 2017 19:33:25 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.21-1_amd64.deb
# Mon, 22 May 2017 19:33:26 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.21-1_amd64.deb
# Mon, 22 May 2017 19:33:27 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.21-1_amd64.deb.asc
# Mon, 22 May 2017 19:33:29 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 22 May 2017 19:34:08 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 22 May 2017 19:34:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 22 May 2017 19:34:43 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 22 May 2017 19:35:02 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 22 May 2017 19:35:04 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Mon, 22 May 2017 19:35:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 May 2017 19:35:26 GMT
EXPOSE 8529/tcp
# Mon, 22 May 2017 19:35:27 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6fa57b8609bbe20f16b26bd937cd096f70b9de82ae54ebc8541f2fb4b8a712`  
		Last Modified: Mon, 22 May 2017 19:37:32 GMT  
		Size: 7.4 KB (7408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f17c1decd6479b2861ef04953db3b92de70886e789703801d000c328190ff79`  
		Last Modified: Mon, 22 May 2017 19:37:35 GMT  
		Size: 6.9 MB (6900106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cd99d5bf3aaa576bb77335e5a4fc38757d0b8aae63dbd5fb4adb1bbbe2e7fb`  
		Last Modified: Mon, 22 May 2017 19:37:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ad9fd6fa0094ef0eb698c0fd4069009aec47bd0a38959ae6f8cc43f83337a1`  
		Last Modified: Mon, 22 May 2017 19:37:45 GMT  
		Size: 79.8 MB (79760913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b3bdf93a617c661c01ae306323623c49e18e3c029814aebf7fa4bf5bd637cd`  
		Last Modified: Mon, 22 May 2017 19:37:33 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:7d8250eeb441683385bbb2fce520e09ad2dad473ec6718fb60f5e88f51a4e080
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139254138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f1fac548b28c606183eedbb3df8c1dd7ffac666154f8f46b1cc08ec6bd6f74`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 15:55:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 09 May 2017 15:57:25 GMT
ENV ARCHITECTURE=amd64
# Tue, 09 May 2017 15:57:26 GMT
ENV DEB_PACKAGE_VERSION=1
# Mon, 22 May 2017 19:33:24 GMT
ENV ARANGO_VERSION=3.1.21
# Mon, 22 May 2017 19:33:25 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Mon, 22 May 2017 19:33:25 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.21-1_amd64.deb
# Mon, 22 May 2017 19:33:26 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.21-1_amd64.deb
# Mon, 22 May 2017 19:33:27 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.21-1_amd64.deb.asc
# Mon, 22 May 2017 19:33:29 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 22 May 2017 19:34:08 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 22 May 2017 19:34:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 22 May 2017 19:34:43 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 22 May 2017 19:35:02 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 22 May 2017 19:35:04 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Mon, 22 May 2017 19:35:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 May 2017 19:35:26 GMT
EXPOSE 8529/tcp
# Mon, 22 May 2017 19:35:27 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6fa57b8609bbe20f16b26bd937cd096f70b9de82ae54ebc8541f2fb4b8a712`  
		Last Modified: Mon, 22 May 2017 19:37:32 GMT  
		Size: 7.4 KB (7408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f17c1decd6479b2861ef04953db3b92de70886e789703801d000c328190ff79`  
		Last Modified: Mon, 22 May 2017 19:37:35 GMT  
		Size: 6.9 MB (6900106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cd99d5bf3aaa576bb77335e5a4fc38757d0b8aae63dbd5fb4adb1bbbe2e7fb`  
		Last Modified: Mon, 22 May 2017 19:37:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ad9fd6fa0094ef0eb698c0fd4069009aec47bd0a38959ae6f8cc43f83337a1`  
		Last Modified: Mon, 22 May 2017 19:37:45 GMT  
		Size: 79.8 MB (79760913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b3bdf93a617c661c01ae306323623c49e18e3c029814aebf7fa4bf5bd637cd`  
		Last Modified: Mon, 22 May 2017 19:37:33 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
