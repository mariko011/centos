## `arangodb:latest`

```console
$ docker pull arangodb@sha256:92351046a816f345e00654b2a1fef1c73dc71e69acd904824d3f5c6b699134f4
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126642002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ecb77cb92604613e9779f04c48384483e46554185315165ac88caff073c06f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:54:55 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 13 Dec 2016 22:58:46 GMT
ENV ARCHITECTURE=amd64
# Tue, 13 Dec 2016 22:58:47 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 11 Jan 2017 17:27:08 GMT
ENV ARANGO_VERSION=3.1.8
# Wed, 11 Jan 2017 17:27:08 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Wed, 11 Jan 2017 17:27:09 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.8-1_amd64.deb
# Wed, 11 Jan 2017 17:27:09 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.8-1_amd64.deb
# Wed, 11 Jan 2017 17:27:09 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.8-1_amd64.deb.asc
# Wed, 11 Jan 2017 17:27:11 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 11 Jan 2017 17:27:25 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2017 17:27:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jan 2017 17:27:54 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 11 Jan 2017 17:27:54 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 11 Jan 2017 17:27:55 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Wed, 11 Jan 2017 17:27:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jan 2017 17:27:56 GMT
EXPOSE 8529/tcp
# Wed, 11 Jan 2017 17:27:56 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a075c6c093e27ca133cc49c898dacd44cfdb429391f1516f7ed3b8f6a3ed1771`  
		Last Modified: Wed, 11 Jan 2017 17:29:33 GMT  
		Size: 7.4 KB (7370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a868a354a9c2b4992bd4ccfe2b8b7a9ef9bbd43d7cb0b162fe96944c6e0625`  
		Last Modified: Wed, 11 Jan 2017 17:29:35 GMT  
		Size: 6.7 MB (6684393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a902b81027fceb627a985c192cfa3c13a1ea819391b2a285069fe9c564ad343`  
		Last Modified: Wed, 11 Jan 2017 17:29:33 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0f4d9497beda8be2a5c1ab6ec3b444b631275e406f8f35468393c6f0ae527b`  
		Last Modified: Wed, 11 Jan 2017 17:29:55 GMT  
		Size: 68.6 MB (68585568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23462fe0a445e867736bb52048c9cff3dc2eefb6ab6a35a6cc59c61f05f0186`  
		Last Modified: Wed, 11 Jan 2017 17:29:33 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
