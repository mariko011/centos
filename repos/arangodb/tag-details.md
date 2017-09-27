<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.4`](#arangodb324)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:dae7faa5064417577758db1779bee2466da2055f4fd26234e9be83e99595992c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:43af6e2254d372a80d369b1a993e82a0398082beb654b1da057ebdde6c434d58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113331851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02527a25a2fe3e58bc182b7acd2de2bd1b7b476bf5108ebd9e000ba15b93249d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 15:21:18 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 13 Sep 2017 15:21:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARCHITECTURE=amd64
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 13 Sep 2017 15:21:21 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 13 Sep 2017 15:21:21 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 13 Sep 2017 15:21:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 13 Sep 2017 15:21:55 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 13 Sep 2017 15:21:56 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 13 Sep 2017 15:21:56 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Wed, 13 Sep 2017 15:21:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 15:21:56 GMT
EXPOSE 8529/tcp
# Wed, 13 Sep 2017 15:21:57 GMT
USER [arangodb]
# Wed, 13 Sep 2017 15:21:57 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750485fd0ea93feba6553e4bd947a5eea46118fe0cf86810f0df54ed5425897f`  
		Last Modified: Wed, 13 Sep 2017 15:23:00 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050ac39a6bf4714562ab73ddc8e9fc268f8a522c28ea0d3a681b0854a013a8c1`  
		Last Modified: Wed, 13 Sep 2017 15:23:10 GMT  
		Size: 60.7 MB (60727634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13210a0b86370ec845ae363398aa54427733250a613b5ef8c1371bd9d5e4470`  
		Last Modified: Wed, 13 Sep 2017 15:23:01 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04db48135b30bcdb07af5d8c54439cd97e5c814cd7a08eddcd8f1abbab37ab3e`  
		Last Modified: Wed, 13 Sep 2017 15:23:01 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:dae7faa5064417577758db1779bee2466da2055f4fd26234e9be83e99595992c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:43af6e2254d372a80d369b1a993e82a0398082beb654b1da057ebdde6c434d58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113331851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02527a25a2fe3e58bc182b7acd2de2bd1b7b476bf5108ebd9e000ba15b93249d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 15:21:18 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 13 Sep 2017 15:21:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARCHITECTURE=amd64
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Wed, 13 Sep 2017 15:21:20 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 13 Sep 2017 15:21:21 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 13 Sep 2017 15:21:21 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 13 Sep 2017 15:21:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 13 Sep 2017 15:21:55 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 13 Sep 2017 15:21:56 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 13 Sep 2017 15:21:56 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Wed, 13 Sep 2017 15:21:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 15:21:56 GMT
EXPOSE 8529/tcp
# Wed, 13 Sep 2017 15:21:57 GMT
USER [arangodb]
# Wed, 13 Sep 2017 15:21:57 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750485fd0ea93feba6553e4bd947a5eea46118fe0cf86810f0df54ed5425897f`  
		Last Modified: Wed, 13 Sep 2017 15:23:00 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050ac39a6bf4714562ab73ddc8e9fc268f8a522c28ea0d3a681b0854a013a8c1`  
		Last Modified: Wed, 13 Sep 2017 15:23:10 GMT  
		Size: 60.7 MB (60727634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13210a0b86370ec845ae363398aa54427733250a613b5ef8c1371bd9d5e4470`  
		Last Modified: Wed, 13 Sep 2017 15:23:01 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04db48135b30bcdb07af5d8c54439cd97e5c814cd7a08eddcd8f1abbab37ab3e`  
		Last Modified: Wed, 13 Sep 2017 15:23:01 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:7d716a76763186b00933112a0cf766de4404f2b2bb832b51b24f81acb574e2dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

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

## `arangodb:3.2.4`

**does not exist** (yet?)

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
