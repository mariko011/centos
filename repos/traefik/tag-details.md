<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.4`](#traefik14)
-	[`traefik:1.4.5`](#traefik145)
-	[`traefik:1.4.5-alpine`](#traefik145-alpine)
-	[`traefik:1.4-alpine`](#traefik14-alpine)
-	[`traefik:1.5`](#traefik15)
-	[`traefik:1.5.0-rc3`](#traefik150-rc3)
-	[`traefik:1.5.0-rc3-alpine`](#traefik150-rc3-alpine)
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
-	[`traefik:v1.5.0-rc3`](#traefikv150-rc3)
-	[`traefik:v1.5.0-rc3-alpine`](#traefikv150-rc3-alpine)
-	[`traefik:v1.5-alpine`](#traefikv15-alpine)

## `traefik:1.4`

```console
$ docker pull traefik@sha256:9c299d9613cb01564c8219f4bc56ecc55f30d8f06d35cf3ecf83a85426c13225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:0dcb9e624fb5f9980024ab6ed0d944479da6271490cda5cef7ddd6d40723f879
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12065471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee192c2d6e86fbf771d2663a5095914f682a95d7ff93fb8ed73b3dc2d2c848c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 05:56:26 GMT
COPY file:59a9be5ce97f56d03eafbf2871b291b6a0c2f996110c51c60e2a3de0c71ebd67 in / 
# Thu, 07 Dec 2017 05:56:27 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 05:56:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 05:56:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78ae1198e2bca9ece0844a6bd0a8f5bb352da0221bd8e66819258eca7431764`  
		Last Modified: Thu, 07 Dec 2017 06:00:40 GMT  
		Size: 11.9 MB (11910320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.5`

```console
$ docker pull traefik@sha256:9c299d9613cb01564c8219f4bc56ecc55f30d8f06d35cf3ecf83a85426c13225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.4.5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:0dcb9e624fb5f9980024ab6ed0d944479da6271490cda5cef7ddd6d40723f879
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12065471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee192c2d6e86fbf771d2663a5095914f682a95d7ff93fb8ed73b3dc2d2c848c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 05:56:26 GMT
COPY file:59a9be5ce97f56d03eafbf2871b291b6a0c2f996110c51c60e2a3de0c71ebd67 in / 
# Thu, 07 Dec 2017 05:56:27 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 05:56:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 05:56:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78ae1198e2bca9ece0844a6bd0a8f5bb352da0221bd8e66819258eca7431764`  
		Last Modified: Thu, 07 Dec 2017 06:00:40 GMT  
		Size: 11.9 MB (11910320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.5-alpine`

```console
$ docker pull traefik@sha256:9b02a25ffd77e058738f452c8d9b17c4514e5d4c543965ee1bbbee900f092fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.4.5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:660dd7c5072285a1d2cba24f8c9608991c6094467450a08eff832aaa646275ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14343997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de97ee3c01f929d7ed16e11977568507574e290224c8363326be0380fb58c42b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 05:56:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 05:56:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 05:57:00 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 05:57:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 05:57:01 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 05:57:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f897a251e086a14fa6e3712d3c316b442f2284fa86242cec5d3f2f2be5f0b8`  
		Last Modified: Thu, 07 Dec 2017 06:02:29 GMT  
		Size: 12.1 MB (12077238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71708d1302580230a967ad08ce0c3edf33ef37d7c0b356a7542c69809c00ed28`  
		Last Modified: Thu, 07 Dec 2017 06:02:24 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4-alpine`

```console
$ docker pull traefik@sha256:9b02a25ffd77e058738f452c8d9b17c4514e5d4c543965ee1bbbee900f092fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:660dd7c5072285a1d2cba24f8c9608991c6094467450a08eff832aaa646275ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14343997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de97ee3c01f929d7ed16e11977568507574e290224c8363326be0380fb58c42b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 05:56:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 05:56:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 05:57:00 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 05:57:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 05:57:01 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 05:57:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f897a251e086a14fa6e3712d3c316b442f2284fa86242cec5d3f2f2be5f0b8`  
		Last Modified: Thu, 07 Dec 2017 06:02:29 GMT  
		Size: 12.1 MB (12077238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71708d1302580230a967ad08ce0c3edf33ef37d7c0b356a7542c69809c00ed28`  
		Last Modified: Thu, 07 Dec 2017 06:02:24 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5`

```console
$ docker pull traefik@sha256:665bd68a63060b1916daecf40a6e853ec3a193cfd69021517ba37f4f11d379f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.5` - linux; amd64

```console
$ docker pull traefik@sha256:aaade837cb07fb43c5b657c52b01897e382a13974d196b6f5070110c7dfb3b9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13956174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eea7dfcac119a6ba0d26821e004636a39ea92e59a04647d3f13c654a1055bd8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 20 Dec 2017 19:56:24 GMT
COPY file:6ddc329499ee54f240ecd43f13d2e39dad00a03eba1f214daefe3ebfcc77e6f0 in / 
# Wed, 20 Dec 2017 19:56:24 GMT
EXPOSE 80/tcp
# Wed, 20 Dec 2017 19:56:24 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Dec 2017 19:56:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd98f21af48f9fd20bd9876bfcd7374c433ca482e711074752a1c36f227b6b`  
		Last Modified: Wed, 20 Dec 2017 20:00:35 GMT  
		Size: 13.8 MB (13801022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5.0-rc3`

```console
$ docker pull traefik@sha256:665bd68a63060b1916daecf40a6e853ec3a193cfd69021517ba37f4f11d379f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.5.0-rc3` - linux; amd64

```console
$ docker pull traefik@sha256:aaade837cb07fb43c5b657c52b01897e382a13974d196b6f5070110c7dfb3b9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13956174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eea7dfcac119a6ba0d26821e004636a39ea92e59a04647d3f13c654a1055bd8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 20 Dec 2017 19:56:24 GMT
COPY file:6ddc329499ee54f240ecd43f13d2e39dad00a03eba1f214daefe3ebfcc77e6f0 in / 
# Wed, 20 Dec 2017 19:56:24 GMT
EXPOSE 80/tcp
# Wed, 20 Dec 2017 19:56:24 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Dec 2017 19:56:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd98f21af48f9fd20bd9876bfcd7374c433ca482e711074752a1c36f227b6b`  
		Last Modified: Wed, 20 Dec 2017 20:00:35 GMT  
		Size: 13.8 MB (13801022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5.0-rc3-alpine`

```console
$ docker pull traefik@sha256:402c07cbd730f6121632047de06b1ec03874481d62999366e2e362fd14375ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.5.0-rc3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5df27da0b8e597bd865c9eb3520ffb6b50f4509e4ed78f32a0fc68fd6afc3115
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16309892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a0fa8d99aa69c81a47cda3ae9c8f27cebac61a32f3cc92c5c7b2ac61682cd8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Wed, 20 Dec 2017 19:57:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Dec 2017 19:57:04 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 20 Dec 2017 19:57:04 GMT
EXPOSE 80/tcp
# Wed, 20 Dec 2017 19:57:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Dec 2017 19:57:05 GMT
CMD ["traefik"]
# Wed, 20 Dec 2017 19:57:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:575e91451eafd9a3f961922301e67fee3daf3abd1ce88aa330f36033765a99e1`  
		Last Modified: Wed, 20 Dec 2017 20:01:42 GMT  
		Size: 14.0 MB (13967060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1efec35722dd42d34aabce9b7ce683c990510b60fd43ba6ee2e588eed71082`  
		Last Modified: Wed, 20 Dec 2017 20:01:38 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5-alpine`

```console
$ docker pull traefik@sha256:402c07cbd730f6121632047de06b1ec03874481d62999366e2e362fd14375ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:1.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5df27da0b8e597bd865c9eb3520ffb6b50f4509e4ed78f32a0fc68fd6afc3115
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16309892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a0fa8d99aa69c81a47cda3ae9c8f27cebac61a32f3cc92c5c7b2ac61682cd8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Wed, 20 Dec 2017 19:57:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Dec 2017 19:57:04 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 20 Dec 2017 19:57:04 GMT
EXPOSE 80/tcp
# Wed, 20 Dec 2017 19:57:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Dec 2017 19:57:05 GMT
CMD ["traefik"]
# Wed, 20 Dec 2017 19:57:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:575e91451eafd9a3f961922301e67fee3daf3abd1ce88aa330f36033765a99e1`  
		Last Modified: Wed, 20 Dec 2017 20:01:42 GMT  
		Size: 14.0 MB (13967060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1efec35722dd42d34aabce9b7ce683c990510b60fd43ba6ee2e588eed71082`  
		Last Modified: Wed, 20 Dec 2017 20:01:38 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:9b02a25ffd77e058738f452c8d9b17c4514e5d4c543965ee1bbbee900f092fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:660dd7c5072285a1d2cba24f8c9608991c6094467450a08eff832aaa646275ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14343997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de97ee3c01f929d7ed16e11977568507574e290224c8363326be0380fb58c42b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 05:56:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 05:56:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 05:57:00 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 05:57:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 05:57:01 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 05:57:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f897a251e086a14fa6e3712d3c316b442f2284fa86242cec5d3f2f2be5f0b8`  
		Last Modified: Thu, 07 Dec 2017 06:02:29 GMT  
		Size: 12.1 MB (12077238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71708d1302580230a967ad08ce0c3edf33ef37d7c0b356a7542c69809c00ed28`  
		Last Modified: Thu, 07 Dec 2017 06:02:24 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:cancoillotte`

```console
$ docker pull traefik@sha256:665bd68a63060b1916daecf40a6e853ec3a193cfd69021517ba37f4f11d379f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:cancoillotte` - linux; amd64

```console
$ docker pull traefik@sha256:aaade837cb07fb43c5b657c52b01897e382a13974d196b6f5070110c7dfb3b9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13956174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eea7dfcac119a6ba0d26821e004636a39ea92e59a04647d3f13c654a1055bd8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 20 Dec 2017 19:56:24 GMT
COPY file:6ddc329499ee54f240ecd43f13d2e39dad00a03eba1f214daefe3ebfcc77e6f0 in / 
# Wed, 20 Dec 2017 19:56:24 GMT
EXPOSE 80/tcp
# Wed, 20 Dec 2017 19:56:24 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Dec 2017 19:56:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd98f21af48f9fd20bd9876bfcd7374c433ca482e711074752a1c36f227b6b`  
		Last Modified: Wed, 20 Dec 2017 20:00:35 GMT  
		Size: 13.8 MB (13801022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:cancoillotte-alpine`

```console
$ docker pull traefik@sha256:402c07cbd730f6121632047de06b1ec03874481d62999366e2e362fd14375ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:cancoillotte-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5df27da0b8e597bd865c9eb3520ffb6b50f4509e4ed78f32a0fc68fd6afc3115
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16309892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a0fa8d99aa69c81a47cda3ae9c8f27cebac61a32f3cc92c5c7b2ac61682cd8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Wed, 20 Dec 2017 19:57:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Dec 2017 19:57:04 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 20 Dec 2017 19:57:04 GMT
EXPOSE 80/tcp
# Wed, 20 Dec 2017 19:57:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Dec 2017 19:57:05 GMT
CMD ["traefik"]
# Wed, 20 Dec 2017 19:57:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:575e91451eafd9a3f961922301e67fee3daf3abd1ce88aa330f36033765a99e1`  
		Last Modified: Wed, 20 Dec 2017 20:01:42 GMT  
		Size: 14.0 MB (13967060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1efec35722dd42d34aabce9b7ce683c990510b60fd43ba6ee2e588eed71082`  
		Last Modified: Wed, 20 Dec 2017 20:01:38 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:9c299d9613cb01564c8219f4bc56ecc55f30d8f06d35cf3ecf83a85426c13225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:0dcb9e624fb5f9980024ab6ed0d944479da6271490cda5cef7ddd6d40723f879
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12065471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee192c2d6e86fbf771d2663a5095914f682a95d7ff93fb8ed73b3dc2d2c848c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 05:56:26 GMT
COPY file:59a9be5ce97f56d03eafbf2871b291b6a0c2f996110c51c60e2a3de0c71ebd67 in / 
# Thu, 07 Dec 2017 05:56:27 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 05:56:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 05:56:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78ae1198e2bca9ece0844a6bd0a8f5bb352da0221bd8e66819258eca7431764`  
		Last Modified: Thu, 07 Dec 2017 06:00:40 GMT  
		Size: 11.9 MB (11910320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort`

```console
$ docker pull traefik@sha256:9c299d9613cb01564c8219f4bc56ecc55f30d8f06d35cf3ecf83a85426c13225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:roquefort` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:0dcb9e624fb5f9980024ab6ed0d944479da6271490cda5cef7ddd6d40723f879
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12065471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee192c2d6e86fbf771d2663a5095914f682a95d7ff93fb8ed73b3dc2d2c848c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 05:56:26 GMT
COPY file:59a9be5ce97f56d03eafbf2871b291b6a0c2f996110c51c60e2a3de0c71ebd67 in / 
# Thu, 07 Dec 2017 05:56:27 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 05:56:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 05:56:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78ae1198e2bca9ece0844a6bd0a8f5bb352da0221bd8e66819258eca7431764`  
		Last Modified: Thu, 07 Dec 2017 06:00:40 GMT  
		Size: 11.9 MB (11910320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:9b02a25ffd77e058738f452c8d9b17c4514e5d4c543965ee1bbbee900f092fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:roquefort-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:660dd7c5072285a1d2cba24f8c9608991c6094467450a08eff832aaa646275ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14343997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de97ee3c01f929d7ed16e11977568507574e290224c8363326be0380fb58c42b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 05:56:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 05:56:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 05:57:00 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 05:57:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 05:57:01 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 05:57:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f897a251e086a14fa6e3712d3c316b442f2284fa86242cec5d3f2f2be5f0b8`  
		Last Modified: Thu, 07 Dec 2017 06:02:29 GMT  
		Size: 12.1 MB (12077238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71708d1302580230a967ad08ce0c3edf33ef37d7c0b356a7542c69809c00ed28`  
		Last Modified: Thu, 07 Dec 2017 06:02:24 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4`

```console
$ docker pull traefik@sha256:9c299d9613cb01564c8219f4bc56ecc55f30d8f06d35cf3ecf83a85426c13225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:0dcb9e624fb5f9980024ab6ed0d944479da6271490cda5cef7ddd6d40723f879
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12065471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee192c2d6e86fbf771d2663a5095914f682a95d7ff93fb8ed73b3dc2d2c848c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 05:56:26 GMT
COPY file:59a9be5ce97f56d03eafbf2871b291b6a0c2f996110c51c60e2a3de0c71ebd67 in / 
# Thu, 07 Dec 2017 05:56:27 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 05:56:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 05:56:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78ae1198e2bca9ece0844a6bd0a8f5bb352da0221bd8e66819258eca7431764`  
		Last Modified: Thu, 07 Dec 2017 06:00:40 GMT  
		Size: 11.9 MB (11910320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.5`

```console
$ docker pull traefik@sha256:9c299d9613cb01564c8219f4bc56ecc55f30d8f06d35cf3ecf83a85426c13225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.4.5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:0dcb9e624fb5f9980024ab6ed0d944479da6271490cda5cef7ddd6d40723f879
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12065471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee192c2d6e86fbf771d2663a5095914f682a95d7ff93fb8ed73b3dc2d2c848c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 07 Dec 2017 05:56:26 GMT
COPY file:59a9be5ce97f56d03eafbf2871b291b6a0c2f996110c51c60e2a3de0c71ebd67 in / 
# Thu, 07 Dec 2017 05:56:27 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 05:56:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 07 Dec 2017 05:56:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78ae1198e2bca9ece0844a6bd0a8f5bb352da0221bd8e66819258eca7431764`  
		Last Modified: Thu, 07 Dec 2017 06:00:40 GMT  
		Size: 11.9 MB (11910320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.5-alpine`

```console
$ docker pull traefik@sha256:9b02a25ffd77e058738f452c8d9b17c4514e5d4c543965ee1bbbee900f092fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.4.5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:660dd7c5072285a1d2cba24f8c9608991c6094467450a08eff832aaa646275ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14343997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de97ee3c01f929d7ed16e11977568507574e290224c8363326be0380fb58c42b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 05:56:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 05:56:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 05:57:00 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 05:57:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 05:57:01 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 05:57:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f897a251e086a14fa6e3712d3c316b442f2284fa86242cec5d3f2f2be5f0b8`  
		Last Modified: Thu, 07 Dec 2017 06:02:29 GMT  
		Size: 12.1 MB (12077238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71708d1302580230a967ad08ce0c3edf33ef37d7c0b356a7542c69809c00ed28`  
		Last Modified: Thu, 07 Dec 2017 06:02:24 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4-alpine`

```console
$ docker pull traefik@sha256:9b02a25ffd77e058738f452c8d9b17c4514e5d4c543965ee1bbbee900f092fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:660dd7c5072285a1d2cba24f8c9608991c6094467450a08eff832aaa646275ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14343997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de97ee3c01f929d7ed16e11977568507574e290224c8363326be0380fb58c42b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 05:55:26 GMT
RUN apk --no-cache add ca-certificates
# Thu, 07 Dec 2017 05:56:58 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 07 Dec 2017 05:56:59 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 07 Dec 2017 05:57:00 GMT
EXPOSE 80/tcp
# Thu, 07 Dec 2017 05:57:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Dec 2017 05:57:01 GMT
CMD ["traefik"]
# Thu, 07 Dec 2017 05:57:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcc5af9467e49f936c4812ee156fc62e6efaa954ca3165d15b03ae39805932f`  
		Last Modified: Wed, 15 Nov 2017 05:58:01 GMT  
		Size: 351.5 KB (351494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f897a251e086a14fa6e3712d3c316b442f2284fa86242cec5d3f2f2be5f0b8`  
		Last Modified: Thu, 07 Dec 2017 06:02:29 GMT  
		Size: 12.1 MB (12077238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71708d1302580230a967ad08ce0c3edf33ef37d7c0b356a7542c69809c00ed28`  
		Last Modified: Thu, 07 Dec 2017 06:02:24 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5`

```console
$ docker pull traefik@sha256:665bd68a63060b1916daecf40a6e853ec3a193cfd69021517ba37f4f11d379f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.5` - linux; amd64

```console
$ docker pull traefik@sha256:aaade837cb07fb43c5b657c52b01897e382a13974d196b6f5070110c7dfb3b9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13956174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eea7dfcac119a6ba0d26821e004636a39ea92e59a04647d3f13c654a1055bd8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 20 Dec 2017 19:56:24 GMT
COPY file:6ddc329499ee54f240ecd43f13d2e39dad00a03eba1f214daefe3ebfcc77e6f0 in / 
# Wed, 20 Dec 2017 19:56:24 GMT
EXPOSE 80/tcp
# Wed, 20 Dec 2017 19:56:24 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Dec 2017 19:56:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd98f21af48f9fd20bd9876bfcd7374c433ca482e711074752a1c36f227b6b`  
		Last Modified: Wed, 20 Dec 2017 20:00:35 GMT  
		Size: 13.8 MB (13801022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5.0-rc3`

```console
$ docker pull traefik@sha256:665bd68a63060b1916daecf40a6e853ec3a193cfd69021517ba37f4f11d379f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.5.0-rc3` - linux; amd64

```console
$ docker pull traefik@sha256:aaade837cb07fb43c5b657c52b01897e382a13974d196b6f5070110c7dfb3b9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13956174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eea7dfcac119a6ba0d26821e004636a39ea92e59a04647d3f13c654a1055bd8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 20 Dec 2017 19:56:24 GMT
COPY file:6ddc329499ee54f240ecd43f13d2e39dad00a03eba1f214daefe3ebfcc77e6f0 in / 
# Wed, 20 Dec 2017 19:56:24 GMT
EXPOSE 80/tcp
# Wed, 20 Dec 2017 19:56:24 GMT
ENTRYPOINT ["/traefik"]
# Wed, 20 Dec 2017 19:56:25 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd98f21af48f9fd20bd9876bfcd7374c433ca482e711074752a1c36f227b6b`  
		Last Modified: Wed, 20 Dec 2017 20:00:35 GMT  
		Size: 13.8 MB (13801022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5.0-rc3-alpine`

```console
$ docker pull traefik@sha256:402c07cbd730f6121632047de06b1ec03874481d62999366e2e362fd14375ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.5.0-rc3-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5df27da0b8e597bd865c9eb3520ffb6b50f4509e4ed78f32a0fc68fd6afc3115
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16309892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a0fa8d99aa69c81a47cda3ae9c8f27cebac61a32f3cc92c5c7b2ac61682cd8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Wed, 20 Dec 2017 19:57:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Dec 2017 19:57:04 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 20 Dec 2017 19:57:04 GMT
EXPOSE 80/tcp
# Wed, 20 Dec 2017 19:57:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Dec 2017 19:57:05 GMT
CMD ["traefik"]
# Wed, 20 Dec 2017 19:57:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:575e91451eafd9a3f961922301e67fee3daf3abd1ce88aa330f36033765a99e1`  
		Last Modified: Wed, 20 Dec 2017 20:01:42 GMT  
		Size: 14.0 MB (13967060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1efec35722dd42d34aabce9b7ce683c990510b60fd43ba6ee2e588eed71082`  
		Last Modified: Wed, 20 Dec 2017 20:01:38 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5-alpine`

```console
$ docker pull traefik@sha256:402c07cbd730f6121632047de06b1ec03874481d62999366e2e362fd14375ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:v1.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5df27da0b8e597bd865c9eb3520ffb6b50f4509e4ed78f32a0fc68fd6afc3115
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16309892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a0fa8d99aa69c81a47cda3ae9c8f27cebac61a32f3cc92c5c7b2ac61682cd8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Wed, 20 Dec 2017 19:57:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 20 Dec 2017 19:57:04 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 20 Dec 2017 19:57:04 GMT
EXPOSE 80/tcp
# Wed, 20 Dec 2017 19:57:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 20 Dec 2017 19:57:05 GMT
CMD ["traefik"]
# Wed, 20 Dec 2017 19:57:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:575e91451eafd9a3f961922301e67fee3daf3abd1ce88aa330f36033765a99e1`  
		Last Modified: Wed, 20 Dec 2017 20:01:42 GMT  
		Size: 14.0 MB (13967060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1efec35722dd42d34aabce9b7ce683c990510b60fd43ba6ee2e588eed71082`  
		Last Modified: Wed, 20 Dec 2017 20:01:38 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
