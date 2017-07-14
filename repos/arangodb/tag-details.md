<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.25`](#arangodb3125)
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
$ docker pull arangodb@sha256:1f66bc9c17aac9d9695c98f7ffd3c26aeacde39d1c6dde3efb8266540eeeae6b
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139307633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c728dee19381961f53ba08142f284e633f1baa74f8150e19af6be947843ac95`
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
# Fri, 14 Jul 2017 15:06:51 GMT
ENV ARANGO_VERSION=3.1.25
# Fri, 14 Jul 2017 15:06:52 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 14 Jul 2017 15:06:52 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.25-1_amd64.deb
# Fri, 14 Jul 2017 15:06:53 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.25-1_amd64.deb
# Fri, 14 Jul 2017 15:06:53 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.25-1_amd64.deb.asc
# Fri, 14 Jul 2017 15:06:55 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 14 Jul 2017 15:07:08 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 14 Jul 2017 15:07:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 14 Jul 2017 15:07:37 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 14 Jul 2017 15:07:38 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 14 Jul 2017 15:07:39 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Fri, 14 Jul 2017 15:07:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Jul 2017 15:07:40 GMT
EXPOSE 8529/tcp
# Fri, 14 Jul 2017 15:07:41 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9dfd087154505e7318511dcfb5f1cb406bea6cd2fc325ed1c7b77bfa1c30c9`  
		Last Modified: Fri, 14 Jul 2017 15:08:11 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992f97cedfe6a8f773aba95a24ee2bca5948fc8bb35dda3999ac220bbb132380`  
		Last Modified: Fri, 14 Jul 2017 15:08:11 GMT  
		Size: 6.9 MB (6896774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041e586019310408b243c7d005aa0fdd9a8a64ca5746bf9845d1a85f4d8b8e9d`  
		Last Modified: Fri, 14 Jul 2017 15:08:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ba4742c4b7ba7cf936da559da5eecb90e7dad7d785306c139cd5d09d8790a9`  
		Last Modified: Fri, 14 Jul 2017 15:08:22 GMT  
		Size: 79.8 MB (79786947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429d548a3184813424a3c2fde4e10acfb069934ec1678fc5d3c033cf8b20eb64`  
		Last Modified: Fri, 14 Jul 2017 15:08:10 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.25`

```console
$ docker pull arangodb@sha256:1f66bc9c17aac9d9695c98f7ffd3c26aeacde39d1c6dde3efb8266540eeeae6b
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1.25` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139307633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c728dee19381961f53ba08142f284e633f1baa74f8150e19af6be947843ac95`
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
# Fri, 14 Jul 2017 15:06:51 GMT
ENV ARANGO_VERSION=3.1.25
# Fri, 14 Jul 2017 15:06:52 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 14 Jul 2017 15:06:52 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.25-1_amd64.deb
# Fri, 14 Jul 2017 15:06:53 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.25-1_amd64.deb
# Fri, 14 Jul 2017 15:06:53 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.25-1_amd64.deb.asc
# Fri, 14 Jul 2017 15:06:55 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 14 Jul 2017 15:07:08 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 14 Jul 2017 15:07:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 14 Jul 2017 15:07:37 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 14 Jul 2017 15:07:38 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 14 Jul 2017 15:07:39 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Fri, 14 Jul 2017 15:07:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Jul 2017 15:07:40 GMT
EXPOSE 8529/tcp
# Fri, 14 Jul 2017 15:07:41 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9dfd087154505e7318511dcfb5f1cb406bea6cd2fc325ed1c7b77bfa1c30c9`  
		Last Modified: Fri, 14 Jul 2017 15:08:11 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992f97cedfe6a8f773aba95a24ee2bca5948fc8bb35dda3999ac220bbb132380`  
		Last Modified: Fri, 14 Jul 2017 15:08:11 GMT  
		Size: 6.9 MB (6896774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041e586019310408b243c7d005aa0fdd9a8a64ca5746bf9845d1a85f4d8b8e9d`  
		Last Modified: Fri, 14 Jul 2017 15:08:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ba4742c4b7ba7cf936da559da5eecb90e7dad7d785306c139cd5d09d8790a9`  
		Last Modified: Fri, 14 Jul 2017 15:08:22 GMT  
		Size: 79.8 MB (79786947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429d548a3184813424a3c2fde4e10acfb069934ec1678fc5d3c033cf8b20eb64`  
		Last Modified: Fri, 14 Jul 2017 15:08:10 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:1f66bc9c17aac9d9695c98f7ffd3c26aeacde39d1c6dde3efb8266540eeeae6b
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139307633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c728dee19381961f53ba08142f284e633f1baa74f8150e19af6be947843ac95`
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
# Fri, 14 Jul 2017 15:06:51 GMT
ENV ARANGO_VERSION=3.1.25
# Fri, 14 Jul 2017 15:06:52 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 14 Jul 2017 15:06:52 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.25-1_amd64.deb
# Fri, 14 Jul 2017 15:06:53 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.25-1_amd64.deb
# Fri, 14 Jul 2017 15:06:53 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.25-1_amd64.deb.asc
# Fri, 14 Jul 2017 15:06:55 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 14 Jul 2017 15:07:08 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 14 Jul 2017 15:07:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 14 Jul 2017 15:07:37 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 14 Jul 2017 15:07:38 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 14 Jul 2017 15:07:39 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Fri, 14 Jul 2017 15:07:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Jul 2017 15:07:40 GMT
EXPOSE 8529/tcp
# Fri, 14 Jul 2017 15:07:41 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9dfd087154505e7318511dcfb5f1cb406bea6cd2fc325ed1c7b77bfa1c30c9`  
		Last Modified: Fri, 14 Jul 2017 15:08:11 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992f97cedfe6a8f773aba95a24ee2bca5948fc8bb35dda3999ac220bbb132380`  
		Last Modified: Fri, 14 Jul 2017 15:08:11 GMT  
		Size: 6.9 MB (6896774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041e586019310408b243c7d005aa0fdd9a8a64ca5746bf9845d1a85f4d8b8e9d`  
		Last Modified: Fri, 14 Jul 2017 15:08:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ba4742c4b7ba7cf936da559da5eecb90e7dad7d785306c139cd5d09d8790a9`  
		Last Modified: Fri, 14 Jul 2017 15:08:22 GMT  
		Size: 79.8 MB (79786947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429d548a3184813424a3c2fde4e10acfb069934ec1678fc5d3c033cf8b20eb64`  
		Last Modified: Fri, 14 Jul 2017 15:08:10 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
