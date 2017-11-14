<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.4`](#traefik14)
-	[`traefik:1.4.3`](#traefik143)
-	[`traefik:1.4.3-alpine`](#traefik143-alpine)
-	[`traefik:1.4-alpine`](#traefik14-alpine)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:roquefort`](#traefikroquefort)
-	[`traefik:roquefort-alpine`](#traefikroquefort-alpine)
-	[`traefik:v1.4`](#traefikv14)
-	[`traefik:v1.4.3`](#traefikv143)
-	[`traefik:v1.4.3-alpine`](#traefikv143-alpine)
-	[`traefik:v1.4-alpine`](#traefikv14-alpine)

## `traefik:1.4`

```console
$ docker pull traefik@sha256:a2101a796866e614d7ab6e9103756dc01f18ebcd5d54211d6a5ec6d4c18ed3b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4` - linux; amd64

```console
$ docker pull traefik@sha256:f969f4441e0accc837843ba6e30c014090821f170316af087d856b2e7c96fc5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13200142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7af90a3e22d05bbc1bf33f434d611ffcec5fc9b6233ccc6581da3f009d7283`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 03 Nov 2017 22:11:41 GMT
COPY file:09e4554621b4a3a1b5135db4fa59f5a97279965f9cbac43e3ee1e17671a0d238 in / 
# Fri, 03 Nov 2017 22:11:41 GMT
EXPOSE 80/tcp
# Fri, 03 Nov 2017 22:11:42 GMT
ENTRYPOINT ["/traefik"]
# Fri, 03 Nov 2017 22:11:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ff68f3dc78afdf6786a2d769b587a8e574a84cc9de5749d90ef418c3f29fcd`  
		Last Modified: Fri, 03 Nov 2017 22:12:14 GMT  
		Size: 13.0 MB (13044990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1a1e91dc981bc6e5e232f6f24f3556be40ddd4fd1327e32b1e06b677d9d38a5c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12378339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6baa21caca10231d97a074283f166ea414ccde4a320e5f372e10b12ce141fb07`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Nov 2017 23:48:20 GMT
COPY file:8751c4233c813a1c8a951e5b26a7ab1888549e136ae2d957e68bd8865b1ffb36 in / 
# Thu, 02 Nov 2017 23:48:20 GMT
EXPOSE 80/tcp
# Thu, 02 Nov 2017 23:48:20 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Nov 2017 23:48:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8e8638d34c45934d48d89851bad4920602c02375f8b174b76507e20813491c`  
		Last Modified: Thu, 02 Nov 2017 23:48:33 GMT  
		Size: 12.2 MB (12223155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a4261837e99952784cc4b4fc27396f062f7ebb202dae4966eb764b5d93f97654
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12064535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d42acc0bbef13ca043fdaa6c675f752103c2db1872fbb1b735791bf6e7f0ee`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 03 Nov 2017 04:54:45 GMT
COPY file:8d7e2a79cfdd730a8e7cf7201ff26d449273405142625997830de71664c566f6 in / 
# Fri, 03 Nov 2017 04:54:46 GMT
EXPOSE 80/tcp
# Fri, 03 Nov 2017 04:54:46 GMT
ENTRYPOINT ["/traefik"]
# Fri, 03 Nov 2017 04:54:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa5c73b733a0118e0ff1c0038a0892383d7a330471c5c5849c013a7263a801b`  
		Last Modified: Fri, 03 Nov 2017 04:55:18 GMT  
		Size: 11.9 MB (11909384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.3`

**does not exist** (yet?)

## `traefik:1.4.3-alpine`

**does not exist** (yet?)

## `traefik:1.4-alpine`

```console
$ docker pull traefik@sha256:56bdb834eb91b7491d1655acb35aa0449736b8e82ec97cce9c0da3a7493e3344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5a9a8feb27464638cf5595e3bb702b71a8e51b05377f666673609bb30eac0126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15554914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1644b8725f3fe1e7249ae35fc5f6930173f1db9b4b52114357299af9031bdd18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:11:48 GMT
RUN apk --no-cache add ca-certificates
# Fri, 03 Nov 2017 22:12:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 03 Nov 2017 22:12:04 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 03 Nov 2017 22:12:04 GMT
EXPOSE 80/tcp
# Fri, 03 Nov 2017 22:12:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:12:04 GMT
CMD ["traefik"]
# Fri, 03 Nov 2017 22:12:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b65437450eccdae36484465517e6a3d60fca76a2cd24e0caf21a67e539d4b6`  
		Last Modified: Fri, 03 Nov 2017 22:12:35 GMT  
		Size: 351.0 KB (350999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe144399c0c6d570a4e7a9c14a23202c922ef89310a19f938dc639581fb1125`  
		Last Modified: Fri, 03 Nov 2017 22:12:37 GMT  
		Size: 13.2 MB (13212140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9774c8f2cc57b0c1fc683734a5b63f533482162672432071dd82b5d9d6260843`  
		Last Modified: Fri, 03 Nov 2017 22:12:37 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:56bdb834eb91b7491d1655acb35aa0449736b8e82ec97cce9c0da3a7493e3344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5a9a8feb27464638cf5595e3bb702b71a8e51b05377f666673609bb30eac0126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15554914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1644b8725f3fe1e7249ae35fc5f6930173f1db9b4b52114357299af9031bdd18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:11:48 GMT
RUN apk --no-cache add ca-certificates
# Fri, 03 Nov 2017 22:12:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 03 Nov 2017 22:12:04 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 03 Nov 2017 22:12:04 GMT
EXPOSE 80/tcp
# Fri, 03 Nov 2017 22:12:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:12:04 GMT
CMD ["traefik"]
# Fri, 03 Nov 2017 22:12:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b65437450eccdae36484465517e6a3d60fca76a2cd24e0caf21a67e539d4b6`  
		Last Modified: Fri, 03 Nov 2017 22:12:35 GMT  
		Size: 351.0 KB (350999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe144399c0c6d570a4e7a9c14a23202c922ef89310a19f938dc639581fb1125`  
		Last Modified: Fri, 03 Nov 2017 22:12:37 GMT  
		Size: 13.2 MB (13212140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9774c8f2cc57b0c1fc683734a5b63f533482162672432071dd82b5d9d6260843`  
		Last Modified: Fri, 03 Nov 2017 22:12:37 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:a2101a796866e614d7ab6e9103756dc01f18ebcd5d54211d6a5ec6d4c18ed3b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:f969f4441e0accc837843ba6e30c014090821f170316af087d856b2e7c96fc5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13200142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7af90a3e22d05bbc1bf33f434d611ffcec5fc9b6233ccc6581da3f009d7283`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 03 Nov 2017 22:11:41 GMT
COPY file:09e4554621b4a3a1b5135db4fa59f5a97279965f9cbac43e3ee1e17671a0d238 in / 
# Fri, 03 Nov 2017 22:11:41 GMT
EXPOSE 80/tcp
# Fri, 03 Nov 2017 22:11:42 GMT
ENTRYPOINT ["/traefik"]
# Fri, 03 Nov 2017 22:11:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ff68f3dc78afdf6786a2d769b587a8e574a84cc9de5749d90ef418c3f29fcd`  
		Last Modified: Fri, 03 Nov 2017 22:12:14 GMT  
		Size: 13.0 MB (13044990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1a1e91dc981bc6e5e232f6f24f3556be40ddd4fd1327e32b1e06b677d9d38a5c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12378339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6baa21caca10231d97a074283f166ea414ccde4a320e5f372e10b12ce141fb07`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Nov 2017 23:48:20 GMT
COPY file:8751c4233c813a1c8a951e5b26a7ab1888549e136ae2d957e68bd8865b1ffb36 in / 
# Thu, 02 Nov 2017 23:48:20 GMT
EXPOSE 80/tcp
# Thu, 02 Nov 2017 23:48:20 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Nov 2017 23:48:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8e8638d34c45934d48d89851bad4920602c02375f8b174b76507e20813491c`  
		Last Modified: Thu, 02 Nov 2017 23:48:33 GMT  
		Size: 12.2 MB (12223155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a4261837e99952784cc4b4fc27396f062f7ebb202dae4966eb764b5d93f97654
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12064535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d42acc0bbef13ca043fdaa6c675f752103c2db1872fbb1b735791bf6e7f0ee`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 03 Nov 2017 04:54:45 GMT
COPY file:8d7e2a79cfdd730a8e7cf7201ff26d449273405142625997830de71664c566f6 in / 
# Fri, 03 Nov 2017 04:54:46 GMT
EXPOSE 80/tcp
# Fri, 03 Nov 2017 04:54:46 GMT
ENTRYPOINT ["/traefik"]
# Fri, 03 Nov 2017 04:54:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa5c73b733a0118e0ff1c0038a0892383d7a330471c5c5849c013a7263a801b`  
		Last Modified: Fri, 03 Nov 2017 04:55:18 GMT  
		Size: 11.9 MB (11909384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort`

```console
$ docker pull traefik@sha256:a2101a796866e614d7ab6e9103756dc01f18ebcd5d54211d6a5ec6d4c18ed3b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:roquefort` - linux; amd64

```console
$ docker pull traefik@sha256:f969f4441e0accc837843ba6e30c014090821f170316af087d856b2e7c96fc5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13200142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7af90a3e22d05bbc1bf33f434d611ffcec5fc9b6233ccc6581da3f009d7283`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 03 Nov 2017 22:11:41 GMT
COPY file:09e4554621b4a3a1b5135db4fa59f5a97279965f9cbac43e3ee1e17671a0d238 in / 
# Fri, 03 Nov 2017 22:11:41 GMT
EXPOSE 80/tcp
# Fri, 03 Nov 2017 22:11:42 GMT
ENTRYPOINT ["/traefik"]
# Fri, 03 Nov 2017 22:11:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ff68f3dc78afdf6786a2d769b587a8e574a84cc9de5749d90ef418c3f29fcd`  
		Last Modified: Fri, 03 Nov 2017 22:12:14 GMT  
		Size: 13.0 MB (13044990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1a1e91dc981bc6e5e232f6f24f3556be40ddd4fd1327e32b1e06b677d9d38a5c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12378339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6baa21caca10231d97a074283f166ea414ccde4a320e5f372e10b12ce141fb07`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Nov 2017 23:48:20 GMT
COPY file:8751c4233c813a1c8a951e5b26a7ab1888549e136ae2d957e68bd8865b1ffb36 in / 
# Thu, 02 Nov 2017 23:48:20 GMT
EXPOSE 80/tcp
# Thu, 02 Nov 2017 23:48:20 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Nov 2017 23:48:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8e8638d34c45934d48d89851bad4920602c02375f8b174b76507e20813491c`  
		Last Modified: Thu, 02 Nov 2017 23:48:33 GMT  
		Size: 12.2 MB (12223155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a4261837e99952784cc4b4fc27396f062f7ebb202dae4966eb764b5d93f97654
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12064535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d42acc0bbef13ca043fdaa6c675f752103c2db1872fbb1b735791bf6e7f0ee`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 03 Nov 2017 04:54:45 GMT
COPY file:8d7e2a79cfdd730a8e7cf7201ff26d449273405142625997830de71664c566f6 in / 
# Fri, 03 Nov 2017 04:54:46 GMT
EXPOSE 80/tcp
# Fri, 03 Nov 2017 04:54:46 GMT
ENTRYPOINT ["/traefik"]
# Fri, 03 Nov 2017 04:54:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa5c73b733a0118e0ff1c0038a0892383d7a330471c5c5849c013a7263a801b`  
		Last Modified: Fri, 03 Nov 2017 04:55:18 GMT  
		Size: 11.9 MB (11909384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:56bdb834eb91b7491d1655acb35aa0449736b8e82ec97cce9c0da3a7493e3344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:roquefort-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5a9a8feb27464638cf5595e3bb702b71a8e51b05377f666673609bb30eac0126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15554914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1644b8725f3fe1e7249ae35fc5f6930173f1db9b4b52114357299af9031bdd18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:11:48 GMT
RUN apk --no-cache add ca-certificates
# Fri, 03 Nov 2017 22:12:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 03 Nov 2017 22:12:04 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 03 Nov 2017 22:12:04 GMT
EXPOSE 80/tcp
# Fri, 03 Nov 2017 22:12:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:12:04 GMT
CMD ["traefik"]
# Fri, 03 Nov 2017 22:12:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b65437450eccdae36484465517e6a3d60fca76a2cd24e0caf21a67e539d4b6`  
		Last Modified: Fri, 03 Nov 2017 22:12:35 GMT  
		Size: 351.0 KB (350999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe144399c0c6d570a4e7a9c14a23202c922ef89310a19f938dc639581fb1125`  
		Last Modified: Fri, 03 Nov 2017 22:12:37 GMT  
		Size: 13.2 MB (13212140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9774c8f2cc57b0c1fc683734a5b63f533482162672432071dd82b5d9d6260843`  
		Last Modified: Fri, 03 Nov 2017 22:12:37 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4`

```console
$ docker pull traefik@sha256:a2101a796866e614d7ab6e9103756dc01f18ebcd5d54211d6a5ec6d4c18ed3b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4` - linux; amd64

```console
$ docker pull traefik@sha256:f969f4441e0accc837843ba6e30c014090821f170316af087d856b2e7c96fc5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13200142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7af90a3e22d05bbc1bf33f434d611ffcec5fc9b6233ccc6581da3f009d7283`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 03 Nov 2017 22:11:41 GMT
COPY file:09e4554621b4a3a1b5135db4fa59f5a97279965f9cbac43e3ee1e17671a0d238 in / 
# Fri, 03 Nov 2017 22:11:41 GMT
EXPOSE 80/tcp
# Fri, 03 Nov 2017 22:11:42 GMT
ENTRYPOINT ["/traefik"]
# Fri, 03 Nov 2017 22:11:42 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ff68f3dc78afdf6786a2d769b587a8e574a84cc9de5749d90ef418c3f29fcd`  
		Last Modified: Fri, 03 Nov 2017 22:12:14 GMT  
		Size: 13.0 MB (13044990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:1a1e91dc981bc6e5e232f6f24f3556be40ddd4fd1327e32b1e06b677d9d38a5c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12378339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6baa21caca10231d97a074283f166ea414ccde4a320e5f372e10b12ce141fb07`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 02 Nov 2017 23:48:20 GMT
COPY file:8751c4233c813a1c8a951e5b26a7ab1888549e136ae2d957e68bd8865b1ffb36 in / 
# Thu, 02 Nov 2017 23:48:20 GMT
EXPOSE 80/tcp
# Thu, 02 Nov 2017 23:48:20 GMT
ENTRYPOINT ["/traefik"]
# Thu, 02 Nov 2017 23:48:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8e8638d34c45934d48d89851bad4920602c02375f8b174b76507e20813491c`  
		Last Modified: Thu, 02 Nov 2017 23:48:33 GMT  
		Size: 12.2 MB (12223155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a4261837e99952784cc4b4fc27396f062f7ebb202dae4966eb764b5d93f97654
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12064535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d42acc0bbef13ca043fdaa6c675f752103c2db1872fbb1b735791bf6e7f0ee`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 03 Nov 2017 04:54:45 GMT
COPY file:8d7e2a79cfdd730a8e7cf7201ff26d449273405142625997830de71664c566f6 in / 
# Fri, 03 Nov 2017 04:54:46 GMT
EXPOSE 80/tcp
# Fri, 03 Nov 2017 04:54:46 GMT
ENTRYPOINT ["/traefik"]
# Fri, 03 Nov 2017 04:54:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa5c73b733a0118e0ff1c0038a0892383d7a330471c5c5849c013a7263a801b`  
		Last Modified: Fri, 03 Nov 2017 04:55:18 GMT  
		Size: 11.9 MB (11909384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.3`

**does not exist** (yet?)

## `traefik:v1.4.3-alpine`

**does not exist** (yet?)

## `traefik:v1.4-alpine`

```console
$ docker pull traefik@sha256:56bdb834eb91b7491d1655acb35aa0449736b8e82ec97cce9c0da3a7493e3344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5a9a8feb27464638cf5595e3bb702b71a8e51b05377f666673609bb30eac0126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15554914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1644b8725f3fe1e7249ae35fc5f6930173f1db9b4b52114357299af9031bdd18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:11:48 GMT
RUN apk --no-cache add ca-certificates
# Fri, 03 Nov 2017 22:12:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 03 Nov 2017 22:12:04 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 03 Nov 2017 22:12:04 GMT
EXPOSE 80/tcp
# Fri, 03 Nov 2017 22:12:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:12:04 GMT
CMD ["traefik"]
# Fri, 03 Nov 2017 22:12:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b65437450eccdae36484465517e6a3d60fca76a2cd24e0caf21a67e539d4b6`  
		Last Modified: Fri, 03 Nov 2017 22:12:35 GMT  
		Size: 351.0 KB (350999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe144399c0c6d570a4e7a9c14a23202c922ef89310a19f938dc639581fb1125`  
		Last Modified: Fri, 03 Nov 2017 22:12:37 GMT  
		Size: 13.2 MB (13212140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9774c8f2cc57b0c1fc683734a5b63f533482162672432071dd82b5d9d6260843`  
		Last Modified: Fri, 03 Nov 2017 22:12:37 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
