## `arangodb:latest`

```console
$ docker pull arangodb@sha256:c3ca21fb17e4eac3f4dd5cb2c4d2c6bef680663742e92a657d45e2952d4bbccf
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127237712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af3628fc7d92c7021c2fbb90b77d819cacbe2825f09b4176d8a279d35fa836f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:40:58 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 27 Feb 2017 22:41:41 GMT
ENV ARCHITECTURE=amd64
# Mon, 27 Feb 2017 22:42:25 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 21 Mar 2017 17:21:50 GMT
ENV ARANGO_VERSION=3.1.15
# Tue, 21 Mar 2017 17:21:50 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 21 Mar 2017 17:21:51 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.15-1_amd64.deb
# Tue, 21 Mar 2017 17:21:52 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.15-1_amd64.deb
# Tue, 21 Mar 2017 17:21:53 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.15-1_amd64.deb.asc
# Tue, 21 Mar 2017 17:21:55 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 21 Mar 2017 17:22:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 17:22:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 17:22:40 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 21 Mar 2017 17:22:41 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 21 Mar 2017 17:22:42 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Tue, 21 Mar 2017 17:22:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 17:22:44 GMT
EXPOSE 8529/tcp
# Tue, 21 Mar 2017 17:22:45 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4290e7dcd9e22b58fd3a5324ba07b310066b223bb4bcdeb9743580fbc57ef046`  
		Last Modified: Tue, 21 Mar 2017 17:38:39 GMT  
		Size: 7.4 KB (7374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e230b2c6a46065247b07350e1bcc1792756c442243ca8c79d465e7101510c4`  
		Last Modified: Tue, 21 Mar 2017 17:38:42 GMT  
		Size: 6.7 MB (6691528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003c55a276e56aad3dd14cd3d237078bac62cb8b9c4d8936aeb1176b69d2fd55`  
		Last Modified: Tue, 21 Mar 2017 17:38:40 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985f4926b009f422cf81c293fc267b977d68defca2dc080b8521f0709380a2b5`  
		Last Modified: Tue, 21 Mar 2017 17:39:01 GMT  
		Size: 69.2 MB (69173886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95842f17dcb53d83166c7d71ca5578f03e4702c0c32a91170148891afb5229e5`  
		Last Modified: Tue, 21 Mar 2017 17:38:40 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
