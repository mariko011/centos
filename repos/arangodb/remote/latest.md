## `arangodb:latest`

```console
$ docker pull arangodb@sha256:a29f6e92462d13bd8945e8f09d6f87550dfb5697d4495850baf3ba4bdf888145
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139228353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4c547a253f945fabd4859cf75f6d4d109f8711227303e35ff99af55c5634559`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 15:55:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 09 May 2017 15:57:25 GMT
ENV ARCHITECTURE=amd64
# Tue, 09 May 2017 15:57:26 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 16 May 2017 19:52:25 GMT
ENV ARANGO_VERSION=3.1.20
# Tue, 16 May 2017 19:52:27 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 16 May 2017 19:52:27 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.20-1_amd64.deb
# Tue, 16 May 2017 19:52:29 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.20-1_amd64.deb
# Tue, 16 May 2017 19:52:30 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.20-1_amd64.deb.asc
# Tue, 16 May 2017 19:52:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 16 May 2017 19:52:48 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 19:52:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 17 May 2017 18:01:01 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 17 May 2017 18:01:02 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 17 May 2017 18:01:03 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Wed, 17 May 2017 18:01:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 May 2017 18:01:05 GMT
EXPOSE 8529/tcp
# Wed, 17 May 2017 18:01:06 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c415adcef0c5aa84cc33b9fe23c4b6f34dc4c33338f76334184194cf0ace9c1`  
		Last Modified: Tue, 16 May 2017 20:05:18 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5740c8dc0d215d9d9edb37ab4980409e87d8a61b185d2fe3555e7ae556c0e5`  
		Last Modified: Tue, 16 May 2017 20:05:21 GMT  
		Size: 6.9 MB (6900057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e44a69bcb420f06d3e9c03eab01b4aefcb492ff3d23a88b8e68010249fc7c3a`  
		Last Modified: Tue, 16 May 2017 20:05:18 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20ca1cf5ef0c20898e2aa7c18040b9d49fbc53e57320e56d1550b766fed01d2`  
		Last Modified: Wed, 17 May 2017 18:02:26 GMT  
		Size: 79.7 MB (79735170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa866e47a6b5354bfbd8cd67c05fb4a7d71a945ac930119832812191ee9c761b`  
		Last Modified: Wed, 17 May 2017 18:02:15 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
