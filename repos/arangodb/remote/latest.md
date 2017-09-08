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
