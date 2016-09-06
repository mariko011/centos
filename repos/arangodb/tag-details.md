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
-	[`arangodb:3.0.6`](#arangodb306)
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
$ docker pull arangodb@sha256:41300be2528af1c1e39b2c0eda4b18ea7e044b0a2e44c9d5c097f30572397d5c
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119118680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f614f937e4484a63284fccc58e1b8a90d4dccb244dd5cd48ea0b0aa03cde877`
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
# Tue, 06 Sep 2016 19:39:49 GMT
ENV ARANGO_VERSION=3.0.6
# Tue, 06 Sep 2016 19:39:50 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Tue, 06 Sep 2016 19:39:50 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.6_amd64.deb
# Tue, 06 Sep 2016 19:39:50 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.6_amd64.deb
# Tue, 06 Sep 2016 19:39:50 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.6_amd64.deb.asc
# Tue, 06 Sep 2016 19:39:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 06 Sep 2016 19:40:06 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 06 Sep 2016 19:40:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 06 Sep 2016 19:41:48 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 06 Sep 2016 19:41:49 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 06 Sep 2016 19:41:49 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Tue, 06 Sep 2016 19:41:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Sep 2016 19:41:50 GMT
EXPOSE 8529/tcp
# Tue, 06 Sep 2016 19:41:50 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16dae780e196f581e5910e48dcaf0f3b00a56ad9d96f4966c0679d7ed25f798`  
		Last Modified: Tue, 06 Sep 2016 19:44:54 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd50aa849c21b1f4dc3f26666116f6e47349f3a87c8b0ce5c8062a5594bf65a`  
		Last Modified: Tue, 06 Sep 2016 19:44:55 GMT  
		Size: 6.7 MB (6683732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dd518549ebfeaa8746e612572a8edb54fcd284a66a5e30924d5f066356ae60`  
		Last Modified: Tue, 06 Sep 2016 19:44:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c06a7bbc3e67b20ec91e88f8bfa3ae3153d26052db190183f838eb4ff5e9525`  
		Last Modified: Tue, 06 Sep 2016 19:45:11 GMT  
		Size: 61.1 MB (61059370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b6f799b43fc6376b089602f7e51f132fb4317cc8c041539a5b69ec08ddf6b0`  
		Last Modified: Tue, 06 Sep 2016 19:44:54 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.0.6`

```console
$ docker pull arangodb@sha256:41300be2528af1c1e39b2c0eda4b18ea7e044b0a2e44c9d5c097f30572397d5c
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.0.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119118680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f614f937e4484a63284fccc58e1b8a90d4dccb244dd5cd48ea0b0aa03cde877`
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
# Tue, 06 Sep 2016 19:39:49 GMT
ENV ARANGO_VERSION=3.0.6
# Tue, 06 Sep 2016 19:39:50 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Tue, 06 Sep 2016 19:39:50 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.6_amd64.deb
# Tue, 06 Sep 2016 19:39:50 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.6_amd64.deb
# Tue, 06 Sep 2016 19:39:50 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.6_amd64.deb.asc
# Tue, 06 Sep 2016 19:39:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 06 Sep 2016 19:40:06 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 06 Sep 2016 19:40:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 06 Sep 2016 19:41:48 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 06 Sep 2016 19:41:49 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 06 Sep 2016 19:41:49 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Tue, 06 Sep 2016 19:41:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Sep 2016 19:41:50 GMT
EXPOSE 8529/tcp
# Tue, 06 Sep 2016 19:41:50 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16dae780e196f581e5910e48dcaf0f3b00a56ad9d96f4966c0679d7ed25f798`  
		Last Modified: Tue, 06 Sep 2016 19:44:54 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd50aa849c21b1f4dc3f26666116f6e47349f3a87c8b0ce5c8062a5594bf65a`  
		Last Modified: Tue, 06 Sep 2016 19:44:55 GMT  
		Size: 6.7 MB (6683732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dd518549ebfeaa8746e612572a8edb54fcd284a66a5e30924d5f066356ae60`  
		Last Modified: Tue, 06 Sep 2016 19:44:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c06a7bbc3e67b20ec91e88f8bfa3ae3153d26052db190183f838eb4ff5e9525`  
		Last Modified: Tue, 06 Sep 2016 19:45:11 GMT  
		Size: 61.1 MB (61059370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b6f799b43fc6376b089602f7e51f132fb4317cc8c041539a5b69ec08ddf6b0`  
		Last Modified: Tue, 06 Sep 2016 19:44:54 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:41300be2528af1c1e39b2c0eda4b18ea7e044b0a2e44c9d5c097f30572397d5c
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119118680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f614f937e4484a63284fccc58e1b8a90d4dccb244dd5cd48ea0b0aa03cde877`
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
# Tue, 06 Sep 2016 19:39:49 GMT
ENV ARANGO_VERSION=3.0.6
# Tue, 06 Sep 2016 19:39:50 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Tue, 06 Sep 2016 19:39:50 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.6_amd64.deb
# Tue, 06 Sep 2016 19:39:50 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.6_amd64.deb
# Tue, 06 Sep 2016 19:39:50 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.6_amd64.deb.asc
# Tue, 06 Sep 2016 19:39:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 06 Sep 2016 19:40:06 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 06 Sep 2016 19:40:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 06 Sep 2016 19:41:48 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 06 Sep 2016 19:41:49 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 06 Sep 2016 19:41:49 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Tue, 06 Sep 2016 19:41:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Sep 2016 19:41:50 GMT
EXPOSE 8529/tcp
# Tue, 06 Sep 2016 19:41:50 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16dae780e196f581e5910e48dcaf0f3b00a56ad9d96f4966c0679d7ed25f798`  
		Last Modified: Tue, 06 Sep 2016 19:44:54 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd50aa849c21b1f4dc3f26666116f6e47349f3a87c8b0ce5c8062a5594bf65a`  
		Last Modified: Tue, 06 Sep 2016 19:44:55 GMT  
		Size: 6.7 MB (6683732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dd518549ebfeaa8746e612572a8edb54fcd284a66a5e30924d5f066356ae60`  
		Last Modified: Tue, 06 Sep 2016 19:44:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c06a7bbc3e67b20ec91e88f8bfa3ae3153d26052db190183f838eb4ff5e9525`  
		Last Modified: Tue, 06 Sep 2016 19:45:11 GMT  
		Size: 61.1 MB (61059370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b6f799b43fc6376b089602f7e51f132fb4317cc8c041539a5b69ec08ddf6b0`  
		Last Modified: Tue, 06 Sep 2016 19:44:54 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
