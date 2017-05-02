<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.19`](#arangodb3119)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:7067c3c556668929250fb1de16b32841a1852061eda1b2ec6d448e4a648643e5
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113267318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622e5d45d4c10497ccc746f3ceda533ac1f68ed8d219e074d881194d2dc0683d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:47:02 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 24 Apr 2017 19:47:04 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 24 Apr 2017 19:47:05 GMT
ENV ARCHITECTURE=amd64
# Mon, 24 Apr 2017 19:47:06 GMT
ENV ARANGO_VERSION=2.8.11
# Mon, 24 Apr 2017 19:47:07 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Mon, 24 Apr 2017 19:47:07 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Mon, 24 Apr 2017 19:47:08 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Mon, 24 Apr 2017 19:47:08 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Mon, 24 Apr 2017 19:47:41 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 24 Apr 2017 19:47:43 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Mon, 24 Apr 2017 19:47:44 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Mon, 24 Apr 2017 19:47:46 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Mon, 24 Apr 2017 19:47:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Apr 2017 19:47:48 GMT
EXPOSE 8529/tcp
# Mon, 24 Apr 2017 19:47:49 GMT
USER [arangodb]
# Mon, 24 Apr 2017 19:47:50 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabe6b5008c1c755fb387bc04ff93f84839131b7e5505f444153d925a1b859d9`  
		Last Modified: Tue, 25 Apr 2017 16:43:00 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33aa2fb8611a2ec8b6029528c1ef0a4af8f4de7fcc793e9896430340e67192d4`  
		Last Modified: Tue, 25 Apr 2017 16:43:11 GMT  
		Size: 60.7 MB (60708379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b81501a4ff3481c2c35c80cc4046180d9706c0eebb55cd9443fe900c908a0b`  
		Last Modified: Tue, 25 Apr 2017 16:42:59 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e21fca2584b8a09aefc92a2836ddf6ff8f45b0fe811897d44067da5fb0fae9`  
		Last Modified: Tue, 25 Apr 2017 16:42:59 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:7067c3c556668929250fb1de16b32841a1852061eda1b2ec6d448e4a648643e5
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113267318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622e5d45d4c10497ccc746f3ceda533ac1f68ed8d219e074d881194d2dc0683d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:47:02 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 24 Apr 2017 19:47:04 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 24 Apr 2017 19:47:05 GMT
ENV ARCHITECTURE=amd64
# Mon, 24 Apr 2017 19:47:06 GMT
ENV ARANGO_VERSION=2.8.11
# Mon, 24 Apr 2017 19:47:07 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Mon, 24 Apr 2017 19:47:07 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Mon, 24 Apr 2017 19:47:08 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Mon, 24 Apr 2017 19:47:08 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Mon, 24 Apr 2017 19:47:41 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 24 Apr 2017 19:47:43 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Mon, 24 Apr 2017 19:47:44 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Mon, 24 Apr 2017 19:47:46 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Mon, 24 Apr 2017 19:47:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Apr 2017 19:47:48 GMT
EXPOSE 8529/tcp
# Mon, 24 Apr 2017 19:47:49 GMT
USER [arangodb]
# Mon, 24 Apr 2017 19:47:50 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabe6b5008c1c755fb387bc04ff93f84839131b7e5505f444153d925a1b859d9`  
		Last Modified: Tue, 25 Apr 2017 16:43:00 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33aa2fb8611a2ec8b6029528c1ef0a4af8f4de7fcc793e9896430340e67192d4`  
		Last Modified: Tue, 25 Apr 2017 16:43:11 GMT  
		Size: 60.7 MB (60708379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b81501a4ff3481c2c35c80cc4046180d9706c0eebb55cd9443fe900c908a0b`  
		Last Modified: Tue, 25 Apr 2017 16:42:59 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e21fca2584b8a09aefc92a2836ddf6ff8f45b0fe811897d44067da5fb0fae9`  
		Last Modified: Tue, 25 Apr 2017 16:42:59 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1`

