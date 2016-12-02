## `arangodb:latest`

```console
$ docker pull arangodb@sha256:b5cf3098a82262594e86187940927d0fdd6d2cd94763f0da5335bd463cc1291d
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126581207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a87a0c42164c422c90dc5e44603f51d86ef09bb26dc64a435906032516d9134`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 18:42:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 08 Nov 2016 18:49:29 GMT
ENV ARCHITECTURE=amd64
# Mon, 14 Nov 2016 18:41:59 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 02 Dec 2016 19:06:35 GMT
ENV ARANGO_VERSION=3.1.3
# Fri, 02 Dec 2016 19:06:36 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 02 Dec 2016 19:06:36 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.3-1_amd64.deb
# Fri, 02 Dec 2016 19:06:36 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.3-1_amd64.deb
# Fri, 02 Dec 2016 19:06:36 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.3-1_amd64.deb.asc
# Fri, 02 Dec 2016 19:06:39 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 02 Dec 2016 19:06:51 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 02 Dec 2016 19:06:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 02 Dec 2016 19:07:17 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 02 Dec 2016 19:07:18 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 02 Dec 2016 19:07:18 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Fri, 02 Dec 2016 19:07:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Dec 2016 19:07:19 GMT
EXPOSE 8529/tcp
# Fri, 02 Dec 2016 19:07:20 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa091b42714af6479a6ff26b4884f73c4f39a58ce81a877aa575b69f60e20bd9`  
		Last Modified: Fri, 02 Dec 2016 19:08:59 GMT  
		Size: 7.4 KB (7375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fd93eb1f6e0c82f7e3893d0b33a0c0c7e1c67e34bf795fbe9e986845d18d5e`  
		Last Modified: Fri, 02 Dec 2016 19:09:02 GMT  
		Size: 6.7 MB (6683769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9d9a279b7b45d094aec0ce6dce98c14371bca9c8f8bca8f92df7617ec5cba`  
		Last Modified: Fri, 02 Dec 2016 19:08:59 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff0e3161be67f84dd5afe9a33cb5fe5a82cd72d0af12e1cc6b19c23ac6d8d84`  
		Last Modified: Fri, 02 Dec 2016 19:09:18 GMT  
		Size: 68.5 MB (68531525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50ffbf338420722fb1fa32e9fcaba701ca70655bb93b53bf94e371f88b0dd97`  
		Last Modified: Fri, 02 Dec 2016 19:09:00 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
