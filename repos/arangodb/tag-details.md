<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.10`](#arangodb3210)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.0`](#arangodb330)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:732154e5e04f904e0a986265541f548c625090837451ba6efe56a5551939aa46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:712600af602d9b2b4b287f7ae79186144e57de96df18a3ff902ad71d5b22b793
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113336013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53b489f3f24e3cc73d83c6dd3ec4a336b1fa8ea97542a36ac11a6bf952a0f63`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:11:11 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 12 Dec 2017 03:11:13 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 12 Dec 2017 03:11:13 GMT
ENV ARCHITECTURE=amd64
# Tue, 12 Dec 2017 03:11:13 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 12 Dec 2017 03:11:40 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 12 Dec 2017 03:13:20 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 12 Dec 2017 03:13:21 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 12 Dec 2017 03:13:21 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 12 Dec 2017 03:13:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 03:13:22 GMT
EXPOSE 8529/tcp
# Tue, 12 Dec 2017 03:13:22 GMT
USER [arangodb]
# Tue, 12 Dec 2017 03:13:22 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8e1d39a5919079ce5aa93d9f922173a0f069ffa09b0dc54c3a5bda312d2610`  
		Last Modified: Tue, 12 Dec 2017 03:14:12 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e106368cabe2fdb21fc6ec7b2c135084009e38b52ccabd7e6f1b1e8f3ab4cae4`  
		Last Modified: Tue, 12 Dec 2017 03:14:22 GMT  
		Size: 60.7 MB (60727638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee951327a005ac71cf3891e30866e27a173c3dd07f1f89aaf3cdcbcb10d9f4e4`  
		Last Modified: Tue, 12 Dec 2017 03:14:11 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0832ef39b81c31cf7c3401de36251bd01a694d165b5347bdd9a6d434f4c8ab54`  
		Last Modified: Tue, 12 Dec 2017 03:14:12 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:732154e5e04f904e0a986265541f548c625090837451ba6efe56a5551939aa46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:712600af602d9b2b4b287f7ae79186144e57de96df18a3ff902ad71d5b22b793
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113336013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53b489f3f24e3cc73d83c6dd3ec4a336b1fa8ea97542a36ac11a6bf952a0f63`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:11:11 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 12 Dec 2017 03:11:13 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 12 Dec 2017 03:11:13 GMT
ENV ARCHITECTURE=amd64
# Tue, 12 Dec 2017 03:11:13 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 12 Dec 2017 03:11:40 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 12 Dec 2017 03:13:20 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 12 Dec 2017 03:13:21 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 12 Dec 2017 03:13:21 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 12 Dec 2017 03:13:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 03:13:22 GMT
EXPOSE 8529/tcp
# Tue, 12 Dec 2017 03:13:22 GMT
USER [arangodb]
# Tue, 12 Dec 2017 03:13:22 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8e1d39a5919079ce5aa93d9f922173a0f069ffa09b0dc54c3a5bda312d2610`  
		Last Modified: Tue, 12 Dec 2017 03:14:12 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e106368cabe2fdb21fc6ec7b2c135084009e38b52ccabd7e6f1b1e8f3ab4cae4`  
		Last Modified: Tue, 12 Dec 2017 03:14:22 GMT  
		Size: 60.7 MB (60727638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee951327a005ac71cf3891e30866e27a173c3dd07f1f89aaf3cdcbcb10d9f4e4`  
		Last Modified: Tue, 12 Dec 2017 03:14:11 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0832ef39b81c31cf7c3401de36251bd01a694d165b5347bdd9a6d434f4c8ab54`  
		Last Modified: Tue, 12 Dec 2017 03:14:12 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:69e9574cf97b504aa4ab4f34b8a4aba82e30df53f59a2b005a0e74fe88ac84c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:3fee6121ea4398bfb1e236f58e21d2f601929d1ed3c546f5be74a75d9d39cec8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111914325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99b51f06cd211f344d1b427ee439f55683ef938da0a2afc4a341dfcff3ce3b28`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:36 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 12 Dec 2017 03:13:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 12 Dec 2017 03:13:36 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 22 Dec 2017 19:31:54 GMT
ENV ARANGO_VERSION=3.2.10
# Fri, 22 Dec 2017 19:31:54 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 22 Dec 2017 19:31:55 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.10-1_amd64.deb
# Fri, 22 Dec 2017 19:31:55 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.10-1_amd64.deb
# Fri, 22 Dec 2017 19:31:55 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.10-1_amd64.deb.asc
# Fri, 22 Dec 2017 19:32:03 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 19:32:07 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 22 Dec 2017 19:32:15 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 19:32:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 22 Dec 2017 19:32:37 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 22 Dec 2017 19:32:38 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 22 Dec 2017 19:32:38 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Fri, 22 Dec 2017 19:32:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 22 Dec 2017 19:32:39 GMT
EXPOSE 8529/tcp
# Fri, 22 Dec 2017 19:32:39 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f91ab64969f285691eedffec77b7f9a93ad787d2e37d79cc29eadb7538e63c0`  
		Last Modified: Fri, 22 Dec 2017 19:32:58 GMT  
		Size: 6.9 MB (6920993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a3600deaa4408e377e531d81304c35a412128b7f0fad4f9be61c920fbea145`  
		Last Modified: Fri, 22 Dec 2017 19:32:54 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7044f0f5843065c956e256b6185d3595dd1aa7d1c88a6e40cf9e02fa15334952`  
		Last Modified: Fri, 22 Dec 2017 19:32:55 GMT  
		Size: 7.4 MB (7351360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a443518d92286a37975542c6778e9406b742c7f7995b939072cbb7e73345b5`  
		Last Modified: Fri, 22 Dec 2017 19:32:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b65fa717dd391fa3c902baa57bcfd5395cf930e80fd4f78a7e4745d0a7f2a5`  
		Last Modified: Fri, 22 Dec 2017 19:33:05 GMT  
		Size: 52.5 MB (52514930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f85a7b1e8ab1fd7b8ee51a84cfb10a38676bd866865dd9c209aee840919a5b`  
		Last Modified: Fri, 22 Dec 2017 19:32:54 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.10`

```console
$ docker pull arangodb@sha256:69e9574cf97b504aa4ab4f34b8a4aba82e30df53f59a2b005a0e74fe88ac84c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.10` - linux; amd64

```console
$ docker pull arangodb@sha256:3fee6121ea4398bfb1e236f58e21d2f601929d1ed3c546f5be74a75d9d39cec8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111914325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99b51f06cd211f344d1b427ee439f55683ef938da0a2afc4a341dfcff3ce3b28`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:36 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 12 Dec 2017 03:13:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 12 Dec 2017 03:13:36 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 22 Dec 2017 19:31:54 GMT
ENV ARANGO_VERSION=3.2.10
# Fri, 22 Dec 2017 19:31:54 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 22 Dec 2017 19:31:55 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.10-1_amd64.deb
# Fri, 22 Dec 2017 19:31:55 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.10-1_amd64.deb
# Fri, 22 Dec 2017 19:31:55 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.10-1_amd64.deb.asc
# Fri, 22 Dec 2017 19:32:03 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 19:32:07 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 22 Dec 2017 19:32:15 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 19:32:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 22 Dec 2017 19:32:37 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 22 Dec 2017 19:32:38 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 22 Dec 2017 19:32:38 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Fri, 22 Dec 2017 19:32:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 22 Dec 2017 19:32:39 GMT
EXPOSE 8529/tcp
# Fri, 22 Dec 2017 19:32:39 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f91ab64969f285691eedffec77b7f9a93ad787d2e37d79cc29eadb7538e63c0`  
		Last Modified: Fri, 22 Dec 2017 19:32:58 GMT  
		Size: 6.9 MB (6920993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a3600deaa4408e377e531d81304c35a412128b7f0fad4f9be61c920fbea145`  
		Last Modified: Fri, 22 Dec 2017 19:32:54 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7044f0f5843065c956e256b6185d3595dd1aa7d1c88a6e40cf9e02fa15334952`  
		Last Modified: Fri, 22 Dec 2017 19:32:55 GMT  
		Size: 7.4 MB (7351360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a443518d92286a37975542c6778e9406b742c7f7995b939072cbb7e73345b5`  
		Last Modified: Fri, 22 Dec 2017 19:32:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b65fa717dd391fa3c902baa57bcfd5395cf930e80fd4f78a7e4745d0a7f2a5`  
		Last Modified: Fri, 22 Dec 2017 19:33:05 GMT  
		Size: 52.5 MB (52514930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f85a7b1e8ab1fd7b8ee51a84cfb10a38676bd866865dd9c209aee840919a5b`  
		Last Modified: Fri, 22 Dec 2017 19:32:54 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:e85d160648f831ae62f67b97b4332ba298cafdffa87a23960b57e625770b93ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:541d5fd16f7171f96acfbda61968c02be5ac7e0fe8be0e7636bd36add6e43a39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112208529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a58c1f105edd2c602d51d777bf1ddb7c6cc0e04281ccc885a5c2da861e19ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:36 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 12 Dec 2017 03:13:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 12 Dec 2017 03:13:36 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 21 Dec 2017 19:21:37 GMT
ENV ARANGO_VERSION=3.3.0
# Thu, 21 Dec 2017 19:21:38 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 21 Dec 2017 19:21:38 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.0-1_amd64.deb
# Thu, 21 Dec 2017 19:21:38 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.0-1_amd64.deb
# Thu, 21 Dec 2017 19:21:38 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.0-1_amd64.deb.asc
# Thu, 21 Dec 2017 19:21:45 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 19:21:51 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 21 Dec 2017 19:21:58 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 19:21:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 19:22:17 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 21 Dec 2017 19:22:18 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 21 Dec 2017 19:22:18 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Thu, 21 Dec 2017 19:22:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Dec 2017 19:22:19 GMT
EXPOSE 8529/tcp
# Thu, 21 Dec 2017 19:22:19 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6ea09c7bf123d788a9ce74fd07cecccc0ffc37b098d4e213b252354a63587`  
		Last Modified: Thu, 21 Dec 2017 19:26:01 GMT  
		Size: 6.9 MB (6921026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf3fad5be6d38cab8d232f053e24732c49bac992126981ea53cd8e132c03411`  
		Last Modified: Thu, 21 Dec 2017 19:25:58 GMT  
		Size: 3.5 KB (3468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb40579cd017874c998d3e3f523901d7194555fd953e36838c1bc08f0063c440`  
		Last Modified: Thu, 21 Dec 2017 19:25:59 GMT  
		Size: 7.4 MB (7351445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f20641d34e46a7e7a4bb0025641d66c9601d142acee8b49c8e10e1108c7fc0`  
		Last Modified: Thu, 21 Dec 2017 19:25:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15c61a36991b41d83ef7608a16bb5e30a19fcf074d663d459192d6b5a8e0170`  
		Last Modified: Thu, 21 Dec 2017 19:26:06 GMT  
		Size: 52.8 MB (52809016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e489e086c2731d0a51ca6785d68a98be0ea8898046052f6c346998c14df4c3e`  
		Last Modified: Thu, 21 Dec 2017 19:25:58 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.0`

```console
$ docker pull arangodb@sha256:e85d160648f831ae62f67b97b4332ba298cafdffa87a23960b57e625770b93ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.0` - linux; amd64

```console
$ docker pull arangodb@sha256:541d5fd16f7171f96acfbda61968c02be5ac7e0fe8be0e7636bd36add6e43a39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112208529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a58c1f105edd2c602d51d777bf1ddb7c6cc0e04281ccc885a5c2da861e19ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:36 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 12 Dec 2017 03:13:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 12 Dec 2017 03:13:36 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 21 Dec 2017 19:21:37 GMT
ENV ARANGO_VERSION=3.3.0
# Thu, 21 Dec 2017 19:21:38 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 21 Dec 2017 19:21:38 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.0-1_amd64.deb
# Thu, 21 Dec 2017 19:21:38 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.0-1_amd64.deb
# Thu, 21 Dec 2017 19:21:38 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.0-1_amd64.deb.asc
# Thu, 21 Dec 2017 19:21:45 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 19:21:51 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 21 Dec 2017 19:21:58 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 19:21:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 19:22:17 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 21 Dec 2017 19:22:18 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 21 Dec 2017 19:22:18 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Thu, 21 Dec 2017 19:22:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Dec 2017 19:22:19 GMT
EXPOSE 8529/tcp
# Thu, 21 Dec 2017 19:22:19 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6ea09c7bf123d788a9ce74fd07cecccc0ffc37b098d4e213b252354a63587`  
		Last Modified: Thu, 21 Dec 2017 19:26:01 GMT  
		Size: 6.9 MB (6921026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf3fad5be6d38cab8d232f053e24732c49bac992126981ea53cd8e132c03411`  
		Last Modified: Thu, 21 Dec 2017 19:25:58 GMT  
		Size: 3.5 KB (3468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb40579cd017874c998d3e3f523901d7194555fd953e36838c1bc08f0063c440`  
		Last Modified: Thu, 21 Dec 2017 19:25:59 GMT  
		Size: 7.4 MB (7351445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f20641d34e46a7e7a4bb0025641d66c9601d142acee8b49c8e10e1108c7fc0`  
		Last Modified: Thu, 21 Dec 2017 19:25:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15c61a36991b41d83ef7608a16bb5e30a19fcf074d663d459192d6b5a8e0170`  
		Last Modified: Thu, 21 Dec 2017 19:26:06 GMT  
		Size: 52.8 MB (52809016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e489e086c2731d0a51ca6785d68a98be0ea8898046052f6c346998c14df4c3e`  
		Last Modified: Thu, 21 Dec 2017 19:25:58 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:e85d160648f831ae62f67b97b4332ba298cafdffa87a23960b57e625770b93ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:541d5fd16f7171f96acfbda61968c02be5ac7e0fe8be0e7636bd36add6e43a39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112208529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a58c1f105edd2c602d51d777bf1ddb7c6cc0e04281ccc885a5c2da861e19ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:36 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 12 Dec 2017 03:13:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 12 Dec 2017 03:13:36 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 21 Dec 2017 19:21:37 GMT
ENV ARANGO_VERSION=3.3.0
# Thu, 21 Dec 2017 19:21:38 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 21 Dec 2017 19:21:38 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.0-1_amd64.deb
# Thu, 21 Dec 2017 19:21:38 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.0-1_amd64.deb
# Thu, 21 Dec 2017 19:21:38 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.0-1_amd64.deb.asc
# Thu, 21 Dec 2017 19:21:45 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 19:21:51 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 21 Dec 2017 19:21:58 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 19:21:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 19:22:17 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 21 Dec 2017 19:22:18 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 21 Dec 2017 19:22:18 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Thu, 21 Dec 2017 19:22:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Dec 2017 19:22:19 GMT
EXPOSE 8529/tcp
# Thu, 21 Dec 2017 19:22:19 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6ea09c7bf123d788a9ce74fd07cecccc0ffc37b098d4e213b252354a63587`  
		Last Modified: Thu, 21 Dec 2017 19:26:01 GMT  
		Size: 6.9 MB (6921026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf3fad5be6d38cab8d232f053e24732c49bac992126981ea53cd8e132c03411`  
		Last Modified: Thu, 21 Dec 2017 19:25:58 GMT  
		Size: 3.5 KB (3468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb40579cd017874c998d3e3f523901d7194555fd953e36838c1bc08f0063c440`  
		Last Modified: Thu, 21 Dec 2017 19:25:59 GMT  
		Size: 7.4 MB (7351445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f20641d34e46a7e7a4bb0025641d66c9601d142acee8b49c8e10e1108c7fc0`  
		Last Modified: Thu, 21 Dec 2017 19:25:58 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15c61a36991b41d83ef7608a16bb5e30a19fcf074d663d459192d6b5a8e0170`  
		Last Modified: Thu, 21 Dec 2017 19:26:06 GMT  
		Size: 52.8 MB (52809016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e489e086c2731d0a51ca6785d68a98be0ea8898046052f6c346998c14df4c3e`  
		Last Modified: Thu, 21 Dec 2017 19:25:58 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
