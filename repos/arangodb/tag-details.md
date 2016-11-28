<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.5.5`](#arangodb255)
-	[`arangodb:2.5`](#arangodb25)
-	[`arangodb:2.7`](#arangodb27)
-	[`arangodb:2.7.5`](#arangodb275)
-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.2`](#arangodb312)
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
$ docker pull arangodb@sha256:adcbf96712ec71c5bbd521d8912b0d39ab5f52a554e1fb2abc161b406d5e501d
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126579554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1a34c28356f3888e491487fb7791d534cd6ad13138e79ae2ba4e2ddd7b3a55`
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
# Mon, 28 Nov 2016 20:37:33 GMT
ENV ARANGO_VERSION=3.1.2
# Mon, 28 Nov 2016 20:37:33 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Mon, 28 Nov 2016 20:37:33 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.2-1_amd64.deb
# Mon, 28 Nov 2016 20:37:34 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.2-1_amd64.deb
# Mon, 28 Nov 2016 20:37:34 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.2-1_amd64.deb.asc
# Mon, 28 Nov 2016 20:37:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 28 Nov 2016 20:37:48 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 28 Nov 2016 20:37:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 28 Nov 2016 20:38:15 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 28 Nov 2016 20:38:19 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 28 Nov 2016 20:38:19 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Mon, 28 Nov 2016 20:38:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Nov 2016 20:38:20 GMT
EXPOSE 8529/tcp
# Mon, 28 Nov 2016 20:38:21 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b0a8635dce925121d6c56282987243712130e3b5607b3786b7edcfaa65c48a`  
		Last Modified: Mon, 28 Nov 2016 20:40:20 GMT  
		Size: 7.4 KB (7370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b89de807c203cca500f380212b84c9ac40cc8357e1ab0e0f6cd2232a719fa6`  
		Last Modified: Mon, 28 Nov 2016 20:40:23 GMT  
		Size: 6.7 MB (6683854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b6a8866619ea770eaae70c0da36131f3328830dfed6e9445db4cc7ef5f7a86`  
		Last Modified: Mon, 28 Nov 2016 20:40:20 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894ed952828b52cab2b8abe12a68b1a2bba4a524f3e25daf74afeaed3261a230`  
		Last Modified: Mon, 28 Nov 2016 20:40:41 GMT  
		Size: 68.5 MB (68529792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955bf43ce435f82f6f0ad3039337ce462d541c67e1d21f1a8a9b9315d557cc38`  
		Last Modified: Mon, 28 Nov 2016 20:40:20 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.2`

**does not exist** (yet?)

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:adcbf96712ec71c5bbd521d8912b0d39ab5f52a554e1fb2abc161b406d5e501d
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126579554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1a34c28356f3888e491487fb7791d534cd6ad13138e79ae2ba4e2ddd7b3a55`
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
# Mon, 28 Nov 2016 20:37:33 GMT
ENV ARANGO_VERSION=3.1.2
# Mon, 28 Nov 2016 20:37:33 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Mon, 28 Nov 2016 20:37:33 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.2-1_amd64.deb
# Mon, 28 Nov 2016 20:37:34 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.2-1_amd64.deb
# Mon, 28 Nov 2016 20:37:34 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.2-1_amd64.deb.asc
# Mon, 28 Nov 2016 20:37:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 28 Nov 2016 20:37:48 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 28 Nov 2016 20:37:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 28 Nov 2016 20:38:15 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 28 Nov 2016 20:38:19 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 28 Nov 2016 20:38:19 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Mon, 28 Nov 2016 20:38:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Nov 2016 20:38:20 GMT
EXPOSE 8529/tcp
# Mon, 28 Nov 2016 20:38:21 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b0a8635dce925121d6c56282987243712130e3b5607b3786b7edcfaa65c48a`  
		Last Modified: Mon, 28 Nov 2016 20:40:20 GMT  
		Size: 7.4 KB (7370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b89de807c203cca500f380212b84c9ac40cc8357e1ab0e0f6cd2232a719fa6`  
		Last Modified: Mon, 28 Nov 2016 20:40:23 GMT  
		Size: 6.7 MB (6683854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b6a8866619ea770eaae70c0da36131f3328830dfed6e9445db4cc7ef5f7a86`  
		Last Modified: Mon, 28 Nov 2016 20:40:20 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894ed952828b52cab2b8abe12a68b1a2bba4a524f3e25daf74afeaed3261a230`  
		Last Modified: Mon, 28 Nov 2016 20:40:41 GMT  
		Size: 68.5 MB (68529792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955bf43ce435f82f6f0ad3039337ce462d541c67e1d21f1a8a9b9315d557cc38`  
		Last Modified: Mon, 28 Nov 2016 20:40:20 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
