<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.6`](#arangodb326)
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
$ docker pull arangodb@sha256:f3c67b486b1e20c965a12d3806d2022c1e0031d62d2e4e683c1d6fc3e9eb678b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:60ba693f86e678a351c75200dd96b3db748c4af8fe8b8ec78bd6fb09a69b67c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111840097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87383a9f095da2d91d3294687855359498168d0ee0c148f1395256126f7faef`
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
# Fri, 27 Oct 2017 17:30:05 GMT
ENV ARANGO_VERSION=3.2.6
# Fri, 27 Oct 2017 17:30:05 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 27 Oct 2017 17:30:06 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.6-1_amd64.deb
# Fri, 27 Oct 2017 17:30:06 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb
# Fri, 27 Oct 2017 17:30:06 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb.asc
# Fri, 27 Oct 2017 17:30:19 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 27 Oct 2017 17:30:24 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 27 Oct 2017 17:30:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 27 Oct 2017 17:30:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Oct 2017 17:31:05 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 27 Oct 2017 17:31:05 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 27 Oct 2017 17:31:06 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Fri, 27 Oct 2017 17:31:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 27 Oct 2017 17:31:07 GMT
EXPOSE 8529/tcp
# Fri, 27 Oct 2017 17:31:07 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16441603196d12d6210c3aa4942270304ce047f6be5f2377b6d8f91a7b219c98`  
		Last Modified: Fri, 27 Oct 2017 17:31:35 GMT  
		Size: 6.9 MB (6920851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b22c5a2e804964a89a54f0c6342f8eadd1c4364024b398e73d061369f53ba4`  
		Last Modified: Fri, 27 Oct 2017 17:31:32 GMT  
		Size: 3.5 KB (3465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fce59418fe51e1fd810016b624f913458630ecf0958a6dfd8d326ef91edf4fc`  
		Last Modified: Fri, 27 Oct 2017 17:31:34 GMT  
		Size: 7.4 MB (7351272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7dd349b7c584f84cafb0f0d853b679db5c7333029bc4adc732f0f58ae3eb148`  
		Last Modified: Fri, 27 Oct 2017 17:31:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0b3b63987e77be44fa52bb37ff7e3c783c555cad374bd1f55f7e14d9dcf643`  
		Last Modified: Fri, 27 Oct 2017 17:31:41 GMT  
		Size: 52.4 MB (52433476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d598077bce932d3d8cc8a25d1eb9ebecc3fb4dd47678fefdcdfd8590481524bf`  
		Last Modified: Fri, 27 Oct 2017 17:31:33 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.6`

```console
$ docker pull arangodb@sha256:f3c67b486b1e20c965a12d3806d2022c1e0031d62d2e4e683c1d6fc3e9eb678b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.6` - linux; amd64

```console
$ docker pull arangodb@sha256:60ba693f86e678a351c75200dd96b3db748c4af8fe8b8ec78bd6fb09a69b67c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111840097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87383a9f095da2d91d3294687855359498168d0ee0c148f1395256126f7faef`
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
# Fri, 27 Oct 2017 17:30:05 GMT
ENV ARANGO_VERSION=3.2.6
# Fri, 27 Oct 2017 17:30:05 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 27 Oct 2017 17:30:06 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.6-1_amd64.deb
# Fri, 27 Oct 2017 17:30:06 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb
# Fri, 27 Oct 2017 17:30:06 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb.asc
# Fri, 27 Oct 2017 17:30:19 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 27 Oct 2017 17:30:24 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 27 Oct 2017 17:30:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 27 Oct 2017 17:30:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Oct 2017 17:31:05 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 27 Oct 2017 17:31:05 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 27 Oct 2017 17:31:06 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Fri, 27 Oct 2017 17:31:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 27 Oct 2017 17:31:07 GMT
EXPOSE 8529/tcp
# Fri, 27 Oct 2017 17:31:07 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16441603196d12d6210c3aa4942270304ce047f6be5f2377b6d8f91a7b219c98`  
		Last Modified: Fri, 27 Oct 2017 17:31:35 GMT  
		Size: 6.9 MB (6920851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b22c5a2e804964a89a54f0c6342f8eadd1c4364024b398e73d061369f53ba4`  
		Last Modified: Fri, 27 Oct 2017 17:31:32 GMT  
		Size: 3.5 KB (3465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fce59418fe51e1fd810016b624f913458630ecf0958a6dfd8d326ef91edf4fc`  
		Last Modified: Fri, 27 Oct 2017 17:31:34 GMT  
		Size: 7.4 MB (7351272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7dd349b7c584f84cafb0f0d853b679db5c7333029bc4adc732f0f58ae3eb148`  
		Last Modified: Fri, 27 Oct 2017 17:31:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0b3b63987e77be44fa52bb37ff7e3c783c555cad374bd1f55f7e14d9dcf643`  
		Last Modified: Fri, 27 Oct 2017 17:31:41 GMT  
		Size: 52.4 MB (52433476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d598077bce932d3d8cc8a25d1eb9ebecc3fb4dd47678fefdcdfd8590481524bf`  
		Last Modified: Fri, 27 Oct 2017 17:31:33 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:f3c67b486b1e20c965a12d3806d2022c1e0031d62d2e4e683c1d6fc3e9eb678b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:60ba693f86e678a351c75200dd96b3db748c4af8fe8b8ec78bd6fb09a69b67c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111840097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87383a9f095da2d91d3294687855359498168d0ee0c148f1395256126f7faef`
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
# Fri, 27 Oct 2017 17:30:05 GMT
ENV ARANGO_VERSION=3.2.6
# Fri, 27 Oct 2017 17:30:05 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 27 Oct 2017 17:30:06 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.6-1_amd64.deb
# Fri, 27 Oct 2017 17:30:06 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb
# Fri, 27 Oct 2017 17:30:06 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb.asc
# Fri, 27 Oct 2017 17:30:19 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 27 Oct 2017 17:30:24 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 27 Oct 2017 17:30:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 27 Oct 2017 17:30:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Oct 2017 17:31:05 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 27 Oct 2017 17:31:05 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 27 Oct 2017 17:31:06 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Fri, 27 Oct 2017 17:31:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 27 Oct 2017 17:31:07 GMT
EXPOSE 8529/tcp
# Fri, 27 Oct 2017 17:31:07 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16441603196d12d6210c3aa4942270304ce047f6be5f2377b6d8f91a7b219c98`  
		Last Modified: Fri, 27 Oct 2017 17:31:35 GMT  
		Size: 6.9 MB (6920851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b22c5a2e804964a89a54f0c6342f8eadd1c4364024b398e73d061369f53ba4`  
		Last Modified: Fri, 27 Oct 2017 17:31:32 GMT  
		Size: 3.5 KB (3465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fce59418fe51e1fd810016b624f913458630ecf0958a6dfd8d326ef91edf4fc`  
		Last Modified: Fri, 27 Oct 2017 17:31:34 GMT  
		Size: 7.4 MB (7351272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7dd349b7c584f84cafb0f0d853b679db5c7333029bc4adc732f0f58ae3eb148`  
		Last Modified: Fri, 27 Oct 2017 17:31:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0b3b63987e77be44fa52bb37ff7e3c783c555cad374bd1f55f7e14d9dcf643`  
		Last Modified: Fri, 27 Oct 2017 17:31:41 GMT  
		Size: 52.4 MB (52433476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d598077bce932d3d8cc8a25d1eb9ebecc3fb4dd47678fefdcdfd8590481524bf`  
		Last Modified: Fri, 27 Oct 2017 17:31:33 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
