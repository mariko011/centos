<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.15`](#arangodb3115)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:c81e169fa310d7e99babd8cbe63f8365233dc0ed9d6bc5f54a3bdc2abb20d6e6
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110184130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3540cef5ee9aad9a342740d857a5fe210ed96d4d8a6d18dabcb0dc7f2bc53e28`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:40:58 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 27 Feb 2017 22:41:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 27 Feb 2017 22:41:00 GMT
ENV ARCHITECTURE=amd64
# Mon, 27 Feb 2017 22:41:01 GMT
ENV ARANGO_VERSION=2.8.11
# Mon, 27 Feb 2017 22:41:01 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Mon, 27 Feb 2017 22:41:01 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Mon, 27 Feb 2017 22:41:02 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Mon, 27 Feb 2017 22:41:02 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Mon, 27 Feb 2017 22:41:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 27 Feb 2017 22:41:37 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Mon, 27 Feb 2017 22:41:37 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Mon, 27 Feb 2017 22:41:38 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Mon, 27 Feb 2017 22:41:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:41:39 GMT
EXPOSE 8529/tcp
# Mon, 27 Feb 2017 22:41:39 GMT
USER [arangodb]
# Mon, 27 Feb 2017 22:41:40 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7f03b05faf234f7eefdbceb22e75ff030b70b131c5927dca312c14e5f307fe`  
		Last Modified: Tue, 28 Feb 2017 22:12:35 GMT  
		Size: 7.4 KB (7376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e599587ee59e2047e68cf95051ae7f85a37dcdf2128ca50ae7c86bb98160a50`  
		Last Modified: Tue, 28 Feb 2017 22:13:01 GMT  
		Size: 58.8 MB (58812119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025094de6f2e23f93ef80e2a1d775dea30aad1c750b770a03928b8c1e6897f1c`  
		Last Modified: Tue, 28 Feb 2017 22:12:33 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b17fcbb3cfdb028661cc59722a3a2b770cabdb859462badd1d9a65b6403a1e9`  
		Last Modified: Tue, 28 Feb 2017 22:12:34 GMT  
		Size: 1.1 KB (1096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:c81e169fa310d7e99babd8cbe63f8365233dc0ed9d6bc5f54a3bdc2abb20d6e6
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110184130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3540cef5ee9aad9a342740d857a5fe210ed96d4d8a6d18dabcb0dc7f2bc53e28`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:40:58 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 27 Feb 2017 22:41:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 27 Feb 2017 22:41:00 GMT
ENV ARCHITECTURE=amd64
# Mon, 27 Feb 2017 22:41:01 GMT
ENV ARANGO_VERSION=2.8.11
# Mon, 27 Feb 2017 22:41:01 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Mon, 27 Feb 2017 22:41:01 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Mon, 27 Feb 2017 22:41:02 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Mon, 27 Feb 2017 22:41:02 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Mon, 27 Feb 2017 22:41:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 27 Feb 2017 22:41:37 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Mon, 27 Feb 2017 22:41:37 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Mon, 27 Feb 2017 22:41:38 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Mon, 27 Feb 2017 22:41:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Feb 2017 22:41:39 GMT
EXPOSE 8529/tcp
# Mon, 27 Feb 2017 22:41:39 GMT
USER [arangodb]
# Mon, 27 Feb 2017 22:41:40 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7f03b05faf234f7eefdbceb22e75ff030b70b131c5927dca312c14e5f307fe`  
		Last Modified: Tue, 28 Feb 2017 22:12:35 GMT  
		Size: 7.4 KB (7376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e599587ee59e2047e68cf95051ae7f85a37dcdf2128ca50ae7c86bb98160a50`  
		Last Modified: Tue, 28 Feb 2017 22:13:01 GMT  
		Size: 58.8 MB (58812119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025094de6f2e23f93ef80e2a1d775dea30aad1c750b770a03928b8c1e6897f1c`  
		Last Modified: Tue, 28 Feb 2017 22:12:33 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b17fcbb3cfdb028661cc59722a3a2b770cabdb859462badd1d9a65b6403a1e9`  
		Last Modified: Tue, 28 Feb 2017 22:12:34 GMT  
		Size: 1.1 KB (1096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1`

```console
$ docker pull arangodb@sha256:82b4a1e59a6520ba8dd2126c960a043d72d684ea66603ebd9a8a40a9e4db112b
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127217037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca42e1e5dc741f202a346f87f81f66da81d81ec86e9c65fe27ef7d49cbc79e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:40:58 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 27 Feb 2017 22:41:41 GMT
ENV ARCHITECTURE=amd64
# Mon, 27 Feb 2017 22:42:25 GMT
ENV DEB_PACKAGE_VERSION=1
# Mon, 13 Mar 2017 19:36:20 GMT
ENV ARANGO_VERSION=3.1.14
# Mon, 13 Mar 2017 19:36:21 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Mon, 13 Mar 2017 19:36:21 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.14-1_amd64.deb
# Mon, 13 Mar 2017 19:36:21 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.14-1_amd64.deb
# Mon, 13 Mar 2017 19:36:22 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.14-1_amd64.deb.asc
# Mon, 13 Mar 2017 19:36:23 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 13 Mar 2017 19:36:37 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 13 Mar 2017 19:36:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 13 Mar 2017 19:37:04 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 13 Mar 2017 19:37:05 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 13 Mar 2017 19:37:06 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Mon, 13 Mar 2017 19:37:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Mar 2017 19:37:07 GMT
EXPOSE 8529/tcp
# Mon, 13 Mar 2017 19:37:08 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471f53f841ffca2867bdaf8cb0415f3145b3514032eeee2f9c31760e9afaf452`  
		Last Modified: Mon, 13 Mar 2017 19:38:04 GMT  
		Size: 7.4 KB (7374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08caaab3fc0726b8bcf1c0e4aee2d2a76b7d1ddf9fb2378b2254cbf52a3e6fe`  
		Last Modified: Mon, 13 Mar 2017 19:38:06 GMT  
		Size: 6.7 MB (6691397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ce12dca6ae954227c7b155f4b706c841082781d13d424d8250c838ec54efb7`  
		Last Modified: Mon, 13 Mar 2017 19:38:04 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc22efb407c53d8972f083ccc4ded75da292486ef897876ae42d4624f3829797`  
		Last Modified: Mon, 13 Mar 2017 19:38:23 GMT  
		Size: 69.2 MB (69153343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd61087ecb31c80337334c6eb3a7a653acfd01c9b337419a124c401729e90ee2`  
		Last Modified: Mon, 13 Mar 2017 19:38:04 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.15`

**does not exist** (yet?)

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:82b4a1e59a6520ba8dd2126c960a043d72d684ea66603ebd9a8a40a9e4db112b
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127217037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca42e1e5dc741f202a346f87f81f66da81d81ec86e9c65fe27ef7d49cbc79e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 22:40:58 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 27 Feb 2017 22:41:41 GMT
ENV ARCHITECTURE=amd64
# Mon, 27 Feb 2017 22:42:25 GMT
ENV DEB_PACKAGE_VERSION=1
# Mon, 13 Mar 2017 19:36:20 GMT
ENV ARANGO_VERSION=3.1.14
# Mon, 13 Mar 2017 19:36:21 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Mon, 13 Mar 2017 19:36:21 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.14-1_amd64.deb
# Mon, 13 Mar 2017 19:36:21 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.14-1_amd64.deb
# Mon, 13 Mar 2017 19:36:22 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.14-1_amd64.deb.asc
# Mon, 13 Mar 2017 19:36:23 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 13 Mar 2017 19:36:37 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 13 Mar 2017 19:36:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 13 Mar 2017 19:37:04 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 13 Mar 2017 19:37:05 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 13 Mar 2017 19:37:06 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Mon, 13 Mar 2017 19:37:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 13 Mar 2017 19:37:07 GMT
EXPOSE 8529/tcp
# Mon, 13 Mar 2017 19:37:08 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471f53f841ffca2867bdaf8cb0415f3145b3514032eeee2f9c31760e9afaf452`  
		Last Modified: Mon, 13 Mar 2017 19:38:04 GMT  
		Size: 7.4 KB (7374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08caaab3fc0726b8bcf1c0e4aee2d2a76b7d1ddf9fb2378b2254cbf52a3e6fe`  
		Last Modified: Mon, 13 Mar 2017 19:38:06 GMT  
		Size: 6.7 MB (6691397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ce12dca6ae954227c7b155f4b706c841082781d13d424d8250c838ec54efb7`  
		Last Modified: Mon, 13 Mar 2017 19:38:04 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc22efb407c53d8972f083ccc4ded75da292486ef897876ae42d4624f3829797`  
		Last Modified: Mon, 13 Mar 2017 19:38:23 GMT  
		Size: 69.2 MB (69153343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd61087ecb31c80337334c6eb3a7a653acfd01c9b337419a124c401729e90ee2`  
		Last Modified: Mon, 13 Mar 2017 19:38:04 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
