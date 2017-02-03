## `arangodb:latest`

```console
$ docker pull arangodb@sha256:f914b36590db9a44f1db43c75de78e56f3fb48fff965619ba5933a7e6dbd7609
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127282341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b99b75560a2203d9a5dbe80f5e2c96f65ad189f68514471cd385d9ada02072`
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
# Fri, 03 Feb 2017 21:42:52 GMT
ENV ARANGO_VERSION=3.1.10
# Fri, 03 Feb 2017 21:42:52 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 03 Feb 2017 21:42:53 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.10-1_amd64.deb
# Fri, 03 Feb 2017 21:42:53 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.10-1_amd64.deb
# Fri, 03 Feb 2017 21:42:53 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.10-1_amd64.deb.asc
# Fri, 03 Feb 2017 21:42:54 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 03 Feb 2017 21:43:05 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 03 Feb 2017 21:43:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Feb 2017 21:43:31 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 03 Feb 2017 21:43:31 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 03 Feb 2017 21:43:32 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Fri, 03 Feb 2017 21:43:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Feb 2017 21:43:33 GMT
EXPOSE 8529/tcp
# Fri, 03 Feb 2017 21:43:33 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3a6c3cf91226fee1acd1a36229b447e1b02d36c5b32d382ef096ace7567515`  
		Last Modified: Fri, 03 Feb 2017 21:45:20 GMT  
		Size: 7.4 KB (7368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4603973f45e0906287820ec250c04a638548bd7ba27d78dc8950a893162fe94c`  
		Last Modified: Fri, 03 Feb 2017 21:45:23 GMT  
		Size: 6.7 MB (6691263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96830c730c0b4267cb51e77d1760a32b2fb96f4dcf2254f4996c352cf1241e1`  
		Last Modified: Fri, 03 Feb 2017 21:45:20 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b53724c930ccf03c300983e8c155050cd4a50271f7785eb7b90d931727f977`  
		Last Modified: Fri, 03 Feb 2017 21:45:39 GMT  
		Size: 69.2 MB (69220948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63c74923b116e7460f60fe6d50481fdbbce257ae3c96c4eebd6de279f8d8161`  
		Last Modified: Fri, 03 Feb 2017 21:45:20 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
