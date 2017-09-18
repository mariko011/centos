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
$ docker pull traefik@sha256:4df3b04a5cc4079eee53bbd13f84883287dd899918e52cafd02a4fe4162dd855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.3.8-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:351dd76e3c440dfc4addaef49e16f683b0e11ce53d49e224cf63b92be60231a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:466563807f9e6c78eff0ffd032adcd39b004ac2b4dc160bcb01a13fef5b3d457`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 04:48:44 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Sep 2017 04:49:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Sep 2017 04:49:05 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 13 Sep 2017 04:49:06 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:49:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 04:49:06 GMT
CMD ["traefik"]
# Wed, 13 Sep 2017 04:49:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26fc72133464791d3633640160b749ff206aea4427691f0272dbaac80a834ef`  
		Last Modified: Wed, 13 Sep 2017 04:49:42 GMT  
		Size: 351.4 KB (351357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed970e056cdbaca036bfa53ea930631ce8a7eaa756995e4abc13fb9c5c1f519b`  
		Last Modified: Wed, 13 Sep 2017 04:50:24 GMT  
		Size: 13.0 MB (12993556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dda859052f2679db3623b80755241eb9c6ed0808ccad068cdcf2214ba66d73`  
		Last Modified: Wed, 13 Sep 2017 04:50:22 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.3-alpine`

```console
$ docker pull traefik@sha256:4df3b04a5cc4079eee53bbd13f84883287dd899918e52cafd02a4fe4162dd855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:351dd76e3c440dfc4addaef49e16f683b0e11ce53d49e224cf63b92be60231a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:466563807f9e6c78eff0ffd032adcd39b004ac2b4dc160bcb01a13fef5b3d457`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 04:48:44 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Sep 2017 04:49:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Sep 2017 04:49:05 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 13 Sep 2017 04:49:06 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:49:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 04:49:06 GMT
CMD ["traefik"]
# Wed, 13 Sep 2017 04:49:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26fc72133464791d3633640160b749ff206aea4427691f0272dbaac80a834ef`  
		Last Modified: Wed, 13 Sep 2017 04:49:42 GMT  
		Size: 351.4 KB (351357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed970e056cdbaca036bfa53ea930631ce8a7eaa756995e4abc13fb9c5c1f519b`  
		Last Modified: Wed, 13 Sep 2017 04:50:24 GMT  
		Size: 13.0 MB (12993556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dda859052f2679db3623b80755241eb9c6ed0808ccad068cdcf2214ba66d73`  
		Last Modified: Wed, 13 Sep 2017 04:50:22 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4`

```console
$ docker pull traefik@sha256:b1261bed50f8e1c478e46202b737e58b259cf91e6997ff64bb06c845c7001223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4` - linux; amd64

```console
$ docker pull traefik@sha256:a1f77dbd65c35800fd25a22e6f97645116bb8207ac4f07bff0377f64b5e106cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13140722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48678a31809692ec8948cd9aa4176901d8d3d47474482b07c669ee6baa4bda49`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 13 Sep 2017 04:48:39 GMT
COPY file:184edee5e0161577ca477d6df5a91bdb7bf8c35c5e9dcf9d13d912c4494ecea7 in / 
# Wed, 13 Sep 2017 04:48:39 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:48:39 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Sep 2017 04:48:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b59cfeab0bdbbaa95cb8ff7d166608060741d7a987669ef73639d8dbb66c2f0`  
		Last Modified: Wed, 13 Sep 2017 04:49:23 GMT  
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

## `traefik:1.4.0-rc3`

**does not exist** (yet?)

## `traefik:1.4.0-rc3-alpine`

**does not exist** (yet?)

## `traefik:1.4-alpine`

```console
$ docker pull traefik@sha256:14cceac283fc1370eadb779a4f7585b07c203c7bb29e6dc457eadff5905be748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:9f5d6c0d8d6d2fe10ba9d893c09e6661335702dfafa989ea73b0f1f0ee71a779
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15515554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d11cda1bf89f76d25de6e97745cb4b3bd8e12a4ee54a815f96056775818566f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 04:48:44 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Sep 2017 04:48:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Sep 2017 04:48:53 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 13 Sep 2017 04:48:53 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:48:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 04:48:53 GMT
CMD ["traefik"]
# Wed, 13 Sep 2017 04:48:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26fc72133464791d3633640160b749ff206aea4427691f0272dbaac80a834ef`  
		Last Modified: Wed, 13 Sep 2017 04:49:42 GMT  
		Size: 351.4 KB (351357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58165a8649b6f0d5c887e966aa40ca1dfe87b6bd519b3ccb4e971e53282adcc3`  
		Last Modified: Wed, 13 Sep 2017 04:49:44 GMT  
		Size: 13.2 MB (13173453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1970d6850aa9000d1794eccef88a8af68f3121141df2f12e5950710d027bcd`  
		Last Modified: Wed, 13 Sep 2017 04:49:41 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:4df3b04a5cc4079eee53bbd13f84883287dd899918e52cafd02a4fe4162dd855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:351dd76e3c440dfc4addaef49e16f683b0e11ce53d49e224cf63b92be60231a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:466563807f9e6c78eff0ffd032adcd39b004ac2b4dc160bcb01a13fef5b3d457`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 04:48:44 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Sep 2017 04:49:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Sep 2017 04:49:05 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 13 Sep 2017 04:49:06 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:49:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 04:49:06 GMT
CMD ["traefik"]
# Wed, 13 Sep 2017 04:49:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26fc72133464791d3633640160b749ff206aea4427691f0272dbaac80a834ef`  
		Last Modified: Wed, 13 Sep 2017 04:49:42 GMT  
		Size: 351.4 KB (351357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed970e056cdbaca036bfa53ea930631ce8a7eaa756995e4abc13fb9c5c1f519b`  
		Last Modified: Wed, 13 Sep 2017 04:50:24 GMT  
		Size: 13.0 MB (12993556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dda859052f2679db3623b80755241eb9c6ed0808ccad068cdcf2214ba66d73`  
		Last Modified: Wed, 13 Sep 2017 04:50:22 GMT  
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
$ docker pull traefik@sha256:4df3b04a5cc4079eee53bbd13f84883287dd899918e52cafd02a4fe4162dd855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:raclette-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:351dd76e3c440dfc4addaef49e16f683b0e11ce53d49e224cf63b92be60231a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:466563807f9e6c78eff0ffd032adcd39b004ac2b4dc160bcb01a13fef5b3d457`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 04:48:44 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Sep 2017 04:49:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Sep 2017 04:49:05 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 13 Sep 2017 04:49:06 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:49:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 04:49:06 GMT
CMD ["traefik"]
# Wed, 13 Sep 2017 04:49:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26fc72133464791d3633640160b749ff206aea4427691f0272dbaac80a834ef`  
		Last Modified: Wed, 13 Sep 2017 04:49:42 GMT  
		Size: 351.4 KB (351357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed970e056cdbaca036bfa53ea930631ce8a7eaa756995e4abc13fb9c5c1f519b`  
		Last Modified: Wed, 13 Sep 2017 04:50:24 GMT  
		Size: 13.0 MB (12993556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dda859052f2679db3623b80755241eb9c6ed0808ccad068cdcf2214ba66d73`  
		Last Modified: Wed, 13 Sep 2017 04:50:22 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort`

```console
$ docker pull traefik@sha256:b1261bed50f8e1c478e46202b737e58b259cf91e6997ff64bb06c845c7001223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:roquefort` - linux; amd64

```console
$ docker pull traefik@sha256:a1f77dbd65c35800fd25a22e6f97645116bb8207ac4f07bff0377f64b5e106cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13140722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48678a31809692ec8948cd9aa4176901d8d3d47474482b07c669ee6baa4bda49`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 13 Sep 2017 04:48:39 GMT
COPY file:184edee5e0161577ca477d6df5a91bdb7bf8c35c5e9dcf9d13d912c4494ecea7 in / 
# Wed, 13 Sep 2017 04:48:39 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:48:39 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Sep 2017 04:48:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b59cfeab0bdbbaa95cb8ff7d166608060741d7a987669ef73639d8dbb66c2f0`  
		Last Modified: Wed, 13 Sep 2017 04:49:23 GMT  
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

## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:14cceac283fc1370eadb779a4f7585b07c203c7bb29e6dc457eadff5905be748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:roquefort-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:9f5d6c0d8d6d2fe10ba9d893c09e6661335702dfafa989ea73b0f1f0ee71a779
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15515554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d11cda1bf89f76d25de6e97745cb4b3bd8e12a4ee54a815f96056775818566f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 04:48:44 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Sep 2017 04:48:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Sep 2017 04:48:53 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 13 Sep 2017 04:48:53 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:48:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 04:48:53 GMT
CMD ["traefik"]
# Wed, 13 Sep 2017 04:48:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26fc72133464791d3633640160b749ff206aea4427691f0272dbaac80a834ef`  
		Last Modified: Wed, 13 Sep 2017 04:49:42 GMT  
		Size: 351.4 KB (351357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58165a8649b6f0d5c887e966aa40ca1dfe87b6bd519b3ccb4e971e53282adcc3`  
		Last Modified: Wed, 13 Sep 2017 04:49:44 GMT  
		Size: 13.2 MB (13173453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1970d6850aa9000d1794eccef88a8af68f3121141df2f12e5950710d027bcd`  
		Last Modified: Wed, 13 Sep 2017 04:49:41 GMT  
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
$ docker pull traefik@sha256:4df3b04a5cc4079eee53bbd13f84883287dd899918e52cafd02a4fe4162dd855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.3.8-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:351dd76e3c440dfc4addaef49e16f683b0e11ce53d49e224cf63b92be60231a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:466563807f9e6c78eff0ffd032adcd39b004ac2b4dc160bcb01a13fef5b3d457`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 04:48:44 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Sep 2017 04:49:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Sep 2017 04:49:05 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 13 Sep 2017 04:49:06 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:49:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 04:49:06 GMT
CMD ["traefik"]
# Wed, 13 Sep 2017 04:49:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26fc72133464791d3633640160b749ff206aea4427691f0272dbaac80a834ef`  
		Last Modified: Wed, 13 Sep 2017 04:49:42 GMT  
		Size: 351.4 KB (351357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed970e056cdbaca036bfa53ea930631ce8a7eaa756995e4abc13fb9c5c1f519b`  
		Last Modified: Wed, 13 Sep 2017 04:50:24 GMT  
		Size: 13.0 MB (12993556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dda859052f2679db3623b80755241eb9c6ed0808ccad068cdcf2214ba66d73`  
		Last Modified: Wed, 13 Sep 2017 04:50:22 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.3-alpine`

```console
$ docker pull traefik@sha256:4df3b04a5cc4079eee53bbd13f84883287dd899918e52cafd02a4fe4162dd855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:351dd76e3c440dfc4addaef49e16f683b0e11ce53d49e224cf63b92be60231a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:466563807f9e6c78eff0ffd032adcd39b004ac2b4dc160bcb01a13fef5b3d457`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 04:48:44 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Sep 2017 04:49:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Sep 2017 04:49:05 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 13 Sep 2017 04:49:06 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:49:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 04:49:06 GMT
CMD ["traefik"]
# Wed, 13 Sep 2017 04:49:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26fc72133464791d3633640160b749ff206aea4427691f0272dbaac80a834ef`  
		Last Modified: Wed, 13 Sep 2017 04:49:42 GMT  
		Size: 351.4 KB (351357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed970e056cdbaca036bfa53ea930631ce8a7eaa756995e4abc13fb9c5c1f519b`  
		Last Modified: Wed, 13 Sep 2017 04:50:24 GMT  
		Size: 13.0 MB (12993556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dda859052f2679db3623b80755241eb9c6ed0808ccad068cdcf2214ba66d73`  
		Last Modified: Wed, 13 Sep 2017 04:50:22 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4`

```console
$ docker pull traefik@sha256:b1261bed50f8e1c478e46202b737e58b259cf91e6997ff64bb06c845c7001223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4` - linux; amd64

```console
$ docker pull traefik@sha256:a1f77dbd65c35800fd25a22e6f97645116bb8207ac4f07bff0377f64b5e106cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13140722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48678a31809692ec8948cd9aa4176901d8d3d47474482b07c669ee6baa4bda49`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 13 Sep 2017 04:48:39 GMT
COPY file:184edee5e0161577ca477d6df5a91bdb7bf8c35c5e9dcf9d13d912c4494ecea7 in / 
# Wed, 13 Sep 2017 04:48:39 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:48:39 GMT
ENTRYPOINT ["/traefik"]
# Wed, 13 Sep 2017 04:48:39 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b59cfeab0bdbbaa95cb8ff7d166608060741d7a987669ef73639d8dbb66c2f0`  
		Last Modified: Wed, 13 Sep 2017 04:49:23 GMT  
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

## `traefik:v1.4.0-rc3`

**does not exist** (yet?)

## `traefik:v1.4.0-rc3-alpine`

**does not exist** (yet?)

## `traefik:v1.4-alpine`

```console
$ docker pull traefik@sha256:14cceac283fc1370eadb779a4f7585b07c203c7bb29e6dc457eadff5905be748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:9f5d6c0d8d6d2fe10ba9d893c09e6661335702dfafa989ea73b0f1f0ee71a779
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15515554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d11cda1bf89f76d25de6e97745cb4b3bd8e12a4ee54a815f96056775818566f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 04:48:44 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Sep 2017 04:48:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Sep 2017 04:48:53 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 13 Sep 2017 04:48:53 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:48:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 04:48:53 GMT
CMD ["traefik"]
# Wed, 13 Sep 2017 04:48:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26fc72133464791d3633640160b749ff206aea4427691f0272dbaac80a834ef`  
		Last Modified: Wed, 13 Sep 2017 04:49:42 GMT  
		Size: 351.4 KB (351357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58165a8649b6f0d5c887e966aa40ca1dfe87b6bd519b3ccb4e971e53282adcc3`  
		Last Modified: Wed, 13 Sep 2017 04:49:44 GMT  
		Size: 13.2 MB (13173453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1970d6850aa9000d1794eccef88a8af68f3121141df2f12e5950710d027bcd`  
		Last Modified: Wed, 13 Sep 2017 04:49:41 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
