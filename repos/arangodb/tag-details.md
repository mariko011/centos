<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.23`](#arangodb3123)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:cb3a8531f82e51c4aaee94b5ed6d4dcf43a839436306f3e66a94ca74375ef6f0
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113328559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73a4fe07b0c3aeaf47e667ca788d1b00fa784a1f83a5957ca4f3897712a65bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:44:46 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 20 Jun 2017 20:45:11 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 20 Jun 2017 20:45:34 GMT
ENV ARCHITECTURE=amd64
# Tue, 20 Jun 2017 20:45:58 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 20 Jun 2017 20:46:22 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 20 Jun 2017 20:46:46 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 20 Jun 2017 20:47:10 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 20 Jun 2017 20:47:34 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 20 Jun 2017 20:48:34 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 20 Jun 2017 20:49:16 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 20 Jun 2017 20:49:40 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 20 Jun 2017 20:50:04 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 20 Jun 2017 20:50:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 20:50:52 GMT
EXPOSE 8529/tcp
# Tue, 20 Jun 2017 20:51:16 GMT
USER [arangodb]
# Tue, 20 Jun 2017 20:51:40 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e156f7666ce8e98c9e03b74bb84d11b9600f112c27a2bbbf53bcf5fa43e8d3f`  
		Last Modified: Sat, 24 Jun 2017 05:36:52 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa34afa3536fd091c027dd5758dbb433bbb72a1ab931db165894d3db3632ba67`  
		Last Modified: Sat, 24 Jun 2017 05:37:07 GMT  
		Size: 60.7 MB (60705078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1244680cbafc543250b9e017133e9fd3c49da1779a58d97a71d14a8d1bf33b13`  
		Last Modified: Sat, 24 Jun 2017 05:36:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e23d9247a1bf24832c6b91bfd261be0ec9222222df9cdf834743a1db239faf`  
		Last Modified: Sat, 24 Jun 2017 05:36:52 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:cb3a8531f82e51c4aaee94b5ed6d4dcf43a839436306f3e66a94ca74375ef6f0
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113328559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73a4fe07b0c3aeaf47e667ca788d1b00fa784a1f83a5957ca4f3897712a65bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:44:46 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 20 Jun 2017 20:45:11 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 20 Jun 2017 20:45:34 GMT
ENV ARCHITECTURE=amd64
# Tue, 20 Jun 2017 20:45:58 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 20 Jun 2017 20:46:22 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 20 Jun 2017 20:46:46 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 20 Jun 2017 20:47:10 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 20 Jun 2017 20:47:34 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 20 Jun 2017 20:48:34 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 20 Jun 2017 20:49:16 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 20 Jun 2017 20:49:40 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 20 Jun 2017 20:50:04 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 20 Jun 2017 20:50:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 20:50:52 GMT
EXPOSE 8529/tcp
# Tue, 20 Jun 2017 20:51:16 GMT
USER [arangodb]
# Tue, 20 Jun 2017 20:51:40 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e156f7666ce8e98c9e03b74bb84d11b9600f112c27a2bbbf53bcf5fa43e8d3f`  
		Last Modified: Sat, 24 Jun 2017 05:36:52 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa34afa3536fd091c027dd5758dbb433bbb72a1ab931db165894d3db3632ba67`  
		Last Modified: Sat, 24 Jun 2017 05:37:07 GMT  
		Size: 60.7 MB (60705078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1244680cbafc543250b9e017133e9fd3c49da1779a58d97a71d14a8d1bf33b13`  
		Last Modified: Sat, 24 Jun 2017 05:36:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e23d9247a1bf24832c6b91bfd261be0ec9222222df9cdf834743a1db239faf`  
		Last Modified: Sat, 24 Jun 2017 05:36:52 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1`

