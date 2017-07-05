<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.24`](#arangodb3124)
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
$ docker pull arangodb@sha256:6870c8466cfe773f2a01e0f39debf0a51ed68f3fb2dd98a7f6a04e77cb71d4a0
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139308429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e95e38c7b9f4f432b15fa799a594f8d5adb2bfe8deaf03bebda41df1881b9a`
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
# Wed, 05 Jul 2017 17:49:23 GMT
ENV ARANGO_VERSION=3.1.24
# Wed, 05 Jul 2017 17:49:24 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Wed, 05 Jul 2017 17:49:26 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.24-1_amd64.deb
# Wed, 05 Jul 2017 17:49:26 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.24-1_amd64.deb
# Wed, 05 Jul 2017 17:49:27 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.24-1_amd64.deb.asc
# Wed, 05 Jul 2017 17:49:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 05 Jul 2017 17:49:45 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Jul 2017 17:50:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Jul 2017 17:50:37 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 05 Jul 2017 17:50:38 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 05 Jul 2017 17:50:40 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Wed, 05 Jul 2017 17:50:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Jul 2017 17:50:43 GMT
EXPOSE 8529/tcp
# Wed, 05 Jul 2017 17:50:44 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc2e94099ee06834c34e36c8e626da511951efa80bbc1e964f85971e45733ec`  
		Last Modified: Wed, 05 Jul 2017 18:09:25 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0214d194398fdc0c67bf98f065cc4420f25e899969577cee2af1bc9f0dd121`  
		Last Modified: Wed, 05 Jul 2017 18:09:28 GMT  
		Size: 6.9 MB (6896777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be321dbbad5266f6531bb79d9a08cc97450b3777e843f28ecdd2853fbac51b3`  
		Last Modified: Wed, 05 Jul 2017 18:09:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6eb212ab5a486b5cb774309d86136fbe151ed55ce7fd067bca50812f6088c9`  
		Last Modified: Wed, 05 Jul 2017 18:09:45 GMT  
		Size: 79.8 MB (79787732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af036afa209290aa3cd4255adc8a282fb26b0b296e9e9633e6ee138595eaa3e8`  
		Last Modified: Wed, 05 Jul 2017 18:09:25 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.24`

```console
$ docker pull arangodb@sha256:6870c8466cfe773f2a01e0f39debf0a51ed68f3fb2dd98a7f6a04e77cb71d4a0
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1.24` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139308429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e95e38c7b9f4f432b15fa799a594f8d5adb2bfe8deaf03bebda41df1881b9a`
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
# Wed, 05 Jul 2017 17:49:23 GMT
ENV ARANGO_VERSION=3.1.24
# Wed, 05 Jul 2017 17:49:24 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Wed, 05 Jul 2017 17:49:26 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.24-1_amd64.deb
# Wed, 05 Jul 2017 17:49:26 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.24-1_amd64.deb
# Wed, 05 Jul 2017 17:49:27 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.24-1_amd64.deb.asc
# Wed, 05 Jul 2017 17:49:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 05 Jul 2017 17:49:45 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Jul 2017 17:50:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Jul 2017 17:50:37 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 05 Jul 2017 17:50:38 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 05 Jul 2017 17:50:40 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Wed, 05 Jul 2017 17:50:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Jul 2017 17:50:43 GMT
EXPOSE 8529/tcp
# Wed, 05 Jul 2017 17:50:44 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc2e94099ee06834c34e36c8e626da511951efa80bbc1e964f85971e45733ec`  
		Last Modified: Wed, 05 Jul 2017 18:09:25 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0214d194398fdc0c67bf98f065cc4420f25e899969577cee2af1bc9f0dd121`  
		Last Modified: Wed, 05 Jul 2017 18:09:28 GMT  
		Size: 6.9 MB (6896777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be321dbbad5266f6531bb79d9a08cc97450b3777e843f28ecdd2853fbac51b3`  
		Last Modified: Wed, 05 Jul 2017 18:09:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6eb212ab5a486b5cb774309d86136fbe151ed55ce7fd067bca50812f6088c9`  
		Last Modified: Wed, 05 Jul 2017 18:09:45 GMT  
		Size: 79.8 MB (79787732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af036afa209290aa3cd4255adc8a282fb26b0b296e9e9633e6ee138595eaa3e8`  
		Last Modified: Wed, 05 Jul 2017 18:09:25 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:6870c8466cfe773f2a01e0f39debf0a51ed68f3fb2dd98a7f6a04e77cb71d4a0
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139308429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e95e38c7b9f4f432b15fa799a594f8d5adb2bfe8deaf03bebda41df1881b9a`
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
# Wed, 05 Jul 2017 17:49:23 GMT
ENV ARANGO_VERSION=3.1.24
# Wed, 05 Jul 2017 17:49:24 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Wed, 05 Jul 2017 17:49:26 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.24-1_amd64.deb
# Wed, 05 Jul 2017 17:49:26 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.24-1_amd64.deb
# Wed, 05 Jul 2017 17:49:27 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.24-1_amd64.deb.asc
# Wed, 05 Jul 2017 17:49:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 05 Jul 2017 17:49:45 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Jul 2017 17:50:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Jul 2017 17:50:37 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 05 Jul 2017 17:50:38 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 05 Jul 2017 17:50:40 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Wed, 05 Jul 2017 17:50:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Jul 2017 17:50:43 GMT
EXPOSE 8529/tcp
# Wed, 05 Jul 2017 17:50:44 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc2e94099ee06834c34e36c8e626da511951efa80bbc1e964f85971e45733ec`  
		Last Modified: Wed, 05 Jul 2017 18:09:25 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0214d194398fdc0c67bf98f065cc4420f25e899969577cee2af1bc9f0dd121`  
		Last Modified: Wed, 05 Jul 2017 18:09:28 GMT  
		Size: 6.9 MB (6896777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be321dbbad5266f6531bb79d9a08cc97450b3777e843f28ecdd2853fbac51b3`  
		Last Modified: Wed, 05 Jul 2017 18:09:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6eb212ab5a486b5cb774309d86136fbe151ed55ce7fd067bca50812f6088c9`  
		Last Modified: Wed, 05 Jul 2017 18:09:45 GMT  
		Size: 79.8 MB (79787732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af036afa209290aa3cd4255adc8a282fb26b0b296e9e9633e6ee138595eaa3e8`  
		Last Modified: Wed, 05 Jul 2017 18:09:25 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
