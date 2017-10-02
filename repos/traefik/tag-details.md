<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.3`](#traefik13)
-	[`traefik:1.3.8`](#traefik138)
-	[`traefik:1.3.8-alpine`](#traefik138-alpine)
-	[`traefik:1.3-alpine`](#traefik13-alpine)
-	[`traefik:1.4`](#traefik14)
-	[`traefik:1.4.0-rc4`](#traefik140-rc4)
-	[`traefik:1.4.0-rc4-alpine`](#traefik140-rc4-alpine)
-	[`traefik:1.4-alpine`](#traefik14-alpine)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:raclette`](#traefikraclette)
-	[`traefik:raclette-alpine`](#traefikraclette-alpine)
-	[`traefik:roquefort`](#traefikroquefort)
-	[`traefik:roquefort-alpine`](#traefikroquefort-alpine)
-	[`traefik:v1.3`](#traefikv13)
-	[`traefik:v1.3.8`](#traefikv138)
-	[`traefik:v1.3.8-alpine`](#traefikv138-alpine)
-	[`traefik:v1.3-alpine`](#traefikv13-alpine)
-	[`traefik:v1.4`](#traefikv14)
-	[`traefik:v1.4.0-rc4`](#traefikv140-rc4)
-	[`traefik:v1.4.0-rc4-alpine`](#traefikv140-rc4-alpine)
-	[`traefik:v1.4-alpine`](#traefikv14-alpine)

## `traefik:1.3`

```console
$ docker pull traefik@sha256:90697fb79a104520f350a3a1db6402584f473301ab6d1a71d264758b65fa232e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.3` - linux; amd64

```console
$ docker pull traefik@sha256:d9c3e98f0dc60974031cc08b06127f0a81c8f1dc77a24f9b288595e12d982ebc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12961982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:354534eab50da62c112125f1acb67b0c1d5e779ba665c53ad85c66513f2e88d0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 13 Sep 2017 04:48:56 GMT
COPY file:fbed2852269667c12ff28ccf5da16f6b38aeb3a303c8932e8ce6160c33df5016 in / 
# Wed, 13 Sep 2017 04:48:56 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:48:56 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Sep 2017 04:48:56 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89717890ed7fa0bfde39df0f783b21b4ebdd8d4d2bfe77db949efd09b945a83b`  
		Last Modified: Wed, 13 Sep 2017 04:50:03 GMT  
		Size: 12.8 MB (12826943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4e13daeb8a68016f10fc55e8d1055f8ebd8cf0f38b981383daccd6df87c9ab45
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11636178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7872a2dfd3c9707c03403eee80aeeee095bd8698526483ec37ac9b310f0198d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 27 Sep 2017 03:23:59 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 27 Sep 2017 03:24:07 GMT
COPY file:efefc44a986146c1e7f6784bf34068131455177f3cc6f47459f3e5f509ba2851 in / 
# Wed, 27 Sep 2017 03:24:08 GMT
EXPOSE 80/tcp
# Wed, 27 Sep 2017 03:24:08 GMT
ENTRYPOINT ["/traefik"]
# Wed, 27 Sep 2017 03:24:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:047ee6a8ab25d2b192fd6a096e61910c5f95ccded229f6d6332ee92f0af0063b`  
		Last Modified: Wed, 27 Sep 2017 03:24:17 GMT  
		Size: 135.1 KB (135073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d857ae678378f1656e24a3b4f90713e34b4b017f29f69c5d7e8fd842c3d237`  
		Last Modified: Wed, 27 Sep 2017 03:24:32 GMT  
		Size: 11.5 MB (11501105 bytes)  
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

## `traefik:1.3.8`

```console
$ docker pull traefik@sha256:90697fb79a104520f350a3a1db6402584f473301ab6d1a71d264758b65fa232e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.3.8` - linux; amd64

```console
$ docker pull traefik@sha256:d9c3e98f0dc60974031cc08b06127f0a81c8f1dc77a24f9b288595e12d982ebc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12961982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:354534eab50da62c112125f1acb67b0c1d5e779ba665c53ad85c66513f2e88d0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 13 Sep 2017 04:48:56 GMT
COPY file:fbed2852269667c12ff28ccf5da16f6b38aeb3a303c8932e8ce6160c33df5016 in / 
# Wed, 13 Sep 2017 04:48:56 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:48:56 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Sep 2017 04:48:56 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89717890ed7fa0bfde39df0f783b21b4ebdd8d4d2bfe77db949efd09b945a83b`  
		Last Modified: Wed, 13 Sep 2017 04:50:03 GMT  
		Size: 12.8 MB (12826943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.3.8` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4e13daeb8a68016f10fc55e8d1055f8ebd8cf0f38b981383daccd6df87c9ab45
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11636178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7872a2dfd3c9707c03403eee80aeeee095bd8698526483ec37ac9b310f0198d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 27 Sep 2017 03:23:59 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 27 Sep 2017 03:24:07 GMT
COPY file:efefc44a986146c1e7f6784bf34068131455177f3cc6f47459f3e5f509ba2851 in / 
# Wed, 27 Sep 2017 03:24:08 GMT
EXPOSE 80/tcp
# Wed, 27 Sep 2017 03:24:08 GMT
ENTRYPOINT ["/traefik"]
# Wed, 27 Sep 2017 03:24:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:047ee6a8ab25d2b192fd6a096e61910c5f95ccded229f6d6332ee92f0af0063b`  
		Last Modified: Wed, 27 Sep 2017 03:24:17 GMT  
		Size: 135.1 KB (135073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d857ae678378f1656e24a3b4f90713e34b4b017f29f69c5d7e8fd842c3d237`  
		Last Modified: Wed, 27 Sep 2017 03:24:32 GMT  
		Size: 11.5 MB (11501105 bytes)  
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

## `traefik:1.3.8-alpine`

```console
$ docker pull traefik@sha256:882bd8f818de9437be8d8bf6c6eeddaa03f43ed92173c2bf2cb1017c8007c65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.3.8-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:2ee454e68fe274a1e6daf103bb051082179ebf449c24c3010da921a91dfa1e38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d95023f9ce9e4b655a9b7cd61a94dfa1a17b21038b83fdb87859a6e0c1b15a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 18 Sep 2017 19:36:14 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 18 Sep 2017 19:36:15 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 18 Sep 2017 19:36:15 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:36:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 19:36:15 GMT
CMD ["traefik"]
# Mon, 18 Sep 2017 19:36:15 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1bf4bd1966dd6bd12b2296c6d77fef149b96e6739897310350c2ace52dd5135b`  
		Last Modified: Mon, 18 Sep 2017 19:37:35 GMT  
		Size: 13.0 MB (12993555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fe078b14dae64bede97a388b2b38920330f351c95f75e9929dcae559ecf950`  
		Last Modified: Mon, 18 Sep 2017 19:37:32 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.3-alpine`

```console
$ docker pull traefik@sha256:882bd8f818de9437be8d8bf6c6eeddaa03f43ed92173c2bf2cb1017c8007c65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:2ee454e68fe274a1e6daf103bb051082179ebf449c24c3010da921a91dfa1e38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d95023f9ce9e4b655a9b7cd61a94dfa1a17b21038b83fdb87859a6e0c1b15a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 18 Sep 2017 19:36:14 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 18 Sep 2017 19:36:15 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 18 Sep 2017 19:36:15 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:36:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 19:36:15 GMT
CMD ["traefik"]
# Mon, 18 Sep 2017 19:36:15 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1bf4bd1966dd6bd12b2296c6d77fef149b96e6739897310350c2ace52dd5135b`  
		Last Modified: Mon, 18 Sep 2017 19:37:35 GMT  
		Size: 13.0 MB (12993555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fe078b14dae64bede97a388b2b38920330f351c95f75e9929dcae559ecf950`  
		Last Modified: Mon, 18 Sep 2017 19:37:32 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4`

```console
$ docker pull traefik@sha256:2baf44d3ca412670c2b266a859e4573caa95233480abad4255423afb43c6d5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.4` - linux; amd64

```console
$ docker pull traefik@sha256:b52f32cc4e90971a4b86a2f0b15f1455ee28e89ca428e6fbeacfd802ace9b77f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13157437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df885fea2506ec1326f298715c9e58531ed5a7328df778bb20e9bd89c2444d3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 02 Oct 2017 17:48:41 GMT
COPY file:6e35972b52c2c8ab6f4e6813a60b9506fcff508c8233a480f02d1e93257811b3 in / 
# Mon, 02 Oct 2017 17:48:42 GMT
EXPOSE 80/tcp
# Mon, 02 Oct 2017 17:48:42 GMT
ENTRYPOINT ["/traefik"]
# Mon, 02 Oct 2017 17:48:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c8701d0127556af5c0e3e78a1d6ceacd354406d8ea514da7e54028cf7e2359`  
		Last Modified: Mon, 02 Oct 2017 17:49:20 GMT  
		Size: 13.0 MB (13022398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.0-rc4`

```console
$ docker pull traefik@sha256:2baf44d3ca412670c2b266a859e4573caa95233480abad4255423afb43c6d5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.4.0-rc4` - linux; amd64

```console
$ docker pull traefik@sha256:b52f32cc4e90971a4b86a2f0b15f1455ee28e89ca428e6fbeacfd802ace9b77f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13157437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df885fea2506ec1326f298715c9e58531ed5a7328df778bb20e9bd89c2444d3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 02 Oct 2017 17:48:41 GMT
COPY file:6e35972b52c2c8ab6f4e6813a60b9506fcff508c8233a480f02d1e93257811b3 in / 
# Mon, 02 Oct 2017 17:48:42 GMT
EXPOSE 80/tcp
# Mon, 02 Oct 2017 17:48:42 GMT
ENTRYPOINT ["/traefik"]
# Mon, 02 Oct 2017 17:48:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c8701d0127556af5c0e3e78a1d6ceacd354406d8ea514da7e54028cf7e2359`  
		Last Modified: Mon, 02 Oct 2017 17:49:20 GMT  
		Size: 13.0 MB (13022398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.0-rc4-alpine`

```console
$ docker pull traefik@sha256:5e49b921ad21e5248c7a44445b3d4f2e62347cce68ec89a1ef156dfb32a56e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.4.0-rc4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:7eb41c900c9dac63254bbcb5fa23000b2ee480a6832b9821685f7afe2e977c41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15532527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3901e3160b9954dbc93396f79adec37659b5bbd505154d4f95b1d7c5fe44cc5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 02 Oct 2017 17:48:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 02 Oct 2017 17:49:00 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 02 Oct 2017 17:49:00 GMT
EXPOSE 80/tcp
# Mon, 02 Oct 2017 17:49:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Oct 2017 17:49:00 GMT
CMD ["traefik"]
# Mon, 02 Oct 2017 17:49:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b278c5662dff8918ea50003d93c8b8a9066e9a2d2779d2d1ae5b85c0b2425be0`  
		Last Modified: Mon, 02 Oct 2017 17:49:56 GMT  
		Size: 13.2 MB (13190433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e86e985c51495bd9814c7442d932c0b9795451a92c69be27cc84f62b29c1a8`  
		Last Modified: Mon, 02 Oct 2017 17:49:53 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4-alpine`

```console
$ docker pull traefik@sha256:5e49b921ad21e5248c7a44445b3d4f2e62347cce68ec89a1ef156dfb32a56e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:7eb41c900c9dac63254bbcb5fa23000b2ee480a6832b9821685f7afe2e977c41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15532527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3901e3160b9954dbc93396f79adec37659b5bbd505154d4f95b1d7c5fe44cc5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 02 Oct 2017 17:48:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 02 Oct 2017 17:49:00 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 02 Oct 2017 17:49:00 GMT
EXPOSE 80/tcp
# Mon, 02 Oct 2017 17:49:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Oct 2017 17:49:00 GMT
CMD ["traefik"]
# Mon, 02 Oct 2017 17:49:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b278c5662dff8918ea50003d93c8b8a9066e9a2d2779d2d1ae5b85c0b2425be0`  
		Last Modified: Mon, 02 Oct 2017 17:49:56 GMT  
		Size: 13.2 MB (13190433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e86e985c51495bd9814c7442d932c0b9795451a92c69be27cc84f62b29c1a8`  
		Last Modified: Mon, 02 Oct 2017 17:49:53 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:882bd8f818de9437be8d8bf6c6eeddaa03f43ed92173c2bf2cb1017c8007c65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:2ee454e68fe274a1e6daf103bb051082179ebf449c24c3010da921a91dfa1e38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d95023f9ce9e4b655a9b7cd61a94dfa1a17b21038b83fdb87859a6e0c1b15a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 18 Sep 2017 19:36:14 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 18 Sep 2017 19:36:15 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 18 Sep 2017 19:36:15 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:36:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 19:36:15 GMT
CMD ["traefik"]
# Mon, 18 Sep 2017 19:36:15 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1bf4bd1966dd6bd12b2296c6d77fef149b96e6739897310350c2ace52dd5135b`  
		Last Modified: Mon, 18 Sep 2017 19:37:35 GMT  
		Size: 13.0 MB (12993555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fe078b14dae64bede97a388b2b38920330f351c95f75e9929dcae559ecf950`  
		Last Modified: Mon, 18 Sep 2017 19:37:32 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:90697fb79a104520f350a3a1db6402584f473301ab6d1a71d264758b65fa232e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:d9c3e98f0dc60974031cc08b06127f0a81c8f1dc77a24f9b288595e12d982ebc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12961982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:354534eab50da62c112125f1acb67b0c1d5e779ba665c53ad85c66513f2e88d0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 13 Sep 2017 04:48:56 GMT
COPY file:fbed2852269667c12ff28ccf5da16f6b38aeb3a303c8932e8ce6160c33df5016 in / 
# Wed, 13 Sep 2017 04:48:56 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:48:56 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Sep 2017 04:48:56 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89717890ed7fa0bfde39df0f783b21b4ebdd8d4d2bfe77db949efd09b945a83b`  
		Last Modified: Wed, 13 Sep 2017 04:50:03 GMT  
		Size: 12.8 MB (12826943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4e13daeb8a68016f10fc55e8d1055f8ebd8cf0f38b981383daccd6df87c9ab45
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11636178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7872a2dfd3c9707c03403eee80aeeee095bd8698526483ec37ac9b310f0198d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 27 Sep 2017 03:23:59 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 27 Sep 2017 03:24:07 GMT
COPY file:efefc44a986146c1e7f6784bf34068131455177f3cc6f47459f3e5f509ba2851 in / 
# Wed, 27 Sep 2017 03:24:08 GMT
EXPOSE 80/tcp
# Wed, 27 Sep 2017 03:24:08 GMT
ENTRYPOINT ["/traefik"]
# Wed, 27 Sep 2017 03:24:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:047ee6a8ab25d2b192fd6a096e61910c5f95ccded229f6d6332ee92f0af0063b`  
		Last Modified: Wed, 27 Sep 2017 03:24:17 GMT  
		Size: 135.1 KB (135073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d857ae678378f1656e24a3b4f90713e34b4b017f29f69c5d7e8fd842c3d237`  
		Last Modified: Wed, 27 Sep 2017 03:24:32 GMT  
		Size: 11.5 MB (11501105 bytes)  
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

## `traefik:raclette`

```console
$ docker pull traefik@sha256:90697fb79a104520f350a3a1db6402584f473301ab6d1a71d264758b65fa232e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:raclette` - linux; amd64

```console
$ docker pull traefik@sha256:d9c3e98f0dc60974031cc08b06127f0a81c8f1dc77a24f9b288595e12d982ebc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12961982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:354534eab50da62c112125f1acb67b0c1d5e779ba665c53ad85c66513f2e88d0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 13 Sep 2017 04:48:56 GMT
COPY file:fbed2852269667c12ff28ccf5da16f6b38aeb3a303c8932e8ce6160c33df5016 in / 
# Wed, 13 Sep 2017 04:48:56 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:48:56 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Sep 2017 04:48:56 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89717890ed7fa0bfde39df0f783b21b4ebdd8d4d2bfe77db949efd09b945a83b`  
		Last Modified: Wed, 13 Sep 2017 04:50:03 GMT  
		Size: 12.8 MB (12826943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:raclette` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4e13daeb8a68016f10fc55e8d1055f8ebd8cf0f38b981383daccd6df87c9ab45
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11636178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7872a2dfd3c9707c03403eee80aeeee095bd8698526483ec37ac9b310f0198d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 27 Sep 2017 03:23:59 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 27 Sep 2017 03:24:07 GMT
COPY file:efefc44a986146c1e7f6784bf34068131455177f3cc6f47459f3e5f509ba2851 in / 
# Wed, 27 Sep 2017 03:24:08 GMT
EXPOSE 80/tcp
# Wed, 27 Sep 2017 03:24:08 GMT
ENTRYPOINT ["/traefik"]
# Wed, 27 Sep 2017 03:24:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:047ee6a8ab25d2b192fd6a096e61910c5f95ccded229f6d6332ee92f0af0063b`  
		Last Modified: Wed, 27 Sep 2017 03:24:17 GMT  
		Size: 135.1 KB (135073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d857ae678378f1656e24a3b4f90713e34b4b017f29f69c5d7e8fd842c3d237`  
		Last Modified: Wed, 27 Sep 2017 03:24:32 GMT  
		Size: 11.5 MB (11501105 bytes)  
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

## `traefik:raclette-alpine`

```console
$ docker pull traefik@sha256:882bd8f818de9437be8d8bf6c6eeddaa03f43ed92173c2bf2cb1017c8007c65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:raclette-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:2ee454e68fe274a1e6daf103bb051082179ebf449c24c3010da921a91dfa1e38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d95023f9ce9e4b655a9b7cd61a94dfa1a17b21038b83fdb87859a6e0c1b15a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 18 Sep 2017 19:36:14 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 18 Sep 2017 19:36:15 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 18 Sep 2017 19:36:15 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:36:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 19:36:15 GMT
CMD ["traefik"]
# Mon, 18 Sep 2017 19:36:15 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1bf4bd1966dd6bd12b2296c6d77fef149b96e6739897310350c2ace52dd5135b`  
		Last Modified: Mon, 18 Sep 2017 19:37:35 GMT  
		Size: 13.0 MB (12993555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fe078b14dae64bede97a388b2b38920330f351c95f75e9929dcae559ecf950`  
		Last Modified: Mon, 18 Sep 2017 19:37:32 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort`

```console
$ docker pull traefik@sha256:2baf44d3ca412670c2b266a859e4573caa95233480abad4255423afb43c6d5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:roquefort` - linux; amd64

```console
$ docker pull traefik@sha256:b52f32cc4e90971a4b86a2f0b15f1455ee28e89ca428e6fbeacfd802ace9b77f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13157437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df885fea2506ec1326f298715c9e58531ed5a7328df778bb20e9bd89c2444d3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 02 Oct 2017 17:48:41 GMT
COPY file:6e35972b52c2c8ab6f4e6813a60b9506fcff508c8233a480f02d1e93257811b3 in / 
# Mon, 02 Oct 2017 17:48:42 GMT
EXPOSE 80/tcp
# Mon, 02 Oct 2017 17:48:42 GMT
ENTRYPOINT ["/traefik"]
# Mon, 02 Oct 2017 17:48:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c8701d0127556af5c0e3e78a1d6ceacd354406d8ea514da7e54028cf7e2359`  
		Last Modified: Mon, 02 Oct 2017 17:49:20 GMT  
		Size: 13.0 MB (13022398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:5e49b921ad21e5248c7a44445b3d4f2e62347cce68ec89a1ef156dfb32a56e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:roquefort-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:7eb41c900c9dac63254bbcb5fa23000b2ee480a6832b9821685f7afe2e977c41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15532527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3901e3160b9954dbc93396f79adec37659b5bbd505154d4f95b1d7c5fe44cc5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 02 Oct 2017 17:48:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 02 Oct 2017 17:49:00 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 02 Oct 2017 17:49:00 GMT
EXPOSE 80/tcp
# Mon, 02 Oct 2017 17:49:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Oct 2017 17:49:00 GMT
CMD ["traefik"]
# Mon, 02 Oct 2017 17:49:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b278c5662dff8918ea50003d93c8b8a9066e9a2d2779d2d1ae5b85c0b2425be0`  
		Last Modified: Mon, 02 Oct 2017 17:49:56 GMT  
		Size: 13.2 MB (13190433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e86e985c51495bd9814c7442d932c0b9795451a92c69be27cc84f62b29c1a8`  
		Last Modified: Mon, 02 Oct 2017 17:49:53 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.3`

```console
$ docker pull traefik@sha256:90697fb79a104520f350a3a1db6402584f473301ab6d1a71d264758b65fa232e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.3` - linux; amd64

```console
$ docker pull traefik@sha256:d9c3e98f0dc60974031cc08b06127f0a81c8f1dc77a24f9b288595e12d982ebc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12961982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:354534eab50da62c112125f1acb67b0c1d5e779ba665c53ad85c66513f2e88d0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 13 Sep 2017 04:48:56 GMT
COPY file:fbed2852269667c12ff28ccf5da16f6b38aeb3a303c8932e8ce6160c33df5016 in / 
# Wed, 13 Sep 2017 04:48:56 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:48:56 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Sep 2017 04:48:56 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89717890ed7fa0bfde39df0f783b21b4ebdd8d4d2bfe77db949efd09b945a83b`  
		Last Modified: Wed, 13 Sep 2017 04:50:03 GMT  
		Size: 12.8 MB (12826943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4e13daeb8a68016f10fc55e8d1055f8ebd8cf0f38b981383daccd6df87c9ab45
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11636178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7872a2dfd3c9707c03403eee80aeeee095bd8698526483ec37ac9b310f0198d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 27 Sep 2017 03:23:59 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 27 Sep 2017 03:24:07 GMT
COPY file:efefc44a986146c1e7f6784bf34068131455177f3cc6f47459f3e5f509ba2851 in / 
# Wed, 27 Sep 2017 03:24:08 GMT
EXPOSE 80/tcp
# Wed, 27 Sep 2017 03:24:08 GMT
ENTRYPOINT ["/traefik"]
# Wed, 27 Sep 2017 03:24:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:047ee6a8ab25d2b192fd6a096e61910c5f95ccded229f6d6332ee92f0af0063b`  
		Last Modified: Wed, 27 Sep 2017 03:24:17 GMT  
		Size: 135.1 KB (135073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d857ae678378f1656e24a3b4f90713e34b4b017f29f69c5d7e8fd842c3d237`  
		Last Modified: Wed, 27 Sep 2017 03:24:32 GMT  
		Size: 11.5 MB (11501105 bytes)  
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

## `traefik:v1.3.8`

```console
$ docker pull traefik@sha256:90697fb79a104520f350a3a1db6402584f473301ab6d1a71d264758b65fa232e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.3.8` - linux; amd64

```console
$ docker pull traefik@sha256:d9c3e98f0dc60974031cc08b06127f0a81c8f1dc77a24f9b288595e12d982ebc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12961982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:354534eab50da62c112125f1acb67b0c1d5e779ba665c53ad85c66513f2e88d0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 13 Sep 2017 04:48:56 GMT
COPY file:fbed2852269667c12ff28ccf5da16f6b38aeb3a303c8932e8ce6160c33df5016 in / 
# Wed, 13 Sep 2017 04:48:56 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:48:56 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Sep 2017 04:48:56 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89717890ed7fa0bfde39df0f783b21b4ebdd8d4d2bfe77db949efd09b945a83b`  
		Last Modified: Wed, 13 Sep 2017 04:50:03 GMT  
		Size: 12.8 MB (12826943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.3.8` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4e13daeb8a68016f10fc55e8d1055f8ebd8cf0f38b981383daccd6df87c9ab45
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11636178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7872a2dfd3c9707c03403eee80aeeee095bd8698526483ec37ac9b310f0198d4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 27 Sep 2017 03:23:59 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 27 Sep 2017 03:24:07 GMT
COPY file:efefc44a986146c1e7f6784bf34068131455177f3cc6f47459f3e5f509ba2851 in / 
# Wed, 27 Sep 2017 03:24:08 GMT
EXPOSE 80/tcp
# Wed, 27 Sep 2017 03:24:08 GMT
ENTRYPOINT ["/traefik"]
# Wed, 27 Sep 2017 03:24:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:047ee6a8ab25d2b192fd6a096e61910c5f95ccded229f6d6332ee92f0af0063b`  
		Last Modified: Wed, 27 Sep 2017 03:24:17 GMT  
		Size: 135.1 KB (135073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d857ae678378f1656e24a3b4f90713e34b4b017f29f69c5d7e8fd842c3d237`  
		Last Modified: Wed, 27 Sep 2017 03:24:32 GMT  
		Size: 11.5 MB (11501105 bytes)  
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

## `traefik:v1.3.8-alpine`

```console
$ docker pull traefik@sha256:882bd8f818de9437be8d8bf6c6eeddaa03f43ed92173c2bf2cb1017c8007c65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.3.8-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:2ee454e68fe274a1e6daf103bb051082179ebf449c24c3010da921a91dfa1e38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d95023f9ce9e4b655a9b7cd61a94dfa1a17b21038b83fdb87859a6e0c1b15a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 18 Sep 2017 19:36:14 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 18 Sep 2017 19:36:15 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 18 Sep 2017 19:36:15 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:36:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 19:36:15 GMT
CMD ["traefik"]
# Mon, 18 Sep 2017 19:36:15 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1bf4bd1966dd6bd12b2296c6d77fef149b96e6739897310350c2ace52dd5135b`  
		Last Modified: Mon, 18 Sep 2017 19:37:35 GMT  
		Size: 13.0 MB (12993555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fe078b14dae64bede97a388b2b38920330f351c95f75e9929dcae559ecf950`  
		Last Modified: Mon, 18 Sep 2017 19:37:32 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.3-alpine`

```console
$ docker pull traefik@sha256:882bd8f818de9437be8d8bf6c6eeddaa03f43ed92173c2bf2cb1017c8007c65b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:2ee454e68fe274a1e6daf103bb051082179ebf449c24c3010da921a91dfa1e38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d95023f9ce9e4b655a9b7cd61a94dfa1a17b21038b83fdb87859a6e0c1b15a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 18 Sep 2017 19:36:14 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 18 Sep 2017 19:36:15 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 18 Sep 2017 19:36:15 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:36:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 19:36:15 GMT
CMD ["traefik"]
# Mon, 18 Sep 2017 19:36:15 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1bf4bd1966dd6bd12b2296c6d77fef149b96e6739897310350c2ace52dd5135b`  
		Last Modified: Mon, 18 Sep 2017 19:37:35 GMT  
		Size: 13.0 MB (12993555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6fe078b14dae64bede97a388b2b38920330f351c95f75e9929dcae559ecf950`  
		Last Modified: Mon, 18 Sep 2017 19:37:32 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4`

```console
$ docker pull traefik@sha256:2baf44d3ca412670c2b266a859e4573caa95233480abad4255423afb43c6d5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.4` - linux; amd64

```console
$ docker pull traefik@sha256:b52f32cc4e90971a4b86a2f0b15f1455ee28e89ca428e6fbeacfd802ace9b77f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13157437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df885fea2506ec1326f298715c9e58531ed5a7328df778bb20e9bd89c2444d3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 02 Oct 2017 17:48:41 GMT
COPY file:6e35972b52c2c8ab6f4e6813a60b9506fcff508c8233a480f02d1e93257811b3 in / 
# Mon, 02 Oct 2017 17:48:42 GMT
EXPOSE 80/tcp
# Mon, 02 Oct 2017 17:48:42 GMT
ENTRYPOINT ["/traefik"]
# Mon, 02 Oct 2017 17:48:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c8701d0127556af5c0e3e78a1d6ceacd354406d8ea514da7e54028cf7e2359`  
		Last Modified: Mon, 02 Oct 2017 17:49:20 GMT  
		Size: 13.0 MB (13022398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.0-rc4`

```console
$ docker pull traefik@sha256:2baf44d3ca412670c2b266a859e4573caa95233480abad4255423afb43c6d5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.4.0-rc4` - linux; amd64

```console
$ docker pull traefik@sha256:b52f32cc4e90971a4b86a2f0b15f1455ee28e89ca428e6fbeacfd802ace9b77f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13157437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df885fea2506ec1326f298715c9e58531ed5a7328df778bb20e9bd89c2444d3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 02 Oct 2017 17:48:41 GMT
COPY file:6e35972b52c2c8ab6f4e6813a60b9506fcff508c8233a480f02d1e93257811b3 in / 
# Mon, 02 Oct 2017 17:48:42 GMT
EXPOSE 80/tcp
# Mon, 02 Oct 2017 17:48:42 GMT
ENTRYPOINT ["/traefik"]
# Mon, 02 Oct 2017 17:48:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c8701d0127556af5c0e3e78a1d6ceacd354406d8ea514da7e54028cf7e2359`  
		Last Modified: Mon, 02 Oct 2017 17:49:20 GMT  
		Size: 13.0 MB (13022398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.0-rc4-alpine`

```console
$ docker pull traefik@sha256:5e49b921ad21e5248c7a44445b3d4f2e62347cce68ec89a1ef156dfb32a56e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.4.0-rc4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:7eb41c900c9dac63254bbcb5fa23000b2ee480a6832b9821685f7afe2e977c41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15532527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3901e3160b9954dbc93396f79adec37659b5bbd505154d4f95b1d7c5fe44cc5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 02 Oct 2017 17:48:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 02 Oct 2017 17:49:00 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 02 Oct 2017 17:49:00 GMT
EXPOSE 80/tcp
# Mon, 02 Oct 2017 17:49:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Oct 2017 17:49:00 GMT
CMD ["traefik"]
# Mon, 02 Oct 2017 17:49:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b278c5662dff8918ea50003d93c8b8a9066e9a2d2779d2d1ae5b85c0b2425be0`  
		Last Modified: Mon, 02 Oct 2017 17:49:56 GMT  
		Size: 13.2 MB (13190433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e86e985c51495bd9814c7442d932c0b9795451a92c69be27cc84f62b29c1a8`  
		Last Modified: Mon, 02 Oct 2017 17:49:53 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4-alpine`

```console
$ docker pull traefik@sha256:5e49b921ad21e5248c7a44445b3d4f2e62347cce68ec89a1ef156dfb32a56e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:7eb41c900c9dac63254bbcb5fa23000b2ee480a6832b9821685f7afe2e977c41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15532527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3901e3160b9954dbc93396f79adec37659b5bbd505154d4f95b1d7c5fe44cc5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 02 Oct 2017 17:48:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 02 Oct 2017 17:49:00 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 02 Oct 2017 17:49:00 GMT
EXPOSE 80/tcp
# Mon, 02 Oct 2017 17:49:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Oct 2017 17:49:00 GMT
CMD ["traefik"]
# Mon, 02 Oct 2017 17:49:00 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b278c5662dff8918ea50003d93c8b8a9066e9a2d2779d2d1ae5b85c0b2425be0`  
		Last Modified: Mon, 02 Oct 2017 17:49:56 GMT  
		Size: 13.2 MB (13190433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e86e985c51495bd9814c7442d932c0b9795451a92c69be27cc84f62b29c1a8`  
		Last Modified: Mon, 02 Oct 2017 17:49:53 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
