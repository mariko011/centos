## `arangodb:latest`

```console
$ docker pull arangodb@sha256:3d081de57cef418e5a8297e04aa1a0a2ee7ebe2f9c9675a2836de957d8975688
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119121636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43130e4d7736f686880b90e6a2ee14daa6be2157d9e8c32b12cd2ebd0abb6b6`
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
# Fri, 23 Sep 2016 19:38:54 GMT
ENV ARANGO_VERSION=3.0.9
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.9_amd64.deb
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.9_amd64.deb
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.9_amd64.deb.asc
# Fri, 23 Sep 2016 19:38:57 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 23 Sep 2016 19:39:10 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:39:35 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 23 Sep 2016 19:39:36 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 23 Sep 2016 19:39:36 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Fri, 23 Sep 2016 19:39:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 19:39:37 GMT
EXPOSE 8529/tcp
# Fri, 23 Sep 2016 19:39:37 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fe83b963a60a33ae01acfad4a962e8b5855b7485e22d250b9e7439297eb1ea`  
		Last Modified: Fri, 23 Sep 2016 19:41:01 GMT  
		Size: 6.8 KB (6770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ea478000152cbbef7945f246662524ba4feafc5c97ff7a22487680dcffb22f`  
		Last Modified: Fri, 23 Sep 2016 19:41:03 GMT  
		Size: 6.7 MB (6683868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b40763d860127f5df4a7d989795c1f68cf0564e489e5187144217aca31dddba`  
		Last Modified: Fri, 23 Sep 2016 19:41:01 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f32a4901caacf586f6565fc9311ff0b32b7502934308e45c4043eaed74fb4d`  
		Last Modified: Fri, 23 Sep 2016 19:41:21 GMT  
		Size: 61.1 MB (61075098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96c91558949caf0af1c5992d164fc3003782447a42fa0d20299294c7cb3e964`  
		Last Modified: Fri, 23 Sep 2016 19:41:01 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
