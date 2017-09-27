## `arangodb:latest`

```console
$ docker pull arangodb@sha256:58a2ea00bf1b52a350327a4291100c4954d48980a62f34dadabf3962d7e33f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:3b8081500630c8d365300ed657c92c7416d73655e7265a2507eed79a3c69fd0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111819278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0aa67859aee22c2b4a02916356224886640566e8b79a2ef24d62446e616a71`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 15:21:58 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 13 Sep 2017 15:21:58 GMT
ENV ARCHITECTURE=amd64
# Wed, 13 Sep 2017 15:21:58 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_VERSION=3.2.4
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.4-1_amd64.deb
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.4-1_amd64.deb
# Wed, 27 Sep 2017 17:35:48 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.4-1_amd64.deb.asc
# Wed, 27 Sep 2017 17:35:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 17:36:04 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 27 Sep 2017 17:36:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 17:36:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Sep 2017 17:36:30 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 27 Sep 2017 17:36:30 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 27 Sep 2017 17:36:30 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Wed, 27 Sep 2017 17:36:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Sep 2017 17:36:31 GMT
EXPOSE 8529/tcp
# Wed, 27 Sep 2017 17:36:31 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def61b938489d989e162df7bf6ab61d4ec0c98812c8be3560218fdd29d95c50d`  
		Last Modified: Wed, 27 Sep 2017 17:36:43 GMT  
		Size: 6.9 MB (6920733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7568d87d65c81fcb36c0f05a151df12bbadd483af2a7c4e35d5edfe6e49766d`  
		Last Modified: Wed, 27 Sep 2017 17:36:41 GMT  
		Size: 7.2 KB (7171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6555852e25e7cbacc5ef1266ff941fcc80aa3f24073e0f8e88cc13b899ab1e48`  
		Last Modified: Wed, 27 Sep 2017 17:36:42 GMT  
		Size: 7.3 MB (7349402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b3da1cafff7d39b3138ca4797f3794816e1176fceaf23a963f34a7fd589702`  
		Last Modified: Wed, 27 Sep 2017 17:36:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e0914b8c7fc097d37d9a6ff101a8d37ec5afae46841592fca2000be1ec72d2`  
		Last Modified: Wed, 27 Sep 2017 17:36:49 GMT  
		Size: 52.4 MB (52414531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38688b8a55cbe9cdf62c3dfdbe0e05a7272154e3d23031513787286fd36affd`  
		Last Modified: Wed, 27 Sep 2017 17:36:40 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
