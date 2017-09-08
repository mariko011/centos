<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.3`](#arangodb323)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:bc539b48feb65a24b98ac912e367c54382b4f0141db6f1aee54ea57769050245
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113307595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f15a1e0bf0bd82cbb864ae7f180cd65c9be58a35581d03357cfd3a4c78950bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:56:24 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 07 Sep 2017 23:56:26 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 07 Sep 2017 23:56:26 GMT
ENV ARCHITECTURE=amd64
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_VERSION=2.8.11
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Thu, 07 Sep 2017 23:56:28 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Thu, 07 Sep 2017 23:57:03 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 07 Sep 2017 23:57:08 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Thu, 07 Sep 2017 23:57:08 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Thu, 07 Sep 2017 23:57:09 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Thu, 07 Sep 2017 23:57:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Sep 2017 23:57:09 GMT
EXPOSE 8529/tcp
# Thu, 07 Sep 2017 23:57:10 GMT
USER [arangodb]
# Thu, 07 Sep 2017 23:57:15 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b134aee3a4374732c318097897a504a16d1ecb5260380e4417de107cea3fff88`  
		Last Modified: Fri, 08 Sep 2017 17:47:31 GMT  
		Size: 7.4 KB (7416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedb4d8793a6a6a7a35276b04e5635cad35941b5948d0e9f381c62aa14fbfad8`  
		Last Modified: Fri, 08 Sep 2017 17:47:47 GMT  
		Size: 60.7 MB (60703376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b13586181b6cdf00467cce9c6e0366a1607dce880db90cd9b20b5caf673f621`  
		Last Modified: Fri, 08 Sep 2017 17:47:31 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7beab7444287119c33e32c2064d441d8a7c3b82d148d1d97febda00df9aebf`  
		Last Modified: Fri, 08 Sep 2017 17:47:31 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:bc539b48feb65a24b98ac912e367c54382b4f0141db6f1aee54ea57769050245
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113307595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f15a1e0bf0bd82cbb864ae7f180cd65c9be58a35581d03357cfd3a4c78950bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:56:24 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 07 Sep 2017 23:56:26 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 07 Sep 2017 23:56:26 GMT
ENV ARCHITECTURE=amd64
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_VERSION=2.8.11
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Thu, 07 Sep 2017 23:56:28 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Thu, 07 Sep 2017 23:57:03 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 07 Sep 2017 23:57:08 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Thu, 07 Sep 2017 23:57:08 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Thu, 07 Sep 2017 23:57:09 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Thu, 07 Sep 2017 23:57:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Sep 2017 23:57:09 GMT
EXPOSE 8529/tcp
# Thu, 07 Sep 2017 23:57:10 GMT
USER [arangodb]
# Thu, 07 Sep 2017 23:57:15 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b134aee3a4374732c318097897a504a16d1ecb5260380e4417de107cea3fff88`  
		Last Modified: Fri, 08 Sep 2017 17:47:31 GMT  
		Size: 7.4 KB (7416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedb4d8793a6a6a7a35276b04e5635cad35941b5948d0e9f381c62aa14fbfad8`  
		Last Modified: Fri, 08 Sep 2017 17:47:47 GMT  
		Size: 60.7 MB (60703376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b13586181b6cdf00467cce9c6e0366a1607dce880db90cd9b20b5caf673f621`  
		Last Modified: Fri, 08 Sep 2017 17:47:31 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7beab7444287119c33e32c2064d441d8a7c3b82d148d1d97febda00df9aebf`  
		Last Modified: Fri, 08 Sep 2017 17:47:31 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:0399e8b7bdeebd920555d20d5cb12601a241db809c6b1b023690adb4940dd36b
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111478649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7ab64774402da1b65b6a201443b1ecc39ede0d3a7a837b8a2382d8c30b6ced9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:57:20 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 07 Sep 2017 23:57:21 GMT
ENV ARCHITECTURE=amd64
# Thu, 07 Sep 2017 23:57:21 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 08 Sep 2017 19:47:11 GMT
ENV ARANGO_VERSION=3.2.3
# Fri, 08 Sep 2017 19:47:11 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 08 Sep 2017 19:47:12 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.3-1_amd64.deb
# Fri, 08 Sep 2017 19:47:12 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.3-1_amd64.deb
# Fri, 08 Sep 2017 19:47:12 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.3-1_amd64.deb.asc
# Fri, 08 Sep 2017 19:47:26 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:47:31 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 08 Sep 2017 19:47:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:49:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 19:49:40 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 08 Sep 2017 19:49:41 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 08 Sep 2017 19:49:41 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Fri, 08 Sep 2017 19:49:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 19:49:42 GMT
EXPOSE 8529/tcp
# Fri, 08 Sep 2017 19:49:43 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de00d7fa58e8b816e00288dba331a3d0604ee027dfedf2045c2f32032f6eeae2`  
		Last Modified: Fri, 08 Sep 2017 19:50:00 GMT  
		Size: 6.7 MB (6733036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f4570ce7365dab891c8ce36206aa9c71a3dfdcef8f2edc49ed973bbbaa8f73`  
		Last Modified: Fri, 08 Sep 2017 19:49:58 GMT  
		Size: 7.2 KB (7171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c57d3bd6c65fb14b6488e5f314a9c7f2283c332ab0732063f9ac5f06946894c`  
		Last Modified: Fri, 08 Sep 2017 19:49:59 GMT  
		Size: 7.3 MB (7349277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83948ab02d8f751af23a87e40ca5acff31938ed706f12b9e563689c2a92ae48a`  
		Last Modified: Fri, 08 Sep 2017 19:49:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b209f145dd27dbf7e6dc7ed5e2c22de8fd04b371c91d0facd2c52ec7bc974bb`  
		Last Modified: Fri, 08 Sep 2017 19:50:06 GMT  
		Size: 52.3 MB (52261723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9146fc81eb3a6f3c3b31656beef252ae2a1362d7ee55833b74848717a5b742d0`  
		Last Modified: Fri, 08 Sep 2017 19:49:58 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.3`

```console
$ docker pull arangodb@sha256:0399e8b7bdeebd920555d20d5cb12601a241db809c6b1b023690adb4940dd36b
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.2.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111478649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7ab64774402da1b65b6a201443b1ecc39ede0d3a7a837b8a2382d8c30b6ced9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:57:20 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 07 Sep 2017 23:57:21 GMT
ENV ARCHITECTURE=amd64
# Thu, 07 Sep 2017 23:57:21 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 08 Sep 2017 19:47:11 GMT
ENV ARANGO_VERSION=3.2.3
# Fri, 08 Sep 2017 19:47:11 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 08 Sep 2017 19:47:12 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.3-1_amd64.deb
# Fri, 08 Sep 2017 19:47:12 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.3-1_amd64.deb
# Fri, 08 Sep 2017 19:47:12 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.3-1_amd64.deb.asc
# Fri, 08 Sep 2017 19:47:26 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:47:31 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 08 Sep 2017 19:47:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:49:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 19:49:40 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 08 Sep 2017 19:49:41 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 08 Sep 2017 19:49:41 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Fri, 08 Sep 2017 19:49:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 19:49:42 GMT
EXPOSE 8529/tcp
# Fri, 08 Sep 2017 19:49:43 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de00d7fa58e8b816e00288dba331a3d0604ee027dfedf2045c2f32032f6eeae2`  
		Last Modified: Fri, 08 Sep 2017 19:50:00 GMT  
		Size: 6.7 MB (6733036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f4570ce7365dab891c8ce36206aa9c71a3dfdcef8f2edc49ed973bbbaa8f73`  
		Last Modified: Fri, 08 Sep 2017 19:49:58 GMT  
		Size: 7.2 KB (7171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c57d3bd6c65fb14b6488e5f314a9c7f2283c332ab0732063f9ac5f06946894c`  
		Last Modified: Fri, 08 Sep 2017 19:49:59 GMT  
		Size: 7.3 MB (7349277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83948ab02d8f751af23a87e40ca5acff31938ed706f12b9e563689c2a92ae48a`  
		Last Modified: Fri, 08 Sep 2017 19:49:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b209f145dd27dbf7e6dc7ed5e2c22de8fd04b371c91d0facd2c52ec7bc974bb`  
		Last Modified: Fri, 08 Sep 2017 19:50:06 GMT  
		Size: 52.3 MB (52261723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9146fc81eb3a6f3c3b31656beef252ae2a1362d7ee55833b74848717a5b742d0`  
		Last Modified: Fri, 08 Sep 2017 19:49:58 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:0399e8b7bdeebd920555d20d5cb12601a241db809c6b1b023690adb4940dd36b
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111478649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7ab64774402da1b65b6a201443b1ecc39ede0d3a7a837b8a2382d8c30b6ced9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:57:20 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 07 Sep 2017 23:57:21 GMT
ENV ARCHITECTURE=amd64
# Thu, 07 Sep 2017 23:57:21 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 08 Sep 2017 19:47:11 GMT
ENV ARANGO_VERSION=3.2.3
# Fri, 08 Sep 2017 19:47:11 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 08 Sep 2017 19:47:12 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.3-1_amd64.deb
# Fri, 08 Sep 2017 19:47:12 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.3-1_amd64.deb
# Fri, 08 Sep 2017 19:47:12 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.3-1_amd64.deb.asc
# Fri, 08 Sep 2017 19:47:26 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:47:31 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 08 Sep 2017 19:47:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:49:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 19:49:40 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 08 Sep 2017 19:49:41 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 08 Sep 2017 19:49:41 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Fri, 08 Sep 2017 19:49:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 19:49:42 GMT
EXPOSE 8529/tcp
# Fri, 08 Sep 2017 19:49:43 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de00d7fa58e8b816e00288dba331a3d0604ee027dfedf2045c2f32032f6eeae2`  
		Last Modified: Fri, 08 Sep 2017 19:50:00 GMT  
		Size: 6.7 MB (6733036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f4570ce7365dab891c8ce36206aa9c71a3dfdcef8f2edc49ed973bbbaa8f73`  
		Last Modified: Fri, 08 Sep 2017 19:49:58 GMT  
		Size: 7.2 KB (7171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c57d3bd6c65fb14b6488e5f314a9c7f2283c332ab0732063f9ac5f06946894c`  
		Last Modified: Fri, 08 Sep 2017 19:49:59 GMT  
		Size: 7.3 MB (7349277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83948ab02d8f751af23a87e40ca5acff31938ed706f12b9e563689c2a92ae48a`  
		Last Modified: Fri, 08 Sep 2017 19:49:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b209f145dd27dbf7e6dc7ed5e2c22de8fd04b371c91d0facd2c52ec7bc974bb`  
		Last Modified: Fri, 08 Sep 2017 19:50:06 GMT  
		Size: 52.3 MB (52261723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9146fc81eb3a6f3c3b31656beef252ae2a1362d7ee55833b74848717a5b742d0`  
		Last Modified: Fri, 08 Sep 2017 19:49:58 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