```console
$ docker pull arangodb@sha256:a38341752f84630d1f3060c48774afec1dda83ca036c32e053e83d21610c3ab9
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139047770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74def62ebc95024cfde9197471bd52971f112a9c5db9a76d008a352ac75741db`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:47:02 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 24 Apr 2017 19:52:47 GMT
ENV ARCHITECTURE=amd64
# Mon, 24 Apr 2017 19:52:48 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 02 May 2017 17:54:18 GMT
ENV ARANGO_VERSION=3.1.19
# Tue, 02 May 2017 17:54:19 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 02 May 2017 17:54:20 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.19-1_amd64.deb
# Tue, 02 May 2017 17:54:21 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.19-1_amd64.deb
# Tue, 02 May 2017 17:54:21 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.19-1_amd64.deb.asc
# Tue, 02 May 2017 17:54:24 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 02 May 2017 17:54:42 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 17:54:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 May 2017 17:55:29 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 02 May 2017 17:55:30 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 02 May 2017 17:55:32 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Tue, 02 May 2017 17:55:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 May 2017 17:55:34 GMT
EXPOSE 8529/tcp
# Tue, 02 May 2017 17:55:35 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9900a2cbcb851760b05822a1ea09a227556c3f5d00f67895aab740225828b5`  
		Last Modified: Tue, 02 May 2017 18:14:02 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f8bd59133b13443d685e9d2419ac6b058882fd3132f195683edee29561222e`  
		Last Modified: Tue, 02 May 2017 18:14:03 GMT  
		Size: 6.9 MB (6900220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24163fdf27d1cc90621d6ebdb2a88121b99813bccd05487fca4a41f7e15b218d`  
		Last Modified: Tue, 02 May 2017 18:14:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1d9ba60f3d785bf9d23168b3af19cf99ac06f5731c68889b77bdfcfd4b8ff8`  
		Last Modified: Tue, 02 May 2017 18:14:13 GMT  
		Size: 79.6 MB (79588319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b44ab0620f6d7cb0925fa9cad7ba23be4b765e64a732ae23c08da88feb1e41`  
		Last Modified: Tue, 02 May 2017 18:14:02 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.19`

```console
$ docker pull arangodb@sha256:a38341752f84630d1f3060c48774afec1dda83ca036c32e053e83d21610c3ab9
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1.19` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139047770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74def62ebc95024cfde9197471bd52971f112a9c5db9a76d008a352ac75741db`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:47:02 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 24 Apr 2017 19:52:47 GMT
ENV ARCHITECTURE=amd64
# Mon, 24 Apr 2017 19:52:48 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 02 May 2017 17:54:18 GMT
ENV ARANGO_VERSION=3.1.19
# Tue, 02 May 2017 17:54:19 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 02 May 2017 17:54:20 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.19-1_amd64.deb
# Tue, 02 May 2017 17:54:21 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.19-1_amd64.deb
# Tue, 02 May 2017 17:54:21 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.19-1_amd64.deb.asc
# Tue, 02 May 2017 17:54:24 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 02 May 2017 17:54:42 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 17:54:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 May 2017 17:55:29 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 02 May 2017 17:55:30 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 02 May 2017 17:55:32 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Tue, 02 May 2017 17:55:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 May 2017 17:55:34 GMT
EXPOSE 8529/tcp
# Tue, 02 May 2017 17:55:35 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9900a2cbcb851760b05822a1ea09a227556c3f5d00f67895aab740225828b5`  
		Last Modified: Tue, 02 May 2017 18:14:02 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f8bd59133b13443d685e9d2419ac6b058882fd3132f195683edee29561222e`  
		Last Modified: Tue, 02 May 2017 18:14:03 GMT  
		Size: 6.9 MB (6900220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24163fdf27d1cc90621d6ebdb2a88121b99813bccd05487fca4a41f7e15b218d`  
		Last Modified: Tue, 02 May 2017 18:14:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1d9ba60f3d785bf9d23168b3af19cf99ac06f5731c68889b77bdfcfd4b8ff8`  
		Last Modified: Tue, 02 May 2017 18:14:13 GMT  
		Size: 79.6 MB (79588319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b44ab0620f6d7cb0925fa9cad7ba23be4b765e64a732ae23c08da88feb1e41`  
		Last Modified: Tue, 02 May 2017 18:14:02 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:a38341752f84630d1f3060c48774afec1dda83ca036c32e053e83d21610c3ab9
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139047770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74def62ebc95024cfde9197471bd52971f112a9c5db9a76d008a352ac75741db`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:47:02 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 24 Apr 2017 19:52:47 GMT
ENV ARCHITECTURE=amd64
# Mon, 24 Apr 2017 19:52:48 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 02 May 2017 17:54:18 GMT
ENV ARANGO_VERSION=3.1.19
# Tue, 02 May 2017 17:54:19 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 02 May 2017 17:54:20 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.19-1_amd64.deb
# Tue, 02 May 2017 17:54:21 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.19-1_amd64.deb
# Tue, 02 May 2017 17:54:21 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.19-1_amd64.deb.asc
# Tue, 02 May 2017 17:54:24 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 02 May 2017 17:54:42 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 17:54:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 02 May 2017 17:55:29 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 02 May 2017 17:55:30 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 02 May 2017 17:55:32 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Tue, 02 May 2017 17:55:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 May 2017 17:55:34 GMT
EXPOSE 8529/tcp
# Tue, 02 May 2017 17:55:35 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9900a2cbcb851760b05822a1ea09a227556c3f5d00f67895aab740225828b5`  
		Last Modified: Tue, 02 May 2017 18:14:02 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f8bd59133b13443d685e9d2419ac6b058882fd3132f195683edee29561222e`  
		Last Modified: Tue, 02 May 2017 18:14:03 GMT  
		Size: 6.9 MB (6900220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24163fdf27d1cc90621d6ebdb2a88121b99813bccd05487fca4a41f7e15b218d`  
		Last Modified: Tue, 02 May 2017 18:14:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1d9ba60f3d785bf9d23168b3af19cf99ac06f5731c68889b77bdfcfd4b8ff8`  
		Last Modified: Tue, 02 May 2017 18:14:13 GMT  
		Size: 79.6 MB (79588319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b44ab0620f6d7cb0925fa9cad7ba23be4b765e64a732ae23c08da88feb1e41`  
		Last Modified: Tue, 02 May 2017 18:14:02 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
