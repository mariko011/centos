<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.5.5`](#arangodb255)
-	[`arangodb:2.5`](#arangodb25)
-	[`arangodb:2.7`](#arangodb27)
-	[`arangodb:2.7.5`](#arangodb275)
-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.1`](#arangodb31)
-	[`arangodb:3.1.5`](#arangodb315)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.5.5`

```console
$ docker pull arangodb@sha256:a359191b478619d14bae51820f91120486bcd9b8017d73fb332c3bb4b66c2ac6
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106465446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88d9c4e40a42c852cfb627d1758a2cc1386695baa97e709af2c0699fb37df1d`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:54:55 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 13 Dec 2016 22:54:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 13 Dec 2016 22:54:58 GMT
ENV ARCHITECTURE=amd64
# Tue, 13 Dec 2016 22:54:59 GMT
ENV ARANGO_VERSION=2.5.5
# Tue, 13 Dec 2016 22:54:59 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 13 Dec 2016 22:54:59 GMT
ENV ARANGO_PACKAGE=arangodb_2.5.5_amd64.deb
# Tue, 13 Dec 2016 22:55:00 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb
# Tue, 13 Dec 2016 22:55:00 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb.asc
# Tue, 13 Dec 2016 22:56:44 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 13 Dec 2016 22:56:45 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 13 Dec 2016 22:56:45 GMT
EXPOSE 8529/tcp
# Tue, 13 Dec 2016 22:56:46 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d4eda4961174ae2b04418021b795cf74717d433b12066aa3c52771248220a4`  
		Last Modified: Fri, 16 Dec 2016 18:22:40 GMT  
		Size: 6.8 KB (6765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eaf0bb448702b5abbb06865f8a8583eb6520f1b259c13f470950eab01d74571`  
		Last Modified: Fri, 16 Dec 2016 18:22:58 GMT  
		Size: 55.1 MB (55095556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.5`

```console
$ docker pull arangodb@sha256:a359191b478619d14bae51820f91120486bcd9b8017d73fb332c3bb4b66c2ac6
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106465446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88d9c4e40a42c852cfb627d1758a2cc1386695baa97e709af2c0699fb37df1d`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:54:55 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 13 Dec 2016 22:54:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 13 Dec 2016 22:54:58 GMT
ENV ARCHITECTURE=amd64
# Tue, 13 Dec 2016 22:54:59 GMT
ENV ARANGO_VERSION=2.5.5
# Tue, 13 Dec 2016 22:54:59 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 13 Dec 2016 22:54:59 GMT
ENV ARANGO_PACKAGE=arangodb_2.5.5_amd64.deb
# Tue, 13 Dec 2016 22:55:00 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb
# Tue, 13 Dec 2016 22:55:00 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.5.5_amd64.deb.asc
# Tue, 13 Dec 2016 22:56:44 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 13 Dec 2016 22:56:45 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 13 Dec 2016 22:56:45 GMT
EXPOSE 8529/tcp
# Tue, 13 Dec 2016 22:56:46 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d4eda4961174ae2b04418021b795cf74717d433b12066aa3c52771248220a4`  
		Last Modified: Fri, 16 Dec 2016 18:22:40 GMT  
		Size: 6.8 KB (6765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eaf0bb448702b5abbb06865f8a8583eb6520f1b259c13f470950eab01d74571`  
		Last Modified: Fri, 16 Dec 2016 18:22:58 GMT  
		Size: 55.1 MB (55095556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.7`

```console
$ docker pull arangodb@sha256:590668099751de330cd602fb8f71f7b71a747a3920c13bcc9f3fe3cc496e6555
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127066579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b886c5562693a62061ba80780029b34e6bcb34fbb5d2946ba2ee3534747a03`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:54:55 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 13 Dec 2016 22:54:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 13 Dec 2016 22:54:58 GMT
ENV ARCHITECTURE=amd64
# Tue, 13 Dec 2016 22:56:46 GMT
ENV ARANGO_VERSION=2.7.5
# Tue, 13 Dec 2016 22:56:46 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 13 Dec 2016 22:56:47 GMT
ENV ARANGO_PACKAGE=arangodb_2.7.5_amd64.deb
# Tue, 13 Dec 2016 22:56:47 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb
# Tue, 13 Dec 2016 22:56:47 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb.asc
# Tue, 13 Dec 2016 22:57:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 13 Dec 2016 22:57:47 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 13 Dec 2016 22:57:47 GMT
EXPOSE 8529/tcp
# Tue, 13 Dec 2016 22:57:48 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d4eda4961174ae2b04418021b795cf74717d433b12066aa3c52771248220a4`  
		Last Modified: Fri, 16 Dec 2016 18:22:40 GMT  
		Size: 6.8 KB (6765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17576fdd8728d3066f0aa766f056264e08cdc0bba5160e901aeb2802767ddcf9`  
		Last Modified: Fri, 16 Dec 2016 18:24:19 GMT  
		Size: 75.7 MB (75696689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.7.5`

```console
$ docker pull arangodb@sha256:590668099751de330cd602fb8f71f7b71a747a3920c13bcc9f3fe3cc496e6555
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.7.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127066579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b886c5562693a62061ba80780029b34e6bcb34fbb5d2946ba2ee3534747a03`
-	Default Command: `["\/usr\/sbin\/arangod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:54:55 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 13 Dec 2016 22:54:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 13 Dec 2016 22:54:58 GMT
ENV ARCHITECTURE=amd64
# Tue, 13 Dec 2016 22:56:46 GMT
ENV ARANGO_VERSION=2.7.5
# Tue, 13 Dec 2016 22:56:46 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 13 Dec 2016 22:56:47 GMT
ENV ARANGO_PACKAGE=arangodb_2.7.5_amd64.deb
# Tue, 13 Dec 2016 22:56:47 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb
# Tue, 13 Dec 2016 22:56:47 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.7.5_amd64.deb.asc
# Tue, 13 Dec 2016 22:57:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 13 Dec 2016 22:57:47 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 13 Dec 2016 22:57:47 GMT
EXPOSE 8529/tcp
# Tue, 13 Dec 2016 22:57:48 GMT
CMD ["/usr/sbin/arangod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d4eda4961174ae2b04418021b795cf74717d433b12066aa3c52771248220a4`  
		Last Modified: Fri, 16 Dec 2016 18:22:40 GMT  
		Size: 6.8 KB (6765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17576fdd8728d3066f0aa766f056264e08cdc0bba5160e901aeb2802767ddcf9`  
		Last Modified: Fri, 16 Dec 2016 18:24:19 GMT  
		Size: 75.7 MB (75696689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:789edc4d9e44b88e3b8f69060072ce617e404e5badb4c42b0a825211e05072e1
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110182771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b29b4fcc2b4da0105a49b7e897395db93969da2acaa6afacad93711e959e554f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:54:55 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 13 Dec 2016 22:54:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 13 Dec 2016 22:54:58 GMT
ENV ARCHITECTURE=amd64
# Tue, 13 Dec 2016 22:57:48 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 13 Dec 2016 22:57:49 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 13 Dec 2016 22:57:49 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 13 Dec 2016 22:57:49 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 13 Dec 2016 22:57:50 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 13 Dec 2016 22:58:42 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 13 Dec 2016 22:58:43 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 13 Dec 2016 22:58:43 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 13 Dec 2016 22:58:44 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 13 Dec 2016 22:58:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Dec 2016 22:58:45 GMT
EXPOSE 8529/tcp
# Tue, 13 Dec 2016 22:58:45 GMT
USER [arangodb]
# Tue, 13 Dec 2016 22:58:46 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d4eda4961174ae2b04418021b795cf74717d433b12066aa3c52771248220a4`  
		Last Modified: Fri, 16 Dec 2016 18:22:40 GMT  
		Size: 6.8 KB (6765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eace163b12a02236d8975c4cd35f6ef2d00841d675d7a26079a4d1b96c085ff`  
		Last Modified: Fri, 16 Dec 2016 18:25:15 GMT  
		Size: 58.8 MB (58811621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243fef66e89fab5fb8815742902d208992b3be2a98b4d892e9171f7e47641d9f`  
		Last Modified: Fri, 16 Dec 2016 18:24:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939bd8fee23a8ebb9a4716d1075855c37b85c5a48c6d3985cb83dfa7b5a7d160`  
		Last Modified: Fri, 16 Dec 2016 18:24:57 GMT  
		Size: 1.1 KB (1096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:789edc4d9e44b88e3b8f69060072ce617e404e5badb4c42b0a825211e05072e1
```

-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110182771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b29b4fcc2b4da0105a49b7e897395db93969da2acaa6afacad93711e959e554f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:54:55 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 13 Dec 2016 22:54:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 13 Dec 2016 22:54:58 GMT
ENV ARCHITECTURE=amd64
# Tue, 13 Dec 2016 22:57:48 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 13 Dec 2016 22:57:49 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0
# Tue, 13 Dec 2016 22:57:49 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 13 Dec 2016 22:57:49 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 13 Dec 2016 22:57:50 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 13 Dec 2016 22:58:42 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 13 Dec 2016 22:58:43 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 13 Dec 2016 22:58:43 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 13 Dec 2016 22:58:44 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 13 Dec 2016 22:58:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 13 Dec 2016 22:58:45 GMT
EXPOSE 8529/tcp
# Tue, 13 Dec 2016 22:58:45 GMT
USER [arangodb]
# Tue, 13 Dec 2016 22:58:46 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d4eda4961174ae2b04418021b795cf74717d433b12066aa3c52771248220a4`  
		Last Modified: Fri, 16 Dec 2016 18:22:40 GMT  
		Size: 6.8 KB (6765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eace163b12a02236d8975c4cd35f6ef2d00841d675d7a26079a4d1b96c085ff`  
		Last Modified: Fri, 16 Dec 2016 18:25:15 GMT  
		Size: 58.8 MB (58811621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243fef66e89fab5fb8815742902d208992b3be2a98b4d892e9171f7e47641d9f`  
		Last Modified: Fri, 16 Dec 2016 18:24:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939bd8fee23a8ebb9a4716d1075855c37b85c5a48c6d3985cb83dfa7b5a7d160`  
		Last Modified: Fri, 16 Dec 2016 18:24:57 GMT  
		Size: 1.1 KB (1096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1`

```console
$ docker pull arangodb@sha256:0035ae3adac9892281acd6730547bf975c7507d7ac5e92a5c172e6afe423d2ec
```

-	Platforms:
	-	linux; amd64

### `arangodb:3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126631353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cbfcc45137a68f54d018771fd817b85c3b18ea239ad1cb38350b72150460a9c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:54:55 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 13 Dec 2016 22:58:46 GMT
ENV ARCHITECTURE=amd64
# Tue, 13 Dec 2016 22:58:47 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 16 Dec 2016 18:21:15 GMT
ENV ARANGO_VERSION=3.1.5
# Fri, 16 Dec 2016 18:21:15 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 16 Dec 2016 18:21:15 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.5-1_amd64.deb
# Fri, 16 Dec 2016 18:21:16 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.5-1_amd64.deb
# Fri, 16 Dec 2016 18:21:16 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.5-1_amd64.deb.asc
# Fri, 16 Dec 2016 18:21:17 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 16 Dec 2016 18:21:29 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 18:21:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Dec 2016 18:22:23 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 16 Dec 2016 18:22:23 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 16 Dec 2016 18:22:24 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Fri, 16 Dec 2016 18:22:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Dec 2016 18:22:25 GMT
EXPOSE 8529/tcp
# Fri, 16 Dec 2016 18:22:25 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db180b997654a81abdc3d0f97266a905bd40dbd0b0fecca59109d39119fe30c`  
		Last Modified: Fri, 16 Dec 2016 18:26:03 GMT  
		Size: 7.4 KB (7366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8818d823a4078190d8510b1cc50d7ab6637184c43cdda7bdc823c8b321fea86d`  
		Last Modified: Fri, 16 Dec 2016 18:26:05 GMT  
		Size: 6.7 MB (6684260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351508372fc4a184d7442309b3645878dcd5f50ccc5e3f86fb165a38eabe54d5`  
		Last Modified: Fri, 16 Dec 2016 18:26:03 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b1b44f38fc4eee1d8549cf6cef3f1bf50dfc97def4c2c2de36c6af8f2d1828`  
		Last Modified: Fri, 16 Dec 2016 18:26:22 GMT  
		Size: 68.6 MB (68575055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61eeb4e99d811a3fe3ba7b267885493d7ac4b71fd4bb5775e2a61c54a2d846a1`  
		Last Modified: Fri, 16 Dec 2016 18:26:04 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.1.5`

**does not exist** (yet?)

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:0035ae3adac9892281acd6730547bf975c7507d7ac5e92a5c172e6afe423d2ec
```

-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126631353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cbfcc45137a68f54d018771fd817b85c3b18ea239ad1cb38350b72150460a9c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:54:55 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 13 Dec 2016 22:58:46 GMT
ENV ARCHITECTURE=amd64
# Tue, 13 Dec 2016 22:58:47 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 16 Dec 2016 18:21:15 GMT
ENV ARANGO_VERSION=3.1.5
# Fri, 16 Dec 2016 18:21:15 GMT
ENV ARANGO_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0
# Fri, 16 Dec 2016 18:21:15 GMT
ENV ARANGO_PACKAGE=arangodb3-3.1.5-1_amd64.deb
# Fri, 16 Dec 2016 18:21:16 GMT
ENV ARANGO_PACKAGE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.5-1_amd64.deb
# Fri, 16 Dec 2016 18:21:16 GMT
ENV ARANGO_SIGNATURE_URL=https://www.arangodb.com/repositories/arangodb31/Debian_8.0/amd64/arangodb3-3.1.5-1_amd64.deb.asc
# Fri, 16 Dec 2016 18:21:17 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 16 Dec 2016 18:21:29 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 	libsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 18:21:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Dec 2016 18:22:23 GMT
RUN curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND="noninteractive" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 16 Dec 2016 18:22:23 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 16 Dec 2016 18:22:24 GMT
COPY file:9f20ed9a2181af8ddc12371a0082e7645aa20b1008b5f484851bcc399e64801e in /entrypoint.sh 
# Fri, 16 Dec 2016 18:22:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Dec 2016 18:22:25 GMT
EXPOSE 8529/tcp
# Fri, 16 Dec 2016 18:22:25 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db180b997654a81abdc3d0f97266a905bd40dbd0b0fecca59109d39119fe30c`  
		Last Modified: Fri, 16 Dec 2016 18:26:03 GMT  
		Size: 7.4 KB (7366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8818d823a4078190d8510b1cc50d7ab6637184c43cdda7bdc823c8b321fea86d`  
		Last Modified: Fri, 16 Dec 2016 18:26:05 GMT  
		Size: 6.7 MB (6684260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351508372fc4a184d7442309b3645878dcd5f50ccc5e3f86fb165a38eabe54d5`  
		Last Modified: Fri, 16 Dec 2016 18:26:03 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b1b44f38fc4eee1d8549cf6cef3f1bf50dfc97def4c2c2de36c6af8f2d1828`  
		Last Modified: Fri, 16 Dec 2016 18:26:22 GMT  
		Size: 68.6 MB (68575055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61eeb4e99d811a3fe3ba7b267885493d7ac4b71fd4bb5775e2a61c54a2d846a1`  
		Last Modified: Fri, 16 Dec 2016 18:26:04 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
