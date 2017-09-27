<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.4`](#arangodb324)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:dae7faa5064417577758db1779bee2466da2055f4fd26234e9be83e99595992c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:43af6e2254d372a80d369b1a993e82a0398082beb654b1da057ebdde6c434d58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113331851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02527a25a2fe3e58bc182b7acd2de2bd1b7b476bf5108ebd9e000ba15b93249d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 15:21:18 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 13 Sep 2017 15:21:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARCHITECTURE=amd64
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 13 Sep 2017 15:21:21 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 13 Sep 2017 15:21:21 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 13 Sep 2017 15:21:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 13 Sep 2017 15:21:55 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 13 Sep 2017 15:21:56 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 13 Sep 2017 15:21:56 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Wed, 13 Sep 2017 15:21:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 15:21:56 GMT
EXPOSE 8529/tcp
# Wed, 13 Sep 2017 15:21:57 GMT
USER [arangodb]
# Wed, 13 Sep 2017 15:21:57 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750485fd0ea93feba6553e4bd947a5eea46118fe0cf86810f0df54ed5425897f`  
		Last Modified: Wed, 13 Sep 2017 15:23:00 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050ac39a6bf4714562ab73ddc8e9fc268f8a522c28ea0d3a681b0854a013a8c1`  
		Last Modified: Wed, 13 Sep 2017 15:23:10 GMT  
		Size: 60.7 MB (60727634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13210a0b86370ec845ae363398aa54427733250a613b5ef8c1371bd9d5e4470`  
		Last Modified: Wed, 13 Sep 2017 15:23:01 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04db48135b30bcdb07af5d8c54439cd97e5c814cd7a08eddcd8f1abbab37ab3e`  
		Last Modified: Wed, 13 Sep 2017 15:23:01 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:dae7faa5064417577758db1779bee2466da2055f4fd26234e9be83e99595992c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:43af6e2254d372a80d369b1a993e82a0398082beb654b1da057ebdde6c434d58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113331851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02527a25a2fe3e58bc182b7acd2de2bd1b7b476bf5108ebd9e000ba15b93249d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 15:21:18 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 13 Sep 2017 15:21:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARCHITECTURE=amd64
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 13 Sep 2017 15:21:21 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 13 Sep 2017 15:21:21 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 13 Sep 2017 15:21:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 13 Sep 2017 15:21:55 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 13 Sep 2017 15:21:56 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 13 Sep 2017 15:21:56 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Wed, 13 Sep 2017 15:21:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 15:21:56 GMT
EXPOSE 8529/tcp
# Wed, 13 Sep 2017 15:21:57 GMT
USER [arangodb]
# Wed, 13 Sep 2017 15:21:57 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750485fd0ea93feba6553e4bd947a5eea46118fe0cf86810f0df54ed5425897f`  
		Last Modified: Wed, 13 Sep 2017 15:23:00 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050ac39a6bf4714562ab73ddc8e9fc268f8a522c28ea0d3a681b0854a013a8c1`  
		Last Modified: Wed, 13 Sep 2017 15:23:10 GMT  
		Size: 60.7 MB (60727634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13210a0b86370ec845ae363398aa54427733250a613b5ef8c1371bd9d5e4470`  
		Last Modified: Wed, 13 Sep 2017 15:23:01 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04db48135b30bcdb07af5d8c54439cd97e5c814cd7a08eddcd8f1abbab37ab3e`  
		Last Modified: Wed, 13 Sep 2017 15:23:01 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:58a2ea00bf1b52a350327a4291100c4954d48980a62f34dadabf3962d7e33f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:3b8081500630c8d365300ed657c92c7416d73655e7265a2507eed79a3c69fd0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111819278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0aa67859aee22c2b4a02916356224886640566e8b79a2ef24d62446e616a71`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 15:21:58 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 13 Sep 2017 15:21:58 GMT
