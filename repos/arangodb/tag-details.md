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
-	[`arangodb:3.0.5`](#arangodb305)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.5.5`

```console
$ docker pull arangodb@sha256:a1141844fd13ba1e6da5f83b20b73dcc4268c2ea88ba7997f0cdebea27b791cb
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.5.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106467298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c49f0786fcb601d6368b5cdc32230218684f784eb098ce9c5da259ea3a1b653`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 20:05:43 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 28 Jul 2016 20:05:45 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 28 Jul 2016 20:05:46 GMT
ENV ARCHITECTURE=amd64
# Thu, 28 Jul 2016 20:05:46 GMT
ENV ARANGO_VERSION=2.5.5
# Thu, 28 Jul 2016 20:05:46 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Thu, 28 Jul 2016 20:05:47 GMT
ENV ARANGO_PACKAGE=arangodb_2.5.5_amd64.deb
# Thu, 28 Jul 2016 20:05:47 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb
# Thu, 28 Jul 2016 20:05:47 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb.asc
# Thu, 28 Jul 2016 21:39:53 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 28 Jul 2016 21:39:53 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Thu, 28 Jul 2016 21:39:54 GMT
EXPOSE 8529/tcp
# Thu, 28 Jul 2016 21:39:54 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7b24fac11f47c2fd5acf90bc2549f72d40e01d2ba752419f4c6a6c81789be2`  
		Last Modified: Thu, 28 Jul 2016 21:40:02 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59536564262325e94a0e927d54eb98da82124c469542218d7a88be49d666cc39`  
		Last Modified: Thu, 28 Jul 2016 21:40:24 GMT  
		Size: 55.1 MB (55094918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.5`

```console
$ docker pull arangodb@sha256:a1141844fd13ba1e6da5f83b20b73dcc4268c2ea88ba7997f0cdebea27b791cb
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106467298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c49f0786fcb601d6368b5cdc32230218684f784eb098ce9c5da259ea3a1b653`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 20:05:43 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 28 Jul 2016 20:05:45 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 28 Jul 2016 20:05:46 GMT
ENV ARCHITECTURE=amd64
# Thu, 28 Jul 2016 20:05:46 GMT
ENV ARANGO_VERSION=2.5.5
# Thu, 28 Jul 2016 20:05:46 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Thu, 28 Jul 2016 20:05:47 GMT
ENV ARANGO_PACKAGE=arangodb_2.5.5_amd64.deb
# Thu, 28 Jul 2016 20:05:47 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb
# Thu, 28 Jul 2016 20:05:47 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb.asc
# Thu, 28 Jul 2016 21:39:53 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 28 Jul 2016 21:39:53 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Thu, 28 Jul 2016 21:39:54 GMT
EXPOSE 8529/tcp
# Thu, 28 Jul 2016 21:39:54 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7b24fac11f47c2fd5acf90bc2549f72d40e01d2ba752419f4c6a6c81789be2`  
		Last Modified: Thu, 28 Jul 2016 21:40:02 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59536564262325e94a0e927d54eb98da82124c469542218d7a88be49d666cc39`  
		Last Modified: Thu, 28 Jul 2016 21:40:24 GMT  
		Size: 55.1 MB (55094918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.6`

```console
$ docker pull arangodb@sha256:f3011fa5d9ba8608d5ed30754ac62a44fce13651ac4a7f0ac3b1d9e8b54c69ea
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124918928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:845171e4ec510a20abc0e46ea6bb6e7b2406dfb961bb0cc844ac8820e68e6139`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 20:05:43 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 28 Jul 2016 20:05:45 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 28 Jul 2016 20:05:46 GMT
ENV ARCHITECTURE=amd64
# Thu, 28 Jul 2016 21:46:25 GMT
ENV ARANGO_VERSION=2.6.10
# Thu, 28 Jul 2016 21:46:25 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Thu, 28 Jul 2016 21:46:26 GMT
ENV ARANGO_PACKAGE=arangodb_2.6.10_amd64.deb
# Thu, 28 Jul 2016 21:46:27 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb
# Thu, 28 Jul 2016 21:46:27 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb.asc
# Thu, 28 Jul 2016 21:48:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 28 Jul 2016 21:48:10 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Thu, 28 Jul 2016 21:48:11 GMT
EXPOSE 8529/tcp
# Thu, 28 Jul 2016 21:48:12 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7b24fac11f47c2fd5acf90bc2549f72d40e01d2ba752419f4c6a6c81789be2`  
		Last Modified: Thu, 28 Jul 2016 21:40:02 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd25cf1d7022bc8f12a8a7ec6d2f985c5aad6a7ba8a1288612eef481535e1cf1`  
		Last Modified: Thu, 28 Jul 2016 21:48:47 GMT  
		Size: 73.5 MB (73546548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.6.10`

```console
$ docker pull arangodb@sha256:f3011fa5d9ba8608d5ed30754ac62a44fce13651ac4a7f0ac3b1d9e8b54c69ea
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.6.10` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124918928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:845171e4ec510a20abc0e46ea6bb6e7b2406dfb961bb0cc844ac8820e68e6139`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 20:05:43 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 28 Jul 2016 20:05:45 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 28 Jul 2016 20:05:46 GMT
ENV ARCHITECTURE=amd64
# Thu, 28 Jul 2016 21:46:25 GMT
ENV ARANGO_VERSION=2.6.10
# Thu, 28 Jul 2016 21:46:25 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Thu, 28 Jul 2016 21:46:26 GMT
ENV ARANGO_PACKAGE=arangodb_2.6.10_amd64.deb
# Thu, 28 Jul 2016 21:46:27 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb
# Thu, 28 Jul 2016 21:46:27 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.6.10_amd64.deb.asc
# Thu, 28 Jul 2016 21:48:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 28 Jul 2016 21:48:10 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Thu, 28 Jul 2016 21:48:11 GMT
EXPOSE 8529/tcp
# Thu, 28 Jul 2016 21:48:12 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7b24fac11f47c2fd5acf90bc2549f72d40e01d2ba752419f4c6a6c81789be2`  
		Last Modified: Thu, 28 Jul 2016 21:40:02 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd25cf1d7022bc8f12a8a7ec6d2f985c5aad6a7ba8a1288612eef481535e1cf1`  
		Last Modified: Thu, 28 Jul 2016 21:48:47 GMT  
		Size: 73.5 MB (73546548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.7`

```console
$ docker pull arangodb@sha256:1dc2f992769865f84cb0e8160e90b3faddd561f6a6a7ea9d7667828567d069a9
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127068232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e92d63e2d1eaa98bc501f87605082b1f0a1c4f7c97b95c74c92453873043bd`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 20:05:43 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 28 Jul 2016 20:05:45 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 28 Jul 2016 20:05:46 GMT
ENV ARCHITECTURE=amd64
# Thu, 28 Jul 2016 21:49:07 GMT
ENV ARANGO_VERSION=2.7.5
# Thu, 28 Jul 2016 21:49:08 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Thu, 28 Jul 2016 21:49:08 GMT
ENV ARANGO_PACKAGE=arangodb_2.7.5_amd64.deb
# Thu, 28 Jul 2016 21:49:09 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb
# Thu, 28 Jul 2016 21:49:10 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb.asc
# Thu, 28 Jul 2016 21:50:52 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 28 Jul 2016 21:50:53 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Thu, 28 Jul 2016 21:50:54 GMT
EXPOSE 8529/tcp
# Thu, 28 Jul 2016 21:50:55 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7b24fac11f47c2fd5acf90bc2549f72d40e01d2ba752419f4c6a6c81789be2`  
		Last Modified: Thu, 28 Jul 2016 21:40:02 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6a29c067d16adef4788b073d3b4b6f1af2dba657e9f7628d37b78b6d1e6759`  
		Last Modified: Thu, 28 Jul 2016 21:51:29 GMT  
		Size: 75.7 MB (75695852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.7.5`

```console
$ docker pull arangodb@sha256:1dc2f992769865f84cb0e8160e90b3faddd561f6a6a7ea9d7667828567d069a9
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.7.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127068232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e92d63e2d1eaa98bc501f87605082b1f0a1c4f7c97b95c74c92453873043bd`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 20:05:43 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 28 Jul 2016 20:05:45 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 28 Jul 2016 20:05:46 GMT
ENV ARCHITECTURE=amd64
# Thu, 28 Jul 2016 21:49:07 GMT
ENV ARANGO_VERSION=2.7.5
# Thu, 28 Jul 2016 21:49:08 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Thu, 28 Jul 2016 21:49:08 GMT
ENV ARANGO_PACKAGE=arangodb_2.7.5_amd64.deb
# Thu, 28 Jul 2016 21:49:09 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb
# Thu, 28 Jul 2016 21:49:10 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb.asc
# Thu, 28 Jul 2016 21:50:52 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 28 Jul 2016 21:50:53 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Thu, 28 Jul 2016 21:50:54 GMT
EXPOSE 8529/tcp
# Thu, 28 Jul 2016 21:50:55 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7b24fac11f47c2fd5acf90bc2549f72d40e01d2ba752419f4c6a6c81789be2`  
		Last Modified: Thu, 28 Jul 2016 21:40:02 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6a29c067d16adef4788b073d3b4b6f1af2dba657e9f7628d37b78b6d1e6759`  
		Last Modified: Thu, 28 Jul 2016 21:51:29 GMT  
		Size: 75.7 MB (75695852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:58871a2a5998a45985eed7d367d872333931173de566b36da3f2111a79d128c7
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110184314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ea66515a7102fb21effc117b228e87c10acd32837556d2b6c15d74aedc8c4c2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 20:05:43 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 28 Jul 2016 20:05:45 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 28 Jul 2016 20:05:46 GMT
ENV ARCHITECTURE=amd64
# Thu, 28 Jul 2016 21:40:42 GMT
ENV ARANGO_VERSION=2.8.11
# Thu, 28 Jul 2016 21:40:43 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Thu, 28 Jul 2016 21:40:43 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Thu, 28 Jul 2016 21:40:44 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Thu, 28 Jul 2016 21:40:44 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Thu, 28 Jul 2016 21:42:25 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 28 Jul 2016 21:42:28 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Thu, 28 Jul 2016 21:42:29 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Thu, 28 Jul 2016 21:42:30 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh
# Thu, 28 Jul 2016 21:42:31 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 28 Jul 2016 21:42:32 GMT
EXPOSE 8529/tcp
# Thu, 28 Jul 2016 21:42:33 GMT
USER [arangodb]
# Thu, 28 Jul 2016 21:42:33 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7b24fac11f47c2fd5acf90bc2549f72d40e01d2ba752419f4c6a6c81789be2`  
		Last Modified: Thu, 28 Jul 2016 21:40:02 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0876f85305006ae8df2aaa02263df42cf7051936088e720a9328fd6797e1ce56`  
		Last Modified: Thu, 28 Jul 2016 21:43:01 GMT  
		Size: 58.8 MB (58810676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3c015cd897c9c4bd106c9e9416b384b2106d44ec86513ba8562b85ba11239d`  
		Last Modified: Thu, 28 Jul 2016 21:42:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0e15a83cef18b30546e832819484c08d6be05f58e57e75ab9e06402da29ebc`  
		Last Modified: Thu, 28 Jul 2016 21:42:42 GMT  
		Size: 1.1 KB (1094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:58871a2a5998a45985eed7d367d872333931173de566b36da3f2111a79d128c7
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110184314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ea66515a7102fb21effc117b228e87c10acd32837556d2b6c15d74aedc8c4c2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 20:05:43 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 28 Jul 2016 20:05:45 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 28 Jul 2016 20:05:46 GMT
ENV ARCHITECTURE=amd64
# Thu, 28 Jul 2016 21:40:42 GMT
ENV ARANGO_VERSION=2.8.11
# Thu, 28 Jul 2016 21:40:43 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Thu, 28 Jul 2016 21:40:43 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Thu, 28 Jul 2016 21:40:44 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Thu, 28 Jul 2016 21:40:44 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Thu, 28 Jul 2016 21:42:25 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 28 Jul 2016 21:42:28 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Thu, 28 Jul 2016 21:42:29 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Thu, 28 Jul 2016 21:42:30 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh
# Thu, 28 Jul 2016 21:42:31 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Thu, 28 Jul 2016 21:42:32 GMT
EXPOSE 8529/tcp
# Thu, 28 Jul 2016 21:42:33 GMT
USER [arangodb]
# Thu, 28 Jul 2016 21:42:33 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7b24fac11f47c2fd5acf90bc2549f72d40e01d2ba752419f4c6a6c81789be2`  
		Last Modified: Thu, 28 Jul 2016 21:40:02 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0876f85305006ae8df2aaa02263df42cf7051936088e720a9328fd6797e1ce56`  
		Last Modified: Thu, 28 Jul 2016 21:43:01 GMT  
		Size: 58.8 MB (58810676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3c015cd897c9c4bd106c9e9416b384b2106d44ec86513ba8562b85ba11239d`  
		Last Modified: Thu, 28 Jul 2016 21:42:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0e15a83cef18b30546e832819484c08d6be05f58e57e75ab9e06402da29ebc`  
		Last Modified: Thu, 28 Jul 2016 21:42:42 GMT  
		Size: 1.1 KB (1094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.0`

```console
$ docker pull arangodb@sha256:db22902a4d5d3e57385b4f8c5ce00a918f3145260010f35e60e2e01d7ccf26b4
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119092048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10769cd5f9e91618cebc1eecf2845b3200ddeace03163bf350f53393b302314f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 20:05:43 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 28 Jul 2016 21:43:20 GMT
ENV ARCHITECTURE=amd64
# Fri, 19 Aug 2016 16:50:32 GMT
ENV ARANGO_VERSION=3.0.5
# Fri, 19 Aug 2016 16:50:33 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Fri, 19 Aug 2016 16:50:33 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.5_amd64.deb
# Fri, 19 Aug 2016 16:50:34 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.5_amd64.deb
# Fri, 19 Aug 2016 16:50:34 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.5_amd64.deb.asc
# Fri, 19 Aug 2016 16:50:36 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 19 Aug 2016 16:51:44 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 19 Aug 2016 16:51:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Aug 2016 16:52:26 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 19 Aug 2016 16:52:27 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 19 Aug 2016 16:52:28 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh
# Fri, 19 Aug 2016 16:52:29 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 19 Aug 2016 16:52:29 GMT
EXPOSE 8529/tcp
# Fri, 19 Aug 2016 16:52:30 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f4d2fd1a6075c92252c5a6612e7e5e48a13f57919d5fca2c3c3257b7e0f571`  
		Last Modified: Fri, 19 Aug 2016 16:54:15 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8764a4d9022e3a57e41c564895e7b90319a6b9fbf0eed3a349cfad22030ec7c`  
		Last Modified: Fri, 19 Aug 2016 16:54:16 GMT  
		Size: 6.7 MB (6683459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891f651ccea95c40916302020d763b1f28c96fdd4d3617d5258725f6ba9b14db`  
		Last Modified: Fri, 19 Aug 2016 16:54:13 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1ce85e67836db0e50f2af0dcf24fce32d918e71b40cfd3aa722c51c2a69ef0`  
		Last Modified: Fri, 19 Aug 2016 16:54:31 GMT  
		Size: 61.0 MB (61034671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f70c28c1eeaf500c1dde6ee4e28660bf12c1ac1fe84c667b9e9f0ef19b08cbe`  
		Last Modified: Fri, 19 Aug 2016 16:54:14 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.0.5`

```console
$ docker pull arangodb@sha256:db22902a4d5d3e57385b4f8c5ce00a918f3145260010f35e60e2e01d7ccf26b4
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.0.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119092048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10769cd5f9e91618cebc1eecf2845b3200ddeace03163bf350f53393b302314f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 20:05:43 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 28 Jul 2016 21:43:20 GMT
ENV ARCHITECTURE=amd64
# Fri, 19 Aug 2016 16:50:32 GMT
ENV ARANGO_VERSION=3.0.5
# Fri, 19 Aug 2016 16:50:33 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Fri, 19 Aug 2016 16:50:33 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.5_amd64.deb
# Fri, 19 Aug 2016 16:50:34 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.5_amd64.deb
# Fri, 19 Aug 2016 16:50:34 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.5_amd64.deb.asc
# Fri, 19 Aug 2016 16:50:36 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 19 Aug 2016 16:51:44 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 19 Aug 2016 16:51:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Aug 2016 16:52:26 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 19 Aug 2016 16:52:27 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 19 Aug 2016 16:52:28 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh
# Fri, 19 Aug 2016 16:52:29 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 19 Aug 2016 16:52:29 GMT
EXPOSE 8529/tcp
# Fri, 19 Aug 2016 16:52:30 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f4d2fd1a6075c92252c5a6612e7e5e48a13f57919d5fca2c3c3257b7e0f571`  
		Last Modified: Fri, 19 Aug 2016 16:54:15 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8764a4d9022e3a57e41c564895e7b90319a6b9fbf0eed3a349cfad22030ec7c`  
		Last Modified: Fri, 19 Aug 2016 16:54:16 GMT  
		Size: 6.7 MB (6683459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891f651ccea95c40916302020d763b1f28c96fdd4d3617d5258725f6ba9b14db`  
		Last Modified: Fri, 19 Aug 2016 16:54:13 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1ce85e67836db0e50f2af0dcf24fce32d918e71b40cfd3aa722c51c2a69ef0`  
		Last Modified: Fri, 19 Aug 2016 16:54:31 GMT  
		Size: 61.0 MB (61034671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f70c28c1eeaf500c1dde6ee4e28660bf12c1ac1fe84c667b9e9f0ef19b08cbe`  
		Last Modified: Fri, 19 Aug 2016 16:54:14 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:db22902a4d5d3e57385b4f8c5ce00a918f3145260010f35e60e2e01d7ccf26b4
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119092048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10769cd5f9e91618cebc1eecf2845b3200ddeace03163bf350f53393b302314f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 20:05:43 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 28 Jul 2016 21:43:20 GMT
ENV ARCHITECTURE=amd64
# Fri, 19 Aug 2016 16:50:32 GMT
ENV ARANGO_VERSION=3.0.5
# Fri, 19 Aug 2016 16:50:33 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0
# Fri, 19 Aug 2016 16:50:33 GMT
ENV ARANGO_PACKAGE=arangodb3_3.0.5_amd64.deb
# Fri, 19 Aug 2016 16:50:34 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.5_amd64.deb
# Fri, 19 Aug 2016 16:50:34 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb3/Debian_8.0/amd64/arangodb3_3.0.5_amd64.deb.asc
# Fri, 19 Aug 2016 16:50:36 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 19 Aug 2016 16:51:44 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 19 Aug 2016 16:51:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 19 Aug 2016 16:52:26 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 19 Aug 2016 16:52:27 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 19 Aug 2016 16:52:28 GMT
COPY file:b4d76a688137b83503d77bb818e5dfa72d9e1f7b1e660f6d81e5a2ad5567e562 in /entrypoint.sh
# Fri, 19 Aug 2016 16:52:29 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 19 Aug 2016 16:52:29 GMT
EXPOSE 8529/tcp
# Fri, 19 Aug 2016 16:52:30 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f4d2fd1a6075c92252c5a6612e7e5e48a13f57919d5fca2c3c3257b7e0f571`  
		Last Modified: Fri, 19 Aug 2016 16:54:15 GMT  
		Size: 6.8 KB (6769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8764a4d9022e3a57e41c564895e7b90319a6b9fbf0eed3a349cfad22030ec7c`  
		Last Modified: Fri, 19 Aug 2016 16:54:16 GMT  
		Size: 6.7 MB (6683459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891f651ccea95c40916302020d763b1f28c96fdd4d3617d5258725f6ba9b14db`  
		Last Modified: Fri, 19 Aug 2016 16:54:13 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1ce85e67836db0e50f2af0dcf24fce32d918e71b40cfd3aa722c51c2a69ef0`  
		Last Modified: Fri, 19 Aug 2016 16:54:31 GMT  
		Size: 61.0 MB (61034671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f70c28c1eeaf500c1dde6ee4e28660bf12c1ac1fe84c667b9e9f0ef19b08cbe`  
		Last Modified: Fri, 19 Aug 2016 16:54:14 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
