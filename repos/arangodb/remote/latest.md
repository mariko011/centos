## `arangodb:latest`

```console
$ docker pull arangodb@sha256:3bbb1b0cadaddaf2622c3a7dad8e869c298db0eece88796220641652c08835d1
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126632568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3c486d370d923f334f17fd4193a68cc81d904ae2196baea5be6a71972931c3`
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
# Wed, 21 Dec 2016 19:14:32 GMT
ENV ARANGO_VERSION=3.1.6
# Wed, 21 Dec 2016 19:14:33 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Wed, 21 Dec 2016 19:14:33 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.6-1_amd64.deb
# Wed, 21 Dec 2016 19:14:34 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.6-1_amd64.deb
# Wed, 21 Dec 2016 19:14:49 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.6-1_amd64.deb.asc
# Wed, 21 Dec 2016 19:14:51 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 21 Dec 2016 19:15:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 21 Dec 2016 19:15:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 21 Dec 2016 19:15:47 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 21 Dec 2016 19:15:49 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 21 Dec 2016 19:15:50 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Wed, 21 Dec 2016 19:15:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Dec 2016 19:15:52 GMT
EXPOSE 8529/tcp
# Wed, 21 Dec 2016 19:15:52 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66bb2e2d5660734bd2c203d47d1b5cc98fca6cdd9f72fe8bd30054da75bb8a35`  
		Last Modified: Wed, 21 Dec 2016 19:19:01 GMT  
		Size: 7.4 KB (7371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d5c847a441c5bd63b655334b731bf90f8233aa0a016a72e339a782cbb93bdc6`  
		Last Modified: Wed, 21 Dec 2016 19:19:08 GMT  
		Size: 6.7 MB (6684401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639c0115f71aef724589155a7a604e83c5eb73a63c40fa903aa5a75e9dfa096c`  
		Last Modified: Wed, 21 Dec 2016 19:19:03 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0370e7c1368f3e37915bdbfffbf2563474c7ae237061ff3bbde4385890c1991`  
		Last Modified: Wed, 21 Dec 2016 19:19:33 GMT  
		Size: 68.6 MB (68576121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cf30ae6084e289bc15a935412a5c1ff5533f648b4d8ebbe24864ec2ff8a274`  
		Last Modified: Wed, 21 Dec 2016 19:19:01 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
