## `arangodb:latest`

```console
$ docker pull arangodb@sha256:190a91767c72eae56ed0f303702c66f649f6ad1b17c0272b4526267033b964f0
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119123238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b584d9e285a793194c7fed32fff0cf50ba6aa2126d792a872cab8d78eb35dd38`
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
# Tue, 27 Sep 2016 17:34:51 GMT
ENV ARANGO_VERSION=3.0.10
# Tue, 27 Sep 2016 17:34:52 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Tue, 27 Sep 2016 17:34:52 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.10_amd64.deb
# Tue, 27 Sep 2016 17:34:52 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.10_amd64.deb
# Tue, 27 Sep 2016 17:34:53 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.10_amd64.deb.asc
# Tue, 27 Sep 2016 17:34:55 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 27 Sep 2016 17:35:13 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 27 Sep 2016 17:35:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Sep 2016 17:35:39 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 27 Sep 2016 17:35:40 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 27 Sep 2016 17:35:40 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Tue, 27 Sep 2016 17:35:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Sep 2016 17:35:41 GMT
EXPOSE 8529/tcp
# Tue, 27 Sep 2016 17:35:42 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad7f21ff8127beaec94a80b5310d7d7fd6543ac81def937ca2201fc2b2ff1bc`  
		Last Modified: Tue, 27 Sep 2016 17:37:11 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a103c08a9a3aacc94c2a65acedc780da754aa2b09b39e6d265225a0476b174`  
		Last Modified: Tue, 27 Sep 2016 17:37:12 GMT  
		Size: 6.7 MB (6683826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4126d10bd62e4164bff7095bd6eec383862e4abeca6fe4875a85926ee8af5d`  
		Last Modified: Tue, 27 Sep 2016 17:37:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d331f8e9c91297f37fc375bc9b9b2e87d9b8cc57582e347ccc971c21964a4bb`  
		Last Modified: Tue, 27 Sep 2016 17:37:28 GMT  
		Size: 61.1 MB (61076740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef4a2fc201248964aa8ebbe5eae2a3cd5c0f69c2291597ded5bd4726e00f21b`  
		Last Modified: Tue, 27 Sep 2016 17:37:11 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
