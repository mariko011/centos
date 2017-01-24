## `arangodb:latest`

```console
$ docker pull arangodb@sha256:f86448549c1e8831baef758cdd1f26add33b030e56d610909386be941aee1267
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126650081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a4fb1b9355369cad9789efd5bf2d5a589fbcb962c57fa4506f479581bc167b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 23:59:48 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 17 Jan 2017 00:01:38 GMT
ENV ARCHITECTURE=amd64
# Tue, 17 Jan 2017 00:01:39 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 24 Jan 2017 19:05:29 GMT
ENV ARANGO_VERSION=3.1.9
# Tue, 24 Jan 2017 19:05:30 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 24 Jan 2017 19:05:30 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.9-1_amd64.deb
# Tue, 24 Jan 2017 19:05:31 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.9-1_amd64.deb
# Tue, 24 Jan 2017 19:05:31 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.9-1_amd64.deb.asc
# Tue, 24 Jan 2017 19:05:33 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 24 Jan 2017 19:05:52 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2017 19:05:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 24 Jan 2017 19:06:25 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 24 Jan 2017 19:06:26 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 24 Jan 2017 19:06:26 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Tue, 24 Jan 2017 19:06:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2017 19:06:27 GMT
EXPOSE 8529/tcp
# Tue, 24 Jan 2017 19:06:28 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4c470cceccb35bed8d44c85d65a17d9b812db0e9109171de1d8e49b14f7e2c`  
		Last Modified: Tue, 24 Jan 2017 19:08:18 GMT  
		Size: 7.4 KB (7377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d176c6a901c516024f6b8de7084ca6e7a1ba45c105e45ed848a993f39a0c6e8c`  
		Last Modified: Tue, 24 Jan 2017 19:08:20 GMT  
		Size: 6.7 MB (6691116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16868abe23c5e38ad420ca829db77b66adedad014bd5ad55037a3eb86934ff38`  
		Last Modified: Tue, 24 Jan 2017 19:08:18 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d809eb67cca3186829d4a8a06f19c3624e62d6be1b1ddd60486122008c24cab5`  
		Last Modified: Tue, 24 Jan 2017 19:08:44 GMT  
		Size: 68.6 MB (68588830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8307d67db219edeb26a7ae4e02ba95a83705fb6c020f34e3d016062e99727276`  
		Last Modified: Tue, 24 Jan 2017 19:08:18 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
