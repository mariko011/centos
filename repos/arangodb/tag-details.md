<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.28`](#arangodb3128)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.6`](#arangodb326)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:8200b521f9f714999da62f4d25366fe884da65ec3d2d499198e13c9b5549e396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:45c337cd6303230aa74dfa6fafce7bdd4e59a9b456a4f35fb9cbe55cc13409a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113331464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6ba95adf4f7edb6f3c8594b638dc1cdf343423848e47324b01e9cae9a24df64`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:00:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 04 Nov 2017 18:00:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 04 Nov 2017 18:00:31 GMT
ENV ARCHITECTURE=amd64
# Sat, 04 Nov 2017 18:00:31 GMT
ENV ARANGO_VERSION=2.8.11
# Sat, 04 Nov 2017 18:01:49 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Sat, 04 Nov 2017 18:01:49 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Sat, 04 Nov 2017 18:01:49 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Sat, 04 Nov 2017 18:01:49 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Sat, 04 Nov 2017 18:02:14 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 04 Nov 2017 18:04:02 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Sat, 04 Nov 2017 18:04:03 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Sat, 04 Nov 2017 18:04:03 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Sat, 04 Nov 2017 18:04:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 18:04:03 GMT
EXPOSE 8529/tcp
# Sat, 04 Nov 2017 18:04:04 GMT
USER [arangodb]
# Sat, 04 Nov 2017 18:04:04 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edc88ddbd09186bcfdfafb2e3e16ae9d74fbc232517d334f5a2c73ed8185bbd`  
		Last Modified: Sat, 04 Nov 2017 18:10:50 GMT  
		Size: 7.4 KB (7416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b035d21a54ef25c307a07a19097ce76662341533f018386167362790afff23e`  
		Last Modified: Sat, 04 Nov 2017 18:11:01 GMT  
		Size: 60.7 MB (60727665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69a1ec64971263a77f38938135ddfcc8f84831488f39836428c8a4081cfd99a`  
		Last Modified: Sat, 04 Nov 2017 18:10:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52471a393fb4cfeb322b9a0f6a19ebd1cca7be8ac2a5d1a0be206dfaa3aa1cd6`  
		Last Modified: Sat, 04 Nov 2017 18:10:50 GMT  
		Size: 1.1 KB (1091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:8200b521f9f714999da62f4d25366fe884da65ec3d2d499198e13c9b5549e396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:45c337cd6303230aa74dfa6fafce7bdd4e59a9b456a4f35fb9cbe55cc13409a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113331464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6ba95adf4f7edb6f3c8594b638dc1cdf343423848e47324b01e9cae9a24df64`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:00:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 04 Nov 2017 18:00:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 04 Nov 2017 18:00:31 GMT
ENV ARCHITECTURE=amd64
# Sat, 04 Nov 2017 18:00:31 GMT
ENV ARANGO_VERSION=2.8.11
# Sat, 04 Nov 2017 18:01:49 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Sat, 04 Nov 2017 18:01:49 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Sat, 04 Nov 2017 18:01:49 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Sat, 04 Nov 2017 18:01:49 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Sat, 04 Nov 2017 18:02:14 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 04 Nov 2017 18:04:02 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Sat, 04 Nov 2017 18:04:03 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Sat, 04 Nov 2017 18:04:03 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Sat, 04 Nov 2017 18:04:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 18:04:03 GMT
EXPOSE 8529/tcp
# Sat, 04 Nov 2017 18:04:04 GMT
USER [arangodb]
# Sat, 04 Nov 2017 18:04:04 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edc88ddbd09186bcfdfafb2e3e16ae9d74fbc232517d334f5a2c73ed8185bbd`  
		Last Modified: Sat, 04 Nov 2017 18:10:50 GMT  
		Size: 7.4 KB (7416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b035d21a54ef25c307a07a19097ce76662341533f018386167362790afff23e`  
		Last Modified: Sat, 04 Nov 2017 18:11:01 GMT  
		Size: 60.7 MB (60727665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69a1ec64971263a77f38938135ddfcc8f84831488f39836428c8a4081cfd99a`  
		Last Modified: Sat, 04 Nov 2017 18:10:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52471a393fb4cfeb322b9a0f6a19ebd1cca7be8ac2a5d1a0be206dfaa3aa1cd6`  
		Last Modified: Sat, 04 Nov 2017 18:10:50 GMT  
		Size: 1.1 KB (1091 bytes)  
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

## `arangodb:3.1.28`

**does not exist** (yet?)

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:39ea2e0997d37a1473d54e4b21c32ff279952782d7056a1504ec73a34a5a31eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:00216123457352e8a20a38cbb4f4efe7399789f220ece5be5084c7840daefb29
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111840062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045bdfb689839bd176559faaeb08426c72588743de41033d372fead5f7b74968`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:07:53 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 04 Nov 2017 18:07:53 GMT
ENV ARCHITECTURE=amd64
# Sat, 04 Nov 2017 18:07:54 GMT
ENV DEB_PACKAGE_VERSION=1
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_VERSION=3.2.6
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.6-1_amd64.deb
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb.asc
# Sat, 04 Nov 2017 18:08:02 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:08:05 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 04 Nov 2017 18:08:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:10:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:10:35 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 04 Nov 2017 18:10:35 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Sat, 04 Nov 2017 18:10:35 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Sat, 04 Nov 2017 18:10:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 18:10:36 GMT
EXPOSE 8529/tcp
# Sat, 04 Nov 2017 18:10:36 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db86fb150a4be981cd07fd83dd053a96d43fbfdd7d9858927d6d93e629e653d4`  
		Last Modified: Sat, 04 Nov 2017 18:11:18 GMT  
		Size: 6.9 MB (6920817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a389f431420b95c3301f9d2df4d65d6f14a0c336a107acfeb8b83fa46b23a6`  
		Last Modified: Sat, 04 Nov 2017 18:11:16 GMT  
		Size: 3.5 KB (3466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6631886cae3d5a1b75f234b152d4eeafa16d4fc2a61b587f34766be5ae839bf3`  
		Last Modified: Sat, 04 Nov 2017 18:11:16 GMT  
		Size: 7.4 MB (7351350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a750c2bc721328b6bc20e29fa2b7ba0c01702a394f9001473d42430bfdc543`  
		Last Modified: Sat, 04 Nov 2017 18:11:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0b76af7879ed55fa96ba6718084ecb605fb406d75573ed257fe00ca6c516db`  
		Last Modified: Sat, 04 Nov 2017 18:11:23 GMT  
		Size: 52.4 MB (52433396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bf1c0da382a084f30362d97c6bf26333a674bc0e1e22e702c563192946d283`  
		Last Modified: Sat, 04 Nov 2017 18:11:15 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.6`

```console
$ docker pull arangodb@sha256:39ea2e0997d37a1473d54e4b21c32ff279952782d7056a1504ec73a34a5a31eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.6` - linux; amd64

```console
$ docker pull arangodb@sha256:00216123457352e8a20a38cbb4f4efe7399789f220ece5be5084c7840daefb29
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111840062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045bdfb689839bd176559faaeb08426c72588743de41033d372fead5f7b74968`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:07:53 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 04 Nov 2017 18:07:53 GMT
ENV ARCHITECTURE=amd64
# Sat, 04 Nov 2017 18:07:54 GMT
ENV DEB_PACKAGE_VERSION=1
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_VERSION=3.2.6
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.6-1_amd64.deb
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb.asc
# Sat, 04 Nov 2017 18:08:02 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:08:05 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 04 Nov 2017 18:08:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:10:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:10:35 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 04 Nov 2017 18:10:35 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Sat, 04 Nov 2017 18:10:35 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Sat, 04 Nov 2017 18:10:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 18:10:36 GMT
EXPOSE 8529/tcp
# Sat, 04 Nov 2017 18:10:36 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db86fb150a4be981cd07fd83dd053a96d43fbfdd7d9858927d6d93e629e653d4`  
		Last Modified: Sat, 04 Nov 2017 18:11:18 GMT  
		Size: 6.9 MB (6920817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a389f431420b95c3301f9d2df4d65d6f14a0c336a107acfeb8b83fa46b23a6`  
		Last Modified: Sat, 04 Nov 2017 18:11:16 GMT  
		Size: 3.5 KB (3466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6631886cae3d5a1b75f234b152d4eeafa16d4fc2a61b587f34766be5ae839bf3`  
		Last Modified: Sat, 04 Nov 2017 18:11:16 GMT  
		Size: 7.4 MB (7351350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a750c2bc721328b6bc20e29fa2b7ba0c01702a394f9001473d42430bfdc543`  
		Last Modified: Sat, 04 Nov 2017 18:11:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0b76af7879ed55fa96ba6718084ecb605fb406d75573ed257fe00ca6c516db`  
		Last Modified: Sat, 04 Nov 2017 18:11:23 GMT  
		Size: 52.4 MB (52433396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bf1c0da382a084f30362d97c6bf26333a674bc0e1e22e702c563192946d283`  
		Last Modified: Sat, 04 Nov 2017 18:11:15 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:39ea2e0997d37a1473d54e4b21c32ff279952782d7056a1504ec73a34a5a31eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:00216123457352e8a20a38cbb4f4efe7399789f220ece5be5084c7840daefb29
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111840062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045bdfb689839bd176559faaeb08426c72588743de41033d372fead5f7b74968`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:07:53 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 04 Nov 2017 18:07:53 GMT
ENV ARCHITECTURE=amd64
# Sat, 04 Nov 2017 18:07:54 GMT
ENV DEB_PACKAGE_VERSION=1
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_VERSION=3.2.6
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.6-1_amd64.deb
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb
# Sat, 04 Nov 2017 18:07:54 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.6-1_amd64.deb.asc
# Sat, 04 Nov 2017 18:08:02 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:08:05 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 04 Nov 2017 18:08:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:10:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:10:35 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 04 Nov 2017 18:10:35 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Sat, 04 Nov 2017 18:10:35 GMT
COPY file:bfaf23a38db232ba7808c846a5fb078a1b190c5fa005d63561e6805ab638afeb in /entrypoint.sh 
# Sat, 04 Nov 2017 18:10:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 18:10:36 GMT
EXPOSE 8529/tcp
# Sat, 04 Nov 2017 18:10:36 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db86fb150a4be981cd07fd83dd053a96d43fbfdd7d9858927d6d93e629e653d4`  
		Last Modified: Sat, 04 Nov 2017 18:11:18 GMT  
		Size: 6.9 MB (6920817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a389f431420b95c3301f9d2df4d65d6f14a0c336a107acfeb8b83fa46b23a6`  
		Last Modified: Sat, 04 Nov 2017 18:11:16 GMT  
		Size: 3.5 KB (3466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6631886cae3d5a1b75f234b152d4eeafa16d4fc2a61b587f34766be5ae839bf3`  
		Last Modified: Sat, 04 Nov 2017 18:11:16 GMT  
		Size: 7.4 MB (7351350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a750c2bc721328b6bc20e29fa2b7ba0c01702a394f9001473d42430bfdc543`  
		Last Modified: Sat, 04 Nov 2017 18:11:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0b76af7879ed55fa96ba6718084ecb605fb406d75573ed257fe00ca6c516db`  
		Last Modified: Sat, 04 Nov 2017 18:11:23 GMT  
		Size: 52.4 MB (52433396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bf1c0da382a084f30362d97c6bf26333a674bc0e1e22e702c563192946d283`  
		Last Modified: Sat, 04 Nov 2017 18:11:15 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
