## `arangodb:latest`

```console
$ docker pull arangodb@sha256:c281bbf34966e09486362bcd62663090ae8d9f7b914575ef392a0e30deeb2511
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.1 MB (139081322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2572572958052a04adeea11ab19e0c3d0d0abd97c24789dc30907321e2e3e79`
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
# Tue, 09 May 2017 15:57:26 GMT
ENV ARANGO_VERSION=3.1.19
# Tue, 09 May 2017 15:57:27 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 09 May 2017 15:57:28 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.19-1_amd64.deb
# Tue, 09 May 2017 15:57:28 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.19-1_amd64.deb
# Tue, 09 May 2017 15:57:29 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.19-1_amd64.deb.asc
# Tue, 09 May 2017 15:57:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 09 May 2017 15:57:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 15:57:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 15:58:44 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 09 May 2017 15:58:47 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 09 May 2017 15:58:48 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Tue, 09 May 2017 15:58:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 May 2017 15:58:50 GMT
EXPOSE 8529/tcp
# Tue, 09 May 2017 15:58:51 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc37f61698d5d4398d91fddb28254491e5685d5e6ba823992aecf2b86895d69`  
		Last Modified: Thu, 11 May 2017 14:31:54 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125895685144f78f61ac6bb6fec0c1229aa3d8667974121c50e0dca3319b0fde`  
		Last Modified: Thu, 11 May 2017 14:31:57 GMT  
		Size: 6.9 MB (6900088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e54ac59195ec9a0b6d7286df1c366b5d24409a6ba9fb6573d55263a063b795a`  
		Last Modified: Thu, 11 May 2017 14:31:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a8f23eb7e81a52948e0ed81c75b3a8903f78dc68b8aa6b95ef2ed92e0243cf`  
		Last Modified: Thu, 11 May 2017 14:32:11 GMT  
		Size: 79.6 MB (79588264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ff2734cebaf4d2d4b924581251e2e0a47966d0cf2308a1b31eff9158a82aae`  
		Last Modified: Thu, 11 May 2017 14:31:54 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
