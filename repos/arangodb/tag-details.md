<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.0`](#arangodb320)
-	[`arangodb:latest`](#arangodblatest)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.26`](#arangodb3126)

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
$ docker pull arangodb@sha256:f2543e99c09eac3765a88c8022a56a9ce818134dd73510ba9b4c77c6518c57cf
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112464033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c94c07f010083685cee8953624ef2ea59e420d553628dbe267cc1b9d9533708`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:12:21 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 25 Jul 2017 00:13:49 GMT
ENV ARCHITECTURE=amd64
# Tue, 25 Jul 2017 00:13:49 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 25 Jul 2017 00:16:04 GMT
ENV ARANGO_VERSION=3.2.0
# Tue, 25 Jul 2017 00:16:04 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb32/Debian_8.0
# Tue, 25 Jul 2017 00:16:04 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.0-1_amd64.deb
# Tue, 25 Jul 2017 00:16:05 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb32/Debian_8.0/amd64/arangodb3-3.2.0-1_amd64.deb
# Tue, 25 Jul 2017 00:16:05 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb32/Debian_8.0/amd64/arangodb3-3.2.0-1_amd64.deb.asc
# Tue, 25 Jul 2017 00:16:06 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 25 Jul 2017 00:16:25 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:16:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Jul 2017 00:17:31 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 25 Jul 2017 00:17:31 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 25 Jul 2017 00:17:32 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Tue, 25 Jul 2017 00:17:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Jul 2017 00:17:32 GMT
EXPOSE 8529/tcp
# Tue, 25 Jul 2017 00:17:33 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70915486b713e4e0674ced46989f644f8547aaf9290a9136f49be7e8310df644`  
		Last Modified: Tue, 25 Jul 2017 00:18:27 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02024caf1be70db723b8f46f3080995e54693551728bf76a2b26b2b34fa17ea1`  
		Last Modified: Tue, 25 Jul 2017 00:18:29 GMT  
		Size: 6.9 MB (6895222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aded129c2ec975fd2104ea51b0f28f4ee2692a104284a094a945fe728eb55f5d`  
		Last Modified: Tue, 25 Jul 2017 00:18:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2847cc495aabbc53c8008aeb11975a218afe8104dc53c96d960594fa8cbd37`  
		Last Modified: Tue, 25 Jul 2017 00:18:37 GMT  
		Size: 53.0 MB (52953825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e59d8702af96eacd18fe4db0a9f1cf27d28d4d43943b0db937d13d6c3f74ab0`  
		Last Modified: Tue, 25 Jul 2017 00:18:27 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.0`

```console
$ docker pull arangodb@sha256:f2543e99c09eac3765a88c8022a56a9ce818134dd73510ba9b4c77c6518c57cf
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.2.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112464033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c94c07f010083685cee8953624ef2ea59e420d553628dbe267cc1b9d9533708`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:12:21 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 25 Jul 2017 00:13:49 GMT
ENV ARCHITECTURE=amd64
# Tue, 25 Jul 2017 00:13:49 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 25 Jul 2017 00:16:04 GMT
ENV ARANGO_VERSION=3.2.0
# Tue, 25 Jul 2017 00:16:04 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb32/Debian_8.0
# Tue, 25 Jul 2017 00:16:04 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.0-1_amd64.deb
# Tue, 25 Jul 2017 00:16:05 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb32/Debian_8.0/amd64/arangodb3-3.2.0-1_amd64.deb
# Tue, 25 Jul 2017 00:16:05 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb32/Debian_8.0/amd64/arangodb3-3.2.0-1_amd64.deb.asc
# Tue, 25 Jul 2017 00:16:06 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 25 Jul 2017 00:16:25 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:16:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Jul 2017 00:17:31 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 25 Jul 2017 00:17:31 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 25 Jul 2017 00:17:32 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Tue, 25 Jul 2017 00:17:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Jul 2017 00:17:32 GMT
EXPOSE 8529/tcp
# Tue, 25 Jul 2017 00:17:33 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70915486b713e4e0674ced46989f644f8547aaf9290a9136f49be7e8310df644`  
		Last Modified: Tue, 25 Jul 2017 00:18:27 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02024caf1be70db723b8f46f3080995e54693551728bf76a2b26b2b34fa17ea1`  
		Last Modified: Tue, 25 Jul 2017 00:18:29 GMT  
		Size: 6.9 MB (6895222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aded129c2ec975fd2104ea51b0f28f4ee2692a104284a094a945fe728eb55f5d`  
		Last Modified: Tue, 25 Jul 2017 00:18:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2847cc495aabbc53c8008aeb11975a218afe8104dc53c96d960594fa8cbd37`  
		Last Modified: Tue, 25 Jul 2017 00:18:37 GMT  
		Size: 53.0 MB (52953825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e59d8702af96eacd18fe4db0a9f1cf27d28d4d43943b0db937d13d6c3f74ab0`  
		Last Modified: Tue, 25 Jul 2017 00:18:27 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:f2543e99c09eac3765a88c8022a56a9ce818134dd73510ba9b4c77c6518c57cf
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112464033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c94c07f010083685cee8953624ef2ea59e420d553628dbe267cc1b9d9533708`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:12:21 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 25 Jul 2017 00:13:49 GMT
ENV ARCHITECTURE=amd64
# Tue, 25 Jul 2017 00:13:49 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 25 Jul 2017 00:16:04 GMT
ENV ARANGO_VERSION=3.2.0
# Tue, 25 Jul 2017 00:16:04 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb32/Debian_8.0
# Tue, 25 Jul 2017 00:16:04 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.0-1_amd64.deb
# Tue, 25 Jul 2017 00:16:05 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb32/Debian_8.0/amd64/arangodb3-3.2.0-1_amd64.deb
# Tue, 25 Jul 2017 00:16:05 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb32/Debian_8.0/amd64/arangodb3-3.2.0-1_amd64.deb.asc
# Tue, 25 Jul 2017 00:16:06 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 25 Jul 2017 00:16:25 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:16:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 25 Jul 2017 00:17:31 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 25 Jul 2017 00:17:31 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 25 Jul 2017 00:17:32 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Tue, 25 Jul 2017 00:17:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Jul 2017 00:17:32 GMT
EXPOSE 8529/tcp
# Tue, 25 Jul 2017 00:17:33 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70915486b713e4e0674ced46989f644f8547aaf9290a9136f49be7e8310df644`  
		Last Modified: Tue, 25 Jul 2017 00:18:27 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02024caf1be70db723b8f46f3080995e54693551728bf76a2b26b2b34fa17ea1`  
		Last Modified: Tue, 25 Jul 2017 00:18:29 GMT  
		Size: 6.9 MB (6895222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aded129c2ec975fd2104ea51b0f28f4ee2692a104284a094a945fe728eb55f5d`  
		Last Modified: Tue, 25 Jul 2017 00:18:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2847cc495aabbc53c8008aeb11975a218afe8104dc53c96d960594fa8cbd37`  
		Last Modified: Tue, 25 Jul 2017 00:18:37 GMT  
		Size: 53.0 MB (52953825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e59d8702af96eacd18fe4db0a9f1cf27d28d4d43943b0db937d13d6c3f74ab0`  
		Last Modified: Tue, 25 Jul 2017 00:18:27 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1`

```console
$ docker pull arangodb@sha256:5c3d3534f7771add3b8afdeb335090144dad71669ec631b443b1dd11a1ccbce7
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139290432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5599b5436542ad723a65f61509ea93c4a12a3731ba130ea4864ad7fb210ad4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:12:21 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 25 Jul 2017 00:13:49 GMT
ENV ARCHITECTURE=amd64
# Tue, 25 Jul 2017 00:13:49 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 28 Jul 2017 17:02:16 GMT
ENV ARANGO_VERSION=3.1.26
# Fri, 28 Jul 2017 17:02:16 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 28 Jul 2017 17:02:16 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.26-1_amd64.deb
# Fri, 28 Jul 2017 17:02:16 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.26-1_amd64.deb
# Fri, 28 Jul 2017 17:02:17 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.26-1_amd64.deb.asc
# Fri, 28 Jul 2017 17:02:18 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 28 Jul 2017 17:03:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 28 Jul 2017 17:03:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 28 Jul 2017 17:04:12 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 28 Jul 2017 17:04:12 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 28 Jul 2017 17:04:13 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Fri, 28 Jul 2017 17:04:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 28 Jul 2017 17:04:13 GMT
EXPOSE 8529/tcp
# Fri, 28 Jul 2017 17:04:14 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd89e9a56247cca150aaaa0406533dc3a1fdf4d145902bc626752093584059b`  
		Last Modified: Fri, 28 Jul 2017 17:05:22 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c505598b4848976ecac556b29b1a02596dcbbd647ba80a06e4efda447944bd8`  
		Last Modified: Fri, 28 Jul 2017 17:05:22 GMT  
		Size: 6.9 MB (6895316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5b6c57aa1d1b0fd9b1b64a9cb2a3d62a2881194df54aff07dbeca0c030f12`  
		Last Modified: Fri, 28 Jul 2017 17:05:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732365fae831816f5bf92399b8b675926d4ca7bcbb1b114a03a68f45a1d75ce2`  
		Last Modified: Fri, 28 Jul 2017 17:05:32 GMT  
		Size: 79.8 MB (79780380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fed956caa9073e6d4f09f7427cf83932e19707903ed54bef15245757c3f0ea`  
		Last Modified: Fri, 28 Jul 2017 17:05:21 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.26`

```console
$ docker pull arangodb@sha256:5c3d3534f7771add3b8afdeb335090144dad71669ec631b443b1dd11a1ccbce7
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1.26` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139290432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5599b5436542ad723a65f61509ea93c4a12a3731ba130ea4864ad7fb210ad4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:12:21 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 25 Jul 2017 00:13:49 GMT
ENV ARCHITECTURE=amd64
# Tue, 25 Jul 2017 00:13:49 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 28 Jul 2017 17:02:16 GMT
ENV ARANGO_VERSION=3.1.26
# Fri, 28 Jul 2017 17:02:16 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 28 Jul 2017 17:02:16 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.26-1_amd64.deb
# Fri, 28 Jul 2017 17:02:16 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.26-1_amd64.deb
# Fri, 28 Jul 2017 17:02:17 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.26-1_amd64.deb.asc
# Fri, 28 Jul 2017 17:02:18 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 28 Jul 2017 17:03:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 28 Jul 2017 17:03:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 28 Jul 2017 17:04:12 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 28 Jul 2017 17:04:12 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 28 Jul 2017 17:04:13 GMT
COPY file:1a730b46a2efaa2d390d0fa538aa921038c4b55b132c724434ee045e8ef14ed3 in /entrypoint.sh 
# Fri, 28 Jul 2017 17:04:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 28 Jul 2017 17:04:13 GMT
EXPOSE 8529/tcp
# Fri, 28 Jul 2017 17:04:14 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd89e9a56247cca150aaaa0406533dc3a1fdf4d145902bc626752093584059b`  
		Last Modified: Fri, 28 Jul 2017 17:05:22 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c505598b4848976ecac556b29b1a02596dcbbd647ba80a06e4efda447944bd8`  
		Last Modified: Fri, 28 Jul 2017 17:05:22 GMT  
		Size: 6.9 MB (6895316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5b6c57aa1d1b0fd9b1b64a9cb2a3d62a2881194df54aff07dbeca0c030f12`  
		Last Modified: Fri, 28 Jul 2017 17:05:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732365fae831816f5bf92399b8b675926d4ca7bcbb1b114a03a68f45a1d75ce2`  
		Last Modified: Fri, 28 Jul 2017 17:05:32 GMT  
		Size: 79.8 MB (79780380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fed956caa9073e6d4f09f7427cf83932e19707903ed54bef15245757c3f0ea`  
		Last Modified: Fri, 28 Jul 2017 17:05:21 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