ENV ARCHITECTURE=amd64
# Wed, 13 Sep 2017 15:21:58 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_VERSION=3.2.4
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.4-1_amd64.deb
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.4-1_amd64.deb
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.4-1_amd64.deb.asc
# Wed, 27 Sep 2017 17:35:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 17:36:04 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 27 Sep 2017 17:36:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 17:36:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 17:36:30 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 27 Sep 2017 17:36:30 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 27 Sep 2017 17:36:30 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Wed, 27 Sep 2017 17:36:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Sep 2017 17:36:31 GMT
EXPOSE 8529/tcp
# Wed, 27 Sep 2017 17:36:31 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def61b938489d989e162df7bf6ab61d4ec0c98812c8be3560218fdd29d95c50d`  
		Last Modified: Wed, 27 Sep 2017 17:36:43 GMT  
		Size: 6.9 MB (6920733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7568d87d65c81fcb36c0f05a151df12bbadd483af2a7c4e35d5edfe6e49766d`  
		Last Modified: Wed, 27 Sep 2017 17:36:41 GMT  
		Size: 7.2 KB (7171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6555852e25e7cbacc5ef1266ff941fcc80aa3f24073e0f8e88cc13b899ab1e48`  
		Last Modified: Wed, 27 Sep 2017 17:36:42 GMT  
		Size: 7.3 MB (7349402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b3da1cafff7d39b3138ca4797f3794816e1176fceaf23a963f34a7fd589702`  
		Last Modified: Wed, 27 Sep 2017 17:36:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e0914b8c7fc097d37d9a6ff101a8d37ec5afae46841592fca2000be1ec72d2`  
		Last Modified: Wed, 27 Sep 2017 17:36:49 GMT  
		Size: 52.4 MB (52414531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38688b8a55cbe9cdf62c3dfdbe0e05a7272154e3d23031513787286fd36affd`  
		Last Modified: Wed, 27 Sep 2017 17:36:40 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.4`

```console
$ docker pull arangodb@sha256:58a2ea00bf1b52a350327a4291100c4954d48980a62f34dadabf3962d7e33f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.4` - linux; amd64

```console
$ docker pull arangodb@sha256:3b8081500630c8d365300ed657c92c7416d73655e7265a2507eed79a3c69fd0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111819278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0aa67859aee22c2b4a02916356224886640566e8b79a2ef24d62446e616a71`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 15:21:58 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 13 Sep 2017 15:21:58 GMT
ENV ARCHITECTURE=amd64
# Wed, 13 Sep 2017 15:21:58 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_VERSION=3.2.4
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.4-1_amd64.deb
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.4-1_amd64.deb
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.4-1_amd64.deb.asc
# Wed, 27 Sep 2017 17:35:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 17:36:04 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 27 Sep 2017 17:36:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 17:36:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 17:36:30 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 27 Sep 2017 17:36:30 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 27 Sep 2017 17:36:30 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Wed, 27 Sep 2017 17:36:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Sep 2017 17:36:31 GMT
EXPOSE 8529/tcp
# Wed, 27 Sep 2017 17:36:31 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def61b938489d989e162df7bf6ab61d4ec0c98812c8be3560218fdd29d95c50d`  
		Last Modified: Wed, 27 Sep 2017 17:36:43 GMT  
		Size: 6.9 MB (6920733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7568d87d65c81fcb36c0f05a151df12bbadd483af2a7c4e35d5edfe6e49766d`  
		Last Modified: Wed, 27 Sep 2017 17:36:41 GMT  
		Size: 7.2 KB (7171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6555852e25e7cbacc5ef1266ff941fcc80aa3f24073e0f8e88cc13b899ab1e48`  
		Last Modified: Wed, 27 Sep 2017 17:36:42 GMT  
		Size: 7.3 MB (7349402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b3da1cafff7d39b3138ca4797f3794816e1176fceaf23a963f34a7fd589702`  
		Last Modified: Wed, 27 Sep 2017 17:36:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e0914b8c7fc097d37d9a6ff101a8d37ec5afae46841592fca2000be1ec72d2`  
		Last Modified: Wed, 27 Sep 2017 17:36:49 GMT  
		Size: 52.4 MB (52414531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38688b8a55cbe9cdf62c3dfdbe0e05a7272154e3d23031513787286fd36affd`  
		Last Modified: Wed, 27 Sep 2017 17:36:40 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:58a2ea00bf1b52a350327a4291100c4954d48980a62f34dadabf3962d7e33f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:3b8081500630c8d365300ed657c92c7416d73655e7265a2507eed79a3c69fd0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111819278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0aa67859aee22c2b4a02916356224886640566e8b79a2ef24d62446e616a71`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 15:21:58 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 13 Sep 2017 15:21:58 GMT
ENV ARCHITECTURE=amd64
# Wed, 13 Sep 2017 15:21:58 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_VERSION=3.2.4
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.4-1_amd64.deb
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.4-1_amd64.deb
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.4-1_amd64.deb.asc
# Wed, 27 Sep 2017 17:35:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 17:36:04 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 27 Sep 2017 17:36:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 17:36:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 17:36:30 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 27 Sep 2017 17:36:30 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 27 Sep 2017 17:36:30 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Wed, 27 Sep 2017 17:36:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Sep 2017 17:36:31 GMT
EXPOSE 8529/tcp
# Wed, 27 Sep 2017 17:36:31 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def61b938489d989e162df7bf6ab61d4ec0c98812c8be3560218fdd29d95c50d`  
		Last Modified: Wed, 27 Sep 2017 17:36:43 GMT  
		Size: 6.9 MB (6920733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7568d87d65c81fcb36c0f05a151df12bbadd483af2a7c4e35d5edfe6e49766d`  
		Last Modified: Wed, 27 Sep 2017 17:36:41 GMT  
		Size: 7.2 KB (7171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6555852e25e7cbacc5ef1266ff941fcc80aa3f24073e0f8e88cc13b899ab1e48`  
		Last Modified: Wed, 27 Sep 2017 17:36:42 GMT  
		Size: 7.3 MB (7349402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b3da1cafff7d39b3138ca4797f3794816e1176fceaf23a963f34a7fd589702`  
		Last Modified: Wed, 27 Sep 2017 17:36:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e0914b8c7fc097d37d9a6ff101a8d37ec5afae46841592fca2000be1ec72d2`  
		Last Modified: Wed, 27 Sep 2017 17:36:49 GMT  
		Size: 52.4 MB (52414531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38688b8a55cbe9cdf62c3dfdbe0e05a7272154e3d23031513787286fd36affd`  
		Last Modified: Wed, 27 Sep 2017 17:36:40 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
