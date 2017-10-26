<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.4`](#traefik14)
-	[`traefik:1.4.1`](#traefik141)
-	[`traefik:1.4.1-alpine`](#traefik141-alpine)
-	[`traefik:1.4-alpine`](#traefik14-alpine)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:roquefort`](#traefikroquefort)
-	[`traefik:roquefort-alpine`](#traefikroquefort-alpine)
-	[`traefik:v1.4`](#traefikv14)
-	[`traefik:v1.4.1`](#traefikv141)
-	[`traefik:v1.4.1-alpine`](#traefikv141-alpine)
-	[`traefik:v1.4-alpine`](#traefikv14-alpine)

## `traefik:1.4`

```console
$ docker pull traefik@sha256:c5d3bb16241d69833e375dbc1298d9942cd176b1e97312e7e5ef1ce011b83c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4` - linux; amd64

```console
$ docker pull traefik@sha256:eb92338bcbd1a2b6ff98832b6ab539a4fc4e714f8213f32ffce2d0632a07fe6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13193119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83df6581f3d9658fef454a66d9ed9c79774c3d59c1def879945f4757b2c3f8d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 18:51:12 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 24 Oct 2017 18:51:13 GMT
COPY file:470815d0f39bbb3df63939530ffd04e2d6e48fbe278528bb93c18fa33984e88a in / 
# Tue, 24 Oct 2017 18:51:13 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 18:51:13 GMT
ENTRYPOINT ["/traefik"]
# Tue, 24 Oct 2017 18:51:13 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1fbc98b7c6231e23fa413b920f98bcbddba9e5f01b69be1f9dc02295e7ebde31`  
		Last Modified: Tue, 24 Oct 2017 18:51:48 GMT  
		Size: 155.2 KB (155153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455d82df7cca2585a62eda7850197d14fcf7d277b2dd67bff6a6dd20c7c87860`  
		Last Modified: Tue, 24 Oct 2017 18:51:51 GMT  
		Size: 13.0 MB (13037966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:2764eaf3a7ad85e06f94a6b22b68372657f2a7933b7b16e7515987f3f6b0e9a3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12368875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d412fb75ed9d7c74575e601247344ab325149d18e56268a609058da8b275beb`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 24 Oct 2017 23:48:29 GMT
COPY file:7fd7d604d7a0b94a60170a71dea26f66d216828723cd7861a99631f72951958a in / 
# Tue, 24 Oct 2017 23:48:29 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 23:48:29 GMT
ENTRYPOINT ["/traefik"]
# Tue, 24 Oct 2017 23:48:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd671d3a793184061b89e865ff6f45026d80210fafb2a5232b0272ef79ee006e`  
		Last Modified: Tue, 24 Oct 2017 23:48:39 GMT  
		Size: 12.2 MB (12213691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4ba7fefb2960290687fef19d3d106a8afe81688b12dd28acab9f921f71994f40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12061652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189e5b7b44a7fea175b0b3eb0289d241e2711be201407c15857ee07561782efc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 25 Oct 2017 04:54:41 GMT
COPY file:22c0d485540ef558c8cbc7c42b391dd97c9401a3128bddf4c643bc2ed63b9397 in / 
# Wed, 25 Oct 2017 04:54:41 GMT
EXPOSE 80/tcp
# Wed, 25 Oct 2017 04:54:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 25 Oct 2017 04:54:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea36c96e2e8e565a5172481f326e6c83905135747a413ddb16b0371edab2b85a`  
		Last Modified: Wed, 25 Oct 2017 04:55:05 GMT  
		Size: 11.9 MB (11906501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.1`

```console
$ docker pull traefik@sha256:c5d3bb16241d69833e375dbc1298d9942cd176b1e97312e7e5ef1ce011b83c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4.1` - linux; amd64

```console
$ docker pull traefik@sha256:eb92338bcbd1a2b6ff98832b6ab539a4fc4e714f8213f32ffce2d0632a07fe6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13193119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83df6581f3d9658fef454a66d9ed9c79774c3d59c1def879945f4757b2c3f8d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 18:51:12 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 24 Oct 2017 18:51:13 GMT
COPY file:470815d0f39bbb3df63939530ffd04e2d6e48fbe278528bb93c18fa33984e88a in / 
# Tue, 24 Oct 2017 18:51:13 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 18:51:13 GMT
ENTRYPOINT ["/traefik"]
# Tue, 24 Oct 2017 18:51:13 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1fbc98b7c6231e23fa413b920f98bcbddba9e5f01b69be1f9dc02295e7ebde31`  
		Last Modified: Tue, 24 Oct 2017 18:51:48 GMT  
		Size: 155.2 KB (155153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455d82df7cca2585a62eda7850197d14fcf7d277b2dd67bff6a6dd20c7c87860`  
		Last Modified: Tue, 24 Oct 2017 18:51:51 GMT  
		Size: 13.0 MB (13037966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.1` - linux; arm variant v6

```console
$ docker pull traefik@sha256:2764eaf3a7ad85e06f94a6b22b68372657f2a7933b7b16e7515987f3f6b0e9a3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12368875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d412fb75ed9d7c74575e601247344ab325149d18e56268a609058da8b275beb`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 24 Oct 2017 23:48:29 GMT
COPY file:7fd7d604d7a0b94a60170a71dea26f66d216828723cd7861a99631f72951958a in / 
# Tue, 24 Oct 2017 23:48:29 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 23:48:29 GMT
ENTRYPOINT ["/traefik"]
# Tue, 24 Oct 2017 23:48:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd671d3a793184061b89e865ff6f45026d80210fafb2a5232b0272ef79ee006e`  
		Last Modified: Tue, 24 Oct 2017 23:48:39 GMT  
		Size: 12.2 MB (12213691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.1` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4ba7fefb2960290687fef19d3d106a8afe81688b12dd28acab9f921f71994f40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12061652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189e5b7b44a7fea175b0b3eb0289d241e2711be201407c15857ee07561782efc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 25 Oct 2017 04:54:41 GMT
COPY file:22c0d485540ef558c8cbc7c42b391dd97c9401a3128bddf4c643bc2ed63b9397 in / 
# Wed, 25 Oct 2017 04:54:41 GMT
EXPOSE 80/tcp
# Wed, 25 Oct 2017 04:54:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 25 Oct 2017 04:54:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea36c96e2e8e565a5172481f326e6c83905135747a413ddb16b0371edab2b85a`  
		Last Modified: Wed, 25 Oct 2017 04:55:05 GMT  
		Size: 11.9 MB (11906501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.1-alpine`

```console
$ docker pull traefik@sha256:6557adf3f4e3ec101f59f1d419f69ab22bf56b02bc6c14750461bc8818061be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.4.1-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c5d934986141bf4e6ad281a89dde7bf733433c79e48b14e216241e73c19a7252
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15548546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68807688083b217121375bd55c1b8c9f04ce58f150b83fdf267e7670065284b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:28:32 GMT
RUN apk --no-cache add ca-certificates
# Thu, 26 Oct 2017 03:28:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 26 Oct 2017 03:28:39 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 26 Oct 2017 03:28:40 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 03:28:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:28:40 GMT
CMD ["traefik"]
# Thu, 26 Oct 2017 03:28:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622747cc946a37d8aa652fc32408ee06d13a065a53079ee5d44f017ad1d2bff0`  
		Last Modified: Thu, 26 Oct 2017 03:28:55 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ac1701549af1c2e83b9185d9e01a6442ab3a96077e7d12b03b4dfad821d792`  
		Last Modified: Thu, 26 Oct 2017 03:28:57 GMT  
		Size: 13.2 MB (13205779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625397284ae34b5e9ea040f0019c41cc48ac5be1b3a65a73f4b166a618e9cf81`  
		Last Modified: Thu, 26 Oct 2017 03:28:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4-alpine`

```console
$ docker pull traefik@sha256:6557adf3f4e3ec101f59f1d419f69ab22bf56b02bc6c14750461bc8818061be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c5d934986141bf4e6ad281a89dde7bf733433c79e48b14e216241e73c19a7252
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15548546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68807688083b217121375bd55c1b8c9f04ce58f150b83fdf267e7670065284b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:28:32 GMT
RUN apk --no-cache add ca-certificates
# Thu, 26 Oct 2017 03:28:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 26 Oct 2017 03:28:39 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 26 Oct 2017 03:28:40 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 03:28:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:28:40 GMT
CMD ["traefik"]
# Thu, 26 Oct 2017 03:28:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622747cc946a37d8aa652fc32408ee06d13a065a53079ee5d44f017ad1d2bff0`  
		Last Modified: Thu, 26 Oct 2017 03:28:55 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ac1701549af1c2e83b9185d9e01a6442ab3a96077e7d12b03b4dfad821d792`  
		Last Modified: Thu, 26 Oct 2017 03:28:57 GMT  
		Size: 13.2 MB (13205779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625397284ae34b5e9ea040f0019c41cc48ac5be1b3a65a73f4b166a618e9cf81`  
		Last Modified: Thu, 26 Oct 2017 03:28:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:6557adf3f4e3ec101f59f1d419f69ab22bf56b02bc6c14750461bc8818061be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c5d934986141bf4e6ad281a89dde7bf733433c79e48b14e216241e73c19a7252
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15548546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68807688083b217121375bd55c1b8c9f04ce58f150b83fdf267e7670065284b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:28:32 GMT
RUN apk --no-cache add ca-certificates
# Thu, 26 Oct 2017 03:28:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 26 Oct 2017 03:28:39 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 26 Oct 2017 03:28:40 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 03:28:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:28:40 GMT
CMD ["traefik"]
# Thu, 26 Oct 2017 03:28:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622747cc946a37d8aa652fc32408ee06d13a065a53079ee5d44f017ad1d2bff0`  
		Last Modified: Thu, 26 Oct 2017 03:28:55 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ac1701549af1c2e83b9185d9e01a6442ab3a96077e7d12b03b4dfad821d792`  
		Last Modified: Thu, 26 Oct 2017 03:28:57 GMT  
		Size: 13.2 MB (13205779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625397284ae34b5e9ea040f0019c41cc48ac5be1b3a65a73f4b166a618e9cf81`  
		Last Modified: Thu, 26 Oct 2017 03:28:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:c5d3bb16241d69833e375dbc1298d9942cd176b1e97312e7e5ef1ce011b83c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:eb92338bcbd1a2b6ff98832b6ab539a4fc4e714f8213f32ffce2d0632a07fe6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13193119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83df6581f3d9658fef454a66d9ed9c79774c3d59c1def879945f4757b2c3f8d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 18:51:12 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 24 Oct 2017 18:51:13 GMT
COPY file:470815d0f39bbb3df63939530ffd04e2d6e48fbe278528bb93c18fa33984e88a in / 
# Tue, 24 Oct 2017 18:51:13 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 18:51:13 GMT
ENTRYPOINT ["/traefik"]
# Tue, 24 Oct 2017 18:51:13 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1fbc98b7c6231e23fa413b920f98bcbddba9e5f01b69be1f9dc02295e7ebde31`  
		Last Modified: Tue, 24 Oct 2017 18:51:48 GMT  
		Size: 155.2 KB (155153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455d82df7cca2585a62eda7850197d14fcf7d277b2dd67bff6a6dd20c7c87860`  
		Last Modified: Tue, 24 Oct 2017 18:51:51 GMT  
		Size: 13.0 MB (13037966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:2764eaf3a7ad85e06f94a6b22b68372657f2a7933b7b16e7515987f3f6b0e9a3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12368875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d412fb75ed9d7c74575e601247344ab325149d18e56268a609058da8b275beb`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 24 Oct 2017 23:48:29 GMT
COPY file:7fd7d604d7a0b94a60170a71dea26f66d216828723cd7861a99631f72951958a in / 
# Tue, 24 Oct 2017 23:48:29 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 23:48:29 GMT
ENTRYPOINT ["/traefik"]
# Tue, 24 Oct 2017 23:48:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd671d3a793184061b89e865ff6f45026d80210fafb2a5232b0272ef79ee006e`  
		Last Modified: Tue, 24 Oct 2017 23:48:39 GMT  
		Size: 12.2 MB (12213691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4ba7fefb2960290687fef19d3d106a8afe81688b12dd28acab9f921f71994f40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12061652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189e5b7b44a7fea175b0b3eb0289d241e2711be201407c15857ee07561782efc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 25 Oct 2017 04:54:41 GMT
COPY file:22c0d485540ef558c8cbc7c42b391dd97c9401a3128bddf4c643bc2ed63b9397 in / 
# Wed, 25 Oct 2017 04:54:41 GMT
EXPOSE 80/tcp
# Wed, 25 Oct 2017 04:54:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 25 Oct 2017 04:54:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea36c96e2e8e565a5172481f326e6c83905135747a413ddb16b0371edab2b85a`  
		Last Modified: Wed, 25 Oct 2017 04:55:05 GMT  
		Size: 11.9 MB (11906501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort`

```console
$ docker pull traefik@sha256:c5d3bb16241d69833e375dbc1298d9942cd176b1e97312e7e5ef1ce011b83c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:roquefort` - linux; amd64

```console
$ docker pull traefik@sha256:eb92338bcbd1a2b6ff98832b6ab539a4fc4e714f8213f32ffce2d0632a07fe6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13193119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83df6581f3d9658fef454a66d9ed9c79774c3d59c1def879945f4757b2c3f8d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 18:51:12 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 24 Oct 2017 18:51:13 GMT
COPY file:470815d0f39bbb3df63939530ffd04e2d6e48fbe278528bb93c18fa33984e88a in / 
# Tue, 24 Oct 2017 18:51:13 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 18:51:13 GMT
ENTRYPOINT ["/traefik"]
# Tue, 24 Oct 2017 18:51:13 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1fbc98b7c6231e23fa413b920f98bcbddba9e5f01b69be1f9dc02295e7ebde31`  
		Last Modified: Tue, 24 Oct 2017 18:51:48 GMT  
		Size: 155.2 KB (155153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455d82df7cca2585a62eda7850197d14fcf7d277b2dd67bff6a6dd20c7c87860`  
		Last Modified: Tue, 24 Oct 2017 18:51:51 GMT  
		Size: 13.0 MB (13037966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm variant v6

```console
$ docker pull traefik@sha256:2764eaf3a7ad85e06f94a6b22b68372657f2a7933b7b16e7515987f3f6b0e9a3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12368875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d412fb75ed9d7c74575e601247344ab325149d18e56268a609058da8b275beb`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 24 Oct 2017 23:48:29 GMT
COPY file:7fd7d604d7a0b94a60170a71dea26f66d216828723cd7861a99631f72951958a in / 
# Tue, 24 Oct 2017 23:48:29 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 23:48:29 GMT
ENTRYPOINT ["/traefik"]
# Tue, 24 Oct 2017 23:48:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd671d3a793184061b89e865ff6f45026d80210fafb2a5232b0272ef79ee006e`  
		Last Modified: Tue, 24 Oct 2017 23:48:39 GMT  
		Size: 12.2 MB (12213691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4ba7fefb2960290687fef19d3d106a8afe81688b12dd28acab9f921f71994f40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12061652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189e5b7b44a7fea175b0b3eb0289d241e2711be201407c15857ee07561782efc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 25 Oct 2017 04:54:41 GMT
COPY file:22c0d485540ef558c8cbc7c42b391dd97c9401a3128bddf4c643bc2ed63b9397 in / 
# Wed, 25 Oct 2017 04:54:41 GMT
EXPOSE 80/tcp
# Wed, 25 Oct 2017 04:54:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 25 Oct 2017 04:54:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea36c96e2e8e565a5172481f326e6c83905135747a413ddb16b0371edab2b85a`  
		Last Modified: Wed, 25 Oct 2017 04:55:05 GMT  
		Size: 11.9 MB (11906501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:6557adf3f4e3ec101f59f1d419f69ab22bf56b02bc6c14750461bc8818061be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:roquefort-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c5d934986141bf4e6ad281a89dde7bf733433c79e48b14e216241e73c19a7252
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15548546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68807688083b217121375bd55c1b8c9f04ce58f150b83fdf267e7670065284b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:28:32 GMT
RUN apk --no-cache add ca-certificates
# Thu, 26 Oct 2017 03:28:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 26 Oct 2017 03:28:39 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 26 Oct 2017 03:28:40 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 03:28:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:28:40 GMT
CMD ["traefik"]
# Thu, 26 Oct 2017 03:28:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622747cc946a37d8aa652fc32408ee06d13a065a53079ee5d44f017ad1d2bff0`  
		Last Modified: Thu, 26 Oct 2017 03:28:55 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ac1701549af1c2e83b9185d9e01a6442ab3a96077e7d12b03b4dfad821d792`  
		Last Modified: Thu, 26 Oct 2017 03:28:57 GMT  
		Size: 13.2 MB (13205779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625397284ae34b5e9ea040f0019c41cc48ac5be1b3a65a73f4b166a618e9cf81`  
		Last Modified: Thu, 26 Oct 2017 03:28:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4`

```console
$ docker pull traefik@sha256:c5d3bb16241d69833e375dbc1298d9942cd176b1e97312e7e5ef1ce011b83c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4` - linux; amd64

```console
$ docker pull traefik@sha256:eb92338bcbd1a2b6ff98832b6ab539a4fc4e714f8213f32ffce2d0632a07fe6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13193119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83df6581f3d9658fef454a66d9ed9c79774c3d59c1def879945f4757b2c3f8d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 18:51:12 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 24 Oct 2017 18:51:13 GMT
COPY file:470815d0f39bbb3df63939530ffd04e2d6e48fbe278528bb93c18fa33984e88a in / 
# Tue, 24 Oct 2017 18:51:13 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 18:51:13 GMT
ENTRYPOINT ["/traefik"]
# Tue, 24 Oct 2017 18:51:13 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1fbc98b7c6231e23fa413b920f98bcbddba9e5f01b69be1f9dc02295e7ebde31`  
		Last Modified: Tue, 24 Oct 2017 18:51:48 GMT  
		Size: 155.2 KB (155153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455d82df7cca2585a62eda7850197d14fcf7d277b2dd67bff6a6dd20c7c87860`  
		Last Modified: Tue, 24 Oct 2017 18:51:51 GMT  
		Size: 13.0 MB (13037966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:2764eaf3a7ad85e06f94a6b22b68372657f2a7933b7b16e7515987f3f6b0e9a3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12368875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d412fb75ed9d7c74575e601247344ab325149d18e56268a609058da8b275beb`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 24 Oct 2017 23:48:29 GMT
COPY file:7fd7d604d7a0b94a60170a71dea26f66d216828723cd7861a99631f72951958a in / 
# Tue, 24 Oct 2017 23:48:29 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 23:48:29 GMT
ENTRYPOINT ["/traefik"]
# Tue, 24 Oct 2017 23:48:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd671d3a793184061b89e865ff6f45026d80210fafb2a5232b0272ef79ee006e`  
		Last Modified: Tue, 24 Oct 2017 23:48:39 GMT  
		Size: 12.2 MB (12213691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4ba7fefb2960290687fef19d3d106a8afe81688b12dd28acab9f921f71994f40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12061652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189e5b7b44a7fea175b0b3eb0289d241e2711be201407c15857ee07561782efc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 25 Oct 2017 04:54:41 GMT
COPY file:22c0d485540ef558c8cbc7c42b391dd97c9401a3128bddf4c643bc2ed63b9397 in / 
# Wed, 25 Oct 2017 04:54:41 GMT
EXPOSE 80/tcp
# Wed, 25 Oct 2017 04:54:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 25 Oct 2017 04:54:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea36c96e2e8e565a5172481f326e6c83905135747a413ddb16b0371edab2b85a`  
		Last Modified: Wed, 25 Oct 2017 04:55:05 GMT  
		Size: 11.9 MB (11906501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.1`

```console
$ docker pull traefik@sha256:c5d3bb16241d69833e375dbc1298d9942cd176b1e97312e7e5ef1ce011b83c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4.1` - linux; amd64

```console
$ docker pull traefik@sha256:eb92338bcbd1a2b6ff98832b6ab539a4fc4e714f8213f32ffce2d0632a07fe6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13193119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83df6581f3d9658fef454a66d9ed9c79774c3d59c1def879945f4757b2c3f8d6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 18:51:12 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 24 Oct 2017 18:51:13 GMT
COPY file:470815d0f39bbb3df63939530ffd04e2d6e48fbe278528bb93c18fa33984e88a in / 
# Tue, 24 Oct 2017 18:51:13 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 18:51:13 GMT
ENTRYPOINT ["/traefik"]
# Tue, 24 Oct 2017 18:51:13 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1fbc98b7c6231e23fa413b920f98bcbddba9e5f01b69be1f9dc02295e7ebde31`  
		Last Modified: Tue, 24 Oct 2017 18:51:48 GMT  
		Size: 155.2 KB (155153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455d82df7cca2585a62eda7850197d14fcf7d277b2dd67bff6a6dd20c7c87860`  
		Last Modified: Tue, 24 Oct 2017 18:51:51 GMT  
		Size: 13.0 MB (13037966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.1` - linux; arm variant v6

```console
$ docker pull traefik@sha256:2764eaf3a7ad85e06f94a6b22b68372657f2a7933b7b16e7515987f3f6b0e9a3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12368875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d412fb75ed9d7c74575e601247344ab325149d18e56268a609058da8b275beb`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 24 Oct 2017 23:48:29 GMT
COPY file:7fd7d604d7a0b94a60170a71dea26f66d216828723cd7861a99631f72951958a in / 
# Tue, 24 Oct 2017 23:48:29 GMT
EXPOSE 80/tcp
# Tue, 24 Oct 2017 23:48:29 GMT
ENTRYPOINT ["/traefik"]
# Tue, 24 Oct 2017 23:48:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd671d3a793184061b89e865ff6f45026d80210fafb2a5232b0272ef79ee006e`  
		Last Modified: Tue, 24 Oct 2017 23:48:39 GMT  
		Size: 12.2 MB (12213691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.1` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:4ba7fefb2960290687fef19d3d106a8afe81688b12dd28acab9f921f71994f40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12061652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189e5b7b44a7fea175b0b3eb0289d241e2711be201407c15857ee07561782efc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 25 Oct 2017 04:54:41 GMT
COPY file:22c0d485540ef558c8cbc7c42b391dd97c9401a3128bddf4c643bc2ed63b9397 in / 
# Wed, 25 Oct 2017 04:54:41 GMT
EXPOSE 80/tcp
# Wed, 25 Oct 2017 04:54:42 GMT
ENTRYPOINT ["/traefik"]
# Wed, 25 Oct 2017 04:54:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea36c96e2e8e565a5172481f326e6c83905135747a413ddb16b0371edab2b85a`  
		Last Modified: Wed, 25 Oct 2017 04:55:05 GMT  
		Size: 11.9 MB (11906501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.1-alpine`

```console
$ docker pull traefik@sha256:6557adf3f4e3ec101f59f1d419f69ab22bf56b02bc6c14750461bc8818061be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.4.1-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c5d934986141bf4e6ad281a89dde7bf733433c79e48b14e216241e73c19a7252
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15548546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68807688083b217121375bd55c1b8c9f04ce58f150b83fdf267e7670065284b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:28:32 GMT
RUN apk --no-cache add ca-certificates
# Thu, 26 Oct 2017 03:28:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 26 Oct 2017 03:28:39 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 26 Oct 2017 03:28:40 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 03:28:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:28:40 GMT
CMD ["traefik"]
# Thu, 26 Oct 2017 03:28:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622747cc946a37d8aa652fc32408ee06d13a065a53079ee5d44f017ad1d2bff0`  
		Last Modified: Thu, 26 Oct 2017 03:28:55 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ac1701549af1c2e83b9185d9e01a6442ab3a96077e7d12b03b4dfad821d792`  
		Last Modified: Thu, 26 Oct 2017 03:28:57 GMT  
		Size: 13.2 MB (13205779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625397284ae34b5e9ea040f0019c41cc48ac5be1b3a65a73f4b166a618e9cf81`  
		Last Modified: Thu, 26 Oct 2017 03:28:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4-alpine`

```console
$ docker pull traefik@sha256:6557adf3f4e3ec101f59f1d419f69ab22bf56b02bc6c14750461bc8818061be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c5d934986141bf4e6ad281a89dde7bf733433c79e48b14e216241e73c19a7252
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15548546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68807688083b217121375bd55c1b8c9f04ce58f150b83fdf267e7670065284b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:28:32 GMT
RUN apk --no-cache add ca-certificates
# Thu, 26 Oct 2017 03:28:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.1/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 26 Oct 2017 03:28:39 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 26 Oct 2017 03:28:40 GMT
EXPOSE 80/tcp
# Thu, 26 Oct 2017 03:28:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Oct 2017 03:28:40 GMT
CMD ["traefik"]
# Thu, 26 Oct 2017 03:28:40 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622747cc946a37d8aa652fc32408ee06d13a065a53079ee5d44f017ad1d2bff0`  
		Last Modified: Thu, 26 Oct 2017 03:28:55 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ac1701549af1c2e83b9185d9e01a6442ab3a96077e7d12b03b4dfad821d792`  
		Last Modified: Thu, 26 Oct 2017 03:28:57 GMT  
		Size: 13.2 MB (13205779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625397284ae34b5e9ea040f0019c41cc48ac5be1b3a65a73f4b166a618e9cf81`  
		Last Modified: Thu, 26 Oct 2017 03:28:54 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
