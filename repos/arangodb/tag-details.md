<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.4`](#arangodb324)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:ed5913a803df9b79ddb98443a0045d30d92df9628c5695244da1bf3d02d06a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:454fb4d8a6aa68bb72c12241e8bf019756d797b5c2e9aa45b538f50d86a83e65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113331556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdd002ca58f4b829fb0a08a0c35ee33f1c9deda21dcf0911168ec84373e67169`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:12:17 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 09 Oct 2017 22:12:18 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 09 Oct 2017 22:12:19 GMT
ENV ARCHITECTURE=amd64
# Mon, 09 Oct 2017 22:12:19 GMT
ENV ARANGO_VERSION=2.8.11
# Mon, 09 Oct 2017 22:12:19 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Mon, 09 Oct 2017 22:12:19 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Mon, 09 Oct 2017 22:12:19 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Mon, 09 Oct 2017 22:12:20 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Mon, 09 Oct 2017 22:12:56 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 09 Oct 2017 22:12:57 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Mon, 09 Oct 2017 22:12:57 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Mon, 09 Oct 2017 22:12:57 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Mon, 09 Oct 2017 22:12:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 22:12:58 GMT
EXPOSE 8529/tcp
# Mon, 09 Oct 2017 22:12:58 GMT
USER [arangodb]
# Mon, 09 Oct 2017 22:12:59 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14388ed04c9565593c05ae61ac1d238f59b2c9d9c73baca1f82a65b5f179e7ea`  
		Last Modified: Mon, 09 Oct 2017 22:14:45 GMT  
		Size: 7.4 KB (7416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b728bcf85cf5a6933293d3e236fbcd6ef8290ccebcac3e9c00b7142b533e2768`  
		Last Modified: Mon, 09 Oct 2017 22:14:56 GMT  
		Size: 60.7 MB (60727759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb63c512b0340b432bf7d7af970a0ed4adfa86d8a30c3af18fcd122a7ebdee45`  
		Last Modified: Mon, 09 Oct 2017 22:14:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1b118902cb8f1986d9a94d88107fdcba341ac0a12dc89fc5ac043ee7bd10cf`  
		Last Modified: Mon, 09 Oct 2017 22:14:46 GMT  
		Size: 1.1 KB (1090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:ed5913a803df9b79ddb98443a0045d30d92df9628c5695244da1bf3d02d06a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:454fb4d8a6aa68bb72c12241e8bf019756d797b5c2e9aa45b538f50d86a83e65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113331556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdd002ca58f4b829fb0a08a0c35ee33f1c9deda21dcf0911168ec84373e67169`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:12:17 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 09 Oct 2017 22:12:18 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 09 Oct 2017 22:12:19 GMT
ENV ARCHITECTURE=amd64
# Mon, 09 Oct 2017 22:12:19 GMT
ENV ARANGO_VERSION=2.8.11
# Mon, 09 Oct 2017 22:12:19 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Mon, 09 Oct 2017 22:12:19 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Mon, 09 Oct 2017 22:12:19 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Mon, 09 Oct 2017 22:12:20 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Mon, 09 Oct 2017 22:12:56 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 09 Oct 2017 22:12:57 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Mon, 09 Oct 2017 22:12:57 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Mon, 09 Oct 2017 22:12:57 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Mon, 09 Oct 2017 22:12:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 22:12:58 GMT
EXPOSE 8529/tcp
# Mon, 09 Oct 2017 22:12:58 GMT
USER [arangodb]
# Mon, 09 Oct 2017 22:12:59 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14388ed04c9565593c05ae61ac1d238f59b2c9d9c73baca1f82a65b5f179e7ea`  
		Last Modified: Mon, 09 Oct 2017 22:14:45 GMT  
		Size: 7.4 KB (7416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b728bcf85cf5a6933293d3e236fbcd6ef8290ccebcac3e9c00b7142b533e2768`  
		Last Modified: Mon, 09 Oct 2017 22:14:56 GMT  
		Size: 60.7 MB (60727759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb63c512b0340b432bf7d7af970a0ed4adfa86d8a30c3af18fcd122a7ebdee45`  
		Last Modified: Mon, 09 Oct 2017 22:14:46 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1b118902cb8f1986d9a94d88107fdcba341ac0a12dc89fc5ac043ee7bd10cf`  
		Last Modified: Mon, 09 Oct 2017 22:14:46 GMT  
		Size: 1.1 KB (1090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:7271bbaaa5545ff9eedc090957d70f530a4028085b3c646e49e1827b7773d8df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:d53cfce9863860b5464b7615c67e51e17eb42d4ae959ea51c6c70b203f06efe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111821165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea8215731e12bf275ec8f875cd6b68a603d26b69ce589d0f848d55634e18d9c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:09 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 09 Oct 2017 22:13:09 GMT
ENV ARCHITECTURE=amd64
# Mon, 09 Oct 2017 22:13:10 GMT
ENV DEB_PACKAGE_VERSION=1
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_VERSION=3.2.4
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.4-1_amd64.deb
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.4-1_amd64.deb
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.4-1_amd64.deb.asc
# Mon, 09 Oct 2017 22:13:17 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:13:53 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 09 Oct 2017 22:14:00 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:14:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:14:15 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 09 Oct 2017 22:14:16 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 09 Oct 2017 22:14:16 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Mon, 09 Oct 2017 22:14:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 22:14:17 GMT
EXPOSE 8529/tcp
# Mon, 09 Oct 2017 22:14:17 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b745dea55defc7408d71baa6e99a4f942ec5a3737f07af8b26a67b73d528c68`  
		Last Modified: Mon, 09 Oct 2017 22:15:17 GMT  
		Size: 6.9 MB (6920834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea92e7829143ba41bccd445b8783d64cc620b37100eec305b6b6252ade46b309`  
		Last Modified: Mon, 09 Oct 2017 22:15:13 GMT  
		Size: 3.5 KB (3470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed81c79b1735abec80c4d8b897384d5d752d334d35e1d20d1435356bfce6349`  
		Last Modified: Mon, 09 Oct 2017 22:15:15 GMT  
		Size: 7.4 MB (7351249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c406cef4be728d31d9eb21aa2cc3d27a26b2eb6edd2411cd6f2343efe15d6bd2`  
		Last Modified: Mon, 09 Oct 2017 22:15:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fdb641b8c31607cc4091943167aaf6a038fca5d94973aaedcc559a6d59ee0e`  
		Last Modified: Mon, 09 Oct 2017 22:15:23 GMT  
		Size: 52.4 MB (52414580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f553d7123c512f143e03aedbfdec1502e1a6aa33ceff3659c7b56f18cf8015`  
		Last Modified: Mon, 09 Oct 2017 22:15:13 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.4`

```console
$ docker pull arangodb@sha256:7271bbaaa5545ff9eedc090957d70f530a4028085b3c646e49e1827b7773d8df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.4` - linux; amd64

```console
$ docker pull arangodb@sha256:d53cfce9863860b5464b7615c67e51e17eb42d4ae959ea51c6c70b203f06efe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111821165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea8215731e12bf275ec8f875cd6b68a603d26b69ce589d0f848d55634e18d9c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:09 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 09 Oct 2017 22:13:09 GMT
ENV ARCHITECTURE=amd64
# Mon, 09 Oct 2017 22:13:10 GMT
ENV DEB_PACKAGE_VERSION=1
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_VERSION=3.2.4
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.4-1_amd64.deb
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.4-1_amd64.deb
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.4-1_amd64.deb.asc
# Mon, 09 Oct 2017 22:13:17 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:13:53 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 09 Oct 2017 22:14:00 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:14:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:14:15 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 09 Oct 2017 22:14:16 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 09 Oct 2017 22:14:16 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Mon, 09 Oct 2017 22:14:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 22:14:17 GMT
EXPOSE 8529/tcp
# Mon, 09 Oct 2017 22:14:17 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b745dea55defc7408d71baa6e99a4f942ec5a3737f07af8b26a67b73d528c68`  
		Last Modified: Mon, 09 Oct 2017 22:15:17 GMT  
		Size: 6.9 MB (6920834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea92e7829143ba41bccd445b8783d64cc620b37100eec305b6b6252ade46b309`  
		Last Modified: Mon, 09 Oct 2017 22:15:13 GMT  
		Size: 3.5 KB (3470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed81c79b1735abec80c4d8b897384d5d752d334d35e1d20d1435356bfce6349`  
		Last Modified: Mon, 09 Oct 2017 22:15:15 GMT  
		Size: 7.4 MB (7351249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c406cef4be728d31d9eb21aa2cc3d27a26b2eb6edd2411cd6f2343efe15d6bd2`  
		Last Modified: Mon, 09 Oct 2017 22:15:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fdb641b8c31607cc4091943167aaf6a038fca5d94973aaedcc559a6d59ee0e`  
		Last Modified: Mon, 09 Oct 2017 22:15:23 GMT  
		Size: 52.4 MB (52414580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f553d7123c512f143e03aedbfdec1502e1a6aa33ceff3659c7b56f18cf8015`  
		Last Modified: Mon, 09 Oct 2017 22:15:13 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:7271bbaaa5545ff9eedc090957d70f530a4028085b3c646e49e1827b7773d8df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:d53cfce9863860b5464b7615c67e51e17eb42d4ae959ea51c6c70b203f06efe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111821165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea8215731e12bf275ec8f875cd6b68a603d26b69ce589d0f848d55634e18d9c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:09 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 09 Oct 2017 22:13:09 GMT
ENV ARCHITECTURE=amd64
# Mon, 09 Oct 2017 22:13:10 GMT
ENV DEB_PACKAGE_VERSION=1
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_VERSION=3.2.4
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.4-1_amd64.deb
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.4-1_amd64.deb
# Mon, 09 Oct 2017 22:13:10 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.4-1_amd64.deb.asc
# Mon, 09 Oct 2017 22:13:17 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:13:53 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 09 Oct 2017 22:14:00 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:14:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Oct 2017 22:14:15 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 09 Oct 2017 22:14:16 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 09 Oct 2017 22:14:16 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Mon, 09 Oct 2017 22:14:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Oct 2017 22:14:17 GMT
EXPOSE 8529/tcp
# Mon, 09 Oct 2017 22:14:17 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b745dea55defc7408d71baa6e99a4f942ec5a3737f07af8b26a67b73d528c68`  
		Last Modified: Mon, 09 Oct 2017 22:15:17 GMT  
		Size: 6.9 MB (6920834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea92e7829143ba41bccd445b8783d64cc620b37100eec305b6b6252ade46b309`  
		Last Modified: Mon, 09 Oct 2017 22:15:13 GMT  
		Size: 3.5 KB (3470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed81c79b1735abec80c4d8b897384d5d752d334d35e1d20d1435356bfce6349`  
		Last Modified: Mon, 09 Oct 2017 22:15:15 GMT  
		Size: 7.4 MB (7351249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c406cef4be728d31d9eb21aa2cc3d27a26b2eb6edd2411cd6f2343efe15d6bd2`  
		Last Modified: Mon, 09 Oct 2017 22:15:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fdb641b8c31607cc4091943167aaf6a038fca5d94973aaedcc559a6d59ee0e`  
		Last Modified: Mon, 09 Oct 2017 22:15:23 GMT  
		Size: 52.4 MB (52414580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f553d7123c512f143e03aedbfdec1502e1a6aa33ceff3659c7b56f18cf8015`  
		Last Modified: Mon, 09 Oct 2017 22:15:13 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