```console
$ docker pull arangodb@sha256:c00dc3a6bda67fef54c79e5fe03c731f733b37859aea28ccb681c39e2eb20879
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139277010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a62e7ae7eee3ece7af4f26a4e124846de8dc6506ab38483e4b89845106edc35`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:44:46 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 20 Jun 2017 20:54:26 GMT
ENV ARCHITECTURE=amd64
# Tue, 20 Jun 2017 20:54:50 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 20 Jun 2017 20:55:13 GMT
ENV ARANGO_VERSION=3.1.23
# Tue, 20 Jun 2017 20:55:38 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 20 Jun 2017 20:56:01 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.23-1_amd64.deb
# Tue, 20 Jun 2017 20:56:25 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.23-1_amd64.deb
# Tue, 20 Jun 2017 20:56:49 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.23-1_amd64.deb.asc
# Tue, 20 Jun 2017 20:57:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 20 Jun 2017 20:57:54 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 20:58:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 20:58:57 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 20 Jun 2017 20:59:18 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 20 Jun 2017 20:59:42 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Tue, 20 Jun 2017 21:00:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 21:00:30 GMT
EXPOSE 8529/tcp
# Tue, 20 Jun 2017 21:00:54 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80503f0c41890837523e7484e16f453a864a7fa75f5c18dd2ba76b398f3661a8`  
		Last Modified: Sat, 24 Jun 2017 05:38:07 GMT  
		Size: 7.4 KB (7408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48682763496441f89a6a80e127b91345a233c4fafbdf1d8a99ce5d1b206cca4a`  
		Last Modified: Sat, 24 Jun 2017 05:38:09 GMT  
		Size: 6.9 MB (6896888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792d858be9655b7df5c3f480f3f268ac2b0468c837b9bc959209ae15dbd57b9f`  
		Last Modified: Sat, 24 Jun 2017 05:38:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8872b11830cf7d8bd64246000d4c1d66f517e2321cad5c0109a486cc57ad72`  
		Last Modified: Sat, 24 Jun 2017 05:38:29 GMT  
		Size: 79.8 MB (79756211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c49efc9c8fa1a79401d451182bc7ffd2bbed96f748a64d4454e8814a6ac01d3`  
		Last Modified: Sat, 24 Jun 2017 05:38:07 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.23`

```console
$ docker pull arangodb@sha256:c00dc3a6bda67fef54c79e5fe03c731f733b37859aea28ccb681c39e2eb20879
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1.23` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139277010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a62e7ae7eee3ece7af4f26a4e124846de8dc6506ab38483e4b89845106edc35`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:44:46 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 20 Jun 2017 20:54:26 GMT
ENV ARCHITECTURE=amd64
# Tue, 20 Jun 2017 20:54:50 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 20 Jun 2017 20:55:13 GMT
ENV ARANGO_VERSION=3.1.23
# Tue, 20 Jun 2017 20:55:38 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 20 Jun 2017 20:56:01 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.23-1_amd64.deb
# Tue, 20 Jun 2017 20:56:25 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.23-1_amd64.deb
# Tue, 20 Jun 2017 20:56:49 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.23-1_amd64.deb.asc
# Tue, 20 Jun 2017 20:57:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 20 Jun 2017 20:57:54 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 20:58:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 20:58:57 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 20 Jun 2017 20:59:18 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 20 Jun 2017 20:59:42 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Tue, 20 Jun 2017 21:00:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 21:00:30 GMT
EXPOSE 8529/tcp
# Tue, 20 Jun 2017 21:00:54 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80503f0c41890837523e7484e16f453a864a7fa75f5c18dd2ba76b398f3661a8`  
		Last Modified: Sat, 24 Jun 2017 05:38:07 GMT  
		Size: 7.4 KB (7408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48682763496441f89a6a80e127b91345a233c4fafbdf1d8a99ce5d1b206cca4a`  
		Last Modified: Sat, 24 Jun 2017 05:38:09 GMT  
		Size: 6.9 MB (6896888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792d858be9655b7df5c3f480f3f268ac2b0468c837b9bc959209ae15dbd57b9f`  
		Last Modified: Sat, 24 Jun 2017 05:38:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8872b11830cf7d8bd64246000d4c1d66f517e2321cad5c0109a486cc57ad72`  
		Last Modified: Sat, 24 Jun 2017 05:38:29 GMT  
		Size: 79.8 MB (79756211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c49efc9c8fa1a79401d451182bc7ffd2bbed96f748a64d4454e8814a6ac01d3`  
		Last Modified: Sat, 24 Jun 2017 05:38:07 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:c00dc3a6bda67fef54c79e5fe03c731f733b37859aea28ccb681c39e2eb20879
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139277010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a62e7ae7eee3ece7af4f26a4e124846de8dc6506ab38483e4b89845106edc35`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:44:46 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 20 Jun 2017 20:54:26 GMT
ENV ARCHITECTURE=amd64
# Tue, 20 Jun 2017 20:54:50 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 20 Jun 2017 20:55:13 GMT
ENV ARANGO_VERSION=3.1.23
# Tue, 20 Jun 2017 20:55:38 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 20 Jun 2017 20:56:01 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.23-1_amd64.deb
# Tue, 20 Jun 2017 20:56:25 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.23-1_amd64.deb
# Tue, 20 Jun 2017 20:56:49 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.23-1_amd64.deb.asc
# Tue, 20 Jun 2017 20:57:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 20 Jun 2017 20:57:54 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 20:58:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 20:58:57 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 20 Jun 2017 20:59:18 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 20 Jun 2017 20:59:42 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Tue, 20 Jun 2017 21:00:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Jun 2017 21:00:30 GMT
EXPOSE 8529/tcp
# Tue, 20 Jun 2017 21:00:54 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80503f0c41890837523e7484e16f453a864a7fa75f5c18dd2ba76b398f3661a8`  
		Last Modified: Sat, 24 Jun 2017 05:38:07 GMT  
		Size: 7.4 KB (7408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48682763496441f89a6a80e127b91345a233c4fafbdf1d8a99ce5d1b206cca4a`  
		Last Modified: Sat, 24 Jun 2017 05:38:09 GMT  
		Size: 6.9 MB (6896888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792d858be9655b7df5c3f480f3f268ac2b0468c837b9bc959209ae15dbd57b9f`  
		Last Modified: Sat, 24 Jun 2017 05:38:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8872b11830cf7d8bd64246000d4c1d66f517e2321cad5c0109a486cc57ad72`  
		Last Modified: Sat, 24 Jun 2017 05:38:29 GMT  
		Size: 79.8 MB (79756211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c49efc9c8fa1a79401d451182bc7ffd2bbed96f748a64d4454e8814a6ac01d3`  
		Last Modified: Sat, 24 Jun 2017 05:38:07 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
