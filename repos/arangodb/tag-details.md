<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.18`](#arangodb3118)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:17cf67234a2168b502e372ff50cad58815019c00fc2d17e345429dcd9747ed49
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110329817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eca336d6bb6a1edc68396955640387950ffce2643ff2e25aeef9a6da9a222a3c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:06:14 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 21 Mar 2017 20:06:16 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 21 Mar 2017 20:06:17 GMT
ENV ARCHITECTURE=amd64
# Tue, 21 Mar 2017 20:06:18 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 21 Mar 2017 20:06:18 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 21 Mar 2017 20:06:19 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 21 Mar 2017 20:06:20 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 21 Mar 2017 20:06:20 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 21 Mar 2017 20:07:02 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 21 Mar 2017 20:07:04 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 21 Mar 2017 20:07:05 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 21 Mar 2017 20:07:06 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 21 Mar 2017 20:07:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 20:07:08 GMT
EXPOSE 8529/tcp
# Tue, 21 Mar 2017 20:07:08 GMT
USER [arangodb]
# Tue, 21 Mar 2017 20:07:09 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a8c4a5ee51c8937b0f67690a5fcfe004947319831e056b656b94eca2fa54bc`  
		Last Modified: Thu, 23 Mar 2017 17:04:44 GMT  
		Size: 7.4 KB (7375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b5368df4dd868f3471e46bf093a1d4cc50cde817f30fc8dd447cae6a9225a6`  
		Last Modified: Thu, 23 Mar 2017 17:05:06 GMT  
		Size: 58.9 MB (58882704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6128a7adeea9e791a44310c30b958fdd65790d28a8077803ee240cc35c8ab1de`  
		Last Modified: Thu, 23 Mar 2017 17:04:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229a514e232b0b96473fed7d860d79ee91e90df7bf95c950100fe74eff2b121e`  
		Last Modified: Thu, 23 Mar 2017 17:04:44 GMT  
		Size: 1.1 KB (1098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:17cf67234a2168b502e372ff50cad58815019c00fc2d17e345429dcd9747ed49
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110329817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eca336d6bb6a1edc68396955640387950ffce2643ff2e25aeef9a6da9a222a3c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:06:14 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 21 Mar 2017 20:06:16 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 21 Mar 2017 20:06:17 GMT
ENV ARCHITECTURE=amd64
# Tue, 21 Mar 2017 20:06:18 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 21 Mar 2017 20:06:18 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 21 Mar 2017 20:06:19 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 21 Mar 2017 20:06:20 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 21 Mar 2017 20:06:20 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 21 Mar 2017 20:07:02 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 21 Mar 2017 20:07:04 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 21 Mar 2017 20:07:05 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 21 Mar 2017 20:07:06 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 21 Mar 2017 20:07:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 20:07:08 GMT
EXPOSE 8529/tcp
# Tue, 21 Mar 2017 20:07:08 GMT
USER [arangodb]
# Tue, 21 Mar 2017 20:07:09 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a8c4a5ee51c8937b0f67690a5fcfe004947319831e056b656b94eca2fa54bc`  
		Last Modified: Thu, 23 Mar 2017 17:04:44 GMT  
		Size: 7.4 KB (7375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b5368df4dd868f3471e46bf093a1d4cc50cde817f30fc8dd447cae6a9225a6`  
		Last Modified: Thu, 23 Mar 2017 17:05:06 GMT  
		Size: 58.9 MB (58882704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6128a7adeea9e791a44310c30b958fdd65790d28a8077803ee240cc35c8ab1de`  
		Last Modified: Thu, 23 Mar 2017 17:04:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229a514e232b0b96473fed7d860d79ee91e90df7bf95c950100fe74eff2b121e`  
		Last Modified: Thu, 23 Mar 2017 17:04:44 GMT  
		Size: 1.1 KB (1098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1`

```console
$ docker pull arangodb@sha256:2c9e98952e7cdcfc3abaa8f6e22b60994a1dd9fceb4d57223116959ecfb3e461
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127504727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7041b2cab21355242b870a1ac5a6565d56dd922e1fb4bb0099c1fddf55b2a7d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:06:14 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 21 Mar 2017 20:07:10 GMT
ENV ARCHITECTURE=amd64
# Tue, 21 Mar 2017 20:07:11 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 04 Apr 2017 19:37:59 GMT
ENV ARANGO_VERSION=3.1.17
# Tue, 04 Apr 2017 19:37:59 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 04 Apr 2017 19:37:59 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.17-1_amd64.deb
# Tue, 04 Apr 2017 19:38:00 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.17-1_amd64.deb
# Tue, 04 Apr 2017 19:38:00 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.17-1_amd64.deb.asc
# Tue, 04 Apr 2017 19:38:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 04 Apr 2017 19:38:13 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 04 Apr 2017 19:38:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 04 Apr 2017 19:38:40 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 04 Apr 2017 19:38:40 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 04 Apr 2017 19:38:41 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Tue, 04 Apr 2017 19:38:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Apr 2017 19:38:42 GMT
EXPOSE 8529/tcp
# Tue, 04 Apr 2017 19:38:43 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7f2fa1dd292874c61abd29a1b5c4d383a380fcdb3555bb66ad38de28828330`  
		Last Modified: Tue, 04 Apr 2017 19:39:44 GMT  
		Size: 7.4 KB (7369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb31c57713a4f4eeb070813f9f87564a4f023bc60519e3c9f3db8a6587debf9`  
		Last Modified: Tue, 04 Apr 2017 19:39:46 GMT  
		Size: 6.8 MB (6763609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71392c20f402fab49fe2d6ed50d4398e1242d69aa4167bf34b22b3acd055983`  
		Last Modified: Tue, 04 Apr 2017 19:39:43 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f70a5a22c28060813d9a3840a0a9d7430e5dc2593b5522627f4ab6fd575473d`  
		Last Modified: Tue, 04 Apr 2017 19:40:08 GMT  
		Size: 69.3 MB (69293727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35cc72ef6f6de87a47f2b489c20c422416c70e9fd9476430b411fb3ef01696b`  
		Last Modified: Tue, 04 Apr 2017 19:39:44 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.18`

**does not exist** (yet?)

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:2c9e98952e7cdcfc3abaa8f6e22b60994a1dd9fceb4d57223116959ecfb3e461
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127504727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7041b2cab21355242b870a1ac5a6565d56dd922e1fb4bb0099c1fddf55b2a7d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:06:14 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 21 Mar 2017 20:07:10 GMT
ENV ARCHITECTURE=amd64
# Tue, 21 Mar 2017 20:07:11 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 04 Apr 2017 19:37:59 GMT
ENV ARANGO_VERSION=3.1.17
# Tue, 04 Apr 2017 19:37:59 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 04 Apr 2017 19:37:59 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.17-1_amd64.deb
# Tue, 04 Apr 2017 19:38:00 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.17-1_amd64.deb
# Tue, 04 Apr 2017 19:38:00 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.17-1_amd64.deb.asc
# Tue, 04 Apr 2017 19:38:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 04 Apr 2017 19:38:13 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 04 Apr 2017 19:38:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 04 Apr 2017 19:38:40 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 04 Apr 2017 19:38:40 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 04 Apr 2017 19:38:41 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Tue, 04 Apr 2017 19:38:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Apr 2017 19:38:42 GMT
EXPOSE 8529/tcp
# Tue, 04 Apr 2017 19:38:43 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7f2fa1dd292874c61abd29a1b5c4d383a380fcdb3555bb66ad38de28828330`  
		Last Modified: Tue, 04 Apr 2017 19:39:44 GMT  
		Size: 7.4 KB (7369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb31c57713a4f4eeb070813f9f87564a4f023bc60519e3c9f3db8a6587debf9`  
		Last Modified: Tue, 04 Apr 2017 19:39:46 GMT  
		Size: 6.8 MB (6763609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71392c20f402fab49fe2d6ed50d4398e1242d69aa4167bf34b22b3acd055983`  
		Last Modified: Tue, 04 Apr 2017 19:39:43 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f70a5a22c28060813d9a3840a0a9d7430e5dc2593b5522627f4ab6fd575473d`  
		Last Modified: Tue, 04 Apr 2017 19:40:08 GMT  
		Size: 69.3 MB (69293727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35cc72ef6f6de87a47f2b489c20c422416c70e9fd9476430b411fb3ef01696b`  
		Last Modified: Tue, 04 Apr 2017 19:39:44 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
