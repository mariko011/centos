<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.4`](#traefik14)
-	[`traefik:1.4.0`](#traefik140)
-	[`traefik:1.4.0-alpine`](#traefik140-alpine)
-	[`traefik:1.4-alpine`](#traefik14-alpine)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:roquefort`](#traefikroquefort)
-	[`traefik:roquefort-alpine`](#traefikroquefort-alpine)
-	[`traefik:v1.4`](#traefikv14)
-	[`traefik:v1.4.0`](#traefikv140)
-	[`traefik:v1.4.0-alpine`](#traefikv140-alpine)
-	[`traefik:v1.4-alpine`](#traefikv14-alpine)

## `traefik:1.4`

```console
$ docker pull traefik@sha256:aa8f397051feeb9f8db5cc8377f6f539b961adf5fe20f9940122b263a9c5aa99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4` - linux; amd64

```console
$ docker pull traefik@sha256:028cb3ad672d302419add45a75cb6aeeb59cee167a843eee303c5fee445cfcf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13170012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db126a45004319dce0992a7f781f999434d69c48654a5f7d51f5ee1a845601ec`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 16 Oct 2017 18:48:31 GMT
COPY file:3f1fe0e35c8aee49df326f683b322e33163c97551b87a8025da619855c7cb0ef in / 
# Mon, 16 Oct 2017 18:48:31 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 18:48:32 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Oct 2017 18:48:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580d6e340808c515817e75fb65ab398ad01b2bc220fe02b78a34a29f8a87f0b1`  
		Last Modified: Mon, 16 Oct 2017 18:49:02 GMT  
		Size: 13.0 MB (13034973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4dc4f562fc0d814acaf6a250e94c7445a6f999da7f94b7c0b004017aab0ad17f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12347286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237217073db46df1d52192364eb1f69cc432c574b5d9d81223a730817e689e02`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 27 Sep 2017 03:23:59 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 16 Oct 2017 23:48:27 GMT
COPY file:2fb6347b7874f51486b01fd0b02efce4a79c357b41ea669aec8d06b961be9429 in / 
# Mon, 16 Oct 2017 23:48:27 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 23:48:27 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Oct 2017 23:48:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:047ee6a8ab25d2b192fd6a096e61910c5f95ccded229f6d6332ee92f0af0063b`  
		Last Modified: Wed, 27 Sep 2017 03:24:17 GMT  
		Size: 135.1 KB (135073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305308c436603735cf72aae64a51ee0dd8836a2b1605bed357add60e3c5a6841`  
		Last Modified: Mon, 16 Oct 2017 23:48:39 GMT  
		Size: 12.2 MB (12212213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7f6695fc78cc37ecbe46d0355367673af7457af9a0534eb1cf688fbfcd137a6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12039618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f2110b5f8bfbc68fb50c236e206ff331fcf66d1e2d9dc9ad5e881cd493cd32`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 17 Oct 2017 04:54:48 GMT
COPY file:06131bd45ca2dc0429fa8370374788df576862b04cadfb75cda6a7a0ca437121 in / 
# Tue, 17 Oct 2017 04:54:49 GMT
EXPOSE 80/tcp
# Tue, 17 Oct 2017 04:54:49 GMT
ENTRYPOINT ["/traefik"]
# Tue, 17 Oct 2017 04:54:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab463d8d5f535c4157f38b395dfbab5aefcd7fa6767d74c83594ab1a6efcd424`  
		Last Modified: Tue, 17 Oct 2017 04:55:17 GMT  
		Size: 11.9 MB (11904581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.0`

```console
$ docker pull traefik@sha256:aa8f397051feeb9f8db5cc8377f6f539b961adf5fe20f9940122b263a9c5aa99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4.0` - linux; amd64

```console
$ docker pull traefik@sha256:028cb3ad672d302419add45a75cb6aeeb59cee167a843eee303c5fee445cfcf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13170012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db126a45004319dce0992a7f781f999434d69c48654a5f7d51f5ee1a845601ec`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 16 Oct 2017 18:48:31 GMT
COPY file:3f1fe0e35c8aee49df326f683b322e33163c97551b87a8025da619855c7cb0ef in / 
# Mon, 16 Oct 2017 18:48:31 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 18:48:32 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Oct 2017 18:48:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580d6e340808c515817e75fb65ab398ad01b2bc220fe02b78a34a29f8a87f0b1`  
		Last Modified: Mon, 16 Oct 2017 18:49:02 GMT  
		Size: 13.0 MB (13034973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4dc4f562fc0d814acaf6a250e94c7445a6f999da7f94b7c0b004017aab0ad17f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12347286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237217073db46df1d52192364eb1f69cc432c574b5d9d81223a730817e689e02`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 27 Sep 2017 03:23:59 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 16 Oct 2017 23:48:27 GMT
COPY file:2fb6347b7874f51486b01fd0b02efce4a79c357b41ea669aec8d06b961be9429 in / 
# Mon, 16 Oct 2017 23:48:27 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 23:48:27 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Oct 2017 23:48:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:047ee6a8ab25d2b192fd6a096e61910c5f95ccded229f6d6332ee92f0af0063b`  
		Last Modified: Wed, 27 Sep 2017 03:24:17 GMT  
		Size: 135.1 KB (135073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305308c436603735cf72aae64a51ee0dd8836a2b1605bed357add60e3c5a6841`  
		Last Modified: Mon, 16 Oct 2017 23:48:39 GMT  
		Size: 12.2 MB (12212213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.0` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7f6695fc78cc37ecbe46d0355367673af7457af9a0534eb1cf688fbfcd137a6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12039618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f2110b5f8bfbc68fb50c236e206ff331fcf66d1e2d9dc9ad5e881cd493cd32`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 17 Oct 2017 04:54:48 GMT
COPY file:06131bd45ca2dc0429fa8370374788df576862b04cadfb75cda6a7a0ca437121 in / 
# Tue, 17 Oct 2017 04:54:49 GMT
EXPOSE 80/tcp
# Tue, 17 Oct 2017 04:54:49 GMT
ENTRYPOINT ["/traefik"]
# Tue, 17 Oct 2017 04:54:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab463d8d5f535c4157f38b395dfbab5aefcd7fa6767d74c83594ab1a6efcd424`  
		Last Modified: Tue, 17 Oct 2017 04:55:17 GMT  
		Size: 11.9 MB (11904581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.0-alpine`

```console
$ docker pull traefik@sha256:14b4cf8ada48a1eeb5c7024a35766d0c319710625079b90cb91da7a77166d5c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.4.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:0acd867a486e0589fa6e600db4c0869fecfb9d777db7dc4e7c98098f10e393b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15545601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9542d0c874d180048f4da582010e76ded226d1c878d4e77681440560107e6d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 16 Oct 2017 18:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 16 Oct 2017 18:48:47 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 16 Oct 2017 18:48:47 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 18:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Oct 2017 18:48:47 GMT
CMD ["traefik"]
# Mon, 16 Oct 2017 18:48:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690da7be984deafe90a6af23d8afd106994491a9c83c7914b48b31d056b063ca`  
		Last Modified: Mon, 18 Sep 2017 19:37:01 GMT  
		Size: 351.4 KB (351350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd0fb074fafa62a96dbc669ef41607a47945b5f01f18e52c5bb32d2c36812f2`  
		Last Modified: Mon, 16 Oct 2017 18:49:57 GMT  
		Size: 13.2 MB (13203510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee8516667533c370cacd2074f3b1725a991f47c37b7c8a086a0e33f9662faa1`  
		Last Modified: Mon, 16 Oct 2017 18:49:54 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4-alpine`

```console
$ docker pull traefik@sha256:14b4cf8ada48a1eeb5c7024a35766d0c319710625079b90cb91da7a77166d5c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:0acd867a486e0589fa6e600db4c0869fecfb9d777db7dc4e7c98098f10e393b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15545601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9542d0c874d180048f4da582010e76ded226d1c878d4e77681440560107e6d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 16 Oct 2017 18:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 16 Oct 2017 18:48:47 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 16 Oct 2017 18:48:47 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 18:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Oct 2017 18:48:47 GMT
CMD ["traefik"]
# Mon, 16 Oct 2017 18:48:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690da7be984deafe90a6af23d8afd106994491a9c83c7914b48b31d056b063ca`  
		Last Modified: Mon, 18 Sep 2017 19:37:01 GMT  
		Size: 351.4 KB (351350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd0fb074fafa62a96dbc669ef41607a47945b5f01f18e52c5bb32d2c36812f2`  
		Last Modified: Mon, 16 Oct 2017 18:49:57 GMT  
		Size: 13.2 MB (13203510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee8516667533c370cacd2074f3b1725a991f47c37b7c8a086a0e33f9662faa1`  
		Last Modified: Mon, 16 Oct 2017 18:49:54 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:14b4cf8ada48a1eeb5c7024a35766d0c319710625079b90cb91da7a77166d5c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:0acd867a486e0589fa6e600db4c0869fecfb9d777db7dc4e7c98098f10e393b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15545601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9542d0c874d180048f4da582010e76ded226d1c878d4e77681440560107e6d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 16 Oct 2017 18:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 16 Oct 2017 18:48:47 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 16 Oct 2017 18:48:47 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 18:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Oct 2017 18:48:47 GMT
CMD ["traefik"]
# Mon, 16 Oct 2017 18:48:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690da7be984deafe90a6af23d8afd106994491a9c83c7914b48b31d056b063ca`  
		Last Modified: Mon, 18 Sep 2017 19:37:01 GMT  
		Size: 351.4 KB (351350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd0fb074fafa62a96dbc669ef41607a47945b5f01f18e52c5bb32d2c36812f2`  
		Last Modified: Mon, 16 Oct 2017 18:49:57 GMT  
		Size: 13.2 MB (13203510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee8516667533c370cacd2074f3b1725a991f47c37b7c8a086a0e33f9662faa1`  
		Last Modified: Mon, 16 Oct 2017 18:49:54 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:aa8f397051feeb9f8db5cc8377f6f539b961adf5fe20f9940122b263a9c5aa99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:028cb3ad672d302419add45a75cb6aeeb59cee167a843eee303c5fee445cfcf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13170012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db126a45004319dce0992a7f781f999434d69c48654a5f7d51f5ee1a845601ec`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 16 Oct 2017 18:48:31 GMT
COPY file:3f1fe0e35c8aee49df326f683b322e33163c97551b87a8025da619855c7cb0ef in / 
# Mon, 16 Oct 2017 18:48:31 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 18:48:32 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Oct 2017 18:48:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580d6e340808c515817e75fb65ab398ad01b2bc220fe02b78a34a29f8a87f0b1`  
		Last Modified: Mon, 16 Oct 2017 18:49:02 GMT  
		Size: 13.0 MB (13034973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4dc4f562fc0d814acaf6a250e94c7445a6f999da7f94b7c0b004017aab0ad17f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12347286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237217073db46df1d52192364eb1f69cc432c574b5d9d81223a730817e689e02`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 27 Sep 2017 03:23:59 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 16 Oct 2017 23:48:27 GMT
COPY file:2fb6347b7874f51486b01fd0b02efce4a79c357b41ea669aec8d06b961be9429 in / 
# Mon, 16 Oct 2017 23:48:27 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 23:48:27 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Oct 2017 23:48:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:047ee6a8ab25d2b192fd6a096e61910c5f95ccded229f6d6332ee92f0af0063b`  
		Last Modified: Wed, 27 Sep 2017 03:24:17 GMT  
		Size: 135.1 KB (135073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305308c436603735cf72aae64a51ee0dd8836a2b1605bed357add60e3c5a6841`  
		Last Modified: Mon, 16 Oct 2017 23:48:39 GMT  
		Size: 12.2 MB (12212213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7f6695fc78cc37ecbe46d0355367673af7457af9a0534eb1cf688fbfcd137a6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12039618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f2110b5f8bfbc68fb50c236e206ff331fcf66d1e2d9dc9ad5e881cd493cd32`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 17 Oct 2017 04:54:48 GMT
COPY file:06131bd45ca2dc0429fa8370374788df576862b04cadfb75cda6a7a0ca437121 in / 
# Tue, 17 Oct 2017 04:54:49 GMT
EXPOSE 80/tcp
# Tue, 17 Oct 2017 04:54:49 GMT
ENTRYPOINT ["/traefik"]
# Tue, 17 Oct 2017 04:54:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab463d8d5f535c4157f38b395dfbab5aefcd7fa6767d74c83594ab1a6efcd424`  
		Last Modified: Tue, 17 Oct 2017 04:55:17 GMT  
		Size: 11.9 MB (11904581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort`

```console
$ docker pull traefik@sha256:aa8f397051feeb9f8db5cc8377f6f539b961adf5fe20f9940122b263a9c5aa99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:roquefort` - linux; amd64

```console
$ docker pull traefik@sha256:028cb3ad672d302419add45a75cb6aeeb59cee167a843eee303c5fee445cfcf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13170012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db126a45004319dce0992a7f781f999434d69c48654a5f7d51f5ee1a845601ec`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 16 Oct 2017 18:48:31 GMT
COPY file:3f1fe0e35c8aee49df326f683b322e33163c97551b87a8025da619855c7cb0ef in / 
# Mon, 16 Oct 2017 18:48:31 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 18:48:32 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Oct 2017 18:48:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580d6e340808c515817e75fb65ab398ad01b2bc220fe02b78a34a29f8a87f0b1`  
		Last Modified: Mon, 16 Oct 2017 18:49:02 GMT  
		Size: 13.0 MB (13034973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4dc4f562fc0d814acaf6a250e94c7445a6f999da7f94b7c0b004017aab0ad17f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12347286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237217073db46df1d52192364eb1f69cc432c574b5d9d81223a730817e689e02`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 27 Sep 2017 03:23:59 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 16 Oct 2017 23:48:27 GMT
COPY file:2fb6347b7874f51486b01fd0b02efce4a79c357b41ea669aec8d06b961be9429 in / 
# Mon, 16 Oct 2017 23:48:27 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 23:48:27 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Oct 2017 23:48:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:047ee6a8ab25d2b192fd6a096e61910c5f95ccded229f6d6332ee92f0af0063b`  
		Last Modified: Wed, 27 Sep 2017 03:24:17 GMT  
		Size: 135.1 KB (135073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305308c436603735cf72aae64a51ee0dd8836a2b1605bed357add60e3c5a6841`  
		Last Modified: Mon, 16 Oct 2017 23:48:39 GMT  
		Size: 12.2 MB (12212213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7f6695fc78cc37ecbe46d0355367673af7457af9a0534eb1cf688fbfcd137a6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12039618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f2110b5f8bfbc68fb50c236e206ff331fcf66d1e2d9dc9ad5e881cd493cd32`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 17 Oct 2017 04:54:48 GMT
COPY file:06131bd45ca2dc0429fa8370374788df576862b04cadfb75cda6a7a0ca437121 in / 
# Tue, 17 Oct 2017 04:54:49 GMT
EXPOSE 80/tcp
# Tue, 17 Oct 2017 04:54:49 GMT
ENTRYPOINT ["/traefik"]
# Tue, 17 Oct 2017 04:54:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab463d8d5f535c4157f38b395dfbab5aefcd7fa6767d74c83594ab1a6efcd424`  
		Last Modified: Tue, 17 Oct 2017 04:55:17 GMT  
		Size: 11.9 MB (11904581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:14b4cf8ada48a1eeb5c7024a35766d0c319710625079b90cb91da7a77166d5c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:roquefort-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:0acd867a486e0589fa6e600db4c0869fecfb9d777db7dc4e7c98098f10e393b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15545601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9542d0c874d180048f4da582010e76ded226d1c878d4e77681440560107e6d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 16 Oct 2017 18:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 16 Oct 2017 18:48:47 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 16 Oct 2017 18:48:47 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 18:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Oct 2017 18:48:47 GMT
CMD ["traefik"]
# Mon, 16 Oct 2017 18:48:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690da7be984deafe90a6af23d8afd106994491a9c83c7914b48b31d056b063ca`  
		Last Modified: Mon, 18 Sep 2017 19:37:01 GMT  
		Size: 351.4 KB (351350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd0fb074fafa62a96dbc669ef41607a47945b5f01f18e52c5bb32d2c36812f2`  
		Last Modified: Mon, 16 Oct 2017 18:49:57 GMT  
		Size: 13.2 MB (13203510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee8516667533c370cacd2074f3b1725a991f47c37b7c8a086a0e33f9662faa1`  
		Last Modified: Mon, 16 Oct 2017 18:49:54 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4`

```console
$ docker pull traefik@sha256:aa8f397051feeb9f8db5cc8377f6f539b961adf5fe20f9940122b263a9c5aa99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4` - linux; amd64

```console
$ docker pull traefik@sha256:028cb3ad672d302419add45a75cb6aeeb59cee167a843eee303c5fee445cfcf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13170012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db126a45004319dce0992a7f781f999434d69c48654a5f7d51f5ee1a845601ec`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 16 Oct 2017 18:48:31 GMT
COPY file:3f1fe0e35c8aee49df326f683b322e33163c97551b87a8025da619855c7cb0ef in / 
# Mon, 16 Oct 2017 18:48:31 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 18:48:32 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Oct 2017 18:48:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580d6e340808c515817e75fb65ab398ad01b2bc220fe02b78a34a29f8a87f0b1`  
		Last Modified: Mon, 16 Oct 2017 18:49:02 GMT  
		Size: 13.0 MB (13034973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4dc4f562fc0d814acaf6a250e94c7445a6f999da7f94b7c0b004017aab0ad17f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12347286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237217073db46df1d52192364eb1f69cc432c574b5d9d81223a730817e689e02`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 27 Sep 2017 03:23:59 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 16 Oct 2017 23:48:27 GMT
COPY file:2fb6347b7874f51486b01fd0b02efce4a79c357b41ea669aec8d06b961be9429 in / 
# Mon, 16 Oct 2017 23:48:27 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 23:48:27 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Oct 2017 23:48:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:047ee6a8ab25d2b192fd6a096e61910c5f95ccded229f6d6332ee92f0af0063b`  
		Last Modified: Wed, 27 Sep 2017 03:24:17 GMT  
		Size: 135.1 KB (135073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305308c436603735cf72aae64a51ee0dd8836a2b1605bed357add60e3c5a6841`  
		Last Modified: Mon, 16 Oct 2017 23:48:39 GMT  
		Size: 12.2 MB (12212213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7f6695fc78cc37ecbe46d0355367673af7457af9a0534eb1cf688fbfcd137a6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12039618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f2110b5f8bfbc68fb50c236e206ff331fcf66d1e2d9dc9ad5e881cd493cd32`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 17 Oct 2017 04:54:48 GMT
COPY file:06131bd45ca2dc0429fa8370374788df576862b04cadfb75cda6a7a0ca437121 in / 
# Tue, 17 Oct 2017 04:54:49 GMT
EXPOSE 80/tcp
# Tue, 17 Oct 2017 04:54:49 GMT
ENTRYPOINT ["/traefik"]
# Tue, 17 Oct 2017 04:54:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab463d8d5f535c4157f38b395dfbab5aefcd7fa6767d74c83594ab1a6efcd424`  
		Last Modified: Tue, 17 Oct 2017 04:55:17 GMT  
		Size: 11.9 MB (11904581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.0`

```console
$ docker pull traefik@sha256:aa8f397051feeb9f8db5cc8377f6f539b961adf5fe20f9940122b263a9c5aa99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4.0` - linux; amd64

```console
$ docker pull traefik@sha256:028cb3ad672d302419add45a75cb6aeeb59cee167a843eee303c5fee445cfcf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13170012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db126a45004319dce0992a7f781f999434d69c48654a5f7d51f5ee1a845601ec`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 16 Oct 2017 18:48:31 GMT
COPY file:3f1fe0e35c8aee49df326f683b322e33163c97551b87a8025da619855c7cb0ef in / 
# Mon, 16 Oct 2017 18:48:31 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 18:48:32 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Oct 2017 18:48:32 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580d6e340808c515817e75fb65ab398ad01b2bc220fe02b78a34a29f8a87f0b1`  
		Last Modified: Mon, 16 Oct 2017 18:49:02 GMT  
		Size: 13.0 MB (13034973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.0` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4dc4f562fc0d814acaf6a250e94c7445a6f999da7f94b7c0b004017aab0ad17f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12347286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237217073db46df1d52192364eb1f69cc432c574b5d9d81223a730817e689e02`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 27 Sep 2017 03:23:59 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 16 Oct 2017 23:48:27 GMT
COPY file:2fb6347b7874f51486b01fd0b02efce4a79c357b41ea669aec8d06b961be9429 in / 
# Mon, 16 Oct 2017 23:48:27 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 23:48:27 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Oct 2017 23:48:27 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:047ee6a8ab25d2b192fd6a096e61910c5f95ccded229f6d6332ee92f0af0063b`  
		Last Modified: Wed, 27 Sep 2017 03:24:17 GMT  
		Size: 135.1 KB (135073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305308c436603735cf72aae64a51ee0dd8836a2b1605bed357add60e3c5a6841`  
		Last Modified: Mon, 16 Oct 2017 23:48:39 GMT  
		Size: 12.2 MB (12212213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.0` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7f6695fc78cc37ecbe46d0355367673af7457af9a0534eb1cf688fbfcd137a6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12039618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f2110b5f8bfbc68fb50c236e206ff331fcf66d1e2d9dc9ad5e881cd493cd32`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Tue, 17 Oct 2017 04:54:48 GMT
COPY file:06131bd45ca2dc0429fa8370374788df576862b04cadfb75cda6a7a0ca437121 in / 
# Tue, 17 Oct 2017 04:54:49 GMT
EXPOSE 80/tcp
# Tue, 17 Oct 2017 04:54:49 GMT
ENTRYPOINT ["/traefik"]
# Tue, 17 Oct 2017 04:54:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab463d8d5f535c4157f38b395dfbab5aefcd7fa6767d74c83594ab1a6efcd424`  
		Last Modified: Tue, 17 Oct 2017 04:55:17 GMT  
		Size: 11.9 MB (11904581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.0-alpine`

```console
$ docker pull traefik@sha256:14b4cf8ada48a1eeb5c7024a35766d0c319710625079b90cb91da7a77166d5c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.4.0-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:0acd867a486e0589fa6e600db4c0869fecfb9d777db7dc4e7c98098f10e393b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15545601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9542d0c874d180048f4da582010e76ded226d1c878d4e77681440560107e6d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 16 Oct 2017 18:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 16 Oct 2017 18:48:47 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 16 Oct 2017 18:48:47 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 18:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Oct 2017 18:48:47 GMT
CMD ["traefik"]
# Mon, 16 Oct 2017 18:48:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690da7be984deafe90a6af23d8afd106994491a9c83c7914b48b31d056b063ca`  
		Last Modified: Mon, 18 Sep 2017 19:37:01 GMT  
		Size: 351.4 KB (351350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd0fb074fafa62a96dbc669ef41607a47945b5f01f18e52c5bb32d2c36812f2`  
		Last Modified: Mon, 16 Oct 2017 18:49:57 GMT  
		Size: 13.2 MB (13203510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee8516667533c370cacd2074f3b1725a991f47c37b7c8a086a0e33f9662faa1`  
		Last Modified: Mon, 16 Oct 2017 18:49:54 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4-alpine`

```console
$ docker pull traefik@sha256:14b4cf8ada48a1eeb5c7024a35766d0c319710625079b90cb91da7a77166d5c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:0acd867a486e0589fa6e600db4c0869fecfb9d777db7dc4e7c98098f10e393b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15545601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9542d0c874d180048f4da582010e76ded226d1c878d4e77681440560107e6d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 16 Oct 2017 18:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 16 Oct 2017 18:48:47 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 16 Oct 2017 18:48:47 GMT
EXPOSE 80/tcp
# Mon, 16 Oct 2017 18:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 16 Oct 2017 18:48:47 GMT
CMD ["traefik"]
# Mon, 16 Oct 2017 18:48:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690da7be984deafe90a6af23d8afd106994491a9c83c7914b48b31d056b063ca`  
		Last Modified: Mon, 18 Sep 2017 19:37:01 GMT  
		Size: 351.4 KB (351350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd0fb074fafa62a96dbc669ef41607a47945b5f01f18e52c5bb32d2c36812f2`  
		Last Modified: Mon, 16 Oct 2017 18:49:57 GMT  
		Size: 13.2 MB (13203510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee8516667533c370cacd2074f3b1725a991f47c37b7c8a086a0e33f9662faa1`  
		Last Modified: Mon, 16 Oct 2017 18:49:54 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
