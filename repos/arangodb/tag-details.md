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
-	[`arangodb:3.0.7`](#arangodb307)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.5.5`

```console
$ docker pull arangodb@sha256:b3407caf5dc0408ebcdafa5991c1a381ecb12f0c311a1d2d784a8ec717047829
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106469200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b3ef633c4a29b35a9d2f40c01c5f0eb3b80e06483fe98c85f6d526277de11`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 01:05:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 31 Aug 2016 01:05:31 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 31 Aug 2016 01:05:32 GMT
ENV ARCHITECTURE=amd64
# Wed, 31 Aug 2016 01:05:32 GMT
ENV ARANGO_VERSION=2.5.5
# Wed, 31 Aug 2016 01:05:32 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Wed, 31 Aug 2016 01:05:32 GMT
ENV ARANGO_PACKAGE=arangodb_2.5.5_amd64.deb
# Wed, 31 Aug 2016 01:05:33 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb
# Wed, 31 Aug 2016 01:05:33 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb.asc
# Wed, 31 Aug 2016 01:06:00 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 31 Aug 2016 01:06:00 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 31 Aug 2016 01:06:00 GMT
EXPOSE 8529/tcp
# Wed, 31 Aug 2016 01:06:00 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd28226635d9adc3cc9c5f2dd67350366814ddd8447bf98fa69f7fef6c82c9dc`  
		Last Modified: Tue, 06 Sep 2016 19:41:56 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abc82266bef74a023091cd41c6fe72a285067ccdcd097e5a78d8547044a60ec`  
		Last Modified: Tue, 06 Sep 2016 19:42:15 GMT  
		Size: 55.1 MB (55095161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.5`

```console
$ docker pull arangodb@sha256:b3407caf5dc0408ebcdafa5991c1a381ecb12f0c311a1d2d784a8ec717047829
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106469200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b3ef633c4a29b35a9d2f40c01c5f0eb3b80e06483fe98c85f6d526277de11`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 01:05:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 31 Aug 2016 01:05:31 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 31 Aug 2016 01:05:32 GMT
ENV ARCHITECTURE=amd64
# Wed, 31 Aug 2016 01:05:32 GMT
ENV ARANGO_VERSION=2.5.5
# Wed, 31 Aug 2016 01:05:32 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Wed, 31 Aug 2016 01:05:32 GMT
ENV ARANGO_PACKAGE=arangodb_2.5.5_amd64.deb
# Wed, 31 Aug 2016 01:05:33 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb
# Wed, 31 Aug 2016 01:05:33 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb.asc
# Wed, 31 Aug 2016 01:06:00 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 31 Aug 2016 01:06:00 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 31 Aug 2016 01:06:00 GMT
EXPOSE 8529/tcp
# Wed, 31 Aug 2016 01:06:00 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd28226635d9adc3cc9c5f2dd67350366814ddd8447bf98fa69f7fef6c82c9dc`  
		Last Modified: Tue, 06 Sep 2016 19:41:56 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abc82266bef74a023091cd41c6fe72a285067ccdcd097e5a78d8547044a60ec`  
		Last Modified: Tue, 06 Sep 2016 19:42:15 GMT  
		Size: 55.1 MB (55095161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.6`

```console
$ docker pull arangodb@sha256:39abed0c44e17f56ad453a0cdaf7a3cc305a5f4a0fdf16512e6d97c4361db5d3
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124920706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499be75632cfe2ab1ce13df7ce4a2cb0fb805a9cab55050fafed677e457142cd`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 01:05:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 31 Aug 2016 01:05:31 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 31 Aug 2016 01:05:32 GMT
ENV ARCHITECTURE=amd64
# Wed, 31 Aug 2016 01:06:01 GMT
ENV ARANGO_VERSION=2.6.10
# Wed, 31 Aug 2016 01:06:01 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Wed, 31 Aug 2016 01:06:01 GMT
ENV ARANGO_PACKAGE=arangodb_2.6.10_amd64.deb
# Wed, 31 Aug 2016 01:06:02 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb
# Wed, 31 Aug 2016 01:06:02 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb.asc
# Wed, 31 Aug 2016 01:06:32 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 31 Aug 2016 01:06:33 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 31 Aug 2016 01:06:33 GMT
EXPOSE 8529/tcp
# Wed, 31 Aug 2016 01:06:34 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd28226635d9adc3cc9c5f2dd67350366814ddd8447bf98fa69f7fef6c82c9dc`  
		Last Modified: Tue, 06 Sep 2016 19:41:56 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bda407ac395cc466ed65bb8e39ffd96c0651462377958a71d68888ea767107`  
		Last Modified: Tue, 06 Sep 2016 19:43:04 GMT  
		Size: 73.5 MB (73546667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.6.10`

```console
$ docker pull arangodb@sha256:39abed0c44e17f56ad453a0cdaf7a3cc305a5f4a0fdf16512e6d97c4361db5d3
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.6.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124920706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499be75632cfe2ab1ce13df7ce4a2cb0fb805a9cab55050fafed677e457142cd`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 01:05:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 31 Aug 2016 01:05:31 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 31 Aug 2016 01:05:32 GMT
ENV ARCHITECTURE=amd64
# Wed, 31 Aug 2016 01:06:01 GMT
ENV ARANGO_VERSION=2.6.10
# Wed, 31 Aug 2016 01:06:01 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Wed, 31 Aug 2016 01:06:01 GMT
ENV ARANGO_PACKAGE=arangodb_2.6.10_amd64.deb
# Wed, 31 Aug 2016 01:06:02 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb
# Wed, 31 Aug 2016 01:06:02 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb.asc
# Wed, 31 Aug 2016 01:06:32 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 31 Aug 2016 01:06:33 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 31 Aug 2016 01:06:33 GMT
EXPOSE 8529/tcp
# Wed, 31 Aug 2016 01:06:34 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd28226635d9adc3cc9c5f2dd67350366814ddd8447bf98fa69f7fef6c82c9dc`  
		Last Modified: Tue, 06 Sep 2016 19:41:56 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bda407ac395cc466ed65bb8e39ffd96c0651462377958a71d68888ea767107`  
		Last Modified: Tue, 06 Sep 2016 19:43:04 GMT  
		Size: 73.5 MB (73546667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.7`

```console
$ docker pull arangodb@sha256:6de6145ded60a46d427243d7de933be26262aeb56c80cf0c41a511c1447cfb66
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127070041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b55975109a2538680fc952a20e516f6869ecff6dac0684db2dcb9604fb3c1e`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 01:05:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 31 Aug 2016 01:05:31 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 31 Aug 2016 01:05:32 GMT
ENV ARCHITECTURE=amd64
# Wed, 31 Aug 2016 01:06:34 GMT
ENV ARANGO_VERSION=2.7.5
# Wed, 31 Aug 2016 01:06:34 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Wed, 31 Aug 2016 01:06:34 GMT
ENV ARANGO_PACKAGE=arangodb_2.7.5_amd64.deb
# Wed, 31 Aug 2016 01:06:35 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb
# Wed, 31 Aug 2016 01:06:35 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb.asc
# Wed, 31 Aug 2016 01:07:05 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 31 Aug 2016 01:07:06 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 31 Aug 2016 01:07:06 GMT
EXPOSE 8529/tcp
# Wed, 31 Aug 2016 01:07:07 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd28226635d9adc3cc9c5f2dd67350366814ddd8447bf98fa69f7fef6c82c9dc`  
		Last Modified: Tue, 06 Sep 2016 19:41:56 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981c913a65ecbd3ef6c38de3c52bde17a02b6937abdcd01045953ad3723ffd09`  
		Last Modified: Tue, 06 Sep 2016 19:43:54 GMT  
		Size: 75.7 MB (75696002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.7.5`

```console
$ docker pull arangodb@sha256:6de6145ded60a46d427243d7de933be26262aeb56c80cf0c41a511c1447cfb66
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.7.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127070041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b55975109a2538680fc952a20e516f6869ecff6dac0684db2dcb9604fb3c1e`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 01:05:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 31 Aug 2016 01:05:31 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 31 Aug 2016 01:05:32 GMT
ENV ARCHITECTURE=amd64
# Wed, 31 Aug 2016 01:06:34 GMT
ENV ARANGO_VERSION=2.7.5
# Wed, 31 Aug 2016 01:06:34 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Wed, 31 Aug 2016 01:06:34 GMT
ENV ARANGO_PACKAGE=arangodb_2.7.5_amd64.deb
# Wed, 31 Aug 2016 01:06:35 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb
# Wed, 31 Aug 2016 01:06:35 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb.asc
# Wed, 31 Aug 2016 01:07:05 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 31 Aug 2016 01:07:06 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 31 Aug 2016 01:07:06 GMT
EXPOSE 8529/tcp
# Wed, 31 Aug 2016 01:07:07 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd28226635d9adc3cc9c5f2dd67350366814ddd8447bf98fa69f7fef6c82c9dc`  
		Last Modified: Tue, 06 Sep 2016 19:41:56 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981c913a65ecbd3ef6c38de3c52bde17a02b6937abdcd01045953ad3723ffd09`  
		Last Modified: Tue, 06 Sep 2016 19:43:54 GMT  
		Size: 75.7 MB (75696002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:19b4967c45287b4836fdd5f866be1cf0d941040321b0000d5b2ba27fb9ee4317
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110186077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d745d017ed689bdb494e202c6b16c4f75cd3fe5c8769b0d3d31d642f59bb40bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 01:05:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 31 Aug 2016 01:05:31 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 31 Aug 2016 01:05:32 GMT
ENV ARCHITECTURE=amd64
# Wed, 31 Aug 2016 01:07:07 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 31 Aug 2016 01:07:07 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Wed, 31 Aug 2016 01:07:08 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 31 Aug 2016 01:07:08 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 31 Aug 2016 01:07:08 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 31 Aug 2016 01:07:48 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 31 Aug 2016 01:07:49 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 31 Aug 2016 01:07:49 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 31 Aug 2016 01:07:50 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Wed, 31 Aug 2016 01:07:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 01:07:50 GMT
EXPOSE 8529/tcp
# Wed, 31 Aug 2016 01:07:51 GMT
USER [arangodb]
# Wed, 31 Aug 2016 01:07:51 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd28226635d9adc3cc9c5f2dd67350366814ddd8447bf98fa69f7fef6c82c9dc`  
		Last Modified: Tue, 06 Sep 2016 19:41:56 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc57f90ceb2dc9163b09baf6f0bc1c1894376324d990e934b06e5a77925d3de9`  
		Last Modified: Tue, 06 Sep 2016 19:44:34 GMT  
		Size: 58.8 MB (58810776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8bcb32f83cbfbc21b816e0c66ded18efdd4af3730f16effda7896533fc43bc`  
		Last Modified: Tue, 06 Sep 2016 19:44:14 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407991dad2dc047158321f8d167fb40b79bad67a278d6c0cd00170724f2e727b`  
		Last Modified: Tue, 06 Sep 2016 19:44:14 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:19b4967c45287b4836fdd5f866be1cf0d941040321b0000d5b2ba27fb9ee4317
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110186077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d745d017ed689bdb494e202c6b16c4f75cd3fe5c8769b0d3d31d642f59bb40bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 01:05:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 31 Aug 2016 01:05:31 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 31 Aug 2016 01:05:32 GMT
ENV ARCHITECTURE=amd64
# Wed, 31 Aug 2016 01:07:07 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 31 Aug 2016 01:07:07 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Wed, 31 Aug 2016 01:07:08 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 31 Aug 2016 01:07:08 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 31 Aug 2016 01:07:08 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 31 Aug 2016 01:07:48 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 31 Aug 2016 01:07:49 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 31 Aug 2016 01:07:49 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 31 Aug 2016 01:07:50 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Wed, 31 Aug 2016 01:07:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 01:07:50 GMT
EXPOSE 8529/tcp
# Wed, 31 Aug 2016 01:07:51 GMT
USER [arangodb]
# Wed, 31 Aug 2016 01:07:51 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd28226635d9adc3cc9c5f2dd67350366814ddd8447bf98fa69f7fef6c82c9dc`  
		Last Modified: Tue, 06 Sep 2016 19:41:56 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc57f90ceb2dc9163b09baf6f0bc1c1894376324d990e934b06e5a77925d3de9`  
		Last Modified: Tue, 06 Sep 2016 19:44:34 GMT  
		Size: 58.8 MB (58810776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8bcb32f83cbfbc21b816e0c66ded18efdd4af3730f16effda7896533fc43bc`  
		Last Modified: Tue, 06 Sep 2016 19:44:14 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407991dad2dc047158321f8d167fb40b79bad67a278d6c0cd00170724f2e727b`  
		Last Modified: Tue, 06 Sep 2016 19:44:14 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.0`

```console
$ docker pull arangodb@sha256:f968f8a4aa2a1c55da0a988d8f6c2e116e97264d8a6b4c78de75a09abd5314fa
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119133618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815e556c2d21d2d758f174849f55b0b0eef826dd98885dfafa9c2572d8d7e126`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 01:05:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 31 Aug 2016 01:07:51 GMT
ENV ARCHITECTURE=amd64
# Thu, 08 Sep 2016 17:30:57 GMT
ENV ARANGO_VERSION=3.0.7
# Thu, 08 Sep 2016 17:30:57 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Thu, 08 Sep 2016 17:30:58 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.7_amd64.deb
# Thu, 08 Sep 2016 17:30:58 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.7_amd64.deb
# Thu, 08 Sep 2016 17:30:58 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.7_amd64.deb.asc
# Thu, 08 Sep 2016 17:31:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 08 Sep 2016 17:31:13 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 08 Sep 2016 17:31:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Sep 2016 17:31:39 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 08 Sep 2016 17:31:40 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 08 Sep 2016 17:31:40 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Thu, 08 Sep 2016 17:31:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Sep 2016 17:31:41 GMT
EXPOSE 8529/tcp
# Thu, 08 Sep 2016 17:31:42 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b94f8af6121fe848bfc7e77a945cdf2e2e3295a8f6c0629ee25333979c90f`  
		Last Modified: Thu, 08 Sep 2016 17:32:50 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b02b1e618a375186165ff50c7b65c6412e723fce733e68599335aaecb00d19a`  
		Last Modified: Thu, 08 Sep 2016 17:32:53 GMT  
		Size: 6.7 MB (6683770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6194903a49befb09d3e284ec645473cc2f36136a0b9d2e9447782e7b0803b51b`  
		Last Modified: Thu, 08 Sep 2016 17:32:50 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206f5dfbf38bef3a0be63aaa5340a493ea7c420c8089cce50b72c5230e71cf72`  
		Last Modified: Thu, 08 Sep 2016 17:33:07 GMT  
		Size: 61.1 MB (61074275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e6f159a06b34f39f37ab3383d0f66b6d5fb8078a38d4a5330aa6337c4ce1bd`  
		Last Modified: Thu, 08 Sep 2016 17:32:50 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.0.7`

```console
$ docker pull arangodb@sha256:f968f8a4aa2a1c55da0a988d8f6c2e116e97264d8a6b4c78de75a09abd5314fa
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.0.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119133618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815e556c2d21d2d758f174849f55b0b0eef826dd98885dfafa9c2572d8d7e126`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 01:05:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 31 Aug 2016 01:07:51 GMT
ENV ARCHITECTURE=amd64
# Thu, 08 Sep 2016 17:30:57 GMT
ENV ARANGO_VERSION=3.0.7
# Thu, 08 Sep 2016 17:30:57 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Thu, 08 Sep 2016 17:30:58 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.7_amd64.deb
# Thu, 08 Sep 2016 17:30:58 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.7_amd64.deb
# Thu, 08 Sep 2016 17:30:58 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.7_amd64.deb.asc
# Thu, 08 Sep 2016 17:31:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 08 Sep 2016 17:31:13 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 08 Sep 2016 17:31:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Sep 2016 17:31:39 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 08 Sep 2016 17:31:40 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 08 Sep 2016 17:31:40 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Thu, 08 Sep 2016 17:31:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Sep 2016 17:31:41 GMT
EXPOSE 8529/tcp
# Thu, 08 Sep 2016 17:31:42 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b94f8af6121fe848bfc7e77a945cdf2e2e3295a8f6c0629ee25333979c90f`  
		Last Modified: Thu, 08 Sep 2016 17:32:50 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b02b1e618a375186165ff50c7b65c6412e723fce733e68599335aaecb00d19a`  
		Last Modified: Thu, 08 Sep 2016 17:32:53 GMT  
		Size: 6.7 MB (6683770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6194903a49befb09d3e284ec645473cc2f36136a0b9d2e9447782e7b0803b51b`  
		Last Modified: Thu, 08 Sep 2016 17:32:50 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206f5dfbf38bef3a0be63aaa5340a493ea7c420c8089cce50b72c5230e71cf72`  
		Last Modified: Thu, 08 Sep 2016 17:33:07 GMT  
		Size: 61.1 MB (61074275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e6f159a06b34f39f37ab3383d0f66b6d5fb8078a38d4a5330aa6337c4ce1bd`  
		Last Modified: Thu, 08 Sep 2016 17:32:50 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:f968f8a4aa2a1c55da0a988d8f6c2e116e97264d8a6b4c78de75a09abd5314fa
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119133618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815e556c2d21d2d758f174849f55b0b0eef826dd98885dfafa9c2572d8d7e126`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 01:05:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 31 Aug 2016 01:07:51 GMT
ENV ARCHITECTURE=amd64
# Thu, 08 Sep 2016 17:30:57 GMT
ENV ARANGO_VERSION=3.0.7
# Thu, 08 Sep 2016 17:30:57 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Thu, 08 Sep 2016 17:30:58 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.7_amd64.deb
# Thu, 08 Sep 2016 17:30:58 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.7_amd64.deb
# Thu, 08 Sep 2016 17:30:58 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.7_amd64.deb.asc
# Thu, 08 Sep 2016 17:31:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 08 Sep 2016 17:31:13 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 08 Sep 2016 17:31:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Sep 2016 17:31:39 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 08 Sep 2016 17:31:40 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 08 Sep 2016 17:31:40 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Thu, 08 Sep 2016 17:31:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Sep 2016 17:31:41 GMT
EXPOSE 8529/tcp
# Thu, 08 Sep 2016 17:31:42 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568b94f8af6121fe848bfc7e77a945cdf2e2e3295a8f6c0629ee25333979c90f`  
		Last Modified: Thu, 08 Sep 2016 17:32:50 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b02b1e618a375186165ff50c7b65c6412e723fce733e68599335aaecb00d19a`  
		Last Modified: Thu, 08 Sep 2016 17:32:53 GMT  
		Size: 6.7 MB (6683770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6194903a49befb09d3e284ec645473cc2f36136a0b9d2e9447782e7b0803b51b`  
		Last Modified: Thu, 08 Sep 2016 17:32:50 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206f5dfbf38bef3a0be63aaa5340a493ea7c420c8089cce50b72c5230e71cf72`  
		Last Modified: Thu, 08 Sep 2016 17:33:07 GMT  
		Size: 61.1 MB (61074275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e6f159a06b34f39f37ab3383d0f66b6d5fb8078a38d4a5330aa6337c4ce1bd`  
		Last Modified: Thu, 08 Sep 2016 17:32:50 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
