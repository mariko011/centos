## `arangodb:latest`

```console
$ docker pull arangodb@sha256:7d716a76763186b00933112a0cf766de4404f2b2bb832b51b24f81acb574e2dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:79395ac9a473178192e8e4ddc0c0638935a41dddaec1b25410eda0a943643bbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111678969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f81436125b54f98739cfa3f1c9b0823b21fd396bc20efe043cc711d3875bf73`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 15:21:58 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 13 Sep 2017 15:21:58 GMT
ENV ARCHITECTURE=amd64
# Wed, 13 Sep 2017 15:21:58 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 13 Sep 2017 15:21:59 GMT
ENV ARANGO_VERSION=3.2.3
# Wed, 13 Sep 2017 15:21:59 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 13 Sep 2017 15:21:59 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.3-1_amd64.deb
# Wed, 13 Sep 2017 15:21:59 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.3-1_amd64.deb
# Wed, 13 Sep 2017 15:21:59 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.3-1_amd64.deb.asc
# Wed, 13 Sep 2017 15:22:07 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:22:27 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 13 Sep 2017 15:22:34 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:22:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 15:22:49 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 13 Sep 2017 15:22:49 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 13 Sep 2017 15:22:49 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Wed, 13 Sep 2017 15:22:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 15:22:50 GMT
EXPOSE 8529/tcp
# Wed, 13 Sep 2017 15:22:50 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fc55ad0b6ab762b38999eef836f753d79e1757d101057690cffe69a662df6c`  
		Last Modified: Wed, 13 Sep 2017 15:23:26 GMT  
		Size: 6.9 MB (6920799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63de2c72bf7eb4862698c6bbc4b108ab841a76c9948e01622b509e3b8203a6a0`  
		Last Modified: Wed, 13 Sep 2017 15:23:23 GMT  
		Size: 7.2 KB (7173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689c8aacc01f46dbdfc3b5908667f703f0d313eae037d4f8b85199abf1f02075`  
		Last Modified: Wed, 13 Sep 2017 15:23:24 GMT  
		Size: 7.3 MB (7349323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f647697b00fe595d50c0f343f12f5d3f6a392d5727094fec181a974b9d638f7a`  
		Last Modified: Wed, 13 Sep 2017 15:23:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9bd05706141f9cf6db456624aaeeebbe87f73e95d817e01c14fcbc9b049d79`  
		Last Modified: Wed, 13 Sep 2017 15:23:34 GMT  
		Size: 52.3 MB (52274232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d8c2c035a4dbdc02956c261c579a0cd309a855eee3d39e12a70457186abeb3`  
		Last Modified: Wed, 13 Sep 2017 15:23:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
