<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.5.5`](#arangodb255)
-	[`arangodb:2.5`](#arangodb25)
-	[`arangodb:2.7`](#arangodb27)
-	[`arangodb:2.7.5`](#arangodb275)
-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.4`](#arangodb314)
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
$ docker pull arangodb@sha256:791be361b10c2f73125f524ddeaca99d4fd5986e63ac153cad06546d3a5ff5ff
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126607866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ddd29e756c2df5696043fd2f04f75e0c03ac4fc34072b3e5f8207cc462ffc5c`
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
# Fri, 09 Dec 2016 17:52:53 GMT
ENV ARANGO_VERSION=3.1.4
# Fri, 09 Dec 2016 17:52:53 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 09 Dec 2016 17:52:53 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.4-1_amd64.deb
# Fri, 09 Dec 2016 17:52:54 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.4-1_amd64.deb
# Fri, 09 Dec 2016 17:52:54 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.4-1_amd64.deb.asc
# Fri, 09 Dec 2016 17:52:56 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 09 Dec 2016 17:53:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2016 17:53:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 09 Dec 2016 17:53:40 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 09 Dec 2016 17:53:41 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 09 Dec 2016 17:53:42 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Fri, 09 Dec 2016 17:53:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2016 17:53:43 GMT
EXPOSE 8529/tcp
# Fri, 09 Dec 2016 17:53:43 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02282760997377c35441a21f13173c65450520534878f683d16811a51193df8f`  
		Last Modified: Fri, 09 Dec 2016 17:55:48 GMT  
		Size: 7.4 KB (7366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6805b86b3ebc3d4b78f2b762c56ebc10f62ea9a0d0b1b96342df80f8c93495f3`  
		Last Modified: Fri, 09 Dec 2016 17:55:47 GMT  
		Size: 6.7 MB (6683797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab0ee0455854da11b47097c42a0e92b59153551a483b3848f09e212d0fbec92`  
		Last Modified: Fri, 09 Dec 2016 17:55:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbffef8d189a8f12c730c37ecc7dfb99a4cdfb7499d4958e3f1056b4272a0357`  
		Last Modified: Fri, 09 Dec 2016 17:56:05 GMT  
		Size: 68.6 MB (68558164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19af744236534f648cfddae22014bebbbe8ad5d67d08cf80c9a3d26abfba142d`  
		Last Modified: Fri, 09 Dec 2016 17:55:45 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.4`

```console
$ docker pull arangodb@sha256:791be361b10c2f73125f524ddeaca99d4fd5986e63ac153cad06546d3a5ff5ff
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126607866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ddd29e756c2df5696043fd2f04f75e0c03ac4fc34072b3e5f8207cc462ffc5c`
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
# Fri, 09 Dec 2016 17:52:53 GMT
ENV ARANGO_VERSION=3.1.4
# Fri, 09 Dec 2016 17:52:53 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 09 Dec 2016 17:52:53 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.4-1_amd64.deb
# Fri, 09 Dec 2016 17:52:54 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.4-1_amd64.deb
# Fri, 09 Dec 2016 17:52:54 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.4-1_amd64.deb.asc
# Fri, 09 Dec 2016 17:52:56 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 09 Dec 2016 17:53:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2016 17:53:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 09 Dec 2016 17:53:40 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 09 Dec 2016 17:53:41 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 09 Dec 2016 17:53:42 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Fri, 09 Dec 2016 17:53:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2016 17:53:43 GMT
EXPOSE 8529/tcp
# Fri, 09 Dec 2016 17:53:43 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02282760997377c35441a21f13173c65450520534878f683d16811a51193df8f`  
		Last Modified: Fri, 09 Dec 2016 17:55:48 GMT  
		Size: 7.4 KB (7366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6805b86b3ebc3d4b78f2b762c56ebc10f62ea9a0d0b1b96342df80f8c93495f3`  
		Last Modified: Fri, 09 Dec 2016 17:55:47 GMT  
		Size: 6.7 MB (6683797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab0ee0455854da11b47097c42a0e92b59153551a483b3848f09e212d0fbec92`  
		Last Modified: Fri, 09 Dec 2016 17:55:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbffef8d189a8f12c730c37ecc7dfb99a4cdfb7499d4958e3f1056b4272a0357`  
		Last Modified: Fri, 09 Dec 2016 17:56:05 GMT  
		Size: 68.6 MB (68558164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19af744236534f648cfddae22014bebbbe8ad5d67d08cf80c9a3d26abfba142d`  
		Last Modified: Fri, 09 Dec 2016 17:55:45 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:791be361b10c2f73125f524ddeaca99d4fd5986e63ac153cad06546d3a5ff5ff
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126607866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ddd29e756c2df5696043fd2f04f75e0c03ac4fc34072b3e5f8207cc462ffc5c`
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
# Fri, 09 Dec 2016 17:52:53 GMT
ENV ARANGO_VERSION=3.1.4
# Fri, 09 Dec 2016 17:52:53 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 09 Dec 2016 17:52:53 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.4-1_amd64.deb
# Fri, 09 Dec 2016 17:52:54 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.4-1_amd64.deb
# Fri, 09 Dec 2016 17:52:54 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.4-1_amd64.deb.asc
# Fri, 09 Dec 2016 17:52:56 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 09 Dec 2016 17:53:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2016 17:53:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 09 Dec 2016 17:53:40 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 09 Dec 2016 17:53:41 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 09 Dec 2016 17:53:42 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Fri, 09 Dec 2016 17:53:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2016 17:53:43 GMT
EXPOSE 8529/tcp
# Fri, 09 Dec 2016 17:53:43 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02282760997377c35441a21f13173c65450520534878f683d16811a51193df8f`  
		Last Modified: Fri, 09 Dec 2016 17:55:48 GMT  
		Size: 7.4 KB (7366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6805b86b3ebc3d4b78f2b762c56ebc10f62ea9a0d0b1b96342df80f8c93495f3`  
		Last Modified: Fri, 09 Dec 2016 17:55:47 GMT  
		Size: 6.7 MB (6683797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab0ee0455854da11b47097c42a0e92b59153551a483b3848f09e212d0fbec92`  
		Last Modified: Fri, 09 Dec 2016 17:55:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbffef8d189a8f12c730c37ecc7dfb99a4cdfb7499d4958e3f1056b4272a0357`  
		Last Modified: Fri, 09 Dec 2016 17:56:05 GMT  
		Size: 68.6 MB (68558164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19af744236534f648cfddae22014bebbbe8ad5d67d08cf80c9a3d26abfba142d`  
		Last Modified: Fri, 09 Dec 2016 17:55:45 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
