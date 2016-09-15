## `arangodb:latest`

```console
$ docker pull arangodb@sha256:d67ef54ec39fcc2cb6efdf4897e0db7ddcca5503e74c1b569c8163c680996643
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119135302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353682aefb0009bd51377779fbfeaec48e6950682dac13284566f571840d0ddd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 01:05:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 31 Aug 2016 01:07:51 GMT
ENV ARCHITECTURE=amd64
# Thu, 15 Sep 2016 19:21:37 GMT
ENV ARANGO_VERSION=3.0.8
# Thu, 15 Sep 2016 19:21:38 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Thu, 15 Sep 2016 19:21:38 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.8_amd64.deb
# Thu, 15 Sep 2016 19:21:38 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.8_amd64.deb
# Thu, 15 Sep 2016 19:21:38 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.8_amd64.deb.asc
# Thu, 15 Sep 2016 19:21:40 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 15 Sep 2016 19:21:53 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Sep 2016 19:21:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Sep 2016 19:22:18 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 15 Sep 2016 19:22:19 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 15 Sep 2016 19:22:19 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Thu, 15 Sep 2016 19:22:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Sep 2016 19:22:20 GMT
EXPOSE 8529/tcp
# Thu, 15 Sep 2016 19:22:21 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19428eb8f7928b4e3dcdf7c373a8b335f1ba344a3c338eab8af67f1ba4d6e962`  
		Last Modified: Thu, 15 Sep 2016 19:23:26 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e825c3024f3ecb54f44dfc870303be37bb9610eb777f787a77618fa1ac9625c5`  
		Last Modified: Thu, 15 Sep 2016 19:23:26 GMT  
		Size: 6.7 MB (6683815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5c3dd63720917ab96c90c89d363ad1b4856b0f749ee158ff78c44f98c255f7`  
		Last Modified: Thu, 15 Sep 2016 19:23:25 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410ac034a19947e34549f81ac45c6cf09872986f92e3bb0265f9ef6d202d531c`  
		Last Modified: Thu, 15 Sep 2016 19:23:42 GMT  
		Size: 61.1 MB (61075910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60af65e5fba7fa6b8f4e6d854ff5428074266cd419ce2669ea7b7521a2c01e8`  
		Last Modified: Thu, 15 Sep 2016 19:23:25 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
