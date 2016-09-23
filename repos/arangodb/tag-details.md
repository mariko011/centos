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
-	[`arangodb:3.0.9`](#arangodb309)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.5.5`

```console
$ docker pull arangodb@sha256:52fffbedf872ff41e94e267aa0b775857e477971fa1cfbbb9cb7fc77e40f19d7
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106456157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083cc1347099a87a19fac86fb5126504a7b9202a615b1a7e8fc95ed0f259ba96`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:16:06 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 23 Sep 2016 18:16:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 23 Sep 2016 18:16:11 GMT
ENV ARCHITECTURE=amd64
# Fri, 23 Sep 2016 18:16:11 GMT
ENV ARANGO_VERSION=2.5.5
# Fri, 23 Sep 2016 18:16:12 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 23 Sep 2016 18:16:12 GMT
ENV ARANGO_PACKAGE=arangodb_2.5.5_amd64.deb
# Fri, 23 Sep 2016 18:16:12 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb
# Fri, 23 Sep 2016 18:16:13 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb.asc
# Fri, 23 Sep 2016 18:16:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 23 Sep 2016 18:16:55 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 23 Sep 2016 18:16:56 GMT
EXPOSE 8529/tcp
# Fri, 23 Sep 2016 18:16:56 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162136d4f42d380e7755b1ba7a6857af7a5aae87b326970c086882d49017290d`  
		Last Modified: Fri, 23 Sep 2016 18:17:06 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d295322120af36773803cafcdfb8044988dd029d0735cd90e39ee23ea8d6fa6`  
		Last Modified: Fri, 23 Sep 2016 18:17:32 GMT  
		Size: 55.1 MB (55095022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.5`

```console
$ docker pull arangodb@sha256:52fffbedf872ff41e94e267aa0b775857e477971fa1cfbbb9cb7fc77e40f19d7
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106456157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083cc1347099a87a19fac86fb5126504a7b9202a615b1a7e8fc95ed0f259ba96`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:16:06 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 23 Sep 2016 18:16:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 23 Sep 2016 18:16:11 GMT
ENV ARCHITECTURE=amd64
# Fri, 23 Sep 2016 18:16:11 GMT
ENV ARANGO_VERSION=2.5.5
# Fri, 23 Sep 2016 18:16:12 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 23 Sep 2016 18:16:12 GMT
ENV ARANGO_PACKAGE=arangodb_2.5.5_amd64.deb
# Fri, 23 Sep 2016 18:16:12 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb
# Fri, 23 Sep 2016 18:16:13 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb.asc
# Fri, 23 Sep 2016 18:16:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 23 Sep 2016 18:16:55 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 23 Sep 2016 18:16:56 GMT
EXPOSE 8529/tcp
# Fri, 23 Sep 2016 18:16:56 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162136d4f42d380e7755b1ba7a6857af7a5aae87b326970c086882d49017290d`  
		Last Modified: Fri, 23 Sep 2016 18:17:06 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d295322120af36773803cafcdfb8044988dd029d0735cd90e39ee23ea8d6fa6`  
		Last Modified: Fri, 23 Sep 2016 18:17:32 GMT  
		Size: 55.1 MB (55095022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.6`

```console
$ docker pull arangodb@sha256:21a680e3b8c442c6f3f26bce05c1c35355711145014f05e0f7cd4f9ffea4e6ec
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124907640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c252a497600bfbee5e2319818201167a54061c9c750b70da81b03d5836d3862`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:16:06 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 23 Sep 2016 18:16:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 23 Sep 2016 18:16:11 GMT
ENV ARCHITECTURE=amd64
# Fri, 23 Sep 2016 18:17:51 GMT
ENV ARANGO_VERSION=2.6.10
# Fri, 23 Sep 2016 18:17:51 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 23 Sep 2016 18:17:52 GMT
ENV ARANGO_PACKAGE=arangodb_2.6.10_amd64.deb
# Fri, 23 Sep 2016 18:17:52 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb
# Fri, 23 Sep 2016 18:17:52 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb.asc
# Fri, 23 Sep 2016 18:18:31 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 23 Sep 2016 18:18:32 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 23 Sep 2016 18:18:32 GMT
EXPOSE 8529/tcp
# Fri, 23 Sep 2016 18:18:33 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162136d4f42d380e7755b1ba7a6857af7a5aae87b326970c086882d49017290d`  
		Last Modified: Fri, 23 Sep 2016 18:17:06 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae226f480e49e0a73b2f3e68c946014a3ef8f007c1b97d01591f11df3e8ec2c5`  
		Last Modified: Fri, 23 Sep 2016 18:19:09 GMT  
		Size: 73.5 MB (73546505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.6.10`

```console
$ docker pull arangodb@sha256:21a680e3b8c442c6f3f26bce05c1c35355711145014f05e0f7cd4f9ffea4e6ec
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.6.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124907640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c252a497600bfbee5e2319818201167a54061c9c750b70da81b03d5836d3862`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:16:06 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 23 Sep 2016 18:16:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 23 Sep 2016 18:16:11 GMT
ENV ARCHITECTURE=amd64
# Fri, 23 Sep 2016 18:17:51 GMT
ENV ARANGO_VERSION=2.6.10
# Fri, 23 Sep 2016 18:17:51 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 23 Sep 2016 18:17:52 GMT
ENV ARANGO_PACKAGE=arangodb_2.6.10_amd64.deb
# Fri, 23 Sep 2016 18:17:52 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb
# Fri, 23 Sep 2016 18:17:52 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb.asc
# Fri, 23 Sep 2016 18:18:31 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 23 Sep 2016 18:18:32 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 23 Sep 2016 18:18:32 GMT
EXPOSE 8529/tcp
# Fri, 23 Sep 2016 18:18:33 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162136d4f42d380e7755b1ba7a6857af7a5aae87b326970c086882d49017290d`  
		Last Modified: Fri, 23 Sep 2016 18:17:06 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae226f480e49e0a73b2f3e68c946014a3ef8f007c1b97d01591f11df3e8ec2c5`  
		Last Modified: Fri, 23 Sep 2016 18:19:09 GMT  
		Size: 73.5 MB (73546505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.7`

```console
$ docker pull arangodb@sha256:0e40ea9a97e618b996100c458c7fd49fcb1eb1a3ae0f5e46a3ba696a1da32cb6
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127056714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ffb49d4222529aefde3fae384c2db0b0f8d179ae78c927d8f03faf8c2f0cae`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:16:06 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 23 Sep 2016 18:16:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 23 Sep 2016 18:16:11 GMT
ENV ARCHITECTURE=amd64
# Fri, 23 Sep 2016 18:19:29 GMT
ENV ARANGO_VERSION=2.7.5
# Fri, 23 Sep 2016 18:19:29 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 23 Sep 2016 18:19:29 GMT
ENV ARANGO_PACKAGE=arangodb_2.7.5_amd64.deb
# Fri, 23 Sep 2016 18:19:30 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb
# Fri, 23 Sep 2016 18:19:30 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb.asc
# Fri, 23 Sep 2016 18:20:06 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 23 Sep 2016 18:20:06 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 23 Sep 2016 18:20:07 GMT
EXPOSE 8529/tcp
# Fri, 23 Sep 2016 18:20:07 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162136d4f42d380e7755b1ba7a6857af7a5aae87b326970c086882d49017290d`  
		Last Modified: Fri, 23 Sep 2016 18:17:06 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06fc857d8b9818cca20560f7a191808d56384bc9d87af9d1454a81cf0581393`  
		Last Modified: Fri, 23 Sep 2016 18:20:57 GMT  
		Size: 75.7 MB (75695579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.7.5`

```console
$ docker pull arangodb@sha256:0e40ea9a97e618b996100c458c7fd49fcb1eb1a3ae0f5e46a3ba696a1da32cb6
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.7.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127056714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ffb49d4222529aefde3fae384c2db0b0f8d179ae78c927d8f03faf8c2f0cae`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:16:06 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 23 Sep 2016 18:16:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 23 Sep 2016 18:16:11 GMT
ENV ARCHITECTURE=amd64
# Fri, 23 Sep 2016 18:19:29 GMT
ENV ARANGO_VERSION=2.7.5
# Fri, 23 Sep 2016 18:19:29 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 23 Sep 2016 18:19:29 GMT
ENV ARANGO_PACKAGE=arangodb_2.7.5_amd64.deb
# Fri, 23 Sep 2016 18:19:30 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb
# Fri, 23 Sep 2016 18:19:30 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb.asc
# Fri, 23 Sep 2016 18:20:06 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 23 Sep 2016 18:20:06 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 23 Sep 2016 18:20:07 GMT
EXPOSE 8529/tcp
# Fri, 23 Sep 2016 18:20:07 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162136d4f42d380e7755b1ba7a6857af7a5aae87b326970c086882d49017290d`  
		Last Modified: Fri, 23 Sep 2016 18:17:06 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06fc857d8b9818cca20560f7a191808d56384bc9d87af9d1454a81cf0581393`  
		Last Modified: Fri, 23 Sep 2016 18:20:57 GMT  
		Size: 75.7 MB (75695579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:38e31b7251394db37eb443d40af81a6d485aee1f56dd8cab4b14e3ddf2f8c76e
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110173182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9b11ee1e98d71ac837f5a631942d46d8f141487f8f1a25774bf44ffe0ba222`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:16:06 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 23 Sep 2016 18:16:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 23 Sep 2016 18:16:11 GMT
ENV ARCHITECTURE=amd64
# Fri, 23 Sep 2016 18:21:16 GMT
ENV ARANGO_VERSION=2.8.11
# Fri, 23 Sep 2016 18:21:17 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 23 Sep 2016 18:21:17 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Fri, 23 Sep 2016 18:21:17 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Fri, 23 Sep 2016 18:21:18 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Fri, 23 Sep 2016 18:21:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 23 Sep 2016 18:21:57 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Fri, 23 Sep 2016 18:21:57 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 23 Sep 2016 18:21:58 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Fri, 23 Sep 2016 18:21:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 18:21:59 GMT
EXPOSE 8529/tcp
# Fri, 23 Sep 2016 18:22:00 GMT
USER [arangodb]
# Fri, 23 Sep 2016 18:22:00 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162136d4f42d380e7755b1ba7a6857af7a5aae87b326970c086882d49017290d`  
		Last Modified: Fri, 23 Sep 2016 18:17:06 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2495eae0b4ea1f69c5ece7642c58a1be38104450aaf00b12d8b327a01664d0`  
		Last Modified: Fri, 23 Sep 2016 18:22:32 GMT  
		Size: 58.8 MB (58810789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a97875c89c8a87c7aa4d4bd087326c1c4ae7ef365b69344d53a2e1b1b1276`  
		Last Modified: Fri, 23 Sep 2016 18:22:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8044eb164b534d201d24d5a517d27f5200b05525cf67e1c1dfecd4cf24deb5eb`  
		Last Modified: Fri, 23 Sep 2016 18:22:10 GMT  
		Size: 1.1 KB (1094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:38e31b7251394db37eb443d40af81a6d485aee1f56dd8cab4b14e3ddf2f8c76e
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110173182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9b11ee1e98d71ac837f5a631942d46d8f141487f8f1a25774bf44ffe0ba222`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:16:06 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 23 Sep 2016 18:16:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 23 Sep 2016 18:16:11 GMT
ENV ARCHITECTURE=amd64
# Fri, 23 Sep 2016 18:21:16 GMT
ENV ARANGO_VERSION=2.8.11
# Fri, 23 Sep 2016 18:21:17 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Fri, 23 Sep 2016 18:21:17 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Fri, 23 Sep 2016 18:21:17 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Fri, 23 Sep 2016 18:21:18 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Fri, 23 Sep 2016 18:21:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 23 Sep 2016 18:21:57 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Fri, 23 Sep 2016 18:21:57 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 23 Sep 2016 18:21:58 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Fri, 23 Sep 2016 18:21:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 18:21:59 GMT
EXPOSE 8529/tcp
# Fri, 23 Sep 2016 18:22:00 GMT
USER [arangodb]
# Fri, 23 Sep 2016 18:22:00 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162136d4f42d380e7755b1ba7a6857af7a5aae87b326970c086882d49017290d`  
		Last Modified: Fri, 23 Sep 2016 18:17:06 GMT  
		Size: 6.8 KB (6771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2495eae0b4ea1f69c5ece7642c58a1be38104450aaf00b12d8b327a01664d0`  
		Last Modified: Fri, 23 Sep 2016 18:22:32 GMT  
		Size: 58.8 MB (58810789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a97875c89c8a87c7aa4d4bd087326c1c4ae7ef365b69344d53a2e1b1b1276`  
		Last Modified: Fri, 23 Sep 2016 18:22:11 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8044eb164b534d201d24d5a517d27f5200b05525cf67e1c1dfecd4cf24deb5eb`  
		Last Modified: Fri, 23 Sep 2016 18:22:10 GMT  
		Size: 1.1 KB (1094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.0`

```console
$ docker pull arangodb@sha256:3d081de57cef418e5a8297e04aa1a0a2ee7ebe2f9c9675a2836de957d8975688
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119121636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43130e4d7736f686880b90e6a2ee14daa6be2157d9e8c32b12cd2ebd0abb6b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:16:06 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 23 Sep 2016 18:22:53 GMT
ENV ARCHITECTURE=amd64
# Fri, 23 Sep 2016 19:38:54 GMT
ENV ARANGO_VERSION=3.0.9
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.9_amd64.deb
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.9_amd64.deb
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.9_amd64.deb.asc
# Fri, 23 Sep 2016 19:38:57 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 23 Sep 2016 19:39:10 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:39:35 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 23 Sep 2016 19:39:36 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 23 Sep 2016 19:39:36 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Fri, 23 Sep 2016 19:39:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 19:39:37 GMT
EXPOSE 8529/tcp
# Fri, 23 Sep 2016 19:39:37 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fe83b963a60a33ae01acfad4a962e8b5855b7485e22d250b9e7439297eb1ea`  
		Last Modified: Fri, 23 Sep 2016 19:41:01 GMT  
		Size: 6.8 KB (6770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ea478000152cbbef7945f246662524ba4feafc5c97ff7a22487680dcffb22f`  
		Last Modified: Fri, 23 Sep 2016 19:41:03 GMT  
		Size: 6.7 MB (6683868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b40763d860127f5df4a7d989795c1f68cf0564e489e5187144217aca31dddba`  
		Last Modified: Fri, 23 Sep 2016 19:41:01 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f32a4901caacf586f6565fc9311ff0b32b7502934308e45c4043eaed74fb4d`  
		Last Modified: Fri, 23 Sep 2016 19:41:21 GMT  
		Size: 61.1 MB (61075098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96c91558949caf0af1c5992d164fc3003782447a42fa0d20299294c7cb3e964`  
		Last Modified: Fri, 23 Sep 2016 19:41:01 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.0.9`

```console
$ docker pull arangodb@sha256:3d081de57cef418e5a8297e04aa1a0a2ee7ebe2f9c9675a2836de957d8975688
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.0.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119121636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43130e4d7736f686880b90e6a2ee14daa6be2157d9e8c32b12cd2ebd0abb6b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:16:06 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 23 Sep 2016 18:22:53 GMT
ENV ARCHITECTURE=amd64
# Fri, 23 Sep 2016 19:38:54 GMT
ENV ARANGO_VERSION=3.0.9
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.9_amd64.deb
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.9_amd64.deb
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.9_amd64.deb.asc
# Fri, 23 Sep 2016 19:38:57 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 23 Sep 2016 19:39:10 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:39:35 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 23 Sep 2016 19:39:36 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 23 Sep 2016 19:39:36 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Fri, 23 Sep 2016 19:39:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 19:39:37 GMT
EXPOSE 8529/tcp
# Fri, 23 Sep 2016 19:39:37 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fe83b963a60a33ae01acfad4a962e8b5855b7485e22d250b9e7439297eb1ea`  
		Last Modified: Fri, 23 Sep 2016 19:41:01 GMT  
		Size: 6.8 KB (6770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ea478000152cbbef7945f246662524ba4feafc5c97ff7a22487680dcffb22f`  
		Last Modified: Fri, 23 Sep 2016 19:41:03 GMT  
		Size: 6.7 MB (6683868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b40763d860127f5df4a7d989795c1f68cf0564e489e5187144217aca31dddba`  
		Last Modified: Fri, 23 Sep 2016 19:41:01 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f32a4901caacf586f6565fc9311ff0b32b7502934308e45c4043eaed74fb4d`  
		Last Modified: Fri, 23 Sep 2016 19:41:21 GMT  
		Size: 61.1 MB (61075098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96c91558949caf0af1c5992d164fc3003782447a42fa0d20299294c7cb3e964`  
		Last Modified: Fri, 23 Sep 2016 19:41:01 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:3d081de57cef418e5a8297e04aa1a0a2ee7ebe2f9c9675a2836de957d8975688
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119121636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43130e4d7736f686880b90e6a2ee14daa6be2157d9e8c32b12cd2ebd0abb6b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:16:06 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 23 Sep 2016 18:22:53 GMT
ENV ARCHITECTURE=amd64
# Fri, 23 Sep 2016 19:38:54 GMT
ENV ARANGO_VERSION=3.0.9
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.9_amd64.deb
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.9_amd64.deb
# Fri, 23 Sep 2016 19:38:55 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.9_amd64.deb.asc
# Fri, 23 Sep 2016 19:38:57 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 23 Sep 2016 19:39:10 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:39:35 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 23 Sep 2016 19:39:36 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 23 Sep 2016 19:39:36 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh 
# Fri, 23 Sep 2016 19:39:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 19:39:37 GMT
EXPOSE 8529/tcp
# Fri, 23 Sep 2016 19:39:37 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fe83b963a60a33ae01acfad4a962e8b5855b7485e22d250b9e7439297eb1ea`  
		Last Modified: Fri, 23 Sep 2016 19:41:01 GMT  
		Size: 6.8 KB (6770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ea478000152cbbef7945f246662524ba4feafc5c97ff7a22487680dcffb22f`  
		Last Modified: Fri, 23 Sep 2016 19:41:03 GMT  
		Size: 6.7 MB (6683868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b40763d860127f5df4a7d989795c1f68cf0564e489e5187144217aca31dddba`  
		Last Modified: Fri, 23 Sep 2016 19:41:01 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f32a4901caacf586f6565fc9311ff0b32b7502934308e45c4043eaed74fb4d`  
		Last Modified: Fri, 23 Sep 2016 19:41:21 GMT  
		Size: 61.1 MB (61075098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96c91558949caf0af1c5992d164fc3003782447a42fa0d20299294c7cb3e964`  
		Last Modified: Fri, 23 Sep 2016 19:41:01 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
