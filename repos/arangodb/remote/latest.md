## `arangodb:latest`

```console
$ docker pull arangodb@sha256:6fae0cfee74e9a8fdc29712b9363b1f8ccc6d155ab7b707765b95d7375098fdb
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137937938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb01897621ae0a5ef8624dcd389956f77b738df99f50312544341f3c5ac3ab6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:06:14 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 21 Mar 2017 20:07:10 GMT
ENV ARCHITECTURE=amd64
# Tue, 21 Mar 2017 20:07:11 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 20 Apr 2017 14:27:12 GMT
ENV ARANGO_VERSION=3.1.18
# Thu, 20 Apr 2017 14:27:13 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Thu, 20 Apr 2017 14:27:14 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.18-1_amd64.deb
# Thu, 20 Apr 2017 14:27:14 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.18-1_amd64.deb
# Thu, 20 Apr 2017 14:27:15 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.18-1_amd64.deb.asc
# Thu, 20 Apr 2017 14:27:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 20 Apr 2017 14:27:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 20 Apr 2017 14:27:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 20 Apr 2017 14:28:22 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 20 Apr 2017 14:28:28 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 20 Apr 2017 14:28:29 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Thu, 20 Apr 2017 14:28:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Apr 2017 14:28:46 GMT
EXPOSE 8529/tcp
# Thu, 20 Apr 2017 14:28:47 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860f60a2883a867338175fe137e0df8896a5d24e9dd228fec3c16816c5952a1a`  
		Last Modified: Thu, 20 Apr 2017 14:29:54 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816f0ae14dc9337d1a3d5cfeec338d2d6122f08d4ebde984ce5a689c4ac17d71`  
		Last Modified: Thu, 20 Apr 2017 14:29:55 GMT  
		Size: 6.9 MB (6900046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1787fb4e08a63510c0d448e20f11de72a36b831701868501e23613510849e7f3`  
		Last Modified: Thu, 20 Apr 2017 14:29:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b164d501e1c1465e9482b664ed570c551e6aefcb946c04075e2c5651c825ad`  
		Last Modified: Thu, 20 Apr 2017 14:30:06 GMT  
		Size: 79.6 MB (79590461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242ecea924e6f01827fc5598cb0124c60c233d180a46ce56a76954efc01a72d8`  
		Last Modified: Thu, 20 Apr 2017 14:29:54 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
