<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.23`](#arangodb3123)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:e414d1126ea55c3022becf00fad335133dd2c05faf5d5a12f53fd6590c1820b8
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113279846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d40e1282767bb08801f61e648853e9b18874a2cc3d7010379d17f6498cf4372`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 18:24:09 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 07 Jun 2017 18:24:12 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 07 Jun 2017 18:24:13 GMT
ENV ARCHITECTURE=amd64
# Wed, 07 Jun 2017 18:24:14 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 07 Jun 2017 18:24:15 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Wed, 07 Jun 2017 18:24:16 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 07 Jun 2017 18:24:17 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 07 Jun 2017 18:24:39 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 07 Jun 2017 18:25:24 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 07 Jun 2017 18:25:26 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 07 Jun 2017 18:25:27 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 07 Jun 2017 18:25:29 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Wed, 07 Jun 2017 18:25:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Jun 2017 18:25:32 GMT
EXPOSE 8529/tcp
# Wed, 07 Jun 2017 18:25:33 GMT
USER [arangodb]
# Wed, 07 Jun 2017 18:25:35 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b2a28833fe39d0779571bf8ac946ea244cc0d4a9a8cb69d9e6cee89f35dfdc`  
		Last Modified: Wed, 07 Jun 2017 18:28:22 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2ac95c65346b7256afef6a87b36d39b0a75a6fad3c74dd909ea76c54594bc3`  
		Last Modified: Wed, 07 Jun 2017 18:28:37 GMT  
		Size: 60.7 MB (60702906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4e56c1ae8b77749a69ffa7579831dc7819542a1ac6458b666243794e7ce372`  
		Last Modified: Wed, 07 Jun 2017 18:28:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b9e80259232229404f615df39a639640f12881e0440de59e5e91cd6d34faa2`  
		Last Modified: Wed, 07 Jun 2017 18:28:22 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:e414d1126ea55c3022becf00fad335133dd2c05faf5d5a12f53fd6590c1820b8
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113279846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d40e1282767bb08801f61e648853e9b18874a2cc3d7010379d17f6498cf4372`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 18:24:09 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 07 Jun 2017 18:24:12 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 07 Jun 2017 18:24:13 GMT
ENV ARCHITECTURE=amd64
# Wed, 07 Jun 2017 18:24:14 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 07 Jun 2017 18:24:15 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Wed, 07 Jun 2017 18:24:16 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 07 Jun 2017 18:24:17 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 07 Jun 2017 18:24:39 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 07 Jun 2017 18:25:24 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 07 Jun 2017 18:25:26 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 07 Jun 2017 18:25:27 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 07 Jun 2017 18:25:29 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Wed, 07 Jun 2017 18:25:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Jun 2017 18:25:32 GMT
EXPOSE 8529/tcp
# Wed, 07 Jun 2017 18:25:33 GMT
USER [arangodb]
# Wed, 07 Jun 2017 18:25:35 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b2a28833fe39d0779571bf8ac946ea244cc0d4a9a8cb69d9e6cee89f35dfdc`  
		Last Modified: Wed, 07 Jun 2017 18:28:22 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2ac95c65346b7256afef6a87b36d39b0a75a6fad3c74dd909ea76c54594bc3`  
		Last Modified: Wed, 07 Jun 2017 18:28:37 GMT  
		Size: 60.7 MB (60702906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4e56c1ae8b77749a69ffa7579831dc7819542a1ac6458b666243794e7ce372`  
		Last Modified: Wed, 07 Jun 2017 18:28:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b9e80259232229404f615df39a639640f12881e0440de59e5e91cd6d34faa2`  
		Last Modified: Wed, 07 Jun 2017 18:28:22 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1`

