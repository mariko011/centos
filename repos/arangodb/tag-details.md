<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.5.5`](#arangodb255)
-	[`arangodb:2.5`](#arangodb25)
-	[`arangodb:2.7`](#arangodb27)
-	[`arangodb:2.7.5`](#arangodb275)
-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.1`](#arangodb311)
-	[`arangodb:latest`](#arangodblatest)
-	[`arangodb:3.0`](#arangodb30)
-	[`arangodb:3.0.12`](#arangodb3012)

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

## `arangodb:3.1`

```console
$ docker pull arangodb@sha256:bb5d1fc107817cecbf7db78589e520cba29bb44ad895fc1df11041cc2ae0f27f
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126576084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02bcfb7dc90a3876f144f1821ad9b5281d5543a32283d07ad8d2d27777af96a`
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
# Mon, 14 Nov 2016 18:41:59 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 18 Nov 2016 18:11:20 GMT
ENV ARANGO_VERSION=3.1.1
# Fri, 18 Nov 2016 18:11:20 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 18 Nov 2016 18:11:20 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.1-1_amd64.deb
# Fri, 18 Nov 2016 18:11:20 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.1-1_amd64.deb
# Fri, 18 Nov 2016 18:11:21 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.1-1_amd64.deb.asc
# Fri, 18 Nov 2016 18:11:23 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 18 Nov 2016 18:11:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 18:11:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 18 Nov 2016 18:12:02 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 18 Nov 2016 18:12:03 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 21 Nov 2016 17:35:05 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Mon, 21 Nov 2016 17:35:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Nov 2016 17:35:07 GMT
EXPOSE 8529/tcp
# Mon, 21 Nov 2016 17:35:07 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1673ec035fef139bfea9c753fa9ef2a0db4348fea26d860b9d94d3864a918ad1`  
		Last Modified: Fri, 18 Nov 2016 18:14:09 GMT  
		Size: 6.8 KB (6768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b7935f5ef516c0dac22f7c249dbe5e36bb003d90b8fcf63f61b3e33570c449`  
		Last Modified: Fri, 18 Nov 2016 18:14:11 GMT  
		Size: 6.7 MB (6683830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ea4a2f44f6c01dcf36dbf70ca93bdc241a619421bb1d1b9c0454763d4db80b`  
		Last Modified: Fri, 18 Nov 2016 18:14:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abde927c9e8b19c8ef569150956221dc170e9530b424fae6d63fc0b6db332c00`  
		Last Modified: Fri, 18 Nov 2016 18:14:30 GMT  
		Size: 68.5 MB (68526948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b910681c7f60d3287c9a204e44128c3f082258a9e98cfd60781e47d4726421d`  
		Last Modified: Mon, 21 Nov 2016 17:37:24 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.1`

```console
$ docker pull arangodb@sha256:bb5d1fc107817cecbf7db78589e520cba29bb44ad895fc1df11041cc2ae0f27f
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126576084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02bcfb7dc90a3876f144f1821ad9b5281d5543a32283d07ad8d2d27777af96a`
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
# Mon, 14 Nov 2016 18:41:59 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 18 Nov 2016 18:11:20 GMT
ENV ARANGO_VERSION=3.1.1
# Fri, 18 Nov 2016 18:11:20 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 18 Nov 2016 18:11:20 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.1-1_amd64.deb
# Fri, 18 Nov 2016 18:11:20 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.1-1_amd64.deb
# Fri, 18 Nov 2016 18:11:21 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.1-1_amd64.deb.asc
# Fri, 18 Nov 2016 18:11:23 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 18 Nov 2016 18:11:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 18:11:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 18 Nov 2016 18:12:02 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 18 Nov 2016 18:12:03 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 21 Nov 2016 17:35:05 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Mon, 21 Nov 2016 17:35:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Nov 2016 17:35:07 GMT
EXPOSE 8529/tcp
# Mon, 21 Nov 2016 17:35:07 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1673ec035fef139bfea9c753fa9ef2a0db4348fea26d860b9d94d3864a918ad1`  
		Last Modified: Fri, 18 Nov 2016 18:14:09 GMT  
		Size: 6.8 KB (6768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b7935f5ef516c0dac22f7c249dbe5e36bb003d90b8fcf63f61b3e33570c449`  
		Last Modified: Fri, 18 Nov 2016 18:14:11 GMT  
		Size: 6.7 MB (6683830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ea4a2f44f6c01dcf36dbf70ca93bdc241a619421bb1d1b9c0454763d4db80b`  
		Last Modified: Fri, 18 Nov 2016 18:14:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abde927c9e8b19c8ef569150956221dc170e9530b424fae6d63fc0b6db332c00`  
		Last Modified: Fri, 18 Nov 2016 18:14:30 GMT  
		Size: 68.5 MB (68526948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b910681c7f60d3287c9a204e44128c3f082258a9e98cfd60781e47d4726421d`  
		Last Modified: Mon, 21 Nov 2016 17:37:24 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:bb5d1fc107817cecbf7db78589e520cba29bb44ad895fc1df11041cc2ae0f27f
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126576084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02bcfb7dc90a3876f144f1821ad9b5281d5543a32283d07ad8d2d27777af96a`
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
# Mon, 14 Nov 2016 18:41:59 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 18 Nov 2016 18:11:20 GMT
ENV ARANGO_VERSION=3.1.1
# Fri, 18 Nov 2016 18:11:20 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 18 Nov 2016 18:11:20 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.1-1_amd64.deb
# Fri, 18 Nov 2016 18:11:20 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.1-1_amd64.deb
# Fri, 18 Nov 2016 18:11:21 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.1-1_amd64.deb.asc
# Fri, 18 Nov 2016 18:11:23 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 18 Nov 2016 18:11:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 18:11:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 18 Nov 2016 18:12:02 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 18 Nov 2016 18:12:03 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 21 Nov 2016 17:35:05 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Mon, 21 Nov 2016 17:35:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Nov 2016 17:35:07 GMT
EXPOSE 8529/tcp
# Mon, 21 Nov 2016 17:35:07 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1673ec035fef139bfea9c753fa9ef2a0db4348fea26d860b9d94d3864a918ad1`  
		Last Modified: Fri, 18 Nov 2016 18:14:09 GMT  
		Size: 6.8 KB (6768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b7935f5ef516c0dac22f7c249dbe5e36bb003d90b8fcf63f61b3e33570c449`  
		Last Modified: Fri, 18 Nov 2016 18:14:11 GMT  
		Size: 6.7 MB (6683830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ea4a2f44f6c01dcf36dbf70ca93bdc241a619421bb1d1b9c0454763d4db80b`  
		Last Modified: Fri, 18 Nov 2016 18:14:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abde927c9e8b19c8ef569150956221dc170e9530b424fae6d63fc0b6db332c00`  
		Last Modified: Fri, 18 Nov 2016 18:14:30 GMT  
		Size: 68.5 MB (68526948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b910681c7f60d3287c9a204e44128c3f082258a9e98cfd60781e47d4726421d`  
		Last Modified: Mon, 21 Nov 2016 17:37:24 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.0`

```console
$ docker pull arangodb@sha256:05888f257e0d83cee95887394f7591da07abc8b44a91085ca7b1ef93a41c8353
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119132792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:500605aa87d52ae1d43b682e060ff9555ebd5013a8cd0681535bd9a7adfa61a6`
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
# Mon, 28 Nov 2016 17:50:58 GMT
ENV ARANGO_VERSION=3.0.12
# Mon, 28 Nov 2016 17:50:58 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Mon, 28 Nov 2016 17:50:59 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.12_amd64.deb
# Mon, 28 Nov 2016 17:50:59 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.12_amd64.deb
# Mon, 28 Nov 2016 17:50:59 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.12_amd64.deb.asc
# Mon, 28 Nov 2016 17:51:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 28 Nov 2016 17:51:15 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 28 Nov 2016 17:51:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 28 Nov 2016 17:51:40 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 28 Nov 2016 17:51:40 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 28 Nov 2016 17:51:41 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Mon, 28 Nov 2016 17:51:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Nov 2016 17:51:42 GMT
EXPOSE 8529/tcp
# Mon, 28 Nov 2016 17:51:42 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c6d287a97e0ec23b76bffd5169430005b8c6658b595c9306913e9525aa842a`  
		Last Modified: Mon, 28 Nov 2016 17:54:03 GMT  
		Size: 7.4 KB (7370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ba86007e844fde2ff4b3c59369b0b6ef520453707b7263711aecd27ad0b6ba`  
		Last Modified: Mon, 28 Nov 2016 17:54:05 GMT  
		Size: 6.7 MB (6683893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3f29d6bee6b52b199911eada32cb205735d990441f86edf34197ff60275ec7`  
		Last Modified: Mon, 28 Nov 2016 17:54:04 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953fb9482276475b796ae922569891ac1559de32b8ed06429a2d68b97f3e422c`  
		Last Modified: Mon, 28 Nov 2016 17:54:21 GMT  
		Size: 61.1 MB (61082992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7d72328fb4eb488b8584d876195008b9c24beeb8a39d1af50a68e1194247a4`  
		Last Modified: Mon, 28 Nov 2016 17:54:03 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.0.12`

```console
$ docker pull arangodb@sha256:05888f257e0d83cee95887394f7591da07abc8b44a91085ca7b1ef93a41c8353
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.0.12` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119132792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:500605aa87d52ae1d43b682e060ff9555ebd5013a8cd0681535bd9a7adfa61a6`
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
# Mon, 28 Nov 2016 17:50:58 GMT
ENV ARANGO_VERSION=3.0.12
# Mon, 28 Nov 2016 17:50:58 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Mon, 28 Nov 2016 17:50:59 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.12_amd64.deb
# Mon, 28 Nov 2016 17:50:59 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.12_amd64.deb
# Mon, 28 Nov 2016 17:50:59 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.12_amd64.deb.asc
# Mon, 28 Nov 2016 17:51:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 28 Nov 2016 17:51:15 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 28 Nov 2016 17:51:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 28 Nov 2016 17:51:40 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 28 Nov 2016 17:51:40 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 28 Nov 2016 17:51:41 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Mon, 28 Nov 2016 17:51:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Nov 2016 17:51:42 GMT
EXPOSE 8529/tcp
# Mon, 28 Nov 2016 17:51:42 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c6d287a97e0ec23b76bffd5169430005b8c6658b595c9306913e9525aa842a`  
		Last Modified: Mon, 28 Nov 2016 17:54:03 GMT  
		Size: 7.4 KB (7370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ba86007e844fde2ff4b3c59369b0b6ef520453707b7263711aecd27ad0b6ba`  
		Last Modified: Mon, 28 Nov 2016 17:54:05 GMT  
		Size: 6.7 MB (6683893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3f29d6bee6b52b199911eada32cb205735d990441f86edf34197ff60275ec7`  
		Last Modified: Mon, 28 Nov 2016 17:54:04 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953fb9482276475b796ae922569891ac1559de32b8ed06429a2d68b97f3e422c`  
		Last Modified: Mon, 28 Nov 2016 17:54:21 GMT  
		Size: 61.1 MB (61082992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7d72328fb4eb488b8584d876195008b9c24beeb8a39d1af50a68e1194247a4`  
		Last Modified: Mon, 28 Nov 2016 17:54:03 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
