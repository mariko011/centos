<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.3`](#traefik13)
-	[`traefik:1.3.8`](#traefik138)
-	[`traefik:1.3.8-alpine`](#traefik138-alpine)
-	[`traefik:1.3-alpine`](#traefik13-alpine)
-	[`traefik:1.4`](#traefik14)
-	[`traefik:1.4.0-rc3`](#traefik140-rc3)
-	[`traefik:1.4.0-rc3-alpine`](#traefik140-rc3-alpine)
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
-	[`traefik:v1.4.0-rc3`](#traefikv140-rc3)
-	[`traefik:v1.4.0-rc3-alpine`](#traefikv140-rc3-alpine)
-	[`traefik:v1.4-alpine`](#traefikv14-alpine)

## `traefik:1.3`

```console
$ docker pull traefik@sha256:1d152e1b4c8161d4752684a4b51ef4f399ef76779adab085cf16aa268b8f6623
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

## `traefik:1.3.8`

```console
$ docker pull traefik@sha256:1d152e1b4c8161d4752684a4b51ef4f399ef76779adab085cf16aa268b8f6623
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
$ docker pull traefik@sha256:b8afdcfa25242b559aa92e74d6ad9b44d91adbf95aa84847f6353410f370a4c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4` - linux; amd64

```console
$ docker pull traefik@sha256:a9928ff975c9312fe08b45999109eb17dd0e77e52b52cfdf38d062fca290e3bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13142534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bb27b65baa6aaabc3cac287a479d7c830ad081797126cd1e06d9bc936faefe`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:35:38 GMT
COPY file:ec652feb0db4e6bdda1b5cf980cd856e7bb880e86788b03fae8f684d754a2180 in / 
# Mon, 18 Sep 2017 19:35:38 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:38 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:35:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bf210584c66d1b6d808afc92ce56e7d3b467a4e5f77364a7542cd612481da6`  
		Last Modified: Mon, 18 Sep 2017 19:36:33 GMT  
		Size: 13.0 MB (13007495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ba45cf2f3cb207d3e389db34296e8dd048f202123c83621755684b6c911e9fcf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12320837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244bc214256c69e31a6c9ad7f0ae7c69981ca96f2d5e106ed5a4fadcc5be539c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:39:51 GMT
COPY file:39714462a3194d410cddd010c3c4f5ab509cc33d56ff2a5ca0e508185f2ab931 in / 
# Mon, 18 Sep 2017 19:39:55 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:39:57 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:39:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de91893259e7659f87618d66c4394126455cec764e401edec215b934a3c5ff30`  
		Last Modified: Mon, 18 Sep 2017 19:40:25 GMT  
		Size: 12.2 MB (12185798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:1b0bb34dea1f0be6ad8168fec52bd5335e50f8abd866130d7c86c36e3b2f3017
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12009630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bda0babda2eab55336491a46c0af9ec665e4a96ca52648564e356ae93535f0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:35:49 GMT
COPY file:2a8f8a2988c6c8db57bc49055cf632c75cd16a7675f49b471380b3688a655c4b in / 
# Mon, 18 Sep 2017 19:35:50 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:50 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:35:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3165c235810f7bd941873c299ffc0b58670008553e2685b7974b6c0fb0f11652`  
		Last Modified: Mon, 18 Sep 2017 19:36:14 GMT  
		Size: 11.9 MB (11874593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.0-rc3`

```console
$ docker pull traefik@sha256:b8afdcfa25242b559aa92e74d6ad9b44d91adbf95aa84847f6353410f370a4c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4.0-rc3` - linux; amd64

```console
$ docker pull traefik@sha256:a9928ff975c9312fe08b45999109eb17dd0e77e52b52cfdf38d062fca290e3bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13142534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bb27b65baa6aaabc3cac287a479d7c830ad081797126cd1e06d9bc936faefe`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:35:38 GMT
COPY file:ec652feb0db4e6bdda1b5cf980cd856e7bb880e86788b03fae8f684d754a2180 in / 
# Mon, 18 Sep 2017 19:35:38 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:38 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:35:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bf210584c66d1b6d808afc92ce56e7d3b467a4e5f77364a7542cd612481da6`  
		Last Modified: Mon, 18 Sep 2017 19:36:33 GMT  
		Size: 13.0 MB (13007495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.0-rc3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ba45cf2f3cb207d3e389db34296e8dd048f202123c83621755684b6c911e9fcf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12320837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244bc214256c69e31a6c9ad7f0ae7c69981ca96f2d5e106ed5a4fadcc5be539c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:39:51 GMT
COPY file:39714462a3194d410cddd010c3c4f5ab509cc33d56ff2a5ca0e508185f2ab931 in / 
# Mon, 18 Sep 2017 19:39:55 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:39:57 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:39:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de91893259e7659f87618d66c4394126455cec764e401edec215b934a3c5ff30`  
		Last Modified: Mon, 18 Sep 2017 19:40:25 GMT  
		Size: 12.2 MB (12185798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.0-rc3` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:1b0bb34dea1f0be6ad8168fec52bd5335e50f8abd866130d7c86c36e3b2f3017
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12009630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bda0babda2eab55336491a46c0af9ec665e4a96ca52648564e356ae93535f0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:35:49 GMT
COPY file:2a8f8a2988c6c8db57bc49055cf632c75cd16a7675f49b471380b3688a655c4b in / 
# Mon, 18 Sep 2017 19:35:50 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:50 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:35:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3165c235810f7bd941873c299ffc0b58670008553e2685b7974b6c0fb0f11652`  
		Last Modified: Mon, 18 Sep 2017 19:36:14 GMT  
		Size: 11.9 MB (11874593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.0-rc3-alpine`

```console
$ docker pull traefik@sha256:c18ad025bec1fcc39a9efedeb3593e491d045aec1c1059b9ad62e812e661bbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.4.0-rc3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:21cd1f436ea87fe35d70481ebc6fac05ae7df85d4ff4800e5db9fa82189e95e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15517648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c845745926a59136372f96a3a60e8ce1571a11d68c9fb004fb313c9c2195f914`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 18 Sep 2017 19:35:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 18 Sep 2017 19:35:53 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 18 Sep 2017 19:35:54 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 19:35:54 GMT
CMD ["traefik"]
# Mon, 18 Sep 2017 19:35:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ae3649094463ad285532fbc5cc9be1886a8e1b6e792523425d0c8901632ff3ca`  
		Last Modified: Mon, 18 Sep 2017 19:37:04 GMT  
		Size: 13.2 MB (13175554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a172f4701c881b16a9d08397f72652cac286cc2fcdb151a956a066c113abe43`  
		Last Modified: Mon, 18 Sep 2017 19:37:01 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4-alpine`

```console
$ docker pull traefik@sha256:c18ad025bec1fcc39a9efedeb3593e491d045aec1c1059b9ad62e812e661bbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:21cd1f436ea87fe35d70481ebc6fac05ae7df85d4ff4800e5db9fa82189e95e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15517648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c845745926a59136372f96a3a60e8ce1571a11d68c9fb004fb313c9c2195f914`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 18 Sep 2017 19:35:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 18 Sep 2017 19:35:53 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 18 Sep 2017 19:35:54 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 19:35:54 GMT
CMD ["traefik"]
# Mon, 18 Sep 2017 19:35:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ae3649094463ad285532fbc5cc9be1886a8e1b6e792523425d0c8901632ff3ca`  
		Last Modified: Mon, 18 Sep 2017 19:37:04 GMT  
		Size: 13.2 MB (13175554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a172f4701c881b16a9d08397f72652cac286cc2fcdb151a956a066c113abe43`  
		Last Modified: Mon, 18 Sep 2017 19:37:01 GMT  
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
$ docker pull traefik@sha256:1d152e1b4c8161d4752684a4b51ef4f399ef76779adab085cf16aa268b8f6623
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

## `traefik:raclette`

```console
$ docker pull traefik@sha256:1d152e1b4c8161d4752684a4b51ef4f399ef76779adab085cf16aa268b8f6623
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
$ docker pull traefik@sha256:b8afdcfa25242b559aa92e74d6ad9b44d91adbf95aa84847f6353410f370a4c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:roquefort` - linux; amd64

```console
$ docker pull traefik@sha256:a9928ff975c9312fe08b45999109eb17dd0e77e52b52cfdf38d062fca290e3bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13142534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bb27b65baa6aaabc3cac287a479d7c830ad081797126cd1e06d9bc936faefe`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:35:38 GMT
COPY file:ec652feb0db4e6bdda1b5cf980cd856e7bb880e86788b03fae8f684d754a2180 in / 
# Mon, 18 Sep 2017 19:35:38 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:38 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:35:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bf210584c66d1b6d808afc92ce56e7d3b467a4e5f77364a7542cd612481da6`  
		Last Modified: Mon, 18 Sep 2017 19:36:33 GMT  
		Size: 13.0 MB (13007495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ba45cf2f3cb207d3e389db34296e8dd048f202123c83621755684b6c911e9fcf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12320837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244bc214256c69e31a6c9ad7f0ae7c69981ca96f2d5e106ed5a4fadcc5be539c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:39:51 GMT
COPY file:39714462a3194d410cddd010c3c4f5ab509cc33d56ff2a5ca0e508185f2ab931 in / 
# Mon, 18 Sep 2017 19:39:55 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:39:57 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:39:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de91893259e7659f87618d66c4394126455cec764e401edec215b934a3c5ff30`  
		Last Modified: Mon, 18 Sep 2017 19:40:25 GMT  
		Size: 12.2 MB (12185798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:1b0bb34dea1f0be6ad8168fec52bd5335e50f8abd866130d7c86c36e3b2f3017
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12009630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bda0babda2eab55336491a46c0af9ec665e4a96ca52648564e356ae93535f0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:35:49 GMT
COPY file:2a8f8a2988c6c8db57bc49055cf632c75cd16a7675f49b471380b3688a655c4b in / 
# Mon, 18 Sep 2017 19:35:50 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:50 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:35:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3165c235810f7bd941873c299ffc0b58670008553e2685b7974b6c0fb0f11652`  
		Last Modified: Mon, 18 Sep 2017 19:36:14 GMT  
		Size: 11.9 MB (11874593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:c18ad025bec1fcc39a9efedeb3593e491d045aec1c1059b9ad62e812e661bbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:roquefort-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:21cd1f436ea87fe35d70481ebc6fac05ae7df85d4ff4800e5db9fa82189e95e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15517648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c845745926a59136372f96a3a60e8ce1571a11d68c9fb004fb313c9c2195f914`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 18 Sep 2017 19:35:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 18 Sep 2017 19:35:53 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 18 Sep 2017 19:35:54 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 19:35:54 GMT
CMD ["traefik"]
# Mon, 18 Sep 2017 19:35:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ae3649094463ad285532fbc5cc9be1886a8e1b6e792523425d0c8901632ff3ca`  
		Last Modified: Mon, 18 Sep 2017 19:37:04 GMT  
		Size: 13.2 MB (13175554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a172f4701c881b16a9d08397f72652cac286cc2fcdb151a956a066c113abe43`  
		Last Modified: Mon, 18 Sep 2017 19:37:01 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.3`

```console
$ docker pull traefik@sha256:1d152e1b4c8161d4752684a4b51ef4f399ef76779adab085cf16aa268b8f6623
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

## `traefik:v1.3.8`

```console
$ docker pull traefik@sha256:1d152e1b4c8161d4752684a4b51ef4f399ef76779adab085cf16aa268b8f6623
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
$ docker pull traefik@sha256:b8afdcfa25242b559aa92e74d6ad9b44d91adbf95aa84847f6353410f370a4c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4` - linux; amd64

```console
$ docker pull traefik@sha256:a9928ff975c9312fe08b45999109eb17dd0e77e52b52cfdf38d062fca290e3bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13142534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bb27b65baa6aaabc3cac287a479d7c830ad081797126cd1e06d9bc936faefe`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:35:38 GMT
COPY file:ec652feb0db4e6bdda1b5cf980cd856e7bb880e86788b03fae8f684d754a2180 in / 
# Mon, 18 Sep 2017 19:35:38 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:38 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:35:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bf210584c66d1b6d808afc92ce56e7d3b467a4e5f77364a7542cd612481da6`  
		Last Modified: Mon, 18 Sep 2017 19:36:33 GMT  
		Size: 13.0 MB (13007495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ba45cf2f3cb207d3e389db34296e8dd048f202123c83621755684b6c911e9fcf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12320837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244bc214256c69e31a6c9ad7f0ae7c69981ca96f2d5e106ed5a4fadcc5be539c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:39:51 GMT
COPY file:39714462a3194d410cddd010c3c4f5ab509cc33d56ff2a5ca0e508185f2ab931 in / 
# Mon, 18 Sep 2017 19:39:55 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:39:57 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:39:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de91893259e7659f87618d66c4394126455cec764e401edec215b934a3c5ff30`  
		Last Modified: Mon, 18 Sep 2017 19:40:25 GMT  
		Size: 12.2 MB (12185798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:1b0bb34dea1f0be6ad8168fec52bd5335e50f8abd866130d7c86c36e3b2f3017
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12009630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bda0babda2eab55336491a46c0af9ec665e4a96ca52648564e356ae93535f0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:35:49 GMT
COPY file:2a8f8a2988c6c8db57bc49055cf632c75cd16a7675f49b471380b3688a655c4b in / 
# Mon, 18 Sep 2017 19:35:50 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:50 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:35:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3165c235810f7bd941873c299ffc0b58670008553e2685b7974b6c0fb0f11652`  
		Last Modified: Mon, 18 Sep 2017 19:36:14 GMT  
		Size: 11.9 MB (11874593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.0-rc3`

```console
$ docker pull traefik@sha256:b8afdcfa25242b559aa92e74d6ad9b44d91adbf95aa84847f6353410f370a4c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4.0-rc3` - linux; amd64

```console
$ docker pull traefik@sha256:a9928ff975c9312fe08b45999109eb17dd0e77e52b52cfdf38d062fca290e3bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13142534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bb27b65baa6aaabc3cac287a479d7c830ad081797126cd1e06d9bc936faefe`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:35:38 GMT
COPY file:ec652feb0db4e6bdda1b5cf980cd856e7bb880e86788b03fae8f684d754a2180 in / 
# Mon, 18 Sep 2017 19:35:38 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:38 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:35:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bf210584c66d1b6d808afc92ce56e7d3b467a4e5f77364a7542cd612481da6`  
		Last Modified: Mon, 18 Sep 2017 19:36:33 GMT  
		Size: 13.0 MB (13007495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.0-rc3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ba45cf2f3cb207d3e389db34296e8dd048f202123c83621755684b6c911e9fcf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12320837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244bc214256c69e31a6c9ad7f0ae7c69981ca96f2d5e106ed5a4fadcc5be539c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 00:46:55 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:39:51 GMT
COPY file:39714462a3194d410cddd010c3c4f5ab509cc33d56ff2a5ca0e508185f2ab931 in / 
# Mon, 18 Sep 2017 19:39:55 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:39:57 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:39:59 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0f85126f45a308b8ca1308073578679960bb2c81d44aa598ee4a156d094ad589`  
		Last Modified: Sat, 09 Sep 2017 00:47:17 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de91893259e7659f87618d66c4394126455cec764e401edec215b934a3c5ff30`  
		Last Modified: Mon, 18 Sep 2017 19:40:25 GMT  
		Size: 12.2 MB (12185798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.0-rc3` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:1b0bb34dea1f0be6ad8168fec52bd5335e50f8abd866130d7c86c36e3b2f3017
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12009630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bda0babda2eab55336491a46c0af9ec665e4a96ca52648564e356ae93535f0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:35:49 GMT
COPY file:2a8f8a2988c6c8db57bc49055cf632c75cd16a7675f49b471380b3688a655c4b in / 
# Mon, 18 Sep 2017 19:35:50 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:50 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:35:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3165c235810f7bd941873c299ffc0b58670008553e2685b7974b6c0fb0f11652`  
		Last Modified: Mon, 18 Sep 2017 19:36:14 GMT  
		Size: 11.9 MB (11874593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.0-rc3-alpine`

```console
$ docker pull traefik@sha256:c18ad025bec1fcc39a9efedeb3593e491d045aec1c1059b9ad62e812e661bbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.4.0-rc3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:21cd1f436ea87fe35d70481ebc6fac05ae7df85d4ff4800e5db9fa82189e95e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15517648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c845745926a59136372f96a3a60e8ce1571a11d68c9fb004fb313c9c2195f914`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 18 Sep 2017 19:35:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 18 Sep 2017 19:35:53 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 18 Sep 2017 19:35:54 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 19:35:54 GMT
CMD ["traefik"]
# Mon, 18 Sep 2017 19:35:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ae3649094463ad285532fbc5cc9be1886a8e1b6e792523425d0c8901632ff3ca`  
		Last Modified: Mon, 18 Sep 2017 19:37:04 GMT  
		Size: 13.2 MB (13175554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a172f4701c881b16a9d08397f72652cac286cc2fcdb151a956a066c113abe43`  
		Last Modified: Mon, 18 Sep 2017 19:37:01 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4-alpine`

```console
$ docker pull traefik@sha256:c18ad025bec1fcc39a9efedeb3593e491d045aec1c1059b9ad62e812e661bbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:21cd1f436ea87fe35d70481ebc6fac05ae7df85d4ff4800e5db9fa82189e95e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15517648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c845745926a59136372f96a3a60e8ce1571a11d68c9fb004fb313c9c2195f914`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Mon, 18 Sep 2017 19:35:45 GMT
RUN apk --no-cache add ca-certificates
# Mon, 18 Sep 2017 19:35:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 18 Sep 2017 19:35:53 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 18 Sep 2017 19:35:54 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 18 Sep 2017 19:35:54 GMT
CMD ["traefik"]
# Mon, 18 Sep 2017 19:35:54 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ae3649094463ad285532fbc5cc9be1886a8e1b6e792523425d0c8901632ff3ca`  
		Last Modified: Mon, 18 Sep 2017 19:37:04 GMT  
		Size: 13.2 MB (13175554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a172f4701c881b16a9d08397f72652cac286cc2fcdb151a956a066c113abe43`  
		Last Modified: Mon, 18 Sep 2017 19:37:01 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
