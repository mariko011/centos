<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.18`](#arangodb3118)
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
$ docker pull arangodb@sha256:8dea73149ad0952e053bd9555c10dc0785f76378954fcb92f98fe545d696026e
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.1 MB (139050032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad51fa3c15867ffed3cbaef27d4121d415d37ae8a2eb35b37a8f769c7f51b317`
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
# Mon, 24 Apr 2017 19:52:49 GMT
ENV ARANGO_VERSION=3.1.18
# Mon, 24 Apr 2017 19:52:50 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Mon, 24 Apr 2017 19:52:50 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.18-1_amd64.deb
# Mon, 24 Apr 2017 19:52:51 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.18-1_amd64.deb
# Mon, 24 Apr 2017 19:52:52 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.18-1_amd64.deb.asc
# Mon, 24 Apr 2017 19:52:54 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 24 Apr 2017 19:53:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:53:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Apr 2017 19:53:45 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 24 Apr 2017 19:53:46 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 24 Apr 2017 19:53:47 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Mon, 24 Apr 2017 19:53:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Apr 2017 19:53:49 GMT
EXPOSE 8529/tcp
# Mon, 24 Apr 2017 19:53:49 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e8efaab385d2940ca235f2d58b20aa85713c39a8d722f9f5b0b8ddd823aad6`  
		Last Modified: Tue, 25 Apr 2017 16:43:56 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14c6edb2e1cccd5bd36fff8780bc2aa7f7c9aca844d203095c6fafae929cbe2`  
		Last Modified: Tue, 25 Apr 2017 16:43:56 GMT  
		Size: 6.9 MB (6900222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214eddfd114d3ce97180f89ed87fbf292be813df932ca09ffe4bcade62e1cc5b`  
		Last Modified: Tue, 25 Apr 2017 16:43:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49ff96515f8867fb9f1c56fa9a902d62e57b629878c40e26e43bf70a0c853f8`  
		Last Modified: Tue, 25 Apr 2017 16:44:13 GMT  
		Size: 79.6 MB (79590578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481b2aef07b292411b13a6c86a9ab0907422682663e5ead3b6cd4116da631d56`  
		Last Modified: Tue, 25 Apr 2017 16:43:55 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.18`

```console
$ docker pull arangodb@sha256:8dea73149ad0952e053bd9555c10dc0785f76378954fcb92f98fe545d696026e
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1.18` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.1 MB (139050032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad51fa3c15867ffed3cbaef27d4121d415d37ae8a2eb35b37a8f769c7f51b317`
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
# Mon, 24 Apr 2017 19:52:49 GMT
ENV ARANGO_VERSION=3.1.18
# Mon, 24 Apr 2017 19:52:50 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Mon, 24 Apr 2017 19:52:50 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.18-1_amd64.deb
# Mon, 24 Apr 2017 19:52:51 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.18-1_amd64.deb
# Mon, 24 Apr 2017 19:52:52 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.18-1_amd64.deb.asc
# Mon, 24 Apr 2017 19:52:54 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 24 Apr 2017 19:53:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:53:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Apr 2017 19:53:45 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 24 Apr 2017 19:53:46 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 24 Apr 2017 19:53:47 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Mon, 24 Apr 2017 19:53:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Apr 2017 19:53:49 GMT
EXPOSE 8529/tcp
# Mon, 24 Apr 2017 19:53:49 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e8efaab385d2940ca235f2d58b20aa85713c39a8d722f9f5b0b8ddd823aad6`  
		Last Modified: Tue, 25 Apr 2017 16:43:56 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14c6edb2e1cccd5bd36fff8780bc2aa7f7c9aca844d203095c6fafae929cbe2`  
		Last Modified: Tue, 25 Apr 2017 16:43:56 GMT  
		Size: 6.9 MB (6900222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214eddfd114d3ce97180f89ed87fbf292be813df932ca09ffe4bcade62e1cc5b`  
		Last Modified: Tue, 25 Apr 2017 16:43:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49ff96515f8867fb9f1c56fa9a902d62e57b629878c40e26e43bf70a0c853f8`  
		Last Modified: Tue, 25 Apr 2017 16:44:13 GMT  
		Size: 79.6 MB (79590578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481b2aef07b292411b13a6c86a9ab0907422682663e5ead3b6cd4116da631d56`  
		Last Modified: Tue, 25 Apr 2017 16:43:55 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:8dea73149ad0952e053bd9555c10dc0785f76378954fcb92f98fe545d696026e
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.1 MB (139050032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad51fa3c15867ffed3cbaef27d4121d415d37ae8a2eb35b37a8f769c7f51b317`
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
# Mon, 24 Apr 2017 19:52:49 GMT
ENV ARANGO_VERSION=3.1.18
# Mon, 24 Apr 2017 19:52:50 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Mon, 24 Apr 2017 19:52:50 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.18-1_amd64.deb
# Mon, 24 Apr 2017 19:52:51 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.18-1_amd64.deb
# Mon, 24 Apr 2017 19:52:52 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.18-1_amd64.deb.asc
# Mon, 24 Apr 2017 19:52:54 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 24 Apr 2017 19:53:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:53:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Apr 2017 19:53:45 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 24 Apr 2017 19:53:46 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 24 Apr 2017 19:53:47 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Mon, 24 Apr 2017 19:53:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Apr 2017 19:53:49 GMT
EXPOSE 8529/tcp
# Mon, 24 Apr 2017 19:53:49 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e8efaab385d2940ca235f2d58b20aa85713c39a8d722f9f5b0b8ddd823aad6`  
		Last Modified: Tue, 25 Apr 2017 16:43:56 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14c6edb2e1cccd5bd36fff8780bc2aa7f7c9aca844d203095c6fafae929cbe2`  
		Last Modified: Tue, 25 Apr 2017 16:43:56 GMT  
		Size: 6.9 MB (6900222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214eddfd114d3ce97180f89ed87fbf292be813df932ca09ffe4bcade62e1cc5b`  
		Last Modified: Tue, 25 Apr 2017 16:43:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49ff96515f8867fb9f1c56fa9a902d62e57b629878c40e26e43bf70a0c853f8`  
		Last Modified: Tue, 25 Apr 2017 16:44:13 GMT  
		Size: 79.6 MB (79590578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481b2aef07b292411b13a6c86a9ab0907422682663e5ead3b6cd4116da631d56`  
		Last Modified: Tue, 25 Apr 2017 16:43:55 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
