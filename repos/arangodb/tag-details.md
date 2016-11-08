<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.5.5`](#arangodb255)
-	[`arangodb:2.5`](#arangodb25)
-	[`arangodb:2.6`](#arangodb26)
-	[`arangodb:2.6.10`](#arangodb2610)
-	[`arangodb:2.7`](#arangodb27)
-	[`arangodb:2.7.5`](#arangodb275)
-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.0`](#arangodb30)
-	[`arangodb:3.0.10`](#arangodb3010)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.5.5`

```console
$ docker pull arangodb@sha256:ad7fafa940f98ec98d80708285495afbe3335d610161e7f7f73702288a7d66ca
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106459779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b2282a4f2c0e36f776f9d25434761fe4bb1caa0b27a995225a80b288030ff2`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 18:42:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 08 Nov 2016 18:42:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 08 Nov 2016 18:42:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 08 Nov 2016 18:42:36 GMT
ENV ARANGO_VERSION=2.5.5
# Tue, 08 Nov 2016 18:42:37 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 08 Nov 2016 18:42:37 GMT
ENV ARANGO_PACKAGE=arangodb_2.5.5_amd64.deb
# Tue, 08 Nov 2016 18:42:37 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb
# Tue, 08 Nov 2016 18:42:38 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb.asc
# Tue, 08 Nov 2016 18:43:07 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 08 Nov 2016 18:43:12 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 08 Nov 2016 18:43:13 GMT
EXPOSE 8529/tcp
# Tue, 08 Nov 2016 18:43:13 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6ae3fb7f72456840a52daf62d5e1b945c84a4a46ad1ff133516c95a86154dc`  
		Last Modified: Tue, 08 Nov 2016 18:43:24 GMT  
		Size: 7.4 KB (7375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba5324635f9f549a41ea18a44acfaa3c114590d3aebcd754f3ddee543c5b09f`  
		Last Modified: Tue, 08 Nov 2016 18:43:41 GMT  
		Size: 55.1 MB (55095415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.5`

```console
$ docker pull arangodb@sha256:ad7fafa940f98ec98d80708285495afbe3335d610161e7f7f73702288a7d66ca
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106459779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b2282a4f2c0e36f776f9d25434761fe4bb1caa0b27a995225a80b288030ff2`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 18:42:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 08 Nov 2016 18:42:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 08 Nov 2016 18:42:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 08 Nov 2016 18:42:36 GMT
ENV ARANGO_VERSION=2.5.5
# Tue, 08 Nov 2016 18:42:37 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 08 Nov 2016 18:42:37 GMT
ENV ARANGO_PACKAGE=arangodb_2.5.5_amd64.deb
# Tue, 08 Nov 2016 18:42:37 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb
# Tue, 08 Nov 2016 18:42:38 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb.asc
# Tue, 08 Nov 2016 18:43:07 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 08 Nov 2016 18:43:12 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 08 Nov 2016 18:43:13 GMT
EXPOSE 8529/tcp
# Tue, 08 Nov 2016 18:43:13 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6ae3fb7f72456840a52daf62d5e1b945c84a4a46ad1ff133516c95a86154dc`  
		Last Modified: Tue, 08 Nov 2016 18:43:24 GMT  
		Size: 7.4 KB (7375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba5324635f9f549a41ea18a44acfaa3c114590d3aebcd754f3ddee543c5b09f`  
		Last Modified: Tue, 08 Nov 2016 18:43:41 GMT  
		Size: 55.1 MB (55095415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.6`

```console
$ docker pull arangodb@sha256:62e7a617ddd05d0ced0a484de793f391da1b703b4726b13c0bafc0cb63a95fda
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124911019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed5b5f15d19324ab2005c4cc1483203c7cf87d9de7637194360f7a6d0283611`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 18:42:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 08 Nov 2016 18:42:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 08 Nov 2016 18:42:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 08 Nov 2016 18:44:09 GMT
ENV ARANGO_VERSION=2.6.10
# Tue, 08 Nov 2016 18:44:09 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 08 Nov 2016 18:44:10 GMT
ENV ARANGO_PACKAGE=arangodb_2.6.10_amd64.deb
# Tue, 08 Nov 2016 18:44:10 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb
# Tue, 08 Nov 2016 18:44:11 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb.asc
# Tue, 08 Nov 2016 18:44:48 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 08 Nov 2016 18:44:48 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 08 Nov 2016 18:44:49 GMT
EXPOSE 8529/tcp
# Tue, 08 Nov 2016 18:44:49 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6ae3fb7f72456840a52daf62d5e1b945c84a4a46ad1ff133516c95a86154dc`  
		Last Modified: Tue, 08 Nov 2016 18:43:24 GMT  
		Size: 7.4 KB (7375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933a521f8edd8ebc6162f1f63dea1478525c36894bac0be17bf2b8ae1b77c303`  
		Last Modified: Tue, 08 Nov 2016 18:45:27 GMT  
		Size: 73.5 MB (73546655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.6.10`

```console
$ docker pull arangodb@sha256:62e7a617ddd05d0ced0a484de793f391da1b703b4726b13c0bafc0cb63a95fda
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.6.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124911019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed5b5f15d19324ab2005c4cc1483203c7cf87d9de7637194360f7a6d0283611`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 18:42:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 08 Nov 2016 18:42:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 08 Nov 2016 18:42:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 08 Nov 2016 18:44:09 GMT
ENV ARANGO_VERSION=2.6.10
# Tue, 08 Nov 2016 18:44:09 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 08 Nov 2016 18:44:10 GMT
ENV ARANGO_PACKAGE=arangodb_2.6.10_amd64.deb
# Tue, 08 Nov 2016 18:44:10 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb
# Tue, 08 Nov 2016 18:44:11 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb.asc
# Tue, 08 Nov 2016 18:44:48 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 08 Nov 2016 18:44:48 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 08 Nov 2016 18:44:49 GMT
EXPOSE 8529/tcp
# Tue, 08 Nov 2016 18:44:49 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6ae3fb7f72456840a52daf62d5e1b945c84a4a46ad1ff133516c95a86154dc`  
		Last Modified: Tue, 08 Nov 2016 18:43:24 GMT  
		Size: 7.4 KB (7375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933a521f8edd8ebc6162f1f63dea1478525c36894bac0be17bf2b8ae1b77c303`  
		Last Modified: Tue, 08 Nov 2016 18:45:27 GMT  
		Size: 73.5 MB (73546655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.7`

```console
$ docker pull arangodb@sha256:f5d4ea85919037188546a1bdaab81c508f405136a048049a2422d7c496484e5b
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127060879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df0bc33d994322f503c8df889335e7ac49c8b53bcb6f80c3b7864441ca36a13e`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 18:42:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 08 Nov 2016 18:42:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 08 Nov 2016 18:42:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 08 Nov 2016 18:46:00 GMT
ENV ARANGO_VERSION=2.7.5
# Tue, 08 Nov 2016 18:46:01 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 08 Nov 2016 18:46:01 GMT
ENV ARANGO_PACKAGE=arangodb_2.7.5_amd64.deb
# Tue, 08 Nov 2016 18:46:01 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb
# Tue, 08 Nov 2016 18:46:02 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb.asc
# Tue, 08 Nov 2016 18:46:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 08 Nov 2016 18:46:42 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 08 Nov 2016 18:46:43 GMT
EXPOSE 8529/tcp
# Tue, 08 Nov 2016 18:46:43 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6ae3fb7f72456840a52daf62d5e1b945c84a4a46ad1ff133516c95a86154dc`  
		Last Modified: Tue, 08 Nov 2016 18:43:24 GMT  
		Size: 7.4 KB (7375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fbf82b3921ab8dd83e543fdc048c388b3e94617629dadc05a826bcbd5a7fd6`  
		Last Modified: Tue, 08 Nov 2016 18:47:22 GMT  
		Size: 75.7 MB (75696515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.7.5`

```console
$ docker pull arangodb@sha256:f5d4ea85919037188546a1bdaab81c508f405136a048049a2422d7c496484e5b
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.7.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127060879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df0bc33d994322f503c8df889335e7ac49c8b53bcb6f80c3b7864441ca36a13e`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 18:42:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 08 Nov 2016 18:42:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 08 Nov 2016 18:42:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 08 Nov 2016 18:46:00 GMT
ENV ARANGO_VERSION=2.7.5
# Tue, 08 Nov 2016 18:46:01 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 08 Nov 2016 18:46:01 GMT
ENV ARANGO_PACKAGE=arangodb_2.7.5_amd64.deb
# Tue, 08 Nov 2016 18:46:01 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb
# Tue, 08 Nov 2016 18:46:02 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb.asc
# Tue, 08 Nov 2016 18:46:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 08 Nov 2016 18:46:42 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 08 Nov 2016 18:46:43 GMT
EXPOSE 8529/tcp
# Tue, 08 Nov 2016 18:46:43 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6ae3fb7f72456840a52daf62d5e1b945c84a4a46ad1ff133516c95a86154dc`  
		Last Modified: Tue, 08 Nov 2016 18:43:24 GMT  
		Size: 7.4 KB (7375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fbf82b3921ab8dd83e543fdc048c388b3e94617629dadc05a826bcbd5a7fd6`  
		Last Modified: Tue, 08 Nov 2016 18:47:22 GMT  
		Size: 75.7 MB (75696515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:6562a80bf05204b893b7749803b1849d9914a2b80ae34041c68dbbfcc10f4348
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110176841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c67426ac4caefeb0cf59c2b2db702451d5d5fa2ec084193516b1cdb393c573f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 18:42:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 08 Nov 2016 18:42:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 08 Nov 2016 18:42:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 08 Nov 2016 18:47:52 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 08 Nov 2016 18:47:52 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 08 Nov 2016 18:47:53 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 08 Nov 2016 18:47:53 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 08 Nov 2016 18:47:53 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 08 Nov 2016 18:48:24 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 08 Nov 2016 18:48:25 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 08 Nov 2016 18:48:25 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 08 Nov 2016 18:48:26 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 08 Nov 2016 18:48:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 18:48:27 GMT
EXPOSE 8529/tcp
# Tue, 08 Nov 2016 18:48:28 GMT
USER [arangodb]
# Tue, 08 Nov 2016 18:48:28 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6ae3fb7f72456840a52daf62d5e1b945c84a4a46ad1ff133516c95a86154dc`  
		Last Modified: Tue, 08 Nov 2016 18:43:24 GMT  
		Size: 7.4 KB (7375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e33a9225f204d98e4e8c1ba3e65b98f3e245ccedf9fdb5903c8e3201b8999b`  
		Last Modified: Tue, 08 Nov 2016 18:49:07 GMT  
		Size: 58.8 MB (58811218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb1eb48a45ebe15b4b58b5a909ba36db463de38d0df8f5dca6bc8ad51162c72`  
		Last Modified: Tue, 08 Nov 2016 18:48:47 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35316c6990ed9365c6a899cee1a49139233186cb63d90337828a105d7339c7d`  
		Last Modified: Tue, 08 Nov 2016 18:48:48 GMT  
		Size: 1.1 KB (1094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:6562a80bf05204b893b7749803b1849d9914a2b80ae34041c68dbbfcc10f4348
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110176841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c67426ac4caefeb0cf59c2b2db702451d5d5fa2ec084193516b1cdb393c573f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 18:42:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 08 Nov 2016 18:42:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 08 Nov 2016 18:42:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 08 Nov 2016 18:47:52 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 08 Nov 2016 18:47:52 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 08 Nov 2016 18:47:53 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 08 Nov 2016 18:47:53 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 08 Nov 2016 18:47:53 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 08 Nov 2016 18:48:24 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 08 Nov 2016 18:48:25 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 08 Nov 2016 18:48:25 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 08 Nov 2016 18:48:26 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 08 Nov 2016 18:48:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 18:48:27 GMT
EXPOSE 8529/tcp
# Tue, 08 Nov 2016 18:48:28 GMT
USER [arangodb]
# Tue, 08 Nov 2016 18:48:28 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6ae3fb7f72456840a52daf62d5e1b945c84a4a46ad1ff133516c95a86154dc`  
		Last Modified: Tue, 08 Nov 2016 18:43:24 GMT  
		Size: 7.4 KB (7375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e33a9225f204d98e4e8c1ba3e65b98f3e245ccedf9fdb5903c8e3201b8999b`  
		Last Modified: Tue, 08 Nov 2016 18:49:07 GMT  
		Size: 58.8 MB (58811218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb1eb48a45ebe15b4b58b5a909ba36db463de38d0df8f5dca6bc8ad51162c72`  
		Last Modified: Tue, 08 Nov 2016 18:48:47 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35316c6990ed9365c6a899cee1a49139233186cb63d90337828a105d7339c7d`  
		Last Modified: Tue, 08 Nov 2016 18:48:48 GMT  
		Size: 1.1 KB (1094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.0`

```console
$ docker pull arangodb@sha256:b6c7a1f0163ea155456910e4b64053255b827ecefbc339ad3b1027077d081954
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119126930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7697f3e45ffb9ac5ef24afca2b24114234d9ba56b5e54a747dfce0375d298762`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 18:42:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 08 Nov 2016 18:49:29 GMT
ENV ARCHITECTURE=amd64
# Tue, 08 Nov 2016 18:49:29 GMT
ENV ARANGO_VERSION=3.0.10
# Tue, 08 Nov 2016 18:49:29 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Tue, 08 Nov 2016 18:49:30 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.10_amd64.deb
# Tue, 08 Nov 2016 18:49:30 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.10_amd64.deb
# Tue, 08 Nov 2016 18:49:30 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.10_amd64.deb.asc
# Tue, 08 Nov 2016 18:49:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 08 Nov 2016 18:49:43 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 08 Nov 2016 18:50:13 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 08 Nov 2016 18:50:14 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 08 Nov 2016 18:50:16 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Tue, 08 Nov 2016 18:50:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 18:50:16 GMT
EXPOSE 8529/tcp
# Tue, 08 Nov 2016 18:50:17 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac6d3da111d1b2f69fa22d867e1c349cced152cd8648ef54b6774a9ad6fb6a3`  
		Last Modified: Tue, 08 Nov 2016 18:50:29 GMT  
		Size: 7.4 KB (7367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0ff0549304b179885dd00b753fa64b6a85c946117a68e79329ca0ca53a80f7`  
		Last Modified: Tue, 08 Nov 2016 18:50:31 GMT  
		Size: 6.7 MB (6683864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e71666cba7ee17069301588ec7b99b54efed8c7caf4166135aba39ab1b6411`  
		Last Modified: Tue, 08 Nov 2016 18:50:29 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f587beba84c313b7f4480d3291b601386a49d0a5bd079b15d7be3934443269a`  
		Last Modified: Tue, 08 Nov 2016 18:50:51 GMT  
		Size: 61.1 MB (61077175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9215eda1dae25bc9ec095994c1debcebcb48b26347eb26ba4e9f89b660e3ce20`  
		Last Modified: Tue, 08 Nov 2016 18:50:29 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.0.10`

```console
$ docker pull arangodb@sha256:b6c7a1f0163ea155456910e4b64053255b827ecefbc339ad3b1027077d081954
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.0.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119126930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7697f3e45ffb9ac5ef24afca2b24114234d9ba56b5e54a747dfce0375d298762`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 18:42:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 08 Nov 2016 18:49:29 GMT
ENV ARCHITECTURE=amd64
# Tue, 08 Nov 2016 18:49:29 GMT
ENV ARANGO_VERSION=3.0.10
# Tue, 08 Nov 2016 18:49:29 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Tue, 08 Nov 2016 18:49:30 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.10_amd64.deb
# Tue, 08 Nov 2016 18:49:30 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.10_amd64.deb
# Tue, 08 Nov 2016 18:49:30 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.10_amd64.deb.asc
# Tue, 08 Nov 2016 18:49:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 08 Nov 2016 18:49:43 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 08 Nov 2016 18:50:13 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 08 Nov 2016 18:50:14 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 08 Nov 2016 18:50:16 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Tue, 08 Nov 2016 18:50:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 18:50:16 GMT
EXPOSE 8529/tcp
# Tue, 08 Nov 2016 18:50:17 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac6d3da111d1b2f69fa22d867e1c349cced152cd8648ef54b6774a9ad6fb6a3`  
		Last Modified: Tue, 08 Nov 2016 18:50:29 GMT  
		Size: 7.4 KB (7367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0ff0549304b179885dd00b753fa64b6a85c946117a68e79329ca0ca53a80f7`  
		Last Modified: Tue, 08 Nov 2016 18:50:31 GMT  
		Size: 6.7 MB (6683864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e71666cba7ee17069301588ec7b99b54efed8c7caf4166135aba39ab1b6411`  
		Last Modified: Tue, 08 Nov 2016 18:50:29 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f587beba84c313b7f4480d3291b601386a49d0a5bd079b15d7be3934443269a`  
		Last Modified: Tue, 08 Nov 2016 18:50:51 GMT  
		Size: 61.1 MB (61077175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9215eda1dae25bc9ec095994c1debcebcb48b26347eb26ba4e9f89b660e3ce20`  
		Last Modified: Tue, 08 Nov 2016 18:50:29 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:b6c7a1f0163ea155456910e4b64053255b827ecefbc339ad3b1027077d081954
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119126930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7697f3e45ffb9ac5ef24afca2b24114234d9ba56b5e54a747dfce0375d298762`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 18:42:33 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 08 Nov 2016 18:49:29 GMT
ENV ARCHITECTURE=amd64
# Tue, 08 Nov 2016 18:49:29 GMT
ENV ARANGO_VERSION=3.0.10
# Tue, 08 Nov 2016 18:49:29 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Tue, 08 Nov 2016 18:49:30 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.10_amd64.deb
# Tue, 08 Nov 2016 18:49:30 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.10_amd64.deb
# Tue, 08 Nov 2016 18:49:30 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.10_amd64.deb.asc
# Tue, 08 Nov 2016 18:49:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 08 Nov 2016 18:49:43 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:49:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 08 Nov 2016 18:50:13 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 08 Nov 2016 18:50:14 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 08 Nov 2016 18:50:16 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Tue, 08 Nov 2016 18:50:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 18:50:16 GMT
EXPOSE 8529/tcp
# Tue, 08 Nov 2016 18:50:17 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac6d3da111d1b2f69fa22d867e1c349cced152cd8648ef54b6774a9ad6fb6a3`  
		Last Modified: Tue, 08 Nov 2016 18:50:29 GMT  
		Size: 7.4 KB (7367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0ff0549304b179885dd00b753fa64b6a85c946117a68e79329ca0ca53a80f7`  
		Last Modified: Tue, 08 Nov 2016 18:50:31 GMT  
		Size: 6.7 MB (6683864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e71666cba7ee17069301588ec7b99b54efed8c7caf4166135aba39ab1b6411`  
		Last Modified: Tue, 08 Nov 2016 18:50:29 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f587beba84c313b7f4480d3291b601386a49d0a5bd079b15d7be3934443269a`  
		Last Modified: Tue, 08 Nov 2016 18:50:51 GMT  
		Size: 61.1 MB (61077175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9215eda1dae25bc9ec095994c1debcebcb48b26347eb26ba4e9f89b660e3ce20`  
		Last Modified: Tue, 08 Nov 2016 18:50:29 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
