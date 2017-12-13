## `arangodb:latest`

```console
$ docker pull arangodb@sha256:c95b0d2f8b87919af0f8c51aacfa4c2e9a9206aef56aae45abb004a0a8bdaced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:3a2061da17299cf53a1519bd3f830250b50530b59a2555d5118361719305a5e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111909544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a05ce4ee72e60d1a1e00dec12e11bb5b0239f287b7e2ac9be1793a9b5a6978`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:36 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 12 Dec 2017 03:13:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 12 Dec 2017 03:13:36 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 12 Dec 2017 03:13:37 GMT
ENV ARANGO_VERSION=3.2.9
# Tue, 12 Dec 2017 03:13:37 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Tue, 12 Dec 2017 03:13:37 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.9-1_amd64.deb
# Tue, 12 Dec 2017 03:13:37 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.9-1_amd64.deb
# Tue, 12 Dec 2017 03:13:37 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.9-1_amd64.deb.asc
# Tue, 12 Dec 2017 03:13:42 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 00:03:34 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 13 Dec 2017 00:03:47 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 00:03:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Dec 2017 00:04:01 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 13 Dec 2017 00:04:02 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 13 Dec 2017 00:04:02 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Wed, 13 Dec 2017 00:04:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Dec 2017 00:04:03 GMT
EXPOSE 8529/tcp
# Wed, 13 Dec 2017 00:04:03 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab601924125c89e1e38f41fe2282cc55ba8dc638ccc33ced4c1ea27e8e882743`  
		Last Modified: Wed, 13 Dec 2017 00:08:44 GMT  
		Size: 6.9 MB (6920973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6ecbb096b108bf3c17ce3c6d033b7ffa4c70cb17b8eff6c3674708aae01ad4`  
		Last Modified: Wed, 13 Dec 2017 00:08:40 GMT  
		Size: 3.5 KB (3473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b944e4d24f1b6434189fe149a6bb56eb1dd2c8b36f0d0d999ae178eb057935d6`  
		Last Modified: Wed, 13 Dec 2017 00:08:42 GMT  
		Size: 7.4 MB (7351337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54ac9eed4f3f7ecd214d676c9b0bbb9353364ff9a04ab46fe6d402fd8a5f81a`  
		Last Modified: Wed, 13 Dec 2017 00:08:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9490acfb128a3afda99d13abd55a4bbe236906749e48beec272c6f12692cea9f`  
		Last Modified: Wed, 13 Dec 2017 00:09:00 GMT  
		Size: 52.5 MB (52510186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a349812b6d23d6b6392d6fb982b23a10c5900c6218efd61cfac15efe6174b7a`  
		Last Modified: Wed, 13 Dec 2017 00:08:41 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
