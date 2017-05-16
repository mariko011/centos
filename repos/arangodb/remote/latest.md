## `arangodb:latest`

```console
$ docker pull arangodb@sha256:5101018fec1f53c79b288b5585bc23cf04611b1cce0766993415fdcaca1c4db4
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139237935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b60674f9a16914a324925b6f264a6e810d3d6606bbe832c07f43c28ee3e174`
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
# Tue, 16 May 2017 19:53:32 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 16 May 2017 19:53:34 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 16 May 2017 19:53:35 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Tue, 16 May 2017 19:53:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 May 2017 19:53:37 GMT
EXPOSE 8529/tcp
# Tue, 16 May 2017 19:53:38 GMT
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
	-	`sha256:cf3ff0b5420135c45554bca290f44a38277a45305bd2cd8b10453d0594f53d65`  
		Last Modified: Tue, 16 May 2017 20:05:35 GMT  
		Size: 79.7 MB (79744901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d0dd0d5ece104a0077892cae520a363c14749424cf6654a9316f300234ae23`  
		Last Modified: Tue, 16 May 2017 20:05:18 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
