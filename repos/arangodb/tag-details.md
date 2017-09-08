<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.2`](#arangodb322)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:bc539b48feb65a24b98ac912e367c54382b4f0141db6f1aee54ea57769050245
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113307595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f15a1e0bf0bd82cbb864ae7f180cd65c9be58a35581d03357cfd3a4c78950bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:56:24 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 07 Sep 2017 23:56:26 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 07 Sep 2017 23:56:26 GMT
ENV ARCHITECTURE=amd64
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_VERSION=2.8.11
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Thu, 07 Sep 2017 23:56:28 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Thu, 07 Sep 2017 23:57:03 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 07 Sep 2017 23:57:08 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Thu, 07 Sep 2017 23:57:08 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Thu, 07 Sep 2017 23:57:09 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Thu, 07 Sep 2017 23:57:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Sep 2017 23:57:09 GMT
EXPOSE 8529/tcp
# Thu, 07 Sep 2017 23:57:10 GMT
USER [arangodb]
# Thu, 07 Sep 2017 23:57:15 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b134aee3a4374732c318097897a504a16d1ecb5260380e4417de107cea3fff88`  
		Last Modified: Fri, 08 Sep 2017 17:47:31 GMT  
		Size: 7.4 KB (7416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedb4d8793a6a6a7a35276b04e5635cad35941b5948d0e9f381c62aa14fbfad8`  
		Last Modified: Fri, 08 Sep 2017 17:47:47 GMT  
		Size: 60.7 MB (60703376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b13586181b6cdf00467cce9c6e0366a1607dce880db90cd9b20b5caf673f621`  
		Last Modified: Fri, 08 Sep 2017 17:47:31 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7beab7444287119c33e32c2064d441d8a7c3b82d148d1d97febda00df9aebf`  
		Last Modified: Fri, 08 Sep 2017 17:47:31 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:bc539b48feb65a24b98ac912e367c54382b4f0141db6f1aee54ea57769050245
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113307595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f15a1e0bf0bd82cbb864ae7f180cd65c9be58a35581d03357cfd3a4c78950bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:56:24 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 07 Sep 2017 23:56:26 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 07 Sep 2017 23:56:26 GMT
ENV ARCHITECTURE=amd64
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_VERSION=2.8.11
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Thu, 07 Sep 2017 23:56:27 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Thu, 07 Sep 2017 23:56:28 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Thu, 07 Sep 2017 23:57:03 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 07 Sep 2017 23:57:08 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Thu, 07 Sep 2017 23:57:08 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Thu, 07 Sep 2017 23:57:09 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Thu, 07 Sep 2017 23:57:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Sep 2017 23:57:09 GMT
EXPOSE 8529/tcp
# Thu, 07 Sep 2017 23:57:10 GMT
USER [arangodb]
# Thu, 07 Sep 2017 23:57:15 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b134aee3a4374732c318097897a504a16d1ecb5260380e4417de107cea3fff88`  
		Last Modified: Fri, 08 Sep 2017 17:47:31 GMT  
		Size: 7.4 KB (7416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedb4d8793a6a6a7a35276b04e5635cad35941b5948d0e9f381c62aa14fbfad8`  
		Last Modified: Fri, 08 Sep 2017 17:47:47 GMT  
		Size: 60.7 MB (60703376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b13586181b6cdf00467cce9c6e0366a1607dce880db90cd9b20b5caf673f621`  
		Last Modified: Fri, 08 Sep 2017 17:47:31 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7beab7444287119c33e32c2064d441d8a7c3b82d148d1d97febda00df9aebf`  
		Last Modified: Fri, 08 Sep 2017 17:47:31 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:6feb2824309e485d3c920166b362deb6983a4df373b42acf480883bea99f733f
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111465185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e8a5565170dbdc64a07a15232378a60a584982fa2ee25a706a3ab501cccf2d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:57:20 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 07 Sep 2017 23:57:21 GMT
ENV ARCHITECTURE=amd64
# Thu, 07 Sep 2017 23:57:21 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 07 Sep 2017 23:57:21 GMT
ENV ARANGO_VERSION=3.2.2
# Thu, 07 Sep 2017 23:57:21 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Thu, 07 Sep 2017 23:57:22 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.2-1_amd64.deb
# Thu, 07 Sep 2017 23:57:22 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.2-1_amd64.deb
# Thu, 07 Sep 2017 23:57:22 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.2-1_amd64.deb.asc
# Thu, 07 Sep 2017 23:57:29 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:57:34 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 07 Sep 2017 23:57:42 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:57:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Sep 2017 23:57:56 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 07 Sep 2017 23:57:57 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 07 Sep 2017 23:57:57 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Thu, 07 Sep 2017 23:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Sep 2017 23:57:58 GMT
EXPOSE 8529/tcp
# Thu, 07 Sep 2017 23:57:58 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a7f7d0016bfabfc7c7f64fcff1fd89d3ba27f75d1b1f39c452558f9db993ec`  
		Last Modified: Fri, 08 Sep 2017 17:48:09 GMT  
		Size: 6.7 MB (6733050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb9b7bb0ad744eec6e315786b763543082a188f0513a73ed1da0c76f3cd76f0`  
		Last Modified: Fri, 08 Sep 2017 17:48:07 GMT  
		Size: 7.2 KB (7173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c0fc1cc58b1a8fec922ae70773abaa51395e55f3973a8d2262a57e84934c82`  
		Last Modified: Fri, 08 Sep 2017 17:48:09 GMT  
		Size: 7.3 MB (7349315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a071c63d31eb2bae9083cfbec0ebb7bcfbf9e06d741a4f878d6733bd0f2e105`  
		Last Modified: Fri, 08 Sep 2017 17:48:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e404017278dee92e577164db9c6838896ecf4d5ac06bad246d4ce5a0bf414b`  
		Last Modified: Fri, 08 Sep 2017 17:48:23 GMT  
		Size: 52.2 MB (52248205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2932ee5e11520b5b09db474a7f4746940babae2a6d2077566b361cd2e534f696`  
		Last Modified: Fri, 08 Sep 2017 17:48:07 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.2`

```console
$ docker pull arangodb@sha256:6feb2824309e485d3c920166b362deb6983a4df373b42acf480883bea99f733f
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.2.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111465185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e8a5565170dbdc64a07a15232378a60a584982fa2ee25a706a3ab501cccf2d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:57:20 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 07 Sep 2017 23:57:21 GMT
ENV ARCHITECTURE=amd64
# Thu, 07 Sep 2017 23:57:21 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 07 Sep 2017 23:57:21 GMT
ENV ARANGO_VERSION=3.2.2
# Thu, 07 Sep 2017 23:57:21 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Thu, 07 Sep 2017 23:57:22 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.2-1_amd64.deb
# Thu, 07 Sep 2017 23:57:22 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.2-1_amd64.deb
# Thu, 07 Sep 2017 23:57:22 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.2-1_amd64.deb.asc
# Thu, 07 Sep 2017 23:57:29 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:57:34 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 07 Sep 2017 23:57:42 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:57:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Sep 2017 23:57:56 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 07 Sep 2017 23:57:57 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 07 Sep 2017 23:57:57 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Thu, 07 Sep 2017 23:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Sep 2017 23:57:58 GMT
EXPOSE 8529/tcp
# Thu, 07 Sep 2017 23:57:58 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a7f7d0016bfabfc7c7f64fcff1fd89d3ba27f75d1b1f39c452558f9db993ec`  
		Last Modified: Fri, 08 Sep 2017 17:48:09 GMT  
		Size: 6.7 MB (6733050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb9b7bb0ad744eec6e315786b763543082a188f0513a73ed1da0c76f3cd76f0`  
		Last Modified: Fri, 08 Sep 2017 17:48:07 GMT  
		Size: 7.2 KB (7173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c0fc1cc58b1a8fec922ae70773abaa51395e55f3973a8d2262a57e84934c82`  
		Last Modified: Fri, 08 Sep 2017 17:48:09 GMT  
		Size: 7.3 MB (7349315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a071c63d31eb2bae9083cfbec0ebb7bcfbf9e06d741a4f878d6733bd0f2e105`  
		Last Modified: Fri, 08 Sep 2017 17:48:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e404017278dee92e577164db9c6838896ecf4d5ac06bad246d4ce5a0bf414b`  
		Last Modified: Fri, 08 Sep 2017 17:48:23 GMT  
		Size: 52.2 MB (52248205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2932ee5e11520b5b09db474a7f4746940babae2a6d2077566b361cd2e534f696`  
		Last Modified: Fri, 08 Sep 2017 17:48:07 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:6feb2824309e485d3c920166b362deb6983a4df373b42acf480883bea99f733f
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111465185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e8a5565170dbdc64a07a15232378a60a584982fa2ee25a706a3ab501cccf2d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:57:20 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 07 Sep 2017 23:57:21 GMT
ENV ARCHITECTURE=amd64
# Thu, 07 Sep 2017 23:57:21 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 07 Sep 2017 23:57:21 GMT
ENV ARANGO_VERSION=3.2.2
# Thu, 07 Sep 2017 23:57:21 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Thu, 07 Sep 2017 23:57:22 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.2-1_amd64.deb
# Thu, 07 Sep 2017 23:57:22 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.2-1_amd64.deb
# Thu, 07 Sep 2017 23:57:22 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.2-1_amd64.deb.asc
# Thu, 07 Sep 2017 23:57:29 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:57:34 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 07 Sep 2017 23:57:42 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:57:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Sep 2017 23:57:56 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 07 Sep 2017 23:57:57 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 07 Sep 2017 23:57:57 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Thu, 07 Sep 2017 23:57:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Sep 2017 23:57:58 GMT
EXPOSE 8529/tcp
# Thu, 07 Sep 2017 23:57:58 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a7f7d0016bfabfc7c7f64fcff1fd89d3ba27f75d1b1f39c452558f9db993ec`  
		Last Modified: Fri, 08 Sep 2017 17:48:09 GMT  
		Size: 6.7 MB (6733050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb9b7bb0ad744eec6e315786b763543082a188f0513a73ed1da0c76f3cd76f0`  
		Last Modified: Fri, 08 Sep 2017 17:48:07 GMT  
		Size: 7.2 KB (7173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c0fc1cc58b1a8fec922ae70773abaa51395e55f3973a8d2262a57e84934c82`  
		Last Modified: Fri, 08 Sep 2017 17:48:09 GMT  
		Size: 7.3 MB (7349315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a071c63d31eb2bae9083cfbec0ebb7bcfbf9e06d741a4f878d6733bd0f2e105`  
		Last Modified: Fri, 08 Sep 2017 17:48:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e404017278dee92e577164db9c6838896ecf4d5ac06bad246d4ce5a0bf414b`  
		Last Modified: Fri, 08 Sep 2017 17:48:23 GMT  
		Size: 52.2 MB (52248205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2932ee5e11520b5b09db474a7f4746940babae2a6d2077566b361cd2e534f696`  
		Last Modified: Fri, 08 Sep 2017 17:48:07 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
