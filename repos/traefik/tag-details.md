<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.4`](#traefik14)
-	[`traefik:1.4.5`](#traefik145)
-	[`traefik:1.4.5-alpine`](#traefik145-alpine)
-	[`traefik:1.4-alpine`](#traefik14-alpine)
-	[`traefik:1.5`](#traefik15)
-	[`traefik:1.5.0-rc2`](#traefik150-rc2)
-	[`traefik:1.5.0-rc2-alpine`](#traefik150-rc2-alpine)
-	[`traefik:1.5-alpine`](#traefik15-alpine)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:cancoillotte`](#traefikcancoillotte)
-	[`traefik:cancoillotte-alpine`](#traefikcancoillotte-alpine)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:roquefort`](#traefikroquefort)
-	[`traefik:roquefort-alpine`](#traefikroquefort-alpine)
-	[`traefik:v1.4`](#traefikv14)
-	[`traefik:v1.4.5`](#traefikv145)
-	[`traefik:v1.4.5-alpine`](#traefikv145-alpine)
-	[`traefik:v1.4-alpine`](#traefikv14-alpine)
-	[`traefik:v1.5`](#traefikv15)
-	[`traefik:v1.5.0-rc2`](#traefikv150-rc2)
-	[`traefik:v1.5.0-rc2-alpine`](#traefikv150-rc2-alpine)
-	[`traefik:v1.5-alpine`](#traefikv15-alpine)

## `traefik:1.4`

```console
$ docker pull traefik@sha256:6e485733badeab90f014856d2a92f683149ff70a09d814f269e87427393b4ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.4` - linux; amd64

```console
$ docker pull traefik@sha256:39f65075d60f49c48476bef74e55e820aa6d652541b6d883eb5e5168ecf2d03f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13202052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac1eb7ef1409263c94ce6c812bf226091728aaf88fb52b6d9f759a8f485bdce0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:49:06 GMT
COPY file:5d3b7c60ff86561895ca1b482579c6af6e91a187f1b3093c873ab55a5cdb4f8d in / 
# Thu, 07 Dec 2017 00:49:06 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:06 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:49:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f845d50b1ff55978ca1929462fa5be24e5bdfa0c36e2b047cb83f33881350ac0`  
		Last Modified: Thu, 07 Dec 2017 00:51:06 GMT  
		Size: 13.0 MB (13046900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4838208412e9683d7e1bbd167c35fc639f54709c5da32937e79c312cdbe6e0d9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12380760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd6450c43f864420e5b739d343edf09a965da8249e7a3d4d67f46548739fd64`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:51 GMT
COPY file:c5928fe0616bfa3a53353817bad4d8e49e5d2bd91efb3f5b4b28dcf9057e7a72 in / 
# Thu, 07 Dec 2017 00:48:51 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:52 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4803ff75e56cf7bbb47333a05094f85cd81815b7173ca6ad71c8b10f647bbe`  
		Last Modified: Thu, 07 Dec 2017 00:49:44 GMT  
		Size: 12.2 MB (12225576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.5`

```console
$ docker pull traefik@sha256:6e485733badeab90f014856d2a92f683149ff70a09d814f269e87427393b4ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.4.5` - linux; amd64

```console
$ docker pull traefik@sha256:39f65075d60f49c48476bef74e55e820aa6d652541b6d883eb5e5168ecf2d03f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13202052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac1eb7ef1409263c94ce6c812bf226091728aaf88fb52b6d9f759a8f485bdce0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:49:06 GMT
COPY file:5d3b7c60ff86561895ca1b482579c6af6e91a187f1b3093c873ab55a5cdb4f8d in / 
# Thu, 07 Dec 2017 00:49:06 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:06 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:49:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f845d50b1ff55978ca1929462fa5be24e5bdfa0c36e2b047cb83f33881350ac0`  
		Last Modified: Thu, 07 Dec 2017 00:51:06 GMT  
		Size: 13.0 MB (13046900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4838208412e9683d7e1bbd167c35fc639f54709c5da32937e79c312cdbe6e0d9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12380760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd6450c43f864420e5b739d343edf09a965da8249e7a3d4d67f46548739fd64`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:51 GMT
COPY file:c5928fe0616bfa3a53353817bad4d8e49e5d2bd91efb3f5b4b28dcf9057e7a72 in / 
# Thu, 07 Dec 2017 00:48:51 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:52 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4803ff75e56cf7bbb47333a05094f85cd81815b7173ca6ad71c8b10f647bbe`  
		Last Modified: Thu, 07 Dec 2017 00:49:44 GMT  
		Size: 12.2 MB (12225576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.5-alpine`

```console
$ docker pull traefik@sha256:9caae019e4345751a89bca37195fd9b3383908988c45549318dd4a1514a5b331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.4.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c1a16bdba220b18c816994c38c175f7b0b29ab9b13a4ccb1a080077815533e40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15557489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99632685918db397815d8a19426384997dc2a2280cb1ab1d21f80e8dd6edac91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:49:20 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:49:20 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:49:21 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:49:21 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:49:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78c1a84a9032f57469debca84b94aca0d52dc68fc9c21c0a6f9a4115f2adacc`  
		Last Modified: Fri, 01 Dec 2017 22:20:45 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2120ae5486399a5010bf5e31de6902649ecc49fd3eb92702d339f3e7eebe26a`  
		Last Modified: Thu, 07 Dec 2017 00:51:58 GMT  
		Size: 13.2 MB (13214654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103e16fd7e6be44b2bfce28572bf9376403d3bf393fd8a7eaf940ce3bee7ee23`  
		Last Modified: Thu, 07 Dec 2017 00:51:55 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:64aede1982b7701d6fc6412227f2af2c3966c00b0c39540388b7b47683b695e9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14712738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50101a74d8a8839571a82b6857b5b8647506d9f7e5063280bfb27622b3784bf4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 00:48:35 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:49:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:49:01 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:49:01 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:49:02 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:49:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a327851d323fa2321bd95a42227f24138450e43ea70af9570970baf49ae6ba`  
		Last Modified: Wed, 15 Nov 2017 00:49:06 GMT  
		Size: 352.2 KB (352157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d08645fccb1dae751e1cb1ed50691c0b6b5569ebe14fd7e3c3c043bce942437`  
		Last Modified: Thu, 07 Dec 2017 00:49:58 GMT  
		Size: 12.4 MB (12394085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d66c395380878e16dca79c83cccfcfd67219413c51b25c491637382cee98e5`  
		Last Modified: Thu, 07 Dec 2017 00:49:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4-alpine`

```console
$ docker pull traefik@sha256:9caae019e4345751a89bca37195fd9b3383908988c45549318dd4a1514a5b331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c1a16bdba220b18c816994c38c175f7b0b29ab9b13a4ccb1a080077815533e40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15557489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99632685918db397815d8a19426384997dc2a2280cb1ab1d21f80e8dd6edac91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:49:20 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:49:20 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:49:21 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:49:21 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:49:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78c1a84a9032f57469debca84b94aca0d52dc68fc9c21c0a6f9a4115f2adacc`  
		Last Modified: Fri, 01 Dec 2017 22:20:45 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2120ae5486399a5010bf5e31de6902649ecc49fd3eb92702d339f3e7eebe26a`  
		Last Modified: Thu, 07 Dec 2017 00:51:58 GMT  
		Size: 13.2 MB (13214654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103e16fd7e6be44b2bfce28572bf9376403d3bf393fd8a7eaf940ce3bee7ee23`  
		Last Modified: Thu, 07 Dec 2017 00:51:55 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:64aede1982b7701d6fc6412227f2af2c3966c00b0c39540388b7b47683b695e9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14712738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50101a74d8a8839571a82b6857b5b8647506d9f7e5063280bfb27622b3784bf4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 00:48:35 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:49:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:49:01 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:49:01 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:49:02 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:49:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a327851d323fa2321bd95a42227f24138450e43ea70af9570970baf49ae6ba`  
		Last Modified: Wed, 15 Nov 2017 00:49:06 GMT  
		Size: 352.2 KB (352157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d08645fccb1dae751e1cb1ed50691c0b6b5569ebe14fd7e3c3c043bce942437`  
		Last Modified: Thu, 07 Dec 2017 00:49:58 GMT  
		Size: 12.4 MB (12394085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d66c395380878e16dca79c83cccfcfd67219413c51b25c491637382cee98e5`  
		Last Modified: Thu, 07 Dec 2017 00:49:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5`

```console
$ docker pull traefik@sha256:dd1970f6ede05ee984cfcd27ce685b413d97c436d2f7bc447f6f8f5d56d72c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.5` - linux; amd64

```console
$ docker pull traefik@sha256:75cf8615385efea6f18a7e4536984b41589aa621a23d8d861a1856ee8c6fde94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13950579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37c22636ba68f3bc1df6b1f6a095116d59a6d397b455c63abc30f144518f6856`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:30 GMT
COPY file:4d27eb969b8707fde7fad452b62f9e4b295bbc5d0aee927b94f647717b6da816 in / 
# Thu, 07 Dec 2017 00:48:30 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:30 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40d7209beae42fb4f85eee4856c50725008ff787be5f32f9758eb34634cf549`  
		Last Modified: Thu, 07 Dec 2017 00:49:39 GMT  
		Size: 13.8 MB (13795427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:8e20a21fc7ec6db72676238ddc5a4f092eb4e6d3a4f6bde69819b8ceaaaa785c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13087005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138693cb51d4549f954992f8e91ffea73132bf27ddced8d5a3d5a53e6ddded7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:34 GMT
COPY file:eaca501869e249e0e49f704e394be897814ca854d0a931962ca23228d9475288 in / 
# Thu, 07 Dec 2017 00:48:34 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:35 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d364776005eeadc66e7371057dc61d1dae6721dd6e50f099b034451087841c1b`  
		Last Modified: Thu, 07 Dec 2017 00:49:15 GMT  
		Size: 12.9 MB (12931821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5.0-rc2`

```console
$ docker pull traefik@sha256:dd1970f6ede05ee984cfcd27ce685b413d97c436d2f7bc447f6f8f5d56d72c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.5.0-rc2` - linux; amd64

```console
$ docker pull traefik@sha256:75cf8615385efea6f18a7e4536984b41589aa621a23d8d861a1856ee8c6fde94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13950579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37c22636ba68f3bc1df6b1f6a095116d59a6d397b455c63abc30f144518f6856`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:30 GMT
COPY file:4d27eb969b8707fde7fad452b62f9e4b295bbc5d0aee927b94f647717b6da816 in / 
# Thu, 07 Dec 2017 00:48:30 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:30 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40d7209beae42fb4f85eee4856c50725008ff787be5f32f9758eb34634cf549`  
		Last Modified: Thu, 07 Dec 2017 00:49:39 GMT  
		Size: 13.8 MB (13795427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5.0-rc2` - linux; arm variant v6

```console
$ docker pull traefik@sha256:8e20a21fc7ec6db72676238ddc5a4f092eb4e6d3a4f6bde69819b8ceaaaa785c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13087005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138693cb51d4549f954992f8e91ffea73132bf27ddced8d5a3d5a53e6ddded7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:34 GMT
COPY file:eaca501869e249e0e49f704e394be897814ca854d0a931962ca23228d9475288 in / 
# Thu, 07 Dec 2017 00:48:34 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:35 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d364776005eeadc66e7371057dc61d1dae6721dd6e50f099b034451087841c1b`  
		Last Modified: Thu, 07 Dec 2017 00:49:15 GMT  
		Size: 12.9 MB (12931821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5.0-rc2-alpine`

```console
$ docker pull traefik@sha256:9cf9442a8175d077db386e9fa8fbd6c3fd11ddb63e39c667f562fd13d6ac97cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.5.0-rc2-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:d2621f5a849f5343e07581b54a07d0b815de7f170a1d2f1d7f8ee958a94c9434
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16305153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06cb2f25931c7e39ef69bc2936e2b8c0fde86765744c62f768d1ede4c90895b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:48:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:48:52 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:48:52 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:48:52 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:48:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78c1a84a9032f57469debca84b94aca0d52dc68fc9c21c0a6f9a4115f2adacc`  
		Last Modified: Fri, 01 Dec 2017 22:20:45 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9fdce1a9c16477887c8938db57e1208fe7ed8ed348421707658ade62de6af2b`  
		Last Modified: Thu, 07 Dec 2017 00:50:22 GMT  
		Size: 14.0 MB (13962318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53bedac0888cf5575e7d7a31b32c0f7c7bc62a1bf8cc1d4228ad3bec639054f`  
		Last Modified: Thu, 07 Dec 2017 00:50:19 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5.0-rc2-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:5a4cbd12689017e799410db9f525a4085381c38246437252158ea69ca7205000
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15418390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96d60775b5e17a10363d3e52f0157ef0ce0dc345a3c4ec27320c31aa120732a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 00:48:35 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:48:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:48:44 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:48:44 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:48:45 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:48:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a327851d323fa2321bd95a42227f24138450e43ea70af9570970baf49ae6ba`  
		Last Modified: Wed, 15 Nov 2017 00:49:06 GMT  
		Size: 352.2 KB (352157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15421ed1e749017d374ccb254f5f2dc7b348516de96726f4488c0e30493fcdd`  
		Last Modified: Thu, 07 Dec 2017 00:49:29 GMT  
		Size: 13.1 MB (13099735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233d0f381a265bfdc89864781ec6dbfcff7a7917c7570af817dbd42c1f43f39f`  
		Last Modified: Thu, 07 Dec 2017 00:49:25 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5-alpine`

```console
$ docker pull traefik@sha256:9cf9442a8175d077db386e9fa8fbd6c3fd11ddb63e39c667f562fd13d6ac97cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:d2621f5a849f5343e07581b54a07d0b815de7f170a1d2f1d7f8ee958a94c9434
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16305153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06cb2f25931c7e39ef69bc2936e2b8c0fde86765744c62f768d1ede4c90895b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:48:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:48:52 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:48:52 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:48:52 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:48:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78c1a84a9032f57469debca84b94aca0d52dc68fc9c21c0a6f9a4115f2adacc`  
		Last Modified: Fri, 01 Dec 2017 22:20:45 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9fdce1a9c16477887c8938db57e1208fe7ed8ed348421707658ade62de6af2b`  
		Last Modified: Thu, 07 Dec 2017 00:50:22 GMT  
		Size: 14.0 MB (13962318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53bedac0888cf5575e7d7a31b32c0f7c7bc62a1bf8cc1d4228ad3bec639054f`  
		Last Modified: Thu, 07 Dec 2017 00:50:19 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:5a4cbd12689017e799410db9f525a4085381c38246437252158ea69ca7205000
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15418390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96d60775b5e17a10363d3e52f0157ef0ce0dc345a3c4ec27320c31aa120732a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 00:48:35 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:48:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:48:44 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:48:44 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:48:45 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:48:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a327851d323fa2321bd95a42227f24138450e43ea70af9570970baf49ae6ba`  
		Last Modified: Wed, 15 Nov 2017 00:49:06 GMT  
		Size: 352.2 KB (352157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15421ed1e749017d374ccb254f5f2dc7b348516de96726f4488c0e30493fcdd`  
		Last Modified: Thu, 07 Dec 2017 00:49:29 GMT  
		Size: 13.1 MB (13099735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233d0f381a265bfdc89864781ec6dbfcff7a7917c7570af817dbd42c1f43f39f`  
		Last Modified: Thu, 07 Dec 2017 00:49:25 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:9caae019e4345751a89bca37195fd9b3383908988c45549318dd4a1514a5b331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c1a16bdba220b18c816994c38c175f7b0b29ab9b13a4ccb1a080077815533e40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15557489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99632685918db397815d8a19426384997dc2a2280cb1ab1d21f80e8dd6edac91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:49:20 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:49:20 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:49:21 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:49:21 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:49:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78c1a84a9032f57469debca84b94aca0d52dc68fc9c21c0a6f9a4115f2adacc`  
		Last Modified: Fri, 01 Dec 2017 22:20:45 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2120ae5486399a5010bf5e31de6902649ecc49fd3eb92702d339f3e7eebe26a`  
		Last Modified: Thu, 07 Dec 2017 00:51:58 GMT  
		Size: 13.2 MB (13214654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103e16fd7e6be44b2bfce28572bf9376403d3bf393fd8a7eaf940ce3bee7ee23`  
		Last Modified: Thu, 07 Dec 2017 00:51:55 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:64aede1982b7701d6fc6412227f2af2c3966c00b0c39540388b7b47683b695e9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14712738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50101a74d8a8839571a82b6857b5b8647506d9f7e5063280bfb27622b3784bf4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 00:48:35 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:49:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:49:01 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:49:01 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:49:02 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:49:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a327851d323fa2321bd95a42227f24138450e43ea70af9570970baf49ae6ba`  
		Last Modified: Wed, 15 Nov 2017 00:49:06 GMT  
		Size: 352.2 KB (352157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d08645fccb1dae751e1cb1ed50691c0b6b5569ebe14fd7e3c3c043bce942437`  
		Last Modified: Thu, 07 Dec 2017 00:49:58 GMT  
		Size: 12.4 MB (12394085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d66c395380878e16dca79c83cccfcfd67219413c51b25c491637382cee98e5`  
		Last Modified: Thu, 07 Dec 2017 00:49:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:cancoillotte`

```console
$ docker pull traefik@sha256:dd1970f6ede05ee984cfcd27ce685b413d97c436d2f7bc447f6f8f5d56d72c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:cancoillotte` - linux; amd64

```console
$ docker pull traefik@sha256:75cf8615385efea6f18a7e4536984b41589aa621a23d8d861a1856ee8c6fde94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13950579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37c22636ba68f3bc1df6b1f6a095116d59a6d397b455c63abc30f144518f6856`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:30 GMT
COPY file:4d27eb969b8707fde7fad452b62f9e4b295bbc5d0aee927b94f647717b6da816 in / 
# Thu, 07 Dec 2017 00:48:30 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:30 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40d7209beae42fb4f85eee4856c50725008ff787be5f32f9758eb34634cf549`  
		Last Modified: Thu, 07 Dec 2017 00:49:39 GMT  
		Size: 13.8 MB (13795427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte` - linux; arm variant v6

```console
$ docker pull traefik@sha256:8e20a21fc7ec6db72676238ddc5a4f092eb4e6d3a4f6bde69819b8ceaaaa785c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13087005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138693cb51d4549f954992f8e91ffea73132bf27ddced8d5a3d5a53e6ddded7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:34 GMT
COPY file:eaca501869e249e0e49f704e394be897814ca854d0a931962ca23228d9475288 in / 
# Thu, 07 Dec 2017 00:48:34 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:35 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d364776005eeadc66e7371057dc61d1dae6721dd6e50f099b034451087841c1b`  
		Last Modified: Thu, 07 Dec 2017 00:49:15 GMT  
		Size: 12.9 MB (12931821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:cancoillotte-alpine`

```console
$ docker pull traefik@sha256:9cf9442a8175d077db386e9fa8fbd6c3fd11ddb63e39c667f562fd13d6ac97cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:cancoillotte-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:d2621f5a849f5343e07581b54a07d0b815de7f170a1d2f1d7f8ee958a94c9434
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16305153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06cb2f25931c7e39ef69bc2936e2b8c0fde86765744c62f768d1ede4c90895b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:48:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:48:52 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:48:52 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:48:52 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:48:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78c1a84a9032f57469debca84b94aca0d52dc68fc9c21c0a6f9a4115f2adacc`  
		Last Modified: Fri, 01 Dec 2017 22:20:45 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9fdce1a9c16477887c8938db57e1208fe7ed8ed348421707658ade62de6af2b`  
		Last Modified: Thu, 07 Dec 2017 00:50:22 GMT  
		Size: 14.0 MB (13962318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53bedac0888cf5575e7d7a31b32c0f7c7bc62a1bf8cc1d4228ad3bec639054f`  
		Last Modified: Thu, 07 Dec 2017 00:50:19 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:5a4cbd12689017e799410db9f525a4085381c38246437252158ea69ca7205000
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15418390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96d60775b5e17a10363d3e52f0157ef0ce0dc345a3c4ec27320c31aa120732a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 00:48:35 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:48:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:48:44 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:48:44 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:48:45 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:48:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a327851d323fa2321bd95a42227f24138450e43ea70af9570970baf49ae6ba`  
		Last Modified: Wed, 15 Nov 2017 00:49:06 GMT  
		Size: 352.2 KB (352157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15421ed1e749017d374ccb254f5f2dc7b348516de96726f4488c0e30493fcdd`  
		Last Modified: Thu, 07 Dec 2017 00:49:29 GMT  
		Size: 13.1 MB (13099735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233d0f381a265bfdc89864781ec6dbfcff7a7917c7570af817dbd42c1f43f39f`  
		Last Modified: Thu, 07 Dec 2017 00:49:25 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:6e485733badeab90f014856d2a92f683149ff70a09d814f269e87427393b4ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:39f65075d60f49c48476bef74e55e820aa6d652541b6d883eb5e5168ecf2d03f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13202052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac1eb7ef1409263c94ce6c812bf226091728aaf88fb52b6d9f759a8f485bdce0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:49:06 GMT
COPY file:5d3b7c60ff86561895ca1b482579c6af6e91a187f1b3093c873ab55a5cdb4f8d in / 
# Thu, 07 Dec 2017 00:49:06 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:06 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:49:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f845d50b1ff55978ca1929462fa5be24e5bdfa0c36e2b047cb83f33881350ac0`  
		Last Modified: Thu, 07 Dec 2017 00:51:06 GMT  
		Size: 13.0 MB (13046900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4838208412e9683d7e1bbd167c35fc639f54709c5da32937e79c312cdbe6e0d9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12380760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd6450c43f864420e5b739d343edf09a965da8249e7a3d4d67f46548739fd64`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:51 GMT
COPY file:c5928fe0616bfa3a53353817bad4d8e49e5d2bd91efb3f5b4b28dcf9057e7a72 in / 
# Thu, 07 Dec 2017 00:48:51 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:52 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4803ff75e56cf7bbb47333a05094f85cd81815b7173ca6ad71c8b10f647bbe`  
		Last Modified: Thu, 07 Dec 2017 00:49:44 GMT  
		Size: 12.2 MB (12225576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort`

```console
$ docker pull traefik@sha256:6e485733badeab90f014856d2a92f683149ff70a09d814f269e87427393b4ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:roquefort` - linux; amd64

```console
$ docker pull traefik@sha256:39f65075d60f49c48476bef74e55e820aa6d652541b6d883eb5e5168ecf2d03f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13202052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac1eb7ef1409263c94ce6c812bf226091728aaf88fb52b6d9f759a8f485bdce0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:49:06 GMT
COPY file:5d3b7c60ff86561895ca1b482579c6af6e91a187f1b3093c873ab55a5cdb4f8d in / 
# Thu, 07 Dec 2017 00:49:06 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:06 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:49:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f845d50b1ff55978ca1929462fa5be24e5bdfa0c36e2b047cb83f33881350ac0`  
		Last Modified: Thu, 07 Dec 2017 00:51:06 GMT  
		Size: 13.0 MB (13046900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4838208412e9683d7e1bbd167c35fc639f54709c5da32937e79c312cdbe6e0d9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12380760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd6450c43f864420e5b739d343edf09a965da8249e7a3d4d67f46548739fd64`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:51 GMT
COPY file:c5928fe0616bfa3a53353817bad4d8e49e5d2bd91efb3f5b4b28dcf9057e7a72 in / 
# Thu, 07 Dec 2017 00:48:51 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:52 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4803ff75e56cf7bbb47333a05094f85cd81815b7173ca6ad71c8b10f647bbe`  
		Last Modified: Thu, 07 Dec 2017 00:49:44 GMT  
		Size: 12.2 MB (12225576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:9caae019e4345751a89bca37195fd9b3383908988c45549318dd4a1514a5b331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:roquefort-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c1a16bdba220b18c816994c38c175f7b0b29ab9b13a4ccb1a080077815533e40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15557489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99632685918db397815d8a19426384997dc2a2280cb1ab1d21f80e8dd6edac91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:49:20 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:49:20 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:49:21 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:49:21 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:49:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78c1a84a9032f57469debca84b94aca0d52dc68fc9c21c0a6f9a4115f2adacc`  
		Last Modified: Fri, 01 Dec 2017 22:20:45 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2120ae5486399a5010bf5e31de6902649ecc49fd3eb92702d339f3e7eebe26a`  
		Last Modified: Thu, 07 Dec 2017 00:51:58 GMT  
		Size: 13.2 MB (13214654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103e16fd7e6be44b2bfce28572bf9376403d3bf393fd8a7eaf940ce3bee7ee23`  
		Last Modified: Thu, 07 Dec 2017 00:51:55 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:64aede1982b7701d6fc6412227f2af2c3966c00b0c39540388b7b47683b695e9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14712738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50101a74d8a8839571a82b6857b5b8647506d9f7e5063280bfb27622b3784bf4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 00:48:35 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:49:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:49:01 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:49:01 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:49:02 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:49:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a327851d323fa2321bd95a42227f24138450e43ea70af9570970baf49ae6ba`  
		Last Modified: Wed, 15 Nov 2017 00:49:06 GMT  
		Size: 352.2 KB (352157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d08645fccb1dae751e1cb1ed50691c0b6b5569ebe14fd7e3c3c043bce942437`  
		Last Modified: Thu, 07 Dec 2017 00:49:58 GMT  
		Size: 12.4 MB (12394085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d66c395380878e16dca79c83cccfcfd67219413c51b25c491637382cee98e5`  
		Last Modified: Thu, 07 Dec 2017 00:49:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4`

```console
$ docker pull traefik@sha256:6e485733badeab90f014856d2a92f683149ff70a09d814f269e87427393b4ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.4` - linux; amd64

```console
$ docker pull traefik@sha256:39f65075d60f49c48476bef74e55e820aa6d652541b6d883eb5e5168ecf2d03f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13202052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac1eb7ef1409263c94ce6c812bf226091728aaf88fb52b6d9f759a8f485bdce0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:49:06 GMT
COPY file:5d3b7c60ff86561895ca1b482579c6af6e91a187f1b3093c873ab55a5cdb4f8d in / 
# Thu, 07 Dec 2017 00:49:06 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:06 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:49:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f845d50b1ff55978ca1929462fa5be24e5bdfa0c36e2b047cb83f33881350ac0`  
		Last Modified: Thu, 07 Dec 2017 00:51:06 GMT  
		Size: 13.0 MB (13046900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4838208412e9683d7e1bbd167c35fc639f54709c5da32937e79c312cdbe6e0d9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12380760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd6450c43f864420e5b739d343edf09a965da8249e7a3d4d67f46548739fd64`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:51 GMT
COPY file:c5928fe0616bfa3a53353817bad4d8e49e5d2bd91efb3f5b4b28dcf9057e7a72 in / 
# Thu, 07 Dec 2017 00:48:51 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:52 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4803ff75e56cf7bbb47333a05094f85cd81815b7173ca6ad71c8b10f647bbe`  
		Last Modified: Thu, 07 Dec 2017 00:49:44 GMT  
		Size: 12.2 MB (12225576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.5`

```console
$ docker pull traefik@sha256:6e485733badeab90f014856d2a92f683149ff70a09d814f269e87427393b4ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.4.5` - linux; amd64

```console
$ docker pull traefik@sha256:39f65075d60f49c48476bef74e55e820aa6d652541b6d883eb5e5168ecf2d03f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13202052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac1eb7ef1409263c94ce6c812bf226091728aaf88fb52b6d9f759a8f485bdce0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:49:06 GMT
COPY file:5d3b7c60ff86561895ca1b482579c6af6e91a187f1b3093c873ab55a5cdb4f8d in / 
# Thu, 07 Dec 2017 00:49:06 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:06 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:49:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f845d50b1ff55978ca1929462fa5be24e5bdfa0c36e2b047cb83f33881350ac0`  
		Last Modified: Thu, 07 Dec 2017 00:51:06 GMT  
		Size: 13.0 MB (13046900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4838208412e9683d7e1bbd167c35fc639f54709c5da32937e79c312cdbe6e0d9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12380760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd6450c43f864420e5b739d343edf09a965da8249e7a3d4d67f46548739fd64`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:51 GMT
COPY file:c5928fe0616bfa3a53353817bad4d8e49e5d2bd91efb3f5b4b28dcf9057e7a72 in / 
# Thu, 07 Dec 2017 00:48:51 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:52 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4803ff75e56cf7bbb47333a05094f85cd81815b7173ca6ad71c8b10f647bbe`  
		Last Modified: Thu, 07 Dec 2017 00:49:44 GMT  
		Size: 12.2 MB (12225576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.5-alpine`

```console
$ docker pull traefik@sha256:9caae019e4345751a89bca37195fd9b3383908988c45549318dd4a1514a5b331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.4.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c1a16bdba220b18c816994c38c175f7b0b29ab9b13a4ccb1a080077815533e40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15557489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99632685918db397815d8a19426384997dc2a2280cb1ab1d21f80e8dd6edac91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:49:20 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:49:20 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:49:21 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:49:21 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:49:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78c1a84a9032f57469debca84b94aca0d52dc68fc9c21c0a6f9a4115f2adacc`  
		Last Modified: Fri, 01 Dec 2017 22:20:45 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2120ae5486399a5010bf5e31de6902649ecc49fd3eb92702d339f3e7eebe26a`  
		Last Modified: Thu, 07 Dec 2017 00:51:58 GMT  
		Size: 13.2 MB (13214654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103e16fd7e6be44b2bfce28572bf9376403d3bf393fd8a7eaf940ce3bee7ee23`  
		Last Modified: Thu, 07 Dec 2017 00:51:55 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:64aede1982b7701d6fc6412227f2af2c3966c00b0c39540388b7b47683b695e9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14712738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50101a74d8a8839571a82b6857b5b8647506d9f7e5063280bfb27622b3784bf4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 00:48:35 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:49:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:49:01 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:49:01 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:49:02 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:49:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a327851d323fa2321bd95a42227f24138450e43ea70af9570970baf49ae6ba`  
		Last Modified: Wed, 15 Nov 2017 00:49:06 GMT  
		Size: 352.2 KB (352157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d08645fccb1dae751e1cb1ed50691c0b6b5569ebe14fd7e3c3c043bce942437`  
		Last Modified: Thu, 07 Dec 2017 00:49:58 GMT  
		Size: 12.4 MB (12394085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d66c395380878e16dca79c83cccfcfd67219413c51b25c491637382cee98e5`  
		Last Modified: Thu, 07 Dec 2017 00:49:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4-alpine`

```console
$ docker pull traefik@sha256:9caae019e4345751a89bca37195fd9b3383908988c45549318dd4a1514a5b331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:c1a16bdba220b18c816994c38c175f7b0b29ab9b13a4ccb1a080077815533e40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15557489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99632685918db397815d8a19426384997dc2a2280cb1ab1d21f80e8dd6edac91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:49:20 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:49:20 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:49:21 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:49:21 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:49:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78c1a84a9032f57469debca84b94aca0d52dc68fc9c21c0a6f9a4115f2adacc`  
		Last Modified: Fri, 01 Dec 2017 22:20:45 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2120ae5486399a5010bf5e31de6902649ecc49fd3eb92702d339f3e7eebe26a`  
		Last Modified: Thu, 07 Dec 2017 00:51:58 GMT  
		Size: 13.2 MB (13214654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103e16fd7e6be44b2bfce28572bf9376403d3bf393fd8a7eaf940ce3bee7ee23`  
		Last Modified: Thu, 07 Dec 2017 00:51:55 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:64aede1982b7701d6fc6412227f2af2c3966c00b0c39540388b7b47683b695e9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14712738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50101a74d8a8839571a82b6857b5b8647506d9f7e5063280bfb27622b3784bf4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 00:48:35 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:49:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:49:01 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:49:01 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:49:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:49:02 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:49:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a327851d323fa2321bd95a42227f24138450e43ea70af9570970baf49ae6ba`  
		Last Modified: Wed, 15 Nov 2017 00:49:06 GMT  
		Size: 352.2 KB (352157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d08645fccb1dae751e1cb1ed50691c0b6b5569ebe14fd7e3c3c043bce942437`  
		Last Modified: Thu, 07 Dec 2017 00:49:58 GMT  
		Size: 12.4 MB (12394085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d66c395380878e16dca79c83cccfcfd67219413c51b25c491637382cee98e5`  
		Last Modified: Thu, 07 Dec 2017 00:49:55 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5`

```console
$ docker pull traefik@sha256:dd1970f6ede05ee984cfcd27ce685b413d97c436d2f7bc447f6f8f5d56d72c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.5` - linux; amd64

```console
$ docker pull traefik@sha256:75cf8615385efea6f18a7e4536984b41589aa621a23d8d861a1856ee8c6fde94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13950579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37c22636ba68f3bc1df6b1f6a095116d59a6d397b455c63abc30f144518f6856`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:30 GMT
COPY file:4d27eb969b8707fde7fad452b62f9e4b295bbc5d0aee927b94f647717b6da816 in / 
# Thu, 07 Dec 2017 00:48:30 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:30 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40d7209beae42fb4f85eee4856c50725008ff787be5f32f9758eb34634cf549`  
		Last Modified: Thu, 07 Dec 2017 00:49:39 GMT  
		Size: 13.8 MB (13795427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:8e20a21fc7ec6db72676238ddc5a4f092eb4e6d3a4f6bde69819b8ceaaaa785c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13087005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138693cb51d4549f954992f8e91ffea73132bf27ddced8d5a3d5a53e6ddded7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:34 GMT
COPY file:eaca501869e249e0e49f704e394be897814ca854d0a931962ca23228d9475288 in / 
# Thu, 07 Dec 2017 00:48:34 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:35 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d364776005eeadc66e7371057dc61d1dae6721dd6e50f099b034451087841c1b`  
		Last Modified: Thu, 07 Dec 2017 00:49:15 GMT  
		Size: 12.9 MB (12931821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5.0-rc2`

```console
$ docker pull traefik@sha256:dd1970f6ede05ee984cfcd27ce685b413d97c436d2f7bc447f6f8f5d56d72c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.5.0-rc2` - linux; amd64

```console
$ docker pull traefik@sha256:75cf8615385efea6f18a7e4536984b41589aa621a23d8d861a1856ee8c6fde94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13950579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37c22636ba68f3bc1df6b1f6a095116d59a6d397b455c63abc30f144518f6856`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:30 GMT
COPY file:4d27eb969b8707fde7fad452b62f9e4b295bbc5d0aee927b94f647717b6da816 in / 
# Thu, 07 Dec 2017 00:48:30 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:30 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:31 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40d7209beae42fb4f85eee4856c50725008ff787be5f32f9758eb34634cf549`  
		Last Modified: Thu, 07 Dec 2017 00:49:39 GMT  
		Size: 13.8 MB (13795427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5.0-rc2` - linux; arm variant v6

```console
$ docker pull traefik@sha256:8e20a21fc7ec6db72676238ddc5a4f092eb4e6d3a4f6bde69819b8ceaaaa785c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13087005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138693cb51d4549f954992f8e91ffea73132bf27ddced8d5a3d5a53e6ddded7a`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 00:48:34 GMT
COPY file:eaca501869e249e0e49f704e394be897814ca854d0a931962ca23228d9475288 in / 
# Thu, 07 Dec 2017 00:48:34 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:35 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 00:48:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d364776005eeadc66e7371057dc61d1dae6721dd6e50f099b034451087841c1b`  
		Last Modified: Thu, 07 Dec 2017 00:49:15 GMT  
		Size: 12.9 MB (12931821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5.0-rc2-alpine`

```console
$ docker pull traefik@sha256:9cf9442a8175d077db386e9fa8fbd6c3fd11ddb63e39c667f562fd13d6ac97cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.5.0-rc2-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:d2621f5a849f5343e07581b54a07d0b815de7f170a1d2f1d7f8ee958a94c9434
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16305153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06cb2f25931c7e39ef69bc2936e2b8c0fde86765744c62f768d1ede4c90895b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:48:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:48:52 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:48:52 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:48:52 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:48:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78c1a84a9032f57469debca84b94aca0d52dc68fc9c21c0a6f9a4115f2adacc`  
		Last Modified: Fri, 01 Dec 2017 22:20:45 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9fdce1a9c16477887c8938db57e1208fe7ed8ed348421707658ade62de6af2b`  
		Last Modified: Thu, 07 Dec 2017 00:50:22 GMT  
		Size: 14.0 MB (13962318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53bedac0888cf5575e7d7a31b32c0f7c7bc62a1bf8cc1d4228ad3bec639054f`  
		Last Modified: Thu, 07 Dec 2017 00:50:19 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5.0-rc2-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:5a4cbd12689017e799410db9f525a4085381c38246437252158ea69ca7205000
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15418390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96d60775b5e17a10363d3e52f0157ef0ce0dc345a3c4ec27320c31aa120732a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 00:48:35 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:48:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:48:44 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:48:44 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:48:45 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:48:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a327851d323fa2321bd95a42227f24138450e43ea70af9570970baf49ae6ba`  
		Last Modified: Wed, 15 Nov 2017 00:49:06 GMT  
		Size: 352.2 KB (352157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15421ed1e749017d374ccb254f5f2dc7b348516de96726f4488c0e30493fcdd`  
		Last Modified: Thu, 07 Dec 2017 00:49:29 GMT  
		Size: 13.1 MB (13099735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233d0f381a265bfdc89864781ec6dbfcff7a7917c7570af817dbd42c1f43f39f`  
		Last Modified: Thu, 07 Dec 2017 00:49:25 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5-alpine`

```console
$ docker pull traefik@sha256:9cf9442a8175d077db386e9fa8fbd6c3fd11ddb63e39c667f562fd13d6ac97cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:d2621f5a849f5343e07581b54a07d0b815de7f170a1d2f1d7f8ee958a94c9434
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16305153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06cb2f25931c7e39ef69bc2936e2b8c0fde86765744c62f768d1ede4c90895b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:48:51 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:48:52 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:48:52 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:48:52 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:48:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78c1a84a9032f57469debca84b94aca0d52dc68fc9c21c0a6f9a4115f2adacc`  
		Last Modified: Fri, 01 Dec 2017 22:20:45 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9fdce1a9c16477887c8938db57e1208fe7ed8ed348421707658ade62de6af2b`  
		Last Modified: Thu, 07 Dec 2017 00:50:22 GMT  
		Size: 14.0 MB (13962318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53bedac0888cf5575e7d7a31b32c0f7c7bc62a1bf8cc1d4228ad3bec639054f`  
		Last Modified: Thu, 07 Dec 2017 00:50:19 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:5a4cbd12689017e799410db9f525a4085381c38246437252158ea69ca7205000
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15418390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96d60775b5e17a10363d3e52f0157ef0ce0dc345a3c4ec27320c31aa120732a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 00:48:35 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 00:48:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 00:48:44 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 00:48:44 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 00:48:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 00:48:45 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 00:48:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a327851d323fa2321bd95a42227f24138450e43ea70af9570970baf49ae6ba`  
		Last Modified: Wed, 15 Nov 2017 00:49:06 GMT  
		Size: 352.2 KB (352157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15421ed1e749017d374ccb254f5f2dc7b348516de96726f4488c0e30493fcdd`  
		Last Modified: Thu, 07 Dec 2017 00:49:29 GMT  
		Size: 13.1 MB (13099735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233d0f381a265bfdc89864781ec6dbfcff7a7917c7570af817dbd42c1f43f39f`  
		Last Modified: Thu, 07 Dec 2017 00:49:25 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
