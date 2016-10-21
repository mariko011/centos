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
-	[`arangodb:3.0.10`](#arangodb3010)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.5.5`

```console
$ docker pull arangodb@sha256:4fb45960bfbac1f0c90116116bdb899c5d778f3d9b1d5f89dcc18aaf6e91a482
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106455584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2f8c1e67d13b0068f46b10966ef6c4d861cc304667abe38909445596822bf41`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:28:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 21 Oct 2016 16:28:51 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 21 Oct 2016 16:28:51 GMT
ENV ARCHITECTURE=amd64
# Fri, 21 Oct 2016 16:28:52 GMT
ENV ARANGO_VERSION=2.5.5
# Fri, 21 Oct 2016 16:28:52 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 21 Oct 2016 16:28:52 GMT
ENV ARANGO_PACKAGE=arangodb_2.5.5_amd64.deb
# Fri, 21 Oct 2016 16:28:53 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb
# Fri, 21 Oct 2016 16:28:53 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb.asc
# Fri, 21 Oct 2016 16:29:20 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 21 Oct 2016 16:29:21 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 21 Oct 2016 16:29:21 GMT
EXPOSE 8529/tcp
# Fri, 21 Oct 2016 16:29:21 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9934b36221111ab9ae2f9ee9ad12df0753de38375aa525e38da17d80d8e407b`  
		Last Modified: Fri, 21 Oct 2016 16:29:31 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e489dfe50b67f4e3feb1170f4f6416f0dc5abca671253df06425a9eebaccab`  
		Last Modified: Fri, 21 Oct 2016 16:29:47 GMT  
		Size: 55.1 MB (55095690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.5`

```console
$ docker pull arangodb@sha256:4fb45960bfbac1f0c90116116bdb899c5d778f3d9b1d5f89dcc18aaf6e91a482
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106455584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2f8c1e67d13b0068f46b10966ef6c4d861cc304667abe38909445596822bf41`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:28:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 21 Oct 2016 16:28:51 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 21 Oct 2016 16:28:51 GMT
ENV ARCHITECTURE=amd64
# Fri, 21 Oct 2016 16:28:52 GMT
ENV ARANGO_VERSION=2.5.5
# Fri, 21 Oct 2016 16:28:52 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 21 Oct 2016 16:28:52 GMT
ENV ARANGO_PACKAGE=arangodb_2.5.5_amd64.deb
# Fri, 21 Oct 2016 16:28:53 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb
# Fri, 21 Oct 2016 16:28:53 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb.asc
# Fri, 21 Oct 2016 16:29:20 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 21 Oct 2016 16:29:21 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 21 Oct 2016 16:29:21 GMT
EXPOSE 8529/tcp
# Fri, 21 Oct 2016 16:29:21 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9934b36221111ab9ae2f9ee9ad12df0753de38375aa525e38da17d80d8e407b`  
		Last Modified: Fri, 21 Oct 2016 16:29:31 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e489dfe50b67f4e3feb1170f4f6416f0dc5abca671253df06425a9eebaccab`  
		Last Modified: Fri, 21 Oct 2016 16:29:47 GMT  
		Size: 55.1 MB (55095690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.6`

```console
$ docker pull arangodb@sha256:b7269604818c1f48ab18b883df4879326a05bab7fbc4df8ac198c82b3ccdd539
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124906207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130a3b8bfd689b17408f0c77a5a6628d7b318616725773f95cdf50efd3a9ffc3`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:28:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 21 Oct 2016 16:28:51 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 21 Oct 2016 16:28:51 GMT
ENV ARCHITECTURE=amd64
# Fri, 21 Oct 2016 16:30:09 GMT
ENV ARANGO_VERSION=2.6.10
# Fri, 21 Oct 2016 16:30:09 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 21 Oct 2016 16:30:09 GMT
ENV ARANGO_PACKAGE=arangodb_2.6.10_amd64.deb
# Fri, 21 Oct 2016 16:30:10 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb
# Fri, 21 Oct 2016 16:30:10 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb.asc
# Fri, 21 Oct 2016 16:30:43 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 21 Oct 2016 16:30:44 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 21 Oct 2016 16:30:44 GMT
EXPOSE 8529/tcp
# Fri, 21 Oct 2016 16:30:44 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9934b36221111ab9ae2f9ee9ad12df0753de38375aa525e38da17d80d8e407b`  
		Last Modified: Fri, 21 Oct 2016 16:29:31 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50768bae5bf1734d1ac0ef708aec224115181fed8a10fb7a3c9a27e07bf762d9`  
		Last Modified: Fri, 21 Oct 2016 16:31:21 GMT  
		Size: 73.5 MB (73546313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.6.10`

```console
$ docker pull arangodb@sha256:b7269604818c1f48ab18b883df4879326a05bab7fbc4df8ac198c82b3ccdd539
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.6.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124906207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130a3b8bfd689b17408f0c77a5a6628d7b318616725773f95cdf50efd3a9ffc3`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:28:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 21 Oct 2016 16:28:51 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 21 Oct 2016 16:28:51 GMT
ENV ARCHITECTURE=amd64
# Fri, 21 Oct 2016 16:30:09 GMT
ENV ARANGO_VERSION=2.6.10
# Fri, 21 Oct 2016 16:30:09 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 21 Oct 2016 16:30:09 GMT
ENV ARANGO_PACKAGE=arangodb_2.6.10_amd64.deb
# Fri, 21 Oct 2016 16:30:10 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb
# Fri, 21 Oct 2016 16:30:10 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb.asc
# Fri, 21 Oct 2016 16:30:43 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 21 Oct 2016 16:30:44 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 21 Oct 2016 16:30:44 GMT
EXPOSE 8529/tcp
# Fri, 21 Oct 2016 16:30:44 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9934b36221111ab9ae2f9ee9ad12df0753de38375aa525e38da17d80d8e407b`  
		Last Modified: Fri, 21 Oct 2016 16:29:31 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50768bae5bf1734d1ac0ef708aec224115181fed8a10fb7a3c9a27e07bf762d9`  
		Last Modified: Fri, 21 Oct 2016 16:31:21 GMT  
		Size: 73.5 MB (73546313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.7`

```console
$ docker pull arangodb@sha256:a47acf7a653447e9ae789ae892c333e171b0d26b6272e20f6161143fae8c07c1
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127056372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fafaab23079571bb7ea9c14b16a108517bd30ceeee6de7891ccd54d52f8416b`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:28:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 21 Oct 2016 16:28:51 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 21 Oct 2016 16:28:51 GMT
ENV ARCHITECTURE=amd64
# Fri, 21 Oct 2016 16:31:41 GMT
ENV ARANGO_VERSION=2.7.5
# Fri, 21 Oct 2016 16:31:41 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 21 Oct 2016 16:31:41 GMT
ENV ARANGO_PACKAGE=arangodb_2.7.5_amd64.deb
# Fri, 21 Oct 2016 16:31:42 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb
# Fri, 21 Oct 2016 16:31:42 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb.asc
# Fri, 21 Oct 2016 16:32:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 21 Oct 2016 16:32:12 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 21 Oct 2016 16:32:12 GMT
EXPOSE 8529/tcp
# Fri, 21 Oct 2016 16:32:13 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9934b36221111ab9ae2f9ee9ad12df0753de38375aa525e38da17d80d8e407b`  
		Last Modified: Fri, 21 Oct 2016 16:29:31 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38263d40a3477429c06c3d78ac51808859d3527cd177c0a311e4658ca0069f3`  
		Last Modified: Fri, 21 Oct 2016 16:32:47 GMT  
		Size: 75.7 MB (75696478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.7.5`

```console
$ docker pull arangodb@sha256:a47acf7a653447e9ae789ae892c333e171b0d26b6272e20f6161143fae8c07c1
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.7.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127056372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fafaab23079571bb7ea9c14b16a108517bd30ceeee6de7891ccd54d52f8416b`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:28:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 21 Oct 2016 16:28:51 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 21 Oct 2016 16:28:51 GMT
ENV ARCHITECTURE=amd64
# Fri, 21 Oct 2016 16:31:41 GMT
ENV ARANGO_VERSION=2.7.5
# Fri, 21 Oct 2016 16:31:41 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 21 Oct 2016 16:31:41 GMT
ENV ARANGO_PACKAGE=arangodb_2.7.5_amd64.deb
# Fri, 21 Oct 2016 16:31:42 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb
# Fri, 21 Oct 2016 16:31:42 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb.asc
# Fri, 21 Oct 2016 16:32:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 21 Oct 2016 16:32:12 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 21 Oct 2016 16:32:12 GMT
EXPOSE 8529/tcp
# Fri, 21 Oct 2016 16:32:13 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9934b36221111ab9ae2f9ee9ad12df0753de38375aa525e38da17d80d8e407b`  
		Last Modified: Fri, 21 Oct 2016 16:29:31 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38263d40a3477429c06c3d78ac51808859d3527cd177c0a311e4658ca0069f3`  
		Last Modified: Fri, 21 Oct 2016 16:32:47 GMT  
		Size: 75.7 MB (75696478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:fc31ef062b3dbefa9d2652c44e6bcf2754ebab1e92fa8c7043af4435eac2b6bc
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110172172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368e80e4bcf5582868b097d0d2d381f4dc69f66a199d640d318bd6993247211c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:28:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 21 Oct 2016 16:28:51 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 21 Oct 2016 16:28:51 GMT
ENV ARCHITECTURE=amd64
# Fri, 21 Oct 2016 16:33:07 GMT
ENV ARANGO_VERSION=2.8.11
# Fri, 21 Oct 2016 16:33:07 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 21 Oct 2016 16:33:08 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Fri, 21 Oct 2016 16:33:08 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Fri, 21 Oct 2016 16:33:08 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Fri, 21 Oct 2016 16:33:38 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 21 Oct 2016 16:33:39 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Fri, 21 Oct 2016 16:33:39 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 21 Oct 2016 16:33:40 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Fri, 21 Oct 2016 16:33:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 16:33:41 GMT
EXPOSE 8529/tcp
# Fri, 21 Oct 2016 16:33:42 GMT
USER [arangodb]
# Fri, 21 Oct 2016 16:33:42 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9934b36221111ab9ae2f9ee9ad12df0753de38375aa525e38da17d80d8e407b`  
		Last Modified: Fri, 21 Oct 2016 16:29:31 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e36a0d9b96d748fa265b0d3cacb918d8099af63858bfbe2a11b4c305848358`  
		Last Modified: Fri, 21 Oct 2016 16:34:09 GMT  
		Size: 58.8 MB (58811017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e0d2b81621f8c722182f192668630fff0bd98f635a659e4e2e6ebb7f1da8c0`  
		Last Modified: Fri, 21 Oct 2016 16:33:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54fa1a3bd61d3840280c87861b14886c96292319748bc8a5de44bca25eba47d`  
		Last Modified: Fri, 21 Oct 2016 16:33:52 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:fc31ef062b3dbefa9d2652c44e6bcf2754ebab1e92fa8c7043af4435eac2b6bc
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110172172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368e80e4bcf5582868b097d0d2d381f4dc69f66a199d640d318bd6993247211c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:28:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 21 Oct 2016 16:28:51 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 21 Oct 2016 16:28:51 GMT
ENV ARCHITECTURE=amd64
# Fri, 21 Oct 2016 16:33:07 GMT
ENV ARANGO_VERSION=2.8.11
# Fri, 21 Oct 2016 16:33:07 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 21 Oct 2016 16:33:08 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Fri, 21 Oct 2016 16:33:08 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Fri, 21 Oct 2016 16:33:08 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Fri, 21 Oct 2016 16:33:38 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 21 Oct 2016 16:33:39 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Fri, 21 Oct 2016 16:33:39 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 21 Oct 2016 16:33:40 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Fri, 21 Oct 2016 16:33:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 16:33:41 GMT
EXPOSE 8529/tcp
# Fri, 21 Oct 2016 16:33:42 GMT
USER [arangodb]
# Fri, 21 Oct 2016 16:33:42 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9934b36221111ab9ae2f9ee9ad12df0753de38375aa525e38da17d80d8e407b`  
		Last Modified: Fri, 21 Oct 2016 16:29:31 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e36a0d9b96d748fa265b0d3cacb918d8099af63858bfbe2a11b4c305848358`  
		Last Modified: Fri, 21 Oct 2016 16:34:09 GMT  
		Size: 58.8 MB (58811017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e0d2b81621f8c722182f192668630fff0bd98f635a659e4e2e6ebb7f1da8c0`  
		Last Modified: Fri, 21 Oct 2016 16:33:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54fa1a3bd61d3840280c87861b14886c96292319748bc8a5de44bca25eba47d`  
		Last Modified: Fri, 21 Oct 2016 16:33:52 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.0`

```console
$ docker pull arangodb@sha256:529fa168ab7650b9c032ea1f4d631d64ab537ecda7f328194475d74d3d8702dc
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119122145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024ff85bdc08c77bf72fc67c89e4818513821c2cd31d14fa10beca3b4949e4ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:28:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 21 Oct 2016 16:34:29 GMT
ENV ARCHITECTURE=amd64
# Fri, 21 Oct 2016 16:34:30 GMT
ENV ARANGO_VERSION=3.0.10
# Fri, 21 Oct 2016 16:34:30 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Fri, 21 Oct 2016 16:34:30 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.10_amd64.deb
# Fri, 21 Oct 2016 16:34:31 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.10_amd64.deb
# Fri, 21 Oct 2016 16:34:31 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.10_amd64.deb.asc
# Fri, 21 Oct 2016 16:34:33 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 21 Oct 2016 16:34:47 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:34:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 16:35:12 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 21 Oct 2016 16:35:13 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 21 Oct 2016 16:35:14 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Fri, 21 Oct 2016 16:35:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 16:35:15 GMT
EXPOSE 8529/tcp
# Fri, 21 Oct 2016 16:35:15 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac9d6c6731ef52d53d6d5bc51f3557e373ada860421e9f556d5f46b7958241a`  
		Last Modified: Fri, 21 Oct 2016 16:35:48 GMT  
		Size: 6.8 KB (6770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375cabb706bb498ca20c377dc2eb459f3151cee2744dcfef75be3626eff6fbeb`  
		Last Modified: Fri, 21 Oct 2016 16:35:27 GMT  
		Size: 6.7 MB (6683633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8eca122cf359a0fc3d055b1354576531630e0b3d136ed68d89d51da93c83d10`  
		Last Modified: Fri, 21 Oct 2016 16:35:26 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26b92e1f443c639477eb00db3a89dfb9b4dad53d5cdeb7d9a27078518a27106`  
		Last Modified: Fri, 21 Oct 2016 16:35:44 GMT  
		Size: 61.1 MB (61077080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ff0a03f8e13b1101caab16f691b68b4e8f6bd52b3026d4e9bbb4a363460e13`  
		Last Modified: Fri, 21 Oct 2016 16:35:26 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.0.10`

```console
$ docker pull arangodb@sha256:529fa168ab7650b9c032ea1f4d631d64ab537ecda7f328194475d74d3d8702dc
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.0.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119122145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024ff85bdc08c77bf72fc67c89e4818513821c2cd31d14fa10beca3b4949e4ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:28:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 21 Oct 2016 16:34:29 GMT
ENV ARCHITECTURE=amd64
# Fri, 21 Oct 2016 16:34:30 GMT
ENV ARANGO_VERSION=3.0.10
# Fri, 21 Oct 2016 16:34:30 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Fri, 21 Oct 2016 16:34:30 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.10_amd64.deb
# Fri, 21 Oct 2016 16:34:31 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.10_amd64.deb
# Fri, 21 Oct 2016 16:34:31 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.10_amd64.deb.asc
# Fri, 21 Oct 2016 16:34:33 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 21 Oct 2016 16:34:47 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:34:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 16:35:12 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 21 Oct 2016 16:35:13 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 21 Oct 2016 16:35:14 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Fri, 21 Oct 2016 16:35:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 16:35:15 GMT
EXPOSE 8529/tcp
# Fri, 21 Oct 2016 16:35:15 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac9d6c6731ef52d53d6d5bc51f3557e373ada860421e9f556d5f46b7958241a`  
		Last Modified: Fri, 21 Oct 2016 16:35:48 GMT  
		Size: 6.8 KB (6770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375cabb706bb498ca20c377dc2eb459f3151cee2744dcfef75be3626eff6fbeb`  
		Last Modified: Fri, 21 Oct 2016 16:35:27 GMT  
		Size: 6.7 MB (6683633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8eca122cf359a0fc3d055b1354576531630e0b3d136ed68d89d51da93c83d10`  
		Last Modified: Fri, 21 Oct 2016 16:35:26 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26b92e1f443c639477eb00db3a89dfb9b4dad53d5cdeb7d9a27078518a27106`  
		Last Modified: Fri, 21 Oct 2016 16:35:44 GMT  
		Size: 61.1 MB (61077080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ff0a03f8e13b1101caab16f691b68b4e8f6bd52b3026d4e9bbb4a363460e13`  
		Last Modified: Fri, 21 Oct 2016 16:35:26 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:529fa168ab7650b9c032ea1f4d631d64ab537ecda7f328194475d74d3d8702dc
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119122145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024ff85bdc08c77bf72fc67c89e4818513821c2cd31d14fa10beca3b4949e4ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:28:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 21 Oct 2016 16:34:29 GMT
ENV ARCHITECTURE=amd64
# Fri, 21 Oct 2016 16:34:30 GMT
ENV ARANGO_VERSION=3.0.10
# Fri, 21 Oct 2016 16:34:30 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Fri, 21 Oct 2016 16:34:30 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.10_amd64.deb
# Fri, 21 Oct 2016 16:34:31 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.10_amd64.deb
# Fri, 21 Oct 2016 16:34:31 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.10_amd64.deb.asc
# Fri, 21 Oct 2016 16:34:33 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 21 Oct 2016 16:34:47 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:34:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Oct 2016 16:35:12 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 21 Oct 2016 16:35:13 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 21 Oct 2016 16:35:14 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Fri, 21 Oct 2016 16:35:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 16:35:15 GMT
EXPOSE 8529/tcp
# Fri, 21 Oct 2016 16:35:15 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac9d6c6731ef52d53d6d5bc51f3557e373ada860421e9f556d5f46b7958241a`  
		Last Modified: Fri, 21 Oct 2016 16:35:48 GMT  
		Size: 6.8 KB (6770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375cabb706bb498ca20c377dc2eb459f3151cee2744dcfef75be3626eff6fbeb`  
		Last Modified: Fri, 21 Oct 2016 16:35:27 GMT  
		Size: 6.7 MB (6683633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8eca122cf359a0fc3d055b1354576531630e0b3d136ed68d89d51da93c83d10`  
		Last Modified: Fri, 21 Oct 2016 16:35:26 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26b92e1f443c639477eb00db3a89dfb9b4dad53d5cdeb7d9a27078518a27106`  
		Last Modified: Fri, 21 Oct 2016 16:35:44 GMT  
		Size: 61.1 MB (61077080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ff0a03f8e13b1101caab16f691b68b4e8f6bd52b3026d4e9bbb4a363460e13`  
		Last Modified: Fri, 21 Oct 2016 16:35:26 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
