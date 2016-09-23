## `arangodb:latest`

```console
$ docker pull arangodb@sha256:c579e3fbc926b64e4c0680bc400548c963ea51e4c61dca6474e56f3832811e58
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119122144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba2a2a63137028f7d375e06e9f89de761ad317df27a6ffdaf1a6f98afbd6f61`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:16:06 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 23 Sep 2016 18:22:53 GMT
ENV ARCHITECTURE=amd64
# Fri, 23 Sep 2016 18:22:53 GMT
ENV ARANGO_VERSION=3.0.8
# Fri, 23 Sep 2016 18:22:54 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Fri, 23 Sep 2016 18:22:54 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.8_amd64.deb
# Fri, 23 Sep 2016 18:22:54 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.8_amd64.deb
# Fri, 23 Sep 2016 18:22:55 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.8_amd64.deb.asc
# Fri, 23 Sep 2016 18:22:56 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 23 Sep 2016 18:23:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:23:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 18:23:43 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 23 Sep 2016 18:23:45 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 23 Sep 2016 18:23:45 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Fri, 23 Sep 2016 18:23:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 18:23:47 GMT
EXPOSE 8529/tcp
# Fri, 23 Sep 2016 18:23:47 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6543aeee94b9fd18f05f9a076a3787e1936ff0dbd73153b1f5989ff4a66c97e`  
		Last Modified: Fri, 23 Sep 2016 18:23:58 GMT  
		Size: 6.8 KB (6767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aff5e3b334e2e1e73dc3fa279b5b87b34a9340c32170bbb9d05fdb1bb30a2de`  
		Last Modified: Fri, 23 Sep 2016 18:24:01 GMT  
		Size: 6.7 MB (6683788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323a042a927bd1d2517c0839380610e832200cb585e7035717e9bc1f0452f5a0`  
		Last Modified: Fri, 23 Sep 2016 18:23:59 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462c421a2e872027345787b49d44b0237102dea79adb81181aa0961046499faf`  
		Last Modified: Fri, 23 Sep 2016 18:24:27 GMT  
		Size: 61.1 MB (61075690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604f157c06cecbace2dbb3a278f335553aa93a16197e23c7d5065cf318e1e3c1`  
		Last Modified: Fri, 23 Sep 2016 18:23:58 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
