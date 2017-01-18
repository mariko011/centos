<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.5.5`](#arangodb255)
-	[`arangodb:2.5`](#arangodb25)
-	[`arangodb:2.7`](#arangodb27)
-	[`arangodb:2.7.5`](#arangodb275)
-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.8`](#arangodb318)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.5.5`

```console
$ docker pull arangodb@sha256:701944fa046d028e134e24f0ae9705ef1c9ffb01435253f304e20f93e07de645
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106464519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d227aa628cb95de5a97962a16b34291ca49d37c743c81939854fb079ab0bb0d4`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 23:59:48 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 16 Jan 2017 23:59:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 16 Jan 2017 23:59:49 GMT
ENV ARCHITECTURE=amd64
# Mon, 16 Jan 2017 23:59:50 GMT
ENV ARANGO_VERSION=2.5.5
# Mon, 16 Jan 2017 23:59:50 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Mon, 16 Jan 2017 23:59:50 GMT
ENV ARANGO_PACKAGE=arangodb_2.5.5_amd64.deb
# Mon, 16 Jan 2017 23:59:51 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb
# Mon, 16 Jan 2017 23:59:51 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb.asc
# Tue, 17 Jan 2017 00:00:16 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jan 2017 00:00:16 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 17 Jan 2017 00:00:16 GMT
EXPOSE 8529/tcp
# Tue, 17 Jan 2017 00:00:17 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506743560a4609d8da7217aa698c8184b7b61077562433e493530a528e8487bb`  
		Last Modified: Wed, 18 Jan 2017 03:00:46 GMT  
		Size: 7.4 KB (7369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76344457abd8955cb2b8f06074cf7ce20fd23b91fe25697c1edf3d6fa5d0485d`  
		Last Modified: Wed, 18 Jan 2017 03:01:07 GMT  
		Size: 55.1 MB (55095940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.5`

```console
$ docker pull arangodb@sha256:701944fa046d028e134e24f0ae9705ef1c9ffb01435253f304e20f93e07de645
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106464519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d227aa628cb95de5a97962a16b34291ca49d37c743c81939854fb079ab0bb0d4`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 23:59:48 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 16 Jan 2017 23:59:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 16 Jan 2017 23:59:49 GMT
ENV ARCHITECTURE=amd64
# Mon, 16 Jan 2017 23:59:50 GMT
ENV ARANGO_VERSION=2.5.5
# Mon, 16 Jan 2017 23:59:50 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Mon, 16 Jan 2017 23:59:50 GMT
ENV ARANGO_PACKAGE=arangodb_2.5.5_amd64.deb
# Mon, 16 Jan 2017 23:59:51 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb
# Mon, 16 Jan 2017 23:59:51 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb.asc
# Tue, 17 Jan 2017 00:00:16 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jan 2017 00:00:16 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 17 Jan 2017 00:00:16 GMT
EXPOSE 8529/tcp
# Tue, 17 Jan 2017 00:00:17 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506743560a4609d8da7217aa698c8184b7b61077562433e493530a528e8487bb`  
		Last Modified: Wed, 18 Jan 2017 03:00:46 GMT  
		Size: 7.4 KB (7369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76344457abd8955cb2b8f06074cf7ce20fd23b91fe25697c1edf3d6fa5d0485d`  
		Last Modified: Wed, 18 Jan 2017 03:01:07 GMT  
		Size: 55.1 MB (55095940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.7`

```console
$ docker pull arangodb@sha256:55130e181e570f8ef5a22bac76be77680faf75a4aa306f993b4ef1c37bd55a32
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127065579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b584d11e3c5882d9c8154800ecd1f90fd38138de568a5e91d146a91dd5e9ac93`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 23:59:48 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 16 Jan 2017 23:59:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 16 Jan 2017 23:59:49 GMT
ENV ARCHITECTURE=amd64
# Tue, 17 Jan 2017 00:00:17 GMT
ENV ARANGO_VERSION=2.7.5
# Tue, 17 Jan 2017 00:00:18 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 17 Jan 2017 00:00:18 GMT
ENV ARANGO_PACKAGE=arangodb_2.7.5_amd64.deb
# Tue, 17 Jan 2017 00:00:18 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb
# Tue, 17 Jan 2017 00:00:18 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb.asc
# Tue, 17 Jan 2017 00:00:57 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jan 2017 00:00:58 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 17 Jan 2017 00:00:58 GMT
EXPOSE 8529/tcp
# Tue, 17 Jan 2017 00:00:59 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506743560a4609d8da7217aa698c8184b7b61077562433e493530a528e8487bb`  
		Last Modified: Wed, 18 Jan 2017 03:00:46 GMT  
		Size: 7.4 KB (7369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f43ab69dfa3d7640b315563043c3894e696bc8b981b6a146565509ace16a83`  
		Last Modified: Wed, 18 Jan 2017 03:02:15 GMT  
		Size: 75.7 MB (75697000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.7.5`

```console
$ docker pull arangodb@sha256:55130e181e570f8ef5a22bac76be77680faf75a4aa306f993b4ef1c37bd55a32
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.7.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127065579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b584d11e3c5882d9c8154800ecd1f90fd38138de568a5e91d146a91dd5e9ac93`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 23:59:48 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 16 Jan 2017 23:59:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 16 Jan 2017 23:59:49 GMT
ENV ARCHITECTURE=amd64
# Tue, 17 Jan 2017 00:00:17 GMT
ENV ARANGO_VERSION=2.7.5
# Tue, 17 Jan 2017 00:00:18 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 17 Jan 2017 00:00:18 GMT
ENV ARANGO_PACKAGE=arangodb_2.7.5_amd64.deb
# Tue, 17 Jan 2017 00:00:18 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb
# Tue, 17 Jan 2017 00:00:18 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb.asc
# Tue, 17 Jan 2017 00:00:57 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jan 2017 00:00:58 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 17 Jan 2017 00:00:58 GMT
EXPOSE 8529/tcp
# Tue, 17 Jan 2017 00:00:59 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506743560a4609d8da7217aa698c8184b7b61077562433e493530a528e8487bb`  
		Last Modified: Wed, 18 Jan 2017 03:00:46 GMT  
		Size: 7.4 KB (7369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f43ab69dfa3d7640b315563043c3894e696bc8b981b6a146565509ace16a83`  
		Last Modified: Wed, 18 Jan 2017 03:02:15 GMT  
		Size: 75.7 MB (75697000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:d3b1bbc14c79eabb2e93f00628ad1554e523384dbb21ffe05b19b7d108da6982
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110181420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfdac64ef43084a61784d302ff129e432fffac88335a1ff94c488f4e8e07101c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 23:59:48 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 16 Jan 2017 23:59:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 16 Jan 2017 23:59:49 GMT
ENV ARCHITECTURE=amd64
# Tue, 17 Jan 2017 00:00:59 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 17 Jan 2017 00:00:59 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 17 Jan 2017 00:01:00 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 17 Jan 2017 00:01:00 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 17 Jan 2017 00:01:01 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 17 Jan 2017 00:01:34 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jan 2017 00:01:35 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 17 Jan 2017 00:01:35 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 17 Jan 2017 00:01:36 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 17 Jan 2017 00:01:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 00:01:37 GMT
EXPOSE 8529/tcp
# Tue, 17 Jan 2017 00:01:37 GMT
USER [arangodb]
# Tue, 17 Jan 2017 00:01:37 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506743560a4609d8da7217aa698c8184b7b61077562433e493530a528e8487bb`  
		Last Modified: Wed, 18 Jan 2017 03:00:46 GMT  
		Size: 7.4 KB (7369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8bab111a2e5f2640ab002aee12fb9635f4b4efb2af91a5746f156eea6f95cd`  
		Last Modified: Wed, 18 Jan 2017 03:03:10 GMT  
		Size: 58.8 MB (58811579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b6156828bfee8c4ecfb72b0ff07dea1f9d94fd5b12b92a16621f1af8524a0`  
		Last Modified: Wed, 18 Jan 2017 03:02:49 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf629273f10a18d3ca49c10450c87fb59aee18dcf86742cfe552d3b7576e227`  
		Last Modified: Wed, 18 Jan 2017 03:02:50 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:d3b1bbc14c79eabb2e93f00628ad1554e523384dbb21ffe05b19b7d108da6982
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110181420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfdac64ef43084a61784d302ff129e432fffac88335a1ff94c488f4e8e07101c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 23:59:48 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 16 Jan 2017 23:59:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 16 Jan 2017 23:59:49 GMT
ENV ARCHITECTURE=amd64
# Tue, 17 Jan 2017 00:00:59 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 17 Jan 2017 00:00:59 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 17 Jan 2017 00:01:00 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 17 Jan 2017 00:01:00 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 17 Jan 2017 00:01:01 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 17 Jan 2017 00:01:34 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jan 2017 00:01:35 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 17 Jan 2017 00:01:35 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 17 Jan 2017 00:01:36 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 17 Jan 2017 00:01:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 00:01:37 GMT
EXPOSE 8529/tcp
# Tue, 17 Jan 2017 00:01:37 GMT
USER [arangodb]
# Tue, 17 Jan 2017 00:01:37 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506743560a4609d8da7217aa698c8184b7b61077562433e493530a528e8487bb`  
		Last Modified: Wed, 18 Jan 2017 03:00:46 GMT  
		Size: 7.4 KB (7369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8bab111a2e5f2640ab002aee12fb9635f4b4efb2af91a5746f156eea6f95cd`  
		Last Modified: Wed, 18 Jan 2017 03:03:10 GMT  
		Size: 58.8 MB (58811579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b6156828bfee8c4ecfb72b0ff07dea1f9d94fd5b12b92a16621f1af8524a0`  
		Last Modified: Wed, 18 Jan 2017 03:02:49 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf629273f10a18d3ca49c10450c87fb59aee18dcf86742cfe552d3b7576e227`  
		Last Modified: Wed, 18 Jan 2017 03:02:50 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1`

```console
$ docker pull arangodb@sha256:ddfda8ca1a34bed5ddcd824b4861a3a4396a50a9653f72afe924cee89a22b5f9
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126646419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16715ff28f9ea4b717a2bbb3e23b518dce4e1e62ed8da15800ffe99c45195b8`
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
# Tue, 17 Jan 2017 00:01:39 GMT
ENV ARANGO_VERSION=3.1.8
# Tue, 17 Jan 2017 00:01:39 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 17 Jan 2017 00:01:40 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.8-1_amd64.deb
# Tue, 17 Jan 2017 00:01:40 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.8-1_amd64.deb
# Tue, 17 Jan 2017 00:01:40 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.8-1_amd64.deb.asc
# Tue, 17 Jan 2017 00:01:41 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 17 Jan 2017 00:01:56 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 00:02:25 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jan 2017 00:02:26 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 17 Jan 2017 00:02:27 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Tue, 17 Jan 2017 00:02:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 00:02:27 GMT
EXPOSE 8529/tcp
# Tue, 17 Jan 2017 00:02:28 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363e660f6f8c51f7983cdd2c12f9653b1a78fcbada76f151a07554de05fd23a9`  
		Last Modified: Wed, 18 Jan 2017 03:03:45 GMT  
		Size: 7.4 KB (7369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f3d1c3796e6e872640fb3b363daa28c3b221a4c3e864701618964453253436`  
		Last Modified: Wed, 18 Jan 2017 03:03:49 GMT  
		Size: 6.7 MB (6690964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d750b0c277c677998fb63599a864113e0153ffcfc64fe3771519cb391e7ec83`  
		Last Modified: Wed, 18 Jan 2017 03:03:45 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43bf0a030f92d85fa9f592f906966f6464b692ef82544f7335429a719d1ce0f`  
		Last Modified: Wed, 18 Jan 2017 03:04:13 GMT  
		Size: 68.6 MB (68585327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaeb53c4cb7ff88670581eb9e0805790a076b38d9e1ed79fa50be7711eadbcd`  
		Last Modified: Wed, 18 Jan 2017 03:03:45 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.8`

```console
$ docker pull arangodb@sha256:ddfda8ca1a34bed5ddcd824b4861a3a4396a50a9653f72afe924cee89a22b5f9
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126646419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16715ff28f9ea4b717a2bbb3e23b518dce4e1e62ed8da15800ffe99c45195b8`
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
# Tue, 17 Jan 2017 00:01:39 GMT
ENV ARANGO_VERSION=3.1.8
# Tue, 17 Jan 2017 00:01:39 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 17 Jan 2017 00:01:40 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.8-1_amd64.deb
# Tue, 17 Jan 2017 00:01:40 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.8-1_amd64.deb
# Tue, 17 Jan 2017 00:01:40 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.8-1_amd64.deb.asc
# Tue, 17 Jan 2017 00:01:41 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 17 Jan 2017 00:01:56 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 00:02:25 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jan 2017 00:02:26 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 17 Jan 2017 00:02:27 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Tue, 17 Jan 2017 00:02:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 00:02:27 GMT
EXPOSE 8529/tcp
# Tue, 17 Jan 2017 00:02:28 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363e660f6f8c51f7983cdd2c12f9653b1a78fcbada76f151a07554de05fd23a9`  
		Last Modified: Wed, 18 Jan 2017 03:03:45 GMT  
		Size: 7.4 KB (7369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f3d1c3796e6e872640fb3b363daa28c3b221a4c3e864701618964453253436`  
		Last Modified: Wed, 18 Jan 2017 03:03:49 GMT  
		Size: 6.7 MB (6690964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d750b0c277c677998fb63599a864113e0153ffcfc64fe3771519cb391e7ec83`  
		Last Modified: Wed, 18 Jan 2017 03:03:45 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43bf0a030f92d85fa9f592f906966f6464b692ef82544f7335429a719d1ce0f`  
		Last Modified: Wed, 18 Jan 2017 03:04:13 GMT  
		Size: 68.6 MB (68585327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaeb53c4cb7ff88670581eb9e0805790a076b38d9e1ed79fa50be7711eadbcd`  
		Last Modified: Wed, 18 Jan 2017 03:03:45 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:ddfda8ca1a34bed5ddcd824b4861a3a4396a50a9653f72afe924cee89a22b5f9
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126646419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16715ff28f9ea4b717a2bbb3e23b518dce4e1e62ed8da15800ffe99c45195b8`
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
# Tue, 17 Jan 2017 00:01:39 GMT
ENV ARANGO_VERSION=3.1.8
# Tue, 17 Jan 2017 00:01:39 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Tue, 17 Jan 2017 00:01:40 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.8-1_amd64.deb
# Tue, 17 Jan 2017 00:01:40 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.8-1_amd64.deb
# Tue, 17 Jan 2017 00:01:40 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.8-1_amd64.deb.asc
# Tue, 17 Jan 2017 00:01:41 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 17 Jan 2017 00:01:56 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 00:02:25 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jan 2017 00:02:26 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 17 Jan 2017 00:02:27 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Tue, 17 Jan 2017 00:02:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 00:02:27 GMT
EXPOSE 8529/tcp
# Tue, 17 Jan 2017 00:02:28 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363e660f6f8c51f7983cdd2c12f9653b1a78fcbada76f151a07554de05fd23a9`  
		Last Modified: Wed, 18 Jan 2017 03:03:45 GMT  
		Size: 7.4 KB (7369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f3d1c3796e6e872640fb3b363daa28c3b221a4c3e864701618964453253436`  
		Last Modified: Wed, 18 Jan 2017 03:03:49 GMT  
		Size: 6.7 MB (6690964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d750b0c277c677998fb63599a864113e0153ffcfc64fe3771519cb391e7ec83`  
		Last Modified: Wed, 18 Jan 2017 03:03:45 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43bf0a030f92d85fa9f592f906966f6464b692ef82544f7335429a719d1ce0f`  
		Last Modified: Wed, 18 Jan 2017 03:04:13 GMT  
		Size: 68.6 MB (68585327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaeb53c4cb7ff88670581eb9e0805790a076b38d9e1ed79fa50be7711eadbcd`  
		Last Modified: Wed, 18 Jan 2017 03:03:45 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