```console
$ docker pull arangodb@sha256:6150dd300b5a8ddb6f4e675f9e45b8597f89cdfa7e58e3c606839f040fbabf0a
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139226179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32742bdbb704c0151926da7fdff7db7fca67026d05a8a0f54d7354e8390f99f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 18:24:09 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 07 Jun 2017 18:25:58 GMT
ENV ARCHITECTURE=amd64
# Wed, 07 Jun 2017 18:26:20 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 20 Jun 2017 14:31:27 GMT
ENV ARANGO_VERSION=3.1.23
# Tue, 20 Jun 2017 14:31:28 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 20 Jun 2017 14:31:29 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.23-1_amd64.deb
# Tue, 20 Jun 2017 14:31:53 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.23-1_amd64.deb
# Tue, 20 Jun 2017 14:32:17 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.23-1_amd64.deb.asc
# Tue, 20 Jun 2017 14:32:43 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 20 Jun 2017 14:33:27 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 14:33:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 14:34:04 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 20 Jun 2017 14:34:06 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 20 Jun 2017 14:34:30 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Tue, 20 Jun 2017 14:34:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 14:34:33 GMT
EXPOSE 8529/tcp
# Tue, 20 Jun 2017 14:34:57 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1764678d27b101f6d266d80f97e4d465134a3062036cd5c692df0a20fb7e2823`  
		Last Modified: Tue, 20 Jun 2017 14:36:57 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a3786882a6247004ae44e5e01643a8bc999f74a3956852828f13f5c14a7965`  
		Last Modified: Tue, 20 Jun 2017 14:36:59 GMT  
		Size: 6.9 MB (6895102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65607ae40753da2c1123d01aeb8de4c5b44c9bdfbe691b38d848d98027b82d2`  
		Last Modified: Tue, 20 Jun 2017 14:36:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58458a4e4cd7da908bec610d4276a3e8b7b229a75f3143cbab83b73db8586154`  
		Last Modified: Tue, 20 Jun 2017 14:37:10 GMT  
		Size: 79.8 MB (79753703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9d9cd29c162cc0f7d65b63fb1ee41eeed69c573c49e2738750a0e30a6c2df9`  
		Last Modified: Tue, 20 Jun 2017 14:36:57 GMT  
		Size: 1.6 KB (1581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.23`

```console
$ docker pull arangodb@sha256:6150dd300b5a8ddb6f4e675f9e45b8597f89cdfa7e58e3c606839f040fbabf0a
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1.23` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139226179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32742bdbb704c0151926da7fdff7db7fca67026d05a8a0f54d7354e8390f99f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 18:24:09 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 07 Jun 2017 18:25:58 GMT
ENV ARCHITECTURE=amd64
# Wed, 07 Jun 2017 18:26:20 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 20 Jun 2017 14:31:27 GMT
ENV ARANGO_VERSION=3.1.23
# Tue, 20 Jun 2017 14:31:28 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 20 Jun 2017 14:31:29 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.23-1_amd64.deb
# Tue, 20 Jun 2017 14:31:53 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.23-1_amd64.deb
# Tue, 20 Jun 2017 14:32:17 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.23-1_amd64.deb.asc
# Tue, 20 Jun 2017 14:32:43 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 20 Jun 2017 14:33:27 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 14:33:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 14:34:04 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 20 Jun 2017 14:34:06 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 20 Jun 2017 14:34:30 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Tue, 20 Jun 2017 14:34:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 14:34:33 GMT
EXPOSE 8529/tcp
# Tue, 20 Jun 2017 14:34:57 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1764678d27b101f6d266d80f97e4d465134a3062036cd5c692df0a20fb7e2823`  
		Last Modified: Tue, 20 Jun 2017 14:36:57 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a3786882a6247004ae44e5e01643a8bc999f74a3956852828f13f5c14a7965`  
		Last Modified: Tue, 20 Jun 2017 14:36:59 GMT  
		Size: 6.9 MB (6895102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65607ae40753da2c1123d01aeb8de4c5b44c9bdfbe691b38d848d98027b82d2`  
		Last Modified: Tue, 20 Jun 2017 14:36:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58458a4e4cd7da908bec610d4276a3e8b7b229a75f3143cbab83b73db8586154`  
		Last Modified: Tue, 20 Jun 2017 14:37:10 GMT  
		Size: 79.8 MB (79753703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9d9cd29c162cc0f7d65b63fb1ee41eeed69c573c49e2738750a0e30a6c2df9`  
		Last Modified: Tue, 20 Jun 2017 14:36:57 GMT  
		Size: 1.6 KB (1581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:6150dd300b5a8ddb6f4e675f9e45b8597f89cdfa7e58e3c606839f040fbabf0a
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139226179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32742bdbb704c0151926da7fdff7db7fca67026d05a8a0f54d7354e8390f99f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 18:24:09 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 07 Jun 2017 18:25:58 GMT
ENV ARCHITECTURE=amd64
# Wed, 07 Jun 2017 18:26:20 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 20 Jun 2017 14:31:27 GMT
ENV ARANGO_VERSION=3.1.23
# Tue, 20 Jun 2017 14:31:28 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 20 Jun 2017 14:31:29 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.23-1_amd64.deb
# Tue, 20 Jun 2017 14:31:53 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.23-1_amd64.deb
# Tue, 20 Jun 2017 14:32:17 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.23-1_amd64.deb.asc
# Tue, 20 Jun 2017 14:32:43 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 20 Jun 2017 14:33:27 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 14:33:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 14:34:04 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 20 Jun 2017 14:34:06 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 20 Jun 2017 14:34:30 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Tue, 20 Jun 2017 14:34:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 14:34:33 GMT
EXPOSE 8529/tcp
# Tue, 20 Jun 2017 14:34:57 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1764678d27b101f6d266d80f97e4d465134a3062036cd5c692df0a20fb7e2823`  
		Last Modified: Tue, 20 Jun 2017 14:36:57 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a3786882a6247004ae44e5e01643a8bc999f74a3956852828f13f5c14a7965`  
		Last Modified: Tue, 20 Jun 2017 14:36:59 GMT  
		Size: 6.9 MB (6895102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65607ae40753da2c1123d01aeb8de4c5b44c9bdfbe691b38d848d98027b82d2`  
		Last Modified: Tue, 20 Jun 2017 14:36:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58458a4e4cd7da908bec610d4276a3e8b7b229a75f3143cbab83b73db8586154`  
		Last Modified: Tue, 20 Jun 2017 14:37:10 GMT  
		Size: 79.8 MB (79753703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9d9cd29c162cc0f7d65b63fb1ee41eeed69c573c49e2738750a0e30a6c2df9`  
		Last Modified: Tue, 20 Jun 2017 14:36:57 GMT  
		Size: 1.6 KB (1581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
