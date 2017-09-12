<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:v1.4.0-rc2`](#traefikv140-rc2)
-	[`traefik:1.4.0-rc2`](#traefik140-rc2)
-	[`traefik:v1.4`](#traefikv14)
-	[`traefik:1.4`](#traefik14)
-	[`traefik:roquefort`](#traefikroquefort)
-	[`traefik:v1.4.0-rc2-alpine`](#traefikv140-rc2-alpine)
-	[`traefik:1.4.0-rc2-alpine`](#traefik140-rc2-alpine)
-	[`traefik:v1.4-alpine`](#traefikv14-alpine)
-	[`traefik:1.4-alpine`](#traefik14-alpine)
-	[`traefik:roquefort-alpine`](#traefikroquefort-alpine)
-	[`traefik:v1.3.8`](#traefikv138)
-	[`traefik:1.3.8`](#traefik138)
-	[`traefik:v1.3`](#traefikv13)
-	[`traefik:1.3`](#traefik13)
-	[`traefik:raclette`](#traefikraclette)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:v1.3.8-alpine`](#traefikv138-alpine)
-	[`traefik:1.3.8-alpine`](#traefik138-alpine)
-	[`traefik:v1.3-alpine`](#traefikv13-alpine)
-	[`traefik:1.3-alpine`](#traefik13-alpine)
-	[`traefik:raclette-alpine`](#traefikraclette-alpine)
-	[`traefik:alpine`](#traefikalpine)

## `traefik:v1.4.0-rc2`

```console
$ docker pull traefik@sha256:8d17d1746741a68c1164ed40bd26699baa306530250d03b8dbecab58272f5f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4.0-rc2` - linux; amd64

```console
$ docker pull traefik@sha256:cb688aad9105bb30b3c63a88be5c6cb8e3918f5e2baef442ca1b106b6545f66e
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13140722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec67712defbedad66dfbbfcad51cfcea2c044a83ef120231c43c0b9e404b1ff`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Jul 2017 19:57:41 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 08 Sep 2017 22:27:11 GMT
COPY file:184edee5e0161577ca477d6df5a91bdb7bf8c35c5e9dcf9d13d912c4494ecea7 in / 
# Fri, 08 Sep 2017 22:27:12 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:12 GMT
ENTRYPOINT ["/traefik"]
# Fri, 08 Sep 2017 22:27:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:df350fade9bb2857316784e0d70a781999080daabbf1abb69a9547d8ea86559a`  
		Last Modified: Thu, 27 Jul 2017 19:58:57 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8628f3f4bb66cbb270b6150b593975a6a78efd5c644d73aab2732e71592594ca`  
		Last Modified: Fri, 08 Sep 2017 22:28:22 GMT  
		Size: 13.0 MB (13005683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.0-rc2` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fe7757c07e3ea758cfd7b50b5b2a4f0ae92f70c65a64633d5af100ff3c0e49ca
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12320260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141123ce583f180cd65e9ec3ccd3334211a9dccfb0cc1fc0fc74e40c5f1650d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 00:46:58 GMT
COPY file:af101984a52da8557091e4c4d75e4f3f2bad142b23af89075821bc040b0790f3 in / 
# Sat, 09 Sep 2017 00:46:59 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 00:46:59 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 00:47:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ed2ae07e2380f12bfbe63a5e029e9bd03b477c4ba78e0785f0813d91f5ed6`  
		Last Modified: Sat, 09 Sep 2017 00:47:24 GMT  
		Size: 12.2 MB (12185221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.0-rc2` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:483731cf70836e25c39b362195d5cd2e41aedd6f7ca73cd7ba9c2003dba48e07
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12010647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2d4f4f98e4c8fecfdafe2aa281ab1e195875974d1ae094e4252b655392425a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 01:28:55 GMT
COPY file:5d5b19153a0181d4d0aa6a19c500d39ad755ae657587f46cb39ef10ce3c597fd in / 
# Sat, 09 Sep 2017 01:28:56 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 01:28:56 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 01:28:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6459935d711e7a2cee417a5f63dbed1f56b3bca28822e3d53613160907bd10`  
		Last Modified: Sat, 09 Sep 2017 01:29:30 GMT  
		Size: 11.9 MB (11875610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.0-rc2`

```console
$ docker pull traefik@sha256:8d17d1746741a68c1164ed40bd26699baa306530250d03b8dbecab58272f5f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4.0-rc2` - linux; amd64

```console
$ docker pull traefik@sha256:cb688aad9105bb30b3c63a88be5c6cb8e3918f5e2baef442ca1b106b6545f66e
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13140722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec67712defbedad66dfbbfcad51cfcea2c044a83ef120231c43c0b9e404b1ff`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Jul 2017 19:57:41 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 08 Sep 2017 22:27:11 GMT
COPY file:184edee5e0161577ca477d6df5a91bdb7bf8c35c5e9dcf9d13d912c4494ecea7 in / 
# Fri, 08 Sep 2017 22:27:12 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:12 GMT
ENTRYPOINT ["/traefik"]
# Fri, 08 Sep 2017 22:27:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:df350fade9bb2857316784e0d70a781999080daabbf1abb69a9547d8ea86559a`  
		Last Modified: Thu, 27 Jul 2017 19:58:57 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8628f3f4bb66cbb270b6150b593975a6a78efd5c644d73aab2732e71592594ca`  
		Last Modified: Fri, 08 Sep 2017 22:28:22 GMT  
		Size: 13.0 MB (13005683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.0-rc2` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fe7757c07e3ea758cfd7b50b5b2a4f0ae92f70c65a64633d5af100ff3c0e49ca
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12320260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141123ce583f180cd65e9ec3ccd3334211a9dccfb0cc1fc0fc74e40c5f1650d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 00:46:58 GMT
COPY file:af101984a52da8557091e4c4d75e4f3f2bad142b23af89075821bc040b0790f3 in / 
# Sat, 09 Sep 2017 00:46:59 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 00:46:59 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 00:47:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ed2ae07e2380f12bfbe63a5e029e9bd03b477c4ba78e0785f0813d91f5ed6`  
		Last Modified: Sat, 09 Sep 2017 00:47:24 GMT  
		Size: 12.2 MB (12185221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.0-rc2` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:483731cf70836e25c39b362195d5cd2e41aedd6f7ca73cd7ba9c2003dba48e07
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12010647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2d4f4f98e4c8fecfdafe2aa281ab1e195875974d1ae094e4252b655392425a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 01:28:55 GMT
COPY file:5d5b19153a0181d4d0aa6a19c500d39ad755ae657587f46cb39ef10ce3c597fd in / 
# Sat, 09 Sep 2017 01:28:56 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 01:28:56 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 01:28:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6459935d711e7a2cee417a5f63dbed1f56b3bca28822e3d53613160907bd10`  
		Last Modified: Sat, 09 Sep 2017 01:29:30 GMT  
		Size: 11.9 MB (11875610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4`

```console
$ docker pull traefik@sha256:8d17d1746741a68c1164ed40bd26699baa306530250d03b8dbecab58272f5f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4` - linux; amd64

```console
$ docker pull traefik@sha256:cb688aad9105bb30b3c63a88be5c6cb8e3918f5e2baef442ca1b106b6545f66e
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13140722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec67712defbedad66dfbbfcad51cfcea2c044a83ef120231c43c0b9e404b1ff`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Jul 2017 19:57:41 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 08 Sep 2017 22:27:11 GMT
COPY file:184edee5e0161577ca477d6df5a91bdb7bf8c35c5e9dcf9d13d912c4494ecea7 in / 
# Fri, 08 Sep 2017 22:27:12 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:12 GMT
ENTRYPOINT ["/traefik"]
# Fri, 08 Sep 2017 22:27:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:df350fade9bb2857316784e0d70a781999080daabbf1abb69a9547d8ea86559a`  
		Last Modified: Thu, 27 Jul 2017 19:58:57 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8628f3f4bb66cbb270b6150b593975a6a78efd5c644d73aab2732e71592594ca`  
		Last Modified: Fri, 08 Sep 2017 22:28:22 GMT  
		Size: 13.0 MB (13005683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fe7757c07e3ea758cfd7b50b5b2a4f0ae92f70c65a64633d5af100ff3c0e49ca
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12320260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141123ce583f180cd65e9ec3ccd3334211a9dccfb0cc1fc0fc74e40c5f1650d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 00:46:58 GMT
COPY file:af101984a52da8557091e4c4d75e4f3f2bad142b23af89075821bc040b0790f3 in / 
# Sat, 09 Sep 2017 00:46:59 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 00:46:59 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 00:47:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ed2ae07e2380f12bfbe63a5e029e9bd03b477c4ba78e0785f0813d91f5ed6`  
		Last Modified: Sat, 09 Sep 2017 00:47:24 GMT  
		Size: 12.2 MB (12185221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:483731cf70836e25c39b362195d5cd2e41aedd6f7ca73cd7ba9c2003dba48e07
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12010647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2d4f4f98e4c8fecfdafe2aa281ab1e195875974d1ae094e4252b655392425a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 01:28:55 GMT
COPY file:5d5b19153a0181d4d0aa6a19c500d39ad755ae657587f46cb39ef10ce3c597fd in / 
# Sat, 09 Sep 2017 01:28:56 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 01:28:56 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 01:28:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6459935d711e7a2cee417a5f63dbed1f56b3bca28822e3d53613160907bd10`  
		Last Modified: Sat, 09 Sep 2017 01:29:30 GMT  
		Size: 11.9 MB (11875610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4`

```console
$ docker pull traefik@sha256:8d17d1746741a68c1164ed40bd26699baa306530250d03b8dbecab58272f5f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4` - linux; amd64

```console
$ docker pull traefik@sha256:cb688aad9105bb30b3c63a88be5c6cb8e3918f5e2baef442ca1b106b6545f66e
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13140722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec67712defbedad66dfbbfcad51cfcea2c044a83ef120231c43c0b9e404b1ff`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Jul 2017 19:57:41 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 08 Sep 2017 22:27:11 GMT
COPY file:184edee5e0161577ca477d6df5a91bdb7bf8c35c5e9dcf9d13d912c4494ecea7 in / 
# Fri, 08 Sep 2017 22:27:12 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:12 GMT
ENTRYPOINT ["/traefik"]
# Fri, 08 Sep 2017 22:27:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:df350fade9bb2857316784e0d70a781999080daabbf1abb69a9547d8ea86559a`  
		Last Modified: Thu, 27 Jul 2017 19:58:57 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8628f3f4bb66cbb270b6150b593975a6a78efd5c644d73aab2732e71592594ca`  
		Last Modified: Fri, 08 Sep 2017 22:28:22 GMT  
		Size: 13.0 MB (13005683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fe7757c07e3ea758cfd7b50b5b2a4f0ae92f70c65a64633d5af100ff3c0e49ca
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12320260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141123ce583f180cd65e9ec3ccd3334211a9dccfb0cc1fc0fc74e40c5f1650d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 00:46:58 GMT
COPY file:af101984a52da8557091e4c4d75e4f3f2bad142b23af89075821bc040b0790f3 in / 
# Sat, 09 Sep 2017 00:46:59 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 00:46:59 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 00:47:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ed2ae07e2380f12bfbe63a5e029e9bd03b477c4ba78e0785f0813d91f5ed6`  
		Last Modified: Sat, 09 Sep 2017 00:47:24 GMT  
		Size: 12.2 MB (12185221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:483731cf70836e25c39b362195d5cd2e41aedd6f7ca73cd7ba9c2003dba48e07
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12010647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2d4f4f98e4c8fecfdafe2aa281ab1e195875974d1ae094e4252b655392425a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 01:28:55 GMT
COPY file:5d5b19153a0181d4d0aa6a19c500d39ad755ae657587f46cb39ef10ce3c597fd in / 
# Sat, 09 Sep 2017 01:28:56 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 01:28:56 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 01:28:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6459935d711e7a2cee417a5f63dbed1f56b3bca28822e3d53613160907bd10`  
		Last Modified: Sat, 09 Sep 2017 01:29:30 GMT  
		Size: 11.9 MB (11875610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort`

```console
$ docker pull traefik@sha256:8d17d1746741a68c1164ed40bd26699baa306530250d03b8dbecab58272f5f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:roquefort` - linux; amd64

```console
$ docker pull traefik@sha256:cb688aad9105bb30b3c63a88be5c6cb8e3918f5e2baef442ca1b106b6545f66e
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13140722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec67712defbedad66dfbbfcad51cfcea2c044a83ef120231c43c0b9e404b1ff`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Jul 2017 19:57:41 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 08 Sep 2017 22:27:11 GMT
COPY file:184edee5e0161577ca477d6df5a91bdb7bf8c35c5e9dcf9d13d912c4494ecea7 in / 
# Fri, 08 Sep 2017 22:27:12 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:12 GMT
ENTRYPOINT ["/traefik"]
# Fri, 08 Sep 2017 22:27:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:df350fade9bb2857316784e0d70a781999080daabbf1abb69a9547d8ea86559a`  
		Last Modified: Thu, 27 Jul 2017 19:58:57 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8628f3f4bb66cbb270b6150b593975a6a78efd5c644d73aab2732e71592594ca`  
		Last Modified: Fri, 08 Sep 2017 22:28:22 GMT  
		Size: 13.0 MB (13005683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm variant v6

```console
$ docker pull traefik@sha256:fe7757c07e3ea758cfd7b50b5b2a4f0ae92f70c65a64633d5af100ff3c0e49ca
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12320260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141123ce583f180cd65e9ec3ccd3334211a9dccfb0cc1fc0fc74e40c5f1650d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 00:46:58 GMT
COPY file:af101984a52da8557091e4c4d75e4f3f2bad142b23af89075821bc040b0790f3 in / 
# Sat, 09 Sep 2017 00:46:59 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 00:46:59 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 00:47:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ed2ae07e2380f12bfbe63a5e029e9bd03b477c4ba78e0785f0813d91f5ed6`  
		Last Modified: Sat, 09 Sep 2017 00:47:24 GMT  
		Size: 12.2 MB (12185221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:483731cf70836e25c39b362195d5cd2e41aedd6f7ca73cd7ba9c2003dba48e07
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12010647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2d4f4f98e4c8fecfdafe2aa281ab1e195875974d1ae094e4252b655392425a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 01:28:55 GMT
COPY file:5d5b19153a0181d4d0aa6a19c500d39ad755ae657587f46cb39ef10ce3c597fd in / 
# Sat, 09 Sep 2017 01:28:56 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 01:28:56 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 01:28:57 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6459935d711e7a2cee417a5f63dbed1f56b3bca28822e3d53613160907bd10`  
		Last Modified: Sat, 09 Sep 2017 01:29:30 GMT  
		Size: 11.9 MB (11875610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.0-rc2-alpine`

```console
$ docker pull traefik@sha256:c758eb02ddea91714b538edcb7ee9db75dc00045590c277017488e88a679f78f
```

-	Platforms:
	-	linux; amd64

### `traefik:v1.4.0-rc2-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15515410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649be9c21d92470d18afbc557fa18ba1770e4b9757a02a72f39a3ac8087020c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Fri, 08 Sep 2017 22:27:22 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Sep 2017 22:27:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Sep 2017 22:27:36 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 08 Sep 2017 22:27:36 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 22:27:37 GMT
CMD ["traefik"]
# Fri, 08 Sep 2017 22:27:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba34ec7734d5df4b40906b9bce73ea49921678ea9eb9bfbc06bda5e5e2c43ef8`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 351.3 KB (351289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d995f6ed04f9fbd8512f520e8e9e1110391aaa65369fa1fd3aca55dc20311930`  
		Last Modified: Fri, 08 Sep 2017 22:29:08 GMT  
		Size: 13.2 MB (13173377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a6acdba630ab19eee1ee4c69d83641e60eee13eab7b862b9e10d777774abd4`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.0-rc2-alpine`

```console
$ docker pull traefik@sha256:c758eb02ddea91714b538edcb7ee9db75dc00045590c277017488e88a679f78f
```

-	Platforms:
	-	linux; amd64

### `traefik:1.4.0-rc2-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15515410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649be9c21d92470d18afbc557fa18ba1770e4b9757a02a72f39a3ac8087020c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Fri, 08 Sep 2017 22:27:22 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Sep 2017 22:27:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Sep 2017 22:27:36 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 08 Sep 2017 22:27:36 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 22:27:37 GMT
CMD ["traefik"]
# Fri, 08 Sep 2017 22:27:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba34ec7734d5df4b40906b9bce73ea49921678ea9eb9bfbc06bda5e5e2c43ef8`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 351.3 KB (351289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d995f6ed04f9fbd8512f520e8e9e1110391aaa65369fa1fd3aca55dc20311930`  
		Last Modified: Fri, 08 Sep 2017 22:29:08 GMT  
		Size: 13.2 MB (13173377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a6acdba630ab19eee1ee4c69d83641e60eee13eab7b862b9e10d777774abd4`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4-alpine`

```console
$ docker pull traefik@sha256:c758eb02ddea91714b538edcb7ee9db75dc00045590c277017488e88a679f78f
```

-	Platforms:
	-	linux; amd64

### `traefik:v1.4-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15515410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649be9c21d92470d18afbc557fa18ba1770e4b9757a02a72f39a3ac8087020c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Fri, 08 Sep 2017 22:27:22 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Sep 2017 22:27:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Sep 2017 22:27:36 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 08 Sep 2017 22:27:36 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 22:27:37 GMT
CMD ["traefik"]
# Fri, 08 Sep 2017 22:27:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba34ec7734d5df4b40906b9bce73ea49921678ea9eb9bfbc06bda5e5e2c43ef8`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 351.3 KB (351289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d995f6ed04f9fbd8512f520e8e9e1110391aaa65369fa1fd3aca55dc20311930`  
		Last Modified: Fri, 08 Sep 2017 22:29:08 GMT  
		Size: 13.2 MB (13173377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a6acdba630ab19eee1ee4c69d83641e60eee13eab7b862b9e10d777774abd4`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4-alpine`

```console
$ docker pull traefik@sha256:c758eb02ddea91714b538edcb7ee9db75dc00045590c277017488e88a679f78f
```

-	Platforms:
	-	linux; amd64

### `traefik:1.4-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15515410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649be9c21d92470d18afbc557fa18ba1770e4b9757a02a72f39a3ac8087020c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Fri, 08 Sep 2017 22:27:22 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Sep 2017 22:27:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Sep 2017 22:27:36 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 08 Sep 2017 22:27:36 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 22:27:37 GMT
CMD ["traefik"]
# Fri, 08 Sep 2017 22:27:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba34ec7734d5df4b40906b9bce73ea49921678ea9eb9bfbc06bda5e5e2c43ef8`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 351.3 KB (351289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d995f6ed04f9fbd8512f520e8e9e1110391aaa65369fa1fd3aca55dc20311930`  
		Last Modified: Fri, 08 Sep 2017 22:29:08 GMT  
		Size: 13.2 MB (13173377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a6acdba630ab19eee1ee4c69d83641e60eee13eab7b862b9e10d777774abd4`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:c758eb02ddea91714b538edcb7ee9db75dc00045590c277017488e88a679f78f
```

-	Platforms:
	-	linux; amd64

### `traefik:roquefort-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15515410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649be9c21d92470d18afbc557fa18ba1770e4b9757a02a72f39a3ac8087020c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Fri, 08 Sep 2017 22:27:22 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Sep 2017 22:27:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Sep 2017 22:27:36 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 08 Sep 2017 22:27:36 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 22:27:37 GMT
CMD ["traefik"]
# Fri, 08 Sep 2017 22:27:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba34ec7734d5df4b40906b9bce73ea49921678ea9eb9bfbc06bda5e5e2c43ef8`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 351.3 KB (351289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d995f6ed04f9fbd8512f520e8e9e1110391aaa65369fa1fd3aca55dc20311930`  
		Last Modified: Fri, 08 Sep 2017 22:29:08 GMT  
		Size: 13.2 MB (13173377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a6acdba630ab19eee1ee4c69d83641e60eee13eab7b862b9e10d777774abd4`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.3.8`

```console
$ docker pull traefik@sha256:b3dfe8d2fb202034c9aca2ddbaf8ea72aa1cb3a01c1eaee22741ec1c242247cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.3.8` - linux; amd64

```console
$ docker pull traefik@sha256:0d0acf7b2ef4cf4ca9d0c94204d2474b9cba3d290e6014970be7c459d1a9f374
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12961982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5cb0b02b5317c546da690ae905b7577d880f0358785dd8c3ac3cfd465482a4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Jul 2017 19:57:41 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 08 Sep 2017 22:27:49 GMT
COPY file:fbed2852269667c12ff28ccf5da16f6b38aeb3a303c8932e8ce6160c33df5016 in / 
# Fri, 08 Sep 2017 22:27:50 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:50 GMT
ENTRYPOINT ["/traefik"]
# Fri, 08 Sep 2017 22:27:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:df350fade9bb2857316784e0d70a781999080daabbf1abb69a9547d8ea86559a`  
		Last Modified: Thu, 27 Jul 2017 19:58:57 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2aac8501ff1b4c9b628e7fb8befdfeff217457492d1d33e6b25014aa538cb9`  
		Last Modified: Fri, 08 Sep 2017 22:29:52 GMT  
		Size: 12.8 MB (12826943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.3.8` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ef4139cf74253c07f6b2e787d215b50679d3f25099518d217173bf891a0ba20d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11636143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4acff2fff85bc5238a00435057793988786cfd055f93b9152e8a78934b8b2037`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 00:47:05 GMT
COPY file:efefc44a986146c1e7f6784bf34068131455177f3cc6f47459f3e5f509ba2851 in / 
# Sat, 09 Sep 2017 00:47:07 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 00:47:07 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 00:47:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef865290c9b5bfe273675e2ea44bb2b4d241b0f58ff85e0a89e0ed17ff44c801`  
		Last Modified: Sat, 09 Sep 2017 00:47:48 GMT  
		Size: 11.5 MB (11501104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.3.8` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2fbce2c1ae5b505ac7678b705da6736741170812d17cd6c28aac22df5e012bbf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12101511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb8f02624d3b751b4f94c9cf31727f28edb3515cb347862910cbd2e245a0f43`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 01:29:10 GMT
COPY file:55152468d6cc5dbf52fe8fc20949f055f8b67526b80039141c3e17769199d687 in / 
# Sat, 09 Sep 2017 01:29:11 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 01:29:11 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 01:29:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b709a705a4214922b95003d7585b9303e3b83c599b261e5daac22534b7119a`  
		Last Modified: Sat, 09 Sep 2017 01:30:14 GMT  
		Size: 12.0 MB (11966474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.3.8`

```console
$ docker pull traefik@sha256:b3dfe8d2fb202034c9aca2ddbaf8ea72aa1cb3a01c1eaee22741ec1c242247cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.3.8` - linux; amd64

```console
$ docker pull traefik@sha256:0d0acf7b2ef4cf4ca9d0c94204d2474b9cba3d290e6014970be7c459d1a9f374
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12961982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5cb0b02b5317c546da690ae905b7577d880f0358785dd8c3ac3cfd465482a4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Jul 2017 19:57:41 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 08 Sep 2017 22:27:49 GMT
COPY file:fbed2852269667c12ff28ccf5da16f6b38aeb3a303c8932e8ce6160c33df5016 in / 
# Fri, 08 Sep 2017 22:27:50 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:50 GMT
ENTRYPOINT ["/traefik"]
# Fri, 08 Sep 2017 22:27:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:df350fade9bb2857316784e0d70a781999080daabbf1abb69a9547d8ea86559a`  
		Last Modified: Thu, 27 Jul 2017 19:58:57 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2aac8501ff1b4c9b628e7fb8befdfeff217457492d1d33e6b25014aa538cb9`  
		Last Modified: Fri, 08 Sep 2017 22:29:52 GMT  
		Size: 12.8 MB (12826943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.3.8` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ef4139cf74253c07f6b2e787d215b50679d3f25099518d217173bf891a0ba20d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11636143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4acff2fff85bc5238a00435057793988786cfd055f93b9152e8a78934b8b2037`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 00:47:05 GMT
COPY file:efefc44a986146c1e7f6784bf34068131455177f3cc6f47459f3e5f509ba2851 in / 
# Sat, 09 Sep 2017 00:47:07 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 00:47:07 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 00:47:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef865290c9b5bfe273675e2ea44bb2b4d241b0f58ff85e0a89e0ed17ff44c801`  
		Last Modified: Sat, 09 Sep 2017 00:47:48 GMT  
		Size: 11.5 MB (11501104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.3.8` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2fbce2c1ae5b505ac7678b705da6736741170812d17cd6c28aac22df5e012bbf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12101511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb8f02624d3b751b4f94c9cf31727f28edb3515cb347862910cbd2e245a0f43`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 01:29:10 GMT
COPY file:55152468d6cc5dbf52fe8fc20949f055f8b67526b80039141c3e17769199d687 in / 
# Sat, 09 Sep 2017 01:29:11 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 01:29:11 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 01:29:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b709a705a4214922b95003d7585b9303e3b83c599b261e5daac22534b7119a`  
		Last Modified: Sat, 09 Sep 2017 01:30:14 GMT  
		Size: 12.0 MB (11966474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.3`

```console
$ docker pull traefik@sha256:b3dfe8d2fb202034c9aca2ddbaf8ea72aa1cb3a01c1eaee22741ec1c242247cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.3` - linux; amd64

```console
$ docker pull traefik@sha256:0d0acf7b2ef4cf4ca9d0c94204d2474b9cba3d290e6014970be7c459d1a9f374
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12961982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5cb0b02b5317c546da690ae905b7577d880f0358785dd8c3ac3cfd465482a4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Jul 2017 19:57:41 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 08 Sep 2017 22:27:49 GMT
COPY file:fbed2852269667c12ff28ccf5da16f6b38aeb3a303c8932e8ce6160c33df5016 in / 
# Fri, 08 Sep 2017 22:27:50 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:50 GMT
ENTRYPOINT ["/traefik"]
# Fri, 08 Sep 2017 22:27:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:df350fade9bb2857316784e0d70a781999080daabbf1abb69a9547d8ea86559a`  
		Last Modified: Thu, 27 Jul 2017 19:58:57 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2aac8501ff1b4c9b628e7fb8befdfeff217457492d1d33e6b25014aa538cb9`  
		Last Modified: Fri, 08 Sep 2017 22:29:52 GMT  
		Size: 12.8 MB (12826943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ef4139cf74253c07f6b2e787d215b50679d3f25099518d217173bf891a0ba20d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11636143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4acff2fff85bc5238a00435057793988786cfd055f93b9152e8a78934b8b2037`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 00:47:05 GMT
COPY file:efefc44a986146c1e7f6784bf34068131455177f3cc6f47459f3e5f509ba2851 in / 
# Sat, 09 Sep 2017 00:47:07 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 00:47:07 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 00:47:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef865290c9b5bfe273675e2ea44bb2b4d241b0f58ff85e0a89e0ed17ff44c801`  
		Last Modified: Sat, 09 Sep 2017 00:47:48 GMT  
		Size: 11.5 MB (11501104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.3` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2fbce2c1ae5b505ac7678b705da6736741170812d17cd6c28aac22df5e012bbf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12101511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb8f02624d3b751b4f94c9cf31727f28edb3515cb347862910cbd2e245a0f43`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 01:29:10 GMT
COPY file:55152468d6cc5dbf52fe8fc20949f055f8b67526b80039141c3e17769199d687 in / 
# Sat, 09 Sep 2017 01:29:11 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 01:29:11 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 01:29:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b709a705a4214922b95003d7585b9303e3b83c599b261e5daac22534b7119a`  
		Last Modified: Sat, 09 Sep 2017 01:30:14 GMT  
		Size: 12.0 MB (11966474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.3`

```console
$ docker pull traefik@sha256:b3dfe8d2fb202034c9aca2ddbaf8ea72aa1cb3a01c1eaee22741ec1c242247cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.3` - linux; amd64

```console
$ docker pull traefik@sha256:0d0acf7b2ef4cf4ca9d0c94204d2474b9cba3d290e6014970be7c459d1a9f374
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12961982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5cb0b02b5317c546da690ae905b7577d880f0358785dd8c3ac3cfd465482a4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Jul 2017 19:57:41 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 08 Sep 2017 22:27:49 GMT
COPY file:fbed2852269667c12ff28ccf5da16f6b38aeb3a303c8932e8ce6160c33df5016 in / 
# Fri, 08 Sep 2017 22:27:50 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:50 GMT
ENTRYPOINT ["/traefik"]
# Fri, 08 Sep 2017 22:27:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:df350fade9bb2857316784e0d70a781999080daabbf1abb69a9547d8ea86559a`  
		Last Modified: Thu, 27 Jul 2017 19:58:57 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2aac8501ff1b4c9b628e7fb8befdfeff217457492d1d33e6b25014aa538cb9`  
		Last Modified: Fri, 08 Sep 2017 22:29:52 GMT  
		Size: 12.8 MB (12826943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ef4139cf74253c07f6b2e787d215b50679d3f25099518d217173bf891a0ba20d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11636143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4acff2fff85bc5238a00435057793988786cfd055f93b9152e8a78934b8b2037`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 00:47:05 GMT
COPY file:efefc44a986146c1e7f6784bf34068131455177f3cc6f47459f3e5f509ba2851 in / 
# Sat, 09 Sep 2017 00:47:07 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 00:47:07 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 00:47:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef865290c9b5bfe273675e2ea44bb2b4d241b0f58ff85e0a89e0ed17ff44c801`  
		Last Modified: Sat, 09 Sep 2017 00:47:48 GMT  
		Size: 11.5 MB (11501104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.3` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2fbce2c1ae5b505ac7678b705da6736741170812d17cd6c28aac22df5e012bbf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12101511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb8f02624d3b751b4f94c9cf31727f28edb3515cb347862910cbd2e245a0f43`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 01:29:10 GMT
COPY file:55152468d6cc5dbf52fe8fc20949f055f8b67526b80039141c3e17769199d687 in / 
# Sat, 09 Sep 2017 01:29:11 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 01:29:11 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 01:29:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b709a705a4214922b95003d7585b9303e3b83c599b261e5daac22534b7119a`  
		Last Modified: Sat, 09 Sep 2017 01:30:14 GMT  
		Size: 12.0 MB (11966474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:raclette`

```console
$ docker pull traefik@sha256:b3dfe8d2fb202034c9aca2ddbaf8ea72aa1cb3a01c1eaee22741ec1c242247cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:raclette` - linux; amd64

```console
$ docker pull traefik@sha256:0d0acf7b2ef4cf4ca9d0c94204d2474b9cba3d290e6014970be7c459d1a9f374
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12961982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5cb0b02b5317c546da690ae905b7577d880f0358785dd8c3ac3cfd465482a4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Jul 2017 19:57:41 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 08 Sep 2017 22:27:49 GMT
COPY file:fbed2852269667c12ff28ccf5da16f6b38aeb3a303c8932e8ce6160c33df5016 in / 
# Fri, 08 Sep 2017 22:27:50 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:50 GMT
ENTRYPOINT ["/traefik"]
# Fri, 08 Sep 2017 22:27:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:df350fade9bb2857316784e0d70a781999080daabbf1abb69a9547d8ea86559a`  
		Last Modified: Thu, 27 Jul 2017 19:58:57 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2aac8501ff1b4c9b628e7fb8befdfeff217457492d1d33e6b25014aa538cb9`  
		Last Modified: Fri, 08 Sep 2017 22:29:52 GMT  
		Size: 12.8 MB (12826943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:raclette` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ef4139cf74253c07f6b2e787d215b50679d3f25099518d217173bf891a0ba20d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11636143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4acff2fff85bc5238a00435057793988786cfd055f93b9152e8a78934b8b2037`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 00:47:05 GMT
COPY file:efefc44a986146c1e7f6784bf34068131455177f3cc6f47459f3e5f509ba2851 in / 
# Sat, 09 Sep 2017 00:47:07 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 00:47:07 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 00:47:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef865290c9b5bfe273675e2ea44bb2b4d241b0f58ff85e0a89e0ed17ff44c801`  
		Last Modified: Sat, 09 Sep 2017 00:47:48 GMT  
		Size: 11.5 MB (11501104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:raclette` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2fbce2c1ae5b505ac7678b705da6736741170812d17cd6c28aac22df5e012bbf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12101511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb8f02624d3b751b4f94c9cf31727f28edb3515cb347862910cbd2e245a0f43`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 01:29:10 GMT
COPY file:55152468d6cc5dbf52fe8fc20949f055f8b67526b80039141c3e17769199d687 in / 
# Sat, 09 Sep 2017 01:29:11 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 01:29:11 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 01:29:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b709a705a4214922b95003d7585b9303e3b83c599b261e5daac22534b7119a`  
		Last Modified: Sat, 09 Sep 2017 01:30:14 GMT  
		Size: 12.0 MB (11966474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:b3dfe8d2fb202034c9aca2ddbaf8ea72aa1cb3a01c1eaee22741ec1c242247cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:0d0acf7b2ef4cf4ca9d0c94204d2474b9cba3d290e6014970be7c459d1a9f374
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12961982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5cb0b02b5317c546da690ae905b7577d880f0358785dd8c3ac3cfd465482a4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Jul 2017 19:57:41 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 08 Sep 2017 22:27:49 GMT
COPY file:fbed2852269667c12ff28ccf5da16f6b38aeb3a303c8932e8ce6160c33df5016 in / 
# Fri, 08 Sep 2017 22:27:50 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:50 GMT
ENTRYPOINT ["/traefik"]
# Fri, 08 Sep 2017 22:27:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:df350fade9bb2857316784e0d70a781999080daabbf1abb69a9547d8ea86559a`  
		Last Modified: Thu, 27 Jul 2017 19:58:57 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2aac8501ff1b4c9b628e7fb8befdfeff217457492d1d33e6b25014aa538cb9`  
		Last Modified: Fri, 08 Sep 2017 22:29:52 GMT  
		Size: 12.8 MB (12826943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ef4139cf74253c07f6b2e787d215b50679d3f25099518d217173bf891a0ba20d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11636143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4acff2fff85bc5238a00435057793988786cfd055f93b9152e8a78934b8b2037`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 00:47:05 GMT
COPY file:efefc44a986146c1e7f6784bf34068131455177f3cc6f47459f3e5f509ba2851 in / 
# Sat, 09 Sep 2017 00:47:07 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 00:47:07 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 00:47:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef865290c9b5bfe273675e2ea44bb2b4d241b0f58ff85e0a89e0ed17ff44c801`  
		Last Modified: Sat, 09 Sep 2017 00:47:48 GMT  
		Size: 11.5 MB (11501104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2fbce2c1ae5b505ac7678b705da6736741170812d17cd6c28aac22df5e012bbf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12101511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb8f02624d3b751b4f94c9cf31727f28edb3515cb347862910cbd2e245a0f43`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Sat, 09 Sep 2017 01:29:10 GMT
COPY file:55152468d6cc5dbf52fe8fc20949f055f8b67526b80039141c3e17769199d687 in / 
# Sat, 09 Sep 2017 01:29:11 GMT
EXPOSE 80/tcp
# Sat, 09 Sep 2017 01:29:11 GMT
ENTRYPOINT ["/traefik"]
# Sat, 09 Sep 2017 01:29:12 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b709a705a4214922b95003d7585b9303e3b83c599b261e5daac22534b7119a`  
		Last Modified: Sat, 09 Sep 2017 01:30:14 GMT  
		Size: 12.0 MB (11966474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.3.8-alpine`

```console
$ docker pull traefik@sha256:95ce155376b02d4c0cda38da1d45ef25146dd38efa015c4feba274bacffeea3c
```

-	Platforms:
	-	linux; amd64

### `traefik:v1.3.8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab58e39bdb4ae61ff0a97809ea579546c876e32b31c64000074b8c1960dea5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Fri, 08 Sep 2017 22:27:22 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Sep 2017 22:28:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Sep 2017 22:28:07 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 08 Sep 2017 22:28:07 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:28:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 22:28:08 GMT
CMD ["traefik"]
# Fri, 08 Sep 2017 22:28:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba34ec7734d5df4b40906b9bce73ea49921678ea9eb9bfbc06bda5e5e2c43ef8`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 351.3 KB (351289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abaab4123b8e2c27e40a7b1409d79dac369d4f7c2060e521eb0366090c7e661`  
		Last Modified: Fri, 08 Sep 2017 22:30:42 GMT  
		Size: 13.0 MB (12993543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987692e948ff8c9d8684b3773e7dabbc4abf9051b5842411dab03d5e5be735ae`  
		Last Modified: Fri, 08 Sep 2017 22:30:40 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.3.8-alpine`

```console
$ docker pull traefik@sha256:95ce155376b02d4c0cda38da1d45ef25146dd38efa015c4feba274bacffeea3c
```

-	Platforms:
	-	linux; amd64

### `traefik:1.3.8-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab58e39bdb4ae61ff0a97809ea579546c876e32b31c64000074b8c1960dea5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Fri, 08 Sep 2017 22:27:22 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Sep 2017 22:28:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Sep 2017 22:28:07 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 08 Sep 2017 22:28:07 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:28:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 22:28:08 GMT
CMD ["traefik"]
# Fri, 08 Sep 2017 22:28:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba34ec7734d5df4b40906b9bce73ea49921678ea9eb9bfbc06bda5e5e2c43ef8`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 351.3 KB (351289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abaab4123b8e2c27e40a7b1409d79dac369d4f7c2060e521eb0366090c7e661`  
		Last Modified: Fri, 08 Sep 2017 22:30:42 GMT  
		Size: 13.0 MB (12993543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987692e948ff8c9d8684b3773e7dabbc4abf9051b5842411dab03d5e5be735ae`  
		Last Modified: Fri, 08 Sep 2017 22:30:40 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.3-alpine`

```console
$ docker pull traefik@sha256:95ce155376b02d4c0cda38da1d45ef25146dd38efa015c4feba274bacffeea3c
```

-	Platforms:
	-	linux; amd64

### `traefik:v1.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab58e39bdb4ae61ff0a97809ea579546c876e32b31c64000074b8c1960dea5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Fri, 08 Sep 2017 22:27:22 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Sep 2017 22:28:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Sep 2017 22:28:07 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 08 Sep 2017 22:28:07 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:28:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 22:28:08 GMT
CMD ["traefik"]
# Fri, 08 Sep 2017 22:28:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba34ec7734d5df4b40906b9bce73ea49921678ea9eb9bfbc06bda5e5e2c43ef8`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 351.3 KB (351289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abaab4123b8e2c27e40a7b1409d79dac369d4f7c2060e521eb0366090c7e661`  
		Last Modified: Fri, 08 Sep 2017 22:30:42 GMT  
		Size: 13.0 MB (12993543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987692e948ff8c9d8684b3773e7dabbc4abf9051b5842411dab03d5e5be735ae`  
		Last Modified: Fri, 08 Sep 2017 22:30:40 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.3-alpine`

```console
$ docker pull traefik@sha256:95ce155376b02d4c0cda38da1d45ef25146dd38efa015c4feba274bacffeea3c
```

-	Platforms:
	-	linux; amd64

### `traefik:1.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab58e39bdb4ae61ff0a97809ea579546c876e32b31c64000074b8c1960dea5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Fri, 08 Sep 2017 22:27:22 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Sep 2017 22:28:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Sep 2017 22:28:07 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 08 Sep 2017 22:28:07 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:28:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 22:28:08 GMT
CMD ["traefik"]
# Fri, 08 Sep 2017 22:28:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba34ec7734d5df4b40906b9bce73ea49921678ea9eb9bfbc06bda5e5e2c43ef8`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 351.3 KB (351289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abaab4123b8e2c27e40a7b1409d79dac369d4f7c2060e521eb0366090c7e661`  
		Last Modified: Fri, 08 Sep 2017 22:30:42 GMT  
		Size: 13.0 MB (12993543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987692e948ff8c9d8684b3773e7dabbc4abf9051b5842411dab03d5e5be735ae`  
		Last Modified: Fri, 08 Sep 2017 22:30:40 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:raclette-alpine`

```console
$ docker pull traefik@sha256:95ce155376b02d4c0cda38da1d45ef25146dd38efa015c4feba274bacffeea3c
```

-	Platforms:
	-	linux; amd64

### `traefik:raclette-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab58e39bdb4ae61ff0a97809ea579546c876e32b31c64000074b8c1960dea5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Fri, 08 Sep 2017 22:27:22 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Sep 2017 22:28:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Sep 2017 22:28:07 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 08 Sep 2017 22:28:07 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:28:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 22:28:08 GMT
CMD ["traefik"]
# Fri, 08 Sep 2017 22:28:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba34ec7734d5df4b40906b9bce73ea49921678ea9eb9bfbc06bda5e5e2c43ef8`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 351.3 KB (351289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abaab4123b8e2c27e40a7b1409d79dac369d4f7c2060e521eb0366090c7e661`  
		Last Modified: Fri, 08 Sep 2017 22:30:42 GMT  
		Size: 13.0 MB (12993543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987692e948ff8c9d8684b3773e7dabbc4abf9051b5842411dab03d5e5be735ae`  
		Last Modified: Fri, 08 Sep 2017 22:30:40 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:95ce155376b02d4c0cda38da1d45ef25146dd38efa015c4feba274bacffeea3c
```

-	Platforms:
	-	linux; amd64

### `traefik:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab58e39bdb4ae61ff0a97809ea579546c876e32b31c64000074b8c1960dea5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Fri, 08 Sep 2017 22:27:22 GMT
RUN apk --no-cache add ca-certificates
# Fri, 08 Sep 2017 22:28:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 08 Sep 2017 22:28:07 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 08 Sep 2017 22:28:07 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:28:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 22:28:08 GMT
CMD ["traefik"]
# Fri, 08 Sep 2017 22:28:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba34ec7734d5df4b40906b9bce73ea49921678ea9eb9bfbc06bda5e5e2c43ef8`  
		Last Modified: Fri, 08 Sep 2017 22:29:03 GMT  
		Size: 351.3 KB (351289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abaab4123b8e2c27e40a7b1409d79dac369d4f7c2060e521eb0366090c7e661`  
		Last Modified: Fri, 08 Sep 2017 22:30:42 GMT  
		Size: 13.0 MB (12993543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987692e948ff8c9d8684b3773e7dabbc4abf9051b5842411dab03d5e5be735ae`  
		Last Modified: Fri, 08 Sep 2017 22:30:40 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
