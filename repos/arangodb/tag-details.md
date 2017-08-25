<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.2`](#arangodb322)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:3c24340973a1cdbd7cf96da617fc287b98a7fe769e237cc213750065fc98df14
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113317644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ee6777970b2265d74222b58f01e900f24bbee4308aa72b32a214b15a605adb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:12:21 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 25 Jul 2017 00:12:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 25 Jul 2017 00:12:22 GMT
ENV ARCHITECTURE=amd64
# Tue, 25 Jul 2017 00:12:22 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 25 Jul 2017 00:12:23 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 25 Jul 2017 00:12:23 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 25 Jul 2017 00:12:23 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 25 Jul 2017 00:12:23 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 25 Jul 2017 00:13:44 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 25 Jul 2017 00:13:45 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 25 Jul 2017 00:13:45 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 25 Jul 2017 00:13:45 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 25 Jul 2017 00:13:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Jul 2017 00:13:46 GMT
EXPOSE 8529/tcp
# Tue, 25 Jul 2017 00:13:46 GMT
USER [arangodb]
# Tue, 25 Jul 2017 00:13:46 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00898896054fa39cce5b04fa21af68cf06032c4ac8bd4fe70712f2317391f9e7`  
		Last Modified: Tue, 25 Jul 2017 00:17:38 GMT  
		Size: 7.4 KB (7408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376c74d47d2c174a9c47a6549ed3295c2f90b50c05ba4c8072a71d2f352bce3d`  
		Last Modified: Tue, 25 Jul 2017 00:17:48 GMT  
		Size: 60.7 MB (60703347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c1f82a9be7abc0e5d2a4b7da99f7a9037f53dd7149d52072f966a271d6fde9`  
		Last Modified: Tue, 25 Jul 2017 00:17:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc9d2c9e66f695d92147e200dbe69534e2e5e86f13d9bf1afe4532d1d4586e4`  
		Last Modified: Tue, 25 Jul 2017 00:17:39 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:3c24340973a1cdbd7cf96da617fc287b98a7fe769e237cc213750065fc98df14
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113317644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ee6777970b2265d74222b58f01e900f24bbee4308aa72b32a214b15a605adb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:12:21 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 25 Jul 2017 00:12:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 25 Jul 2017 00:12:22 GMT
ENV ARCHITECTURE=amd64
# Tue, 25 Jul 2017 00:12:22 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 25 Jul 2017 00:12:23 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 25 Jul 2017 00:12:23 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 25 Jul 2017 00:12:23 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 25 Jul 2017 00:12:23 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 25 Jul 2017 00:13:44 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 25 Jul 2017 00:13:45 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 25 Jul 2017 00:13:45 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 25 Jul 2017 00:13:45 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 25 Jul 2017 00:13:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Jul 2017 00:13:46 GMT
EXPOSE 8529/tcp
# Tue, 25 Jul 2017 00:13:46 GMT
USER [arangodb]
# Tue, 25 Jul 2017 00:13:46 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00898896054fa39cce5b04fa21af68cf06032c4ac8bd4fe70712f2317391f9e7`  
		Last Modified: Tue, 25 Jul 2017 00:17:38 GMT  
		Size: 7.4 KB (7408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376c74d47d2c174a9c47a6549ed3295c2f90b50c05ba4c8072a71d2f352bce3d`  
		Last Modified: Tue, 25 Jul 2017 00:17:48 GMT  
		Size: 60.7 MB (60703347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c1f82a9be7abc0e5d2a4b7da99f7a9037f53dd7149d52072f966a271d6fde9`  
		Last Modified: Tue, 25 Jul 2017 00:17:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc9d2c9e66f695d92147e200dbe69534e2e5e86f13d9bf1afe4532d1d4586e4`  
		Last Modified: Tue, 25 Jul 2017 00:17:39 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:c6154fff2aab57cb9ec68a2dc1a007ac516070439f583d10c35ab0051badab6b
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111481231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dccedf7c3f1f3c0c0647a164b23ad92513fbfd92445f3f61697c64525f642e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Fri, 25 Aug 2017 14:18:34 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 25 Aug 2017 14:18:34 GMT
ENV ARCHITECTURE=amd64
# Fri, 25 Aug 2017 14:18:35 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 25 Aug 2017 14:18:35 GMT
ENV ARANGO_VERSION=3.2.2
# Fri, 25 Aug 2017 14:18:35 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb32/Debian_9.0
# Fri, 25 Aug 2017 14:18:35 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.2-1_amd64.deb
# Fri, 25 Aug 2017 14:18:36 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb32/Debian_9.0/amd64/arangodb3-3.2.2-1_amd64.deb
# Fri, 25 Aug 2017 14:18:36 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb32/Debian_9.0/amd64/arangodb3-3.2.2-1_amd64.deb.asc
# Fri, 25 Aug 2017 14:18:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 14:18:54 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 25 Aug 2017 14:19:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 14:19:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 Aug 2017 14:19:50 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 25 Aug 2017 14:19:50 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 25 Aug 2017 14:19:51 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Fri, 25 Aug 2017 14:19:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 25 Aug 2017 14:19:52 GMT
EXPOSE 8529/tcp
# Fri, 25 Aug 2017 14:19:56 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b88c4b374e50e69e238327fdc1d5bed6afe56d40d2d9b37aa9e57422f5ea22`  
		Last Modified: Fri, 25 Aug 2017 14:20:22 GMT  
		Size: 6.7 MB (6732467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef98e79066347fd34309f6297fb478c2da64aaaaadc7ece38632cd933f00ecd4`  
		Last Modified: Fri, 25 Aug 2017 14:20:20 GMT  
		Size: 7.2 KB (7172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03042b5b3e9352da1760d2735635328a797e40a308d1482165697b6d3a376989`  
		Last Modified: Fri, 25 Aug 2017 14:20:23 GMT  
		Size: 7.3 MB (7348868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feabe3afbd749314ce6ab0d0892643f05b97a59c411e2b9ebe2c97071d51e0f2`  
		Last Modified: Fri, 25 Aug 2017 14:20:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e580b579d7a8c5bb734832d39770f6d73f0cbbbd0ec6c1a7d88c9152ad62aef9`  
		Last Modified: Fri, 25 Aug 2017 14:20:31 GMT  
		Size: 52.2 MB (52247845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ad55ae64222911725345ed22f3d4c60121a37088c979a079a9b25189b80f44`  
		Last Modified: Fri, 25 Aug 2017 14:20:20 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.2`

```console
$ docker pull arangodb@sha256:c6154fff2aab57cb9ec68a2dc1a007ac516070439f583d10c35ab0051badab6b
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.2.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111481231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dccedf7c3f1f3c0c0647a164b23ad92513fbfd92445f3f61697c64525f642e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Fri, 25 Aug 2017 14:18:34 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 25 Aug 2017 14:18:34 GMT
ENV ARCHITECTURE=amd64
# Fri, 25 Aug 2017 14:18:35 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 25 Aug 2017 14:18:35 GMT
ENV ARANGO_VERSION=3.2.2
# Fri, 25 Aug 2017 14:18:35 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb32/Debian_9.0
# Fri, 25 Aug 2017 14:18:35 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.2-1_amd64.deb
# Fri, 25 Aug 2017 14:18:36 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb32/Debian_9.0/amd64/arangodb3-3.2.2-1_amd64.deb
# Fri, 25 Aug 2017 14:18:36 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb32/Debian_9.0/amd64/arangodb3-3.2.2-1_amd64.deb.asc
# Fri, 25 Aug 2017 14:18:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 14:18:54 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 25 Aug 2017 14:19:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 14:19:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 Aug 2017 14:19:50 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 25 Aug 2017 14:19:50 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 25 Aug 2017 14:19:51 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Fri, 25 Aug 2017 14:19:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 25 Aug 2017 14:19:52 GMT
EXPOSE 8529/tcp
# Fri, 25 Aug 2017 14:19:56 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b88c4b374e50e69e238327fdc1d5bed6afe56d40d2d9b37aa9e57422f5ea22`  
		Last Modified: Fri, 25 Aug 2017 14:20:22 GMT  
		Size: 6.7 MB (6732467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef98e79066347fd34309f6297fb478c2da64aaaaadc7ece38632cd933f00ecd4`  
		Last Modified: Fri, 25 Aug 2017 14:20:20 GMT  
		Size: 7.2 KB (7172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03042b5b3e9352da1760d2735635328a797e40a308d1482165697b6d3a376989`  
		Last Modified: Fri, 25 Aug 2017 14:20:23 GMT  
		Size: 7.3 MB (7348868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feabe3afbd749314ce6ab0d0892643f05b97a59c411e2b9ebe2c97071d51e0f2`  
		Last Modified: Fri, 25 Aug 2017 14:20:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e580b579d7a8c5bb734832d39770f6d73f0cbbbd0ec6c1a7d88c9152ad62aef9`  
		Last Modified: Fri, 25 Aug 2017 14:20:31 GMT  
		Size: 52.2 MB (52247845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ad55ae64222911725345ed22f3d4c60121a37088c979a079a9b25189b80f44`  
		Last Modified: Fri, 25 Aug 2017 14:20:20 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:c6154fff2aab57cb9ec68a2dc1a007ac516070439f583d10c35ab0051badab6b
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111481231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dccedf7c3f1f3c0c0647a164b23ad92513fbfd92445f3f61697c64525f642e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Fri, 25 Aug 2017 14:18:34 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 25 Aug 2017 14:18:34 GMT
ENV ARCHITECTURE=amd64
# Fri, 25 Aug 2017 14:18:35 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 25 Aug 2017 14:18:35 GMT
ENV ARANGO_VERSION=3.2.2
# Fri, 25 Aug 2017 14:18:35 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb32/Debian_9.0
# Fri, 25 Aug 2017 14:18:35 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.2-1_amd64.deb
# Fri, 25 Aug 2017 14:18:36 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb32/Debian_9.0/amd64/arangodb3-3.2.2-1_amd64.deb
# Fri, 25 Aug 2017 14:18:36 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb32/Debian_9.0/amd64/arangodb3-3.2.2-1_amd64.deb.asc
# Fri, 25 Aug 2017 14:18:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 14:18:54 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 25 Aug 2017 14:19:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 14:19:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 Aug 2017 14:19:50 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 25 Aug 2017 14:19:50 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 25 Aug 2017 14:19:51 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Fri, 25 Aug 2017 14:19:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 25 Aug 2017 14:19:52 GMT
EXPOSE 8529/tcp
# Fri, 25 Aug 2017 14:19:56 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b88c4b374e50e69e238327fdc1d5bed6afe56d40d2d9b37aa9e57422f5ea22`  
		Last Modified: Fri, 25 Aug 2017 14:20:22 GMT  
		Size: 6.7 MB (6732467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef98e79066347fd34309f6297fb478c2da64aaaaadc7ece38632cd933f00ecd4`  
		Last Modified: Fri, 25 Aug 2017 14:20:20 GMT  
		Size: 7.2 KB (7172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03042b5b3e9352da1760d2735635328a797e40a308d1482165697b6d3a376989`  
		Last Modified: Fri, 25 Aug 2017 14:20:23 GMT  
		Size: 7.3 MB (7348868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feabe3afbd749314ce6ab0d0892643f05b97a59c411e2b9ebe2c97071d51e0f2`  
		Last Modified: Fri, 25 Aug 2017 14:20:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e580b579d7a8c5bb734832d39770f6d73f0cbbbd0ec6c1a7d88c9152ad62aef9`  
		Last Modified: Fri, 25 Aug 2017 14:20:31 GMT  
		Size: 52.2 MB (52247845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ad55ae64222911725345ed22f3d4c60121a37088c979a079a9b25189b80f44`  
		Last Modified: Fri, 25 Aug 2017 14:20:20 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
