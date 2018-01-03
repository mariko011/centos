<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.4`](#traefik14)
-	[`traefik:1.4.6`](#traefik146)
-	[`traefik:1.4.6-alpine`](#traefik146-alpine)
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
-	[`traefik:v1.4.6`](#traefikv146)
-	[`traefik:v1.4.6-alpine`](#traefikv146-alpine)
-	[`traefik:v1.4-alpine`](#traefikv14-alpine)
-	[`traefik:v1.5`](#traefikv15)
-	[`traefik:v1.5.0-rc3`](#traefikv150-rc3)
-	[`traefik:v1.5.0-rc3-alpine`](#traefikv150-rc3-alpine)
-	[`traefik:v1.5-alpine`](#traefikv15-alpine)

## `traefik:1.4`

```console
$ docker pull traefik@sha256:6157b4251701ed6fe0ba8d68045d4c59adc7096a56c4fcd607fd8d97534902c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.4` - linux; amd64

```console
$ docker pull traefik@sha256:8502f17b27f0700b111c3df7bcd4329edc0d0183ca48e82be4a08e943bc8b36d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13200258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed00f022da1788d6b874e5163b6a6ea0f5834a716dfc8f50edab705113348ac7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 02 Jan 2018 21:51:55 GMT
COPY file:4913fc390a69543b982f7c2c1688fab5b7c10a9e251035fdce0dab9713679358 in / 
# Tue, 02 Jan 2018 21:51:55 GMT
EXPOSE 80/tcp
# Tue, 02 Jan 2018 21:51:55 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Jan 2018 21:51:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b302a4314174dd1dcd7b794a8bd80cacd29e9dd0d4f2d6254e8b87f2427ee9`  
		Last Modified: Tue, 02 Jan 2018 21:52:33 GMT  
		Size: 13.0 MB (13045106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:aad121c0613970faec10ea61b8a973903369e810a455e2421acf03d522762ff2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12381232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc542bc5f41a87f24ccc6f35c7091e78118389c15c3935602fbb15d0e77f0bcf`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 03 Jan 2018 00:48:37 GMT
COPY file:1e6db25b9cddc629c3ccdd4328267c7e629b81a35ae6ded48d3647b5b1c003f0 in / 
# Wed, 03 Jan 2018 00:48:37 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 00:48:37 GMT
ENTRYPOINT ["/traefik"]
# Wed, 03 Jan 2018 00:48:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5742615afd9b2a4c85a3bc5d64958f845c7e39f31153988dcf77f73a2142eb`  
		Last Modified: Wed, 03 Jan 2018 00:49:00 GMT  
		Size: 12.2 MB (12226048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.6`

```console
$ docker pull traefik@sha256:6157b4251701ed6fe0ba8d68045d4c59adc7096a56c4fcd607fd8d97534902c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.4.6` - linux; amd64

```console
$ docker pull traefik@sha256:8502f17b27f0700b111c3df7bcd4329edc0d0183ca48e82be4a08e943bc8b36d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13200258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed00f022da1788d6b874e5163b6a6ea0f5834a716dfc8f50edab705113348ac7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 02 Jan 2018 21:51:55 GMT
COPY file:4913fc390a69543b982f7c2c1688fab5b7c10a9e251035fdce0dab9713679358 in / 
# Tue, 02 Jan 2018 21:51:55 GMT
EXPOSE 80/tcp
# Tue, 02 Jan 2018 21:51:55 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Jan 2018 21:51:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b302a4314174dd1dcd7b794a8bd80cacd29e9dd0d4f2d6254e8b87f2427ee9`  
		Last Modified: Tue, 02 Jan 2018 21:52:33 GMT  
		Size: 13.0 MB (13045106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:aad121c0613970faec10ea61b8a973903369e810a455e2421acf03d522762ff2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12381232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc542bc5f41a87f24ccc6f35c7091e78118389c15c3935602fbb15d0e77f0bcf`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 03 Jan 2018 00:48:37 GMT
COPY file:1e6db25b9cddc629c3ccdd4328267c7e629b81a35ae6ded48d3647b5b1c003f0 in / 
# Wed, 03 Jan 2018 00:48:37 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 00:48:37 GMT
ENTRYPOINT ["/traefik"]
# Wed, 03 Jan 2018 00:48:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5742615afd9b2a4c85a3bc5d64958f845c7e39f31153988dcf77f73a2142eb`  
		Last Modified: Wed, 03 Jan 2018 00:49:00 GMT  
		Size: 12.2 MB (12226048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.6-alpine`

```console
$ docker pull traefik@sha256:41c6b63f41ad1cc9c9cd0c7a10d8c16bd9452108e35ceab8f6bd92524e321701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.4.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:17e24c2ba00444dad48697b9e0cfb9fc4e0ddb8bc368824eb9447784ddd2b2af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15555186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d91aaa701202865885b6d595ad3c9d13f3f166ea1bcbec73c837d87399157c26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Tue, 02 Jan 2018 21:52:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Jan 2018 21:52:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 02 Jan 2018 21:52:13 GMT
EXPOSE 80/tcp
# Tue, 02 Jan 2018 21:52:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Jan 2018 21:52:14 GMT
CMD ["traefik"]
# Tue, 02 Jan 2018 21:52:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:9689dbd0c712b04599cbbdf5ad9e3568c33728d9e4da2932e8192f5e7b7dda1a`  
		Last Modified: Tue, 02 Jan 2018 21:53:39 GMT  
		Size: 13.2 MB (13212350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33faa66c14bbd9c6101403a605dd5fafc952bb3000372ef70906b482498d377b`  
		Last Modified: Tue, 02 Jan 2018 21:53:36 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:601fe57c3f2aaa245a7a8e77cbb51e47d42868f30e31395c73ab9b4caadfe6f2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14713282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a606266eae7bf833958b944fe1865ae2e284030470ce4f57bcaa595cc9967698`
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
# Wed, 03 Jan 2018 00:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 03 Jan 2018 00:48:46 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 03 Jan 2018 00:48:46 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 00:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 00:48:47 GMT
CMD ["traefik"]
# Wed, 03 Jan 2018 00:48:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:418a1e731629535550a03b16db3b00186cb282f01367a415eae227bb9561f242`  
		Last Modified: Wed, 03 Jan 2018 00:49:15 GMT  
		Size: 12.4 MB (12394629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9448a766e5dd8b30a01d63c88a2e3b0dc2148015fc8daafbf42754fb7e21bb`  
		Last Modified: Wed, 03 Jan 2018 00:49:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4-alpine`

```console
$ docker pull traefik@sha256:41c6b63f41ad1cc9c9cd0c7a10d8c16bd9452108e35ceab8f6bd92524e321701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:17e24c2ba00444dad48697b9e0cfb9fc4e0ddb8bc368824eb9447784ddd2b2af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15555186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d91aaa701202865885b6d595ad3c9d13f3f166ea1bcbec73c837d87399157c26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Tue, 02 Jan 2018 21:52:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Jan 2018 21:52:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 02 Jan 2018 21:52:13 GMT
EXPOSE 80/tcp
# Tue, 02 Jan 2018 21:52:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Jan 2018 21:52:14 GMT
CMD ["traefik"]
# Tue, 02 Jan 2018 21:52:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:9689dbd0c712b04599cbbdf5ad9e3568c33728d9e4da2932e8192f5e7b7dda1a`  
		Last Modified: Tue, 02 Jan 2018 21:53:39 GMT  
		Size: 13.2 MB (13212350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33faa66c14bbd9c6101403a605dd5fafc952bb3000372ef70906b482498d377b`  
		Last Modified: Tue, 02 Jan 2018 21:53:36 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:601fe57c3f2aaa245a7a8e77cbb51e47d42868f30e31395c73ab9b4caadfe6f2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14713282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a606266eae7bf833958b944fe1865ae2e284030470ce4f57bcaa595cc9967698`
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
# Wed, 03 Jan 2018 00:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 03 Jan 2018 00:48:46 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 03 Jan 2018 00:48:46 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 00:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 00:48:47 GMT
CMD ["traefik"]
# Wed, 03 Jan 2018 00:48:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:418a1e731629535550a03b16db3b00186cb282f01367a415eae227bb9561f242`  
		Last Modified: Wed, 03 Jan 2018 00:49:15 GMT  
		Size: 12.4 MB (12394629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9448a766e5dd8b30a01d63c88a2e3b0dc2148015fc8daafbf42754fb7e21bb`  
		Last Modified: Wed, 03 Jan 2018 00:49:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5`

```console
$ docker pull traefik@sha256:23c598bb5fc85924c4fcfc559b4ee8a0b76f21e232b6058f9bf89159d268ad66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:297dacdc88b9113b7cb3cc89f70a0c1b1e3f28ca535f2037379956de4467908f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13094230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7653c9687a7e1546856d8a0f12e5910062332caaf567a478cbe00cefce8977`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 21 Dec 2017 00:48:27 GMT
COPY file:29a67f719d95edcedd7c60dff05eb989545c4525b140f7080fbc428c0f9f0398 in / 
# Thu, 21 Dec 2017 00:48:28 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 00:48:28 GMT
ENTRYPOINT ["/traefik"]
# Thu, 21 Dec 2017 00:48:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4ee18b130c2b822cb1bfbc2c62a26a7ab74e447b136b35d00d6f033d853bd6`  
		Last Modified: Thu, 21 Dec 2017 00:48:58 GMT  
		Size: 12.9 MB (12939046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:19f60e423f5bccb9cf4305d2428802ce094fe05180a2235c1cc90e83fde7651c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12761278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f029718b3e8a6bdb4ec3eae955e66c198853d72cd00c19ba1bb785fd2a9d6125`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 21 Dec 2017 05:54:55 GMT
COPY file:30e93be0b7452f451ffe631f26833d5ba3863bedb44cec22ac936a37521afd98 in / 
# Thu, 21 Dec 2017 05:54:57 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 05:54:58 GMT
ENTRYPOINT ["/traefik"]
# Thu, 21 Dec 2017 05:54:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333498742cce05a8761e86c9d56b2a886bb02d3076211f55bfffcdfcf87f74d7`  
		Last Modified: Thu, 21 Dec 2017 05:55:48 GMT  
		Size: 12.6 MB (12606127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5.0-rc3`

```console
$ docker pull traefik@sha256:23c598bb5fc85924c4fcfc559b4ee8a0b76f21e232b6058f9bf89159d268ad66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.5.0-rc3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:297dacdc88b9113b7cb3cc89f70a0c1b1e3f28ca535f2037379956de4467908f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13094230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7653c9687a7e1546856d8a0f12e5910062332caaf567a478cbe00cefce8977`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 21 Dec 2017 00:48:27 GMT
COPY file:29a67f719d95edcedd7c60dff05eb989545c4525b140f7080fbc428c0f9f0398 in / 
# Thu, 21 Dec 2017 00:48:28 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 00:48:28 GMT
ENTRYPOINT ["/traefik"]
# Thu, 21 Dec 2017 00:48:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4ee18b130c2b822cb1bfbc2c62a26a7ab74e447b136b35d00d6f033d853bd6`  
		Last Modified: Thu, 21 Dec 2017 00:48:58 GMT  
		Size: 12.9 MB (12939046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5.0-rc3` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:19f60e423f5bccb9cf4305d2428802ce094fe05180a2235c1cc90e83fde7651c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12761278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f029718b3e8a6bdb4ec3eae955e66c198853d72cd00c19ba1bb785fd2a9d6125`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 21 Dec 2017 05:54:55 GMT
COPY file:30e93be0b7452f451ffe631f26833d5ba3863bedb44cec22ac936a37521afd98 in / 
# Thu, 21 Dec 2017 05:54:57 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 05:54:58 GMT
ENTRYPOINT ["/traefik"]
# Thu, 21 Dec 2017 05:54:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333498742cce05a8761e86c9d56b2a886bb02d3076211f55bfffcdfcf87f74d7`  
		Last Modified: Thu, 21 Dec 2017 05:55:48 GMT  
		Size: 12.6 MB (12606127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5.0-rc3-alpine`

```console
$ docker pull traefik@sha256:4999559d9516f76b9931cbb774b6378891dc3cb6da4289fdbb715e5ec65db868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.5.0-rc3-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4a0926b336ca33cf953b710381db862194618d2ad35a83e694122bec6a7b0f3a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15424769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8a2c33352cc652d8432bcc8d13f78a4e9cdb98799f25e16e83ad8ba5a7eef6`
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
# Thu, 21 Dec 2017 00:48:36 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 21 Dec 2017 00:48:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 21 Dec 2017 00:48:37 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 00:48:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Dec 2017 00:48:37 GMT
CMD ["traefik"]
# Thu, 21 Dec 2017 00:48:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:48bb30d1185044a7dd9568a5a68ab59e1434d537d36bed35fd5bf2cd284aaebf`  
		Last Modified: Thu, 21 Dec 2017 00:49:12 GMT  
		Size: 13.1 MB (13106112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fd5b590d3bffa5c586f76522f12ebbfafa2d937c60c9177726dfd2e0f72b7a`  
		Last Modified: Thu, 21 Dec 2017 00:49:07 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5.0-rc3-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:33e60b41b601a0fdb5d09c20a2c668076be498b3fefbf7610a2af917e184c7ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15039630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65c7f8d7889f1c65161781f944b9791cfc9778741850a6d3115969c0988a211`
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
# Thu, 21 Dec 2017 05:55:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 21 Dec 2017 05:55:19 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 21 Dec 2017 05:55:19 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 05:55:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Dec 2017 05:55:20 GMT
CMD ["traefik"]
# Thu, 21 Dec 2017 05:55:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:bbe8e96fb71f0d5e80e5a08eef6948ccf94c99b46494e72b5026660393705dcb`  
		Last Modified: Thu, 21 Dec 2017 05:56:26 GMT  
		Size: 12.8 MB (12772871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5d7eb26f387d952a6bb1294f4a8aa31ca3bf3885c547c4d058180c1eee0b5f`  
		Last Modified: Thu, 21 Dec 2017 05:56:20 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5-alpine`

```console
$ docker pull traefik@sha256:4999559d9516f76b9931cbb774b6378891dc3cb6da4289fdbb715e5ec65db868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4a0926b336ca33cf953b710381db862194618d2ad35a83e694122bec6a7b0f3a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15424769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8a2c33352cc652d8432bcc8d13f78a4e9cdb98799f25e16e83ad8ba5a7eef6`
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
# Thu, 21 Dec 2017 00:48:36 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 21 Dec 2017 00:48:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 21 Dec 2017 00:48:37 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 00:48:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Dec 2017 00:48:37 GMT
CMD ["traefik"]
# Thu, 21 Dec 2017 00:48:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:48bb30d1185044a7dd9568a5a68ab59e1434d537d36bed35fd5bf2cd284aaebf`  
		Last Modified: Thu, 21 Dec 2017 00:49:12 GMT  
		Size: 13.1 MB (13106112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fd5b590d3bffa5c586f76522f12ebbfafa2d937c60c9177726dfd2e0f72b7a`  
		Last Modified: Thu, 21 Dec 2017 00:49:07 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:33e60b41b601a0fdb5d09c20a2c668076be498b3fefbf7610a2af917e184c7ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15039630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65c7f8d7889f1c65161781f944b9791cfc9778741850a6d3115969c0988a211`
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
# Thu, 21 Dec 2017 05:55:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 21 Dec 2017 05:55:19 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 21 Dec 2017 05:55:19 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 05:55:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Dec 2017 05:55:20 GMT
CMD ["traefik"]
# Thu, 21 Dec 2017 05:55:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:bbe8e96fb71f0d5e80e5a08eef6948ccf94c99b46494e72b5026660393705dcb`  
		Last Modified: Thu, 21 Dec 2017 05:56:26 GMT  
		Size: 12.8 MB (12772871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5d7eb26f387d952a6bb1294f4a8aa31ca3bf3885c547c4d058180c1eee0b5f`  
		Last Modified: Thu, 21 Dec 2017 05:56:20 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:41c6b63f41ad1cc9c9cd0c7a10d8c16bd9452108e35ceab8f6bd92524e321701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:17e24c2ba00444dad48697b9e0cfb9fc4e0ddb8bc368824eb9447784ddd2b2af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15555186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d91aaa701202865885b6d595ad3c9d13f3f166ea1bcbec73c837d87399157c26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Tue, 02 Jan 2018 21:52:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Jan 2018 21:52:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 02 Jan 2018 21:52:13 GMT
EXPOSE 80/tcp
# Tue, 02 Jan 2018 21:52:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Jan 2018 21:52:14 GMT
CMD ["traefik"]
# Tue, 02 Jan 2018 21:52:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:9689dbd0c712b04599cbbdf5ad9e3568c33728d9e4da2932e8192f5e7b7dda1a`  
		Last Modified: Tue, 02 Jan 2018 21:53:39 GMT  
		Size: 13.2 MB (13212350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33faa66c14bbd9c6101403a605dd5fafc952bb3000372ef70906b482498d377b`  
		Last Modified: Tue, 02 Jan 2018 21:53:36 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:601fe57c3f2aaa245a7a8e77cbb51e47d42868f30e31395c73ab9b4caadfe6f2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14713282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a606266eae7bf833958b944fe1865ae2e284030470ce4f57bcaa595cc9967698`
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
# Wed, 03 Jan 2018 00:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 03 Jan 2018 00:48:46 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 03 Jan 2018 00:48:46 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 00:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 00:48:47 GMT
CMD ["traefik"]
# Wed, 03 Jan 2018 00:48:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:418a1e731629535550a03b16db3b00186cb282f01367a415eae227bb9561f242`  
		Last Modified: Wed, 03 Jan 2018 00:49:15 GMT  
		Size: 12.4 MB (12394629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9448a766e5dd8b30a01d63c88a2e3b0dc2148015fc8daafbf42754fb7e21bb`  
		Last Modified: Wed, 03 Jan 2018 00:49:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:cancoillotte`

```console
$ docker pull traefik@sha256:23c598bb5fc85924c4fcfc559b4ee8a0b76f21e232b6058f9bf89159d268ad66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:cancoillotte` - linux; arm variant v6

```console
$ docker pull traefik@sha256:297dacdc88b9113b7cb3cc89f70a0c1b1e3f28ca535f2037379956de4467908f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13094230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7653c9687a7e1546856d8a0f12e5910062332caaf567a478cbe00cefce8977`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 21 Dec 2017 00:48:27 GMT
COPY file:29a67f719d95edcedd7c60dff05eb989545c4525b140f7080fbc428c0f9f0398 in / 
# Thu, 21 Dec 2017 00:48:28 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 00:48:28 GMT
ENTRYPOINT ["/traefik"]
# Thu, 21 Dec 2017 00:48:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4ee18b130c2b822cb1bfbc2c62a26a7ab74e447b136b35d00d6f033d853bd6`  
		Last Modified: Thu, 21 Dec 2017 00:48:58 GMT  
		Size: 12.9 MB (12939046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:19f60e423f5bccb9cf4305d2428802ce094fe05180a2235c1cc90e83fde7651c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12761278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f029718b3e8a6bdb4ec3eae955e66c198853d72cd00c19ba1bb785fd2a9d6125`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 21 Dec 2017 05:54:55 GMT
COPY file:30e93be0b7452f451ffe631f26833d5ba3863bedb44cec22ac936a37521afd98 in / 
# Thu, 21 Dec 2017 05:54:57 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 05:54:58 GMT
ENTRYPOINT ["/traefik"]
# Thu, 21 Dec 2017 05:54:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333498742cce05a8761e86c9d56b2a886bb02d3076211f55bfffcdfcf87f74d7`  
		Last Modified: Thu, 21 Dec 2017 05:55:48 GMT  
		Size: 12.6 MB (12606127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:cancoillotte-alpine`

```console
$ docker pull traefik@sha256:4999559d9516f76b9931cbb774b6378891dc3cb6da4289fdbb715e5ec65db868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:cancoillotte-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4a0926b336ca33cf953b710381db862194618d2ad35a83e694122bec6a7b0f3a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15424769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8a2c33352cc652d8432bcc8d13f78a4e9cdb98799f25e16e83ad8ba5a7eef6`
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
# Thu, 21 Dec 2017 00:48:36 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 21 Dec 2017 00:48:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 21 Dec 2017 00:48:37 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 00:48:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Dec 2017 00:48:37 GMT
CMD ["traefik"]
# Thu, 21 Dec 2017 00:48:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:48bb30d1185044a7dd9568a5a68ab59e1434d537d36bed35fd5bf2cd284aaebf`  
		Last Modified: Thu, 21 Dec 2017 00:49:12 GMT  
		Size: 13.1 MB (13106112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fd5b590d3bffa5c586f76522f12ebbfafa2d937c60c9177726dfd2e0f72b7a`  
		Last Modified: Thu, 21 Dec 2017 00:49:07 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:33e60b41b601a0fdb5d09c20a2c668076be498b3fefbf7610a2af917e184c7ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15039630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65c7f8d7889f1c65161781f944b9791cfc9778741850a6d3115969c0988a211`
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
# Thu, 21 Dec 2017 05:55:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 21 Dec 2017 05:55:19 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 21 Dec 2017 05:55:19 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 05:55:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Dec 2017 05:55:20 GMT
CMD ["traefik"]
# Thu, 21 Dec 2017 05:55:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:bbe8e96fb71f0d5e80e5a08eef6948ccf94c99b46494e72b5026660393705dcb`  
		Last Modified: Thu, 21 Dec 2017 05:56:26 GMT  
		Size: 12.8 MB (12772871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5d7eb26f387d952a6bb1294f4a8aa31ca3bf3885c547c4d058180c1eee0b5f`  
		Last Modified: Thu, 21 Dec 2017 05:56:20 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:40c0e1dd85ade266cd9c6434b91296424b12e28dd1fb0ecd7c58151f43289945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:8502f17b27f0700b111c3df7bcd4329edc0d0183ca48e82be4a08e943bc8b36d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13200258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed00f022da1788d6b874e5163b6a6ea0f5834a716dfc8f50edab705113348ac7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 02 Jan 2018 21:51:55 GMT
COPY file:4913fc390a69543b982f7c2c1688fab5b7c10a9e251035fdce0dab9713679358 in / 
# Tue, 02 Jan 2018 21:51:55 GMT
EXPOSE 80/tcp
# Tue, 02 Jan 2018 21:51:55 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Jan 2018 21:51:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b302a4314174dd1dcd7b794a8bd80cacd29e9dd0d4f2d6254e8b87f2427ee9`  
		Last Modified: Tue, 02 Jan 2018 21:52:33 GMT  
		Size: 13.0 MB (13045106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort`

```console
$ docker pull traefik@sha256:6157b4251701ed6fe0ba8d68045d4c59adc7096a56c4fcd607fd8d97534902c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:roquefort` - linux; amd64

```console
$ docker pull traefik@sha256:8502f17b27f0700b111c3df7bcd4329edc0d0183ca48e82be4a08e943bc8b36d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13200258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed00f022da1788d6b874e5163b6a6ea0f5834a716dfc8f50edab705113348ac7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 02 Jan 2018 21:51:55 GMT
COPY file:4913fc390a69543b982f7c2c1688fab5b7c10a9e251035fdce0dab9713679358 in / 
# Tue, 02 Jan 2018 21:51:55 GMT
EXPOSE 80/tcp
# Tue, 02 Jan 2018 21:51:55 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Jan 2018 21:51:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b302a4314174dd1dcd7b794a8bd80cacd29e9dd0d4f2d6254e8b87f2427ee9`  
		Last Modified: Tue, 02 Jan 2018 21:52:33 GMT  
		Size: 13.0 MB (13045106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm variant v6

```console
$ docker pull traefik@sha256:aad121c0613970faec10ea61b8a973903369e810a455e2421acf03d522762ff2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12381232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc542bc5f41a87f24ccc6f35c7091e78118389c15c3935602fbb15d0e77f0bcf`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 03 Jan 2018 00:48:37 GMT
COPY file:1e6db25b9cddc629c3ccdd4328267c7e629b81a35ae6ded48d3647b5b1c003f0 in / 
# Wed, 03 Jan 2018 00:48:37 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 00:48:37 GMT
ENTRYPOINT ["/traefik"]
# Wed, 03 Jan 2018 00:48:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5742615afd9b2a4c85a3bc5d64958f845c7e39f31153988dcf77f73a2142eb`  
		Last Modified: Wed, 03 Jan 2018 00:49:00 GMT  
		Size: 12.2 MB (12226048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:41c6b63f41ad1cc9c9cd0c7a10d8c16bd9452108e35ceab8f6bd92524e321701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:roquefort-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:17e24c2ba00444dad48697b9e0cfb9fc4e0ddb8bc368824eb9447784ddd2b2af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15555186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d91aaa701202865885b6d595ad3c9d13f3f166ea1bcbec73c837d87399157c26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Tue, 02 Jan 2018 21:52:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Jan 2018 21:52:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 02 Jan 2018 21:52:13 GMT
EXPOSE 80/tcp
# Tue, 02 Jan 2018 21:52:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Jan 2018 21:52:14 GMT
CMD ["traefik"]
# Tue, 02 Jan 2018 21:52:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:9689dbd0c712b04599cbbdf5ad9e3568c33728d9e4da2932e8192f5e7b7dda1a`  
		Last Modified: Tue, 02 Jan 2018 21:53:39 GMT  
		Size: 13.2 MB (13212350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33faa66c14bbd9c6101403a605dd5fafc952bb3000372ef70906b482498d377b`  
		Last Modified: Tue, 02 Jan 2018 21:53:36 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:601fe57c3f2aaa245a7a8e77cbb51e47d42868f30e31395c73ab9b4caadfe6f2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14713282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a606266eae7bf833958b944fe1865ae2e284030470ce4f57bcaa595cc9967698`
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
# Wed, 03 Jan 2018 00:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 03 Jan 2018 00:48:46 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 03 Jan 2018 00:48:46 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 00:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 00:48:47 GMT
CMD ["traefik"]
# Wed, 03 Jan 2018 00:48:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:418a1e731629535550a03b16db3b00186cb282f01367a415eae227bb9561f242`  
		Last Modified: Wed, 03 Jan 2018 00:49:15 GMT  
		Size: 12.4 MB (12394629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9448a766e5dd8b30a01d63c88a2e3b0dc2148015fc8daafbf42754fb7e21bb`  
		Last Modified: Wed, 03 Jan 2018 00:49:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4`

```console
$ docker pull traefik@sha256:6157b4251701ed6fe0ba8d68045d4c59adc7096a56c4fcd607fd8d97534902c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.4` - linux; amd64

```console
$ docker pull traefik@sha256:8502f17b27f0700b111c3df7bcd4329edc0d0183ca48e82be4a08e943bc8b36d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13200258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed00f022da1788d6b874e5163b6a6ea0f5834a716dfc8f50edab705113348ac7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 02 Jan 2018 21:51:55 GMT
COPY file:4913fc390a69543b982f7c2c1688fab5b7c10a9e251035fdce0dab9713679358 in / 
# Tue, 02 Jan 2018 21:51:55 GMT
EXPOSE 80/tcp
# Tue, 02 Jan 2018 21:51:55 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Jan 2018 21:51:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b302a4314174dd1dcd7b794a8bd80cacd29e9dd0d4f2d6254e8b87f2427ee9`  
		Last Modified: Tue, 02 Jan 2018 21:52:33 GMT  
		Size: 13.0 MB (13045106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:aad121c0613970faec10ea61b8a973903369e810a455e2421acf03d522762ff2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12381232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc542bc5f41a87f24ccc6f35c7091e78118389c15c3935602fbb15d0e77f0bcf`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 03 Jan 2018 00:48:37 GMT
COPY file:1e6db25b9cddc629c3ccdd4328267c7e629b81a35ae6ded48d3647b5b1c003f0 in / 
# Wed, 03 Jan 2018 00:48:37 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 00:48:37 GMT
ENTRYPOINT ["/traefik"]
# Wed, 03 Jan 2018 00:48:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5742615afd9b2a4c85a3bc5d64958f845c7e39f31153988dcf77f73a2142eb`  
		Last Modified: Wed, 03 Jan 2018 00:49:00 GMT  
		Size: 12.2 MB (12226048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.6`

```console
$ docker pull traefik@sha256:6157b4251701ed6fe0ba8d68045d4c59adc7096a56c4fcd607fd8d97534902c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.4.6` - linux; amd64

```console
$ docker pull traefik@sha256:8502f17b27f0700b111c3df7bcd4329edc0d0183ca48e82be4a08e943bc8b36d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13200258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed00f022da1788d6b874e5163b6a6ea0f5834a716dfc8f50edab705113348ac7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 02 Jan 2018 21:51:55 GMT
COPY file:4913fc390a69543b982f7c2c1688fab5b7c10a9e251035fdce0dab9713679358 in / 
# Tue, 02 Jan 2018 21:51:55 GMT
EXPOSE 80/tcp
# Tue, 02 Jan 2018 21:51:55 GMT
ENTRYPOINT ["/traefik"]
# Tue, 02 Jan 2018 21:51:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b302a4314174dd1dcd7b794a8bd80cacd29e9dd0d4f2d6254e8b87f2427ee9`  
		Last Modified: Tue, 02 Jan 2018 21:52:33 GMT  
		Size: 13.0 MB (13045106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.6` - linux; arm variant v6

```console
$ docker pull traefik@sha256:aad121c0613970faec10ea61b8a973903369e810a455e2421acf03d522762ff2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12381232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc542bc5f41a87f24ccc6f35c7091e78118389c15c3935602fbb15d0e77f0bcf`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 03 Jan 2018 00:48:37 GMT
COPY file:1e6db25b9cddc629c3ccdd4328267c7e629b81a35ae6ded48d3647b5b1c003f0 in / 
# Wed, 03 Jan 2018 00:48:37 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 00:48:37 GMT
ENTRYPOINT ["/traefik"]
# Wed, 03 Jan 2018 00:48:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5742615afd9b2a4c85a3bc5d64958f845c7e39f31153988dcf77f73a2142eb`  
		Last Modified: Wed, 03 Jan 2018 00:49:00 GMT  
		Size: 12.2 MB (12226048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.6-alpine`

```console
$ docker pull traefik@sha256:41c6b63f41ad1cc9c9cd0c7a10d8c16bd9452108e35ceab8f6bd92524e321701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.4.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:17e24c2ba00444dad48697b9e0cfb9fc4e0ddb8bc368824eb9447784ddd2b2af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15555186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d91aaa701202865885b6d595ad3c9d13f3f166ea1bcbec73c837d87399157c26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Tue, 02 Jan 2018 21:52:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Jan 2018 21:52:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 02 Jan 2018 21:52:13 GMT
EXPOSE 80/tcp
# Tue, 02 Jan 2018 21:52:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Jan 2018 21:52:14 GMT
CMD ["traefik"]
# Tue, 02 Jan 2018 21:52:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:9689dbd0c712b04599cbbdf5ad9e3568c33728d9e4da2932e8192f5e7b7dda1a`  
		Last Modified: Tue, 02 Jan 2018 21:53:39 GMT  
		Size: 13.2 MB (13212350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33faa66c14bbd9c6101403a605dd5fafc952bb3000372ef70906b482498d377b`  
		Last Modified: Tue, 02 Jan 2018 21:53:36 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.6-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:601fe57c3f2aaa245a7a8e77cbb51e47d42868f30e31395c73ab9b4caadfe6f2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14713282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a606266eae7bf833958b944fe1865ae2e284030470ce4f57bcaa595cc9967698`
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
# Wed, 03 Jan 2018 00:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 03 Jan 2018 00:48:46 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 03 Jan 2018 00:48:46 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 00:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 00:48:47 GMT
CMD ["traefik"]
# Wed, 03 Jan 2018 00:48:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:418a1e731629535550a03b16db3b00186cb282f01367a415eae227bb9561f242`  
		Last Modified: Wed, 03 Jan 2018 00:49:15 GMT  
		Size: 12.4 MB (12394629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9448a766e5dd8b30a01d63c88a2e3b0dc2148015fc8daafbf42754fb7e21bb`  
		Last Modified: Wed, 03 Jan 2018 00:49:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4-alpine`

```console
$ docker pull traefik@sha256:41c6b63f41ad1cc9c9cd0c7a10d8c16bd9452108e35ceab8f6bd92524e321701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:17e24c2ba00444dad48697b9e0cfb9fc4e0ddb8bc368824eb9447784ddd2b2af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15555186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d91aaa701202865885b6d595ad3c9d13f3f166ea1bcbec73c837d87399157c26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Tue, 02 Jan 2018 21:52:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 02 Jan 2018 21:52:13 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 02 Jan 2018 21:52:13 GMT
EXPOSE 80/tcp
# Tue, 02 Jan 2018 21:52:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Jan 2018 21:52:14 GMT
CMD ["traefik"]
# Tue, 02 Jan 2018 21:52:14 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:9689dbd0c712b04599cbbdf5ad9e3568c33728d9e4da2932e8192f5e7b7dda1a`  
		Last Modified: Tue, 02 Jan 2018 21:53:39 GMT  
		Size: 13.2 MB (13212350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33faa66c14bbd9c6101403a605dd5fafc952bb3000372ef70906b482498d377b`  
		Last Modified: Tue, 02 Jan 2018 21:53:36 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:601fe57c3f2aaa245a7a8e77cbb51e47d42868f30e31395c73ab9b4caadfe6f2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14713282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a606266eae7bf833958b944fe1865ae2e284030470ce4f57bcaa595cc9967698`
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
# Wed, 03 Jan 2018 00:48:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 03 Jan 2018 00:48:46 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 03 Jan 2018 00:48:46 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 00:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 00:48:47 GMT
CMD ["traefik"]
# Wed, 03 Jan 2018 00:48:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:418a1e731629535550a03b16db3b00186cb282f01367a415eae227bb9561f242`  
		Last Modified: Wed, 03 Jan 2018 00:49:15 GMT  
		Size: 12.4 MB (12394629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9448a766e5dd8b30a01d63c88a2e3b0dc2148015fc8daafbf42754fb7e21bb`  
		Last Modified: Wed, 03 Jan 2018 00:49:11 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5`

```console
$ docker pull traefik@sha256:23c598bb5fc85924c4fcfc559b4ee8a0b76f21e232b6058f9bf89159d268ad66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:297dacdc88b9113b7cb3cc89f70a0c1b1e3f28ca535f2037379956de4467908f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13094230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7653c9687a7e1546856d8a0f12e5910062332caaf567a478cbe00cefce8977`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 21 Dec 2017 00:48:27 GMT
COPY file:29a67f719d95edcedd7c60dff05eb989545c4525b140f7080fbc428c0f9f0398 in / 
# Thu, 21 Dec 2017 00:48:28 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 00:48:28 GMT
ENTRYPOINT ["/traefik"]
# Thu, 21 Dec 2017 00:48:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4ee18b130c2b822cb1bfbc2c62a26a7ab74e447b136b35d00d6f033d853bd6`  
		Last Modified: Thu, 21 Dec 2017 00:48:58 GMT  
		Size: 12.9 MB (12939046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:19f60e423f5bccb9cf4305d2428802ce094fe05180a2235c1cc90e83fde7651c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12761278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f029718b3e8a6bdb4ec3eae955e66c198853d72cd00c19ba1bb785fd2a9d6125`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 21 Dec 2017 05:54:55 GMT
COPY file:30e93be0b7452f451ffe631f26833d5ba3863bedb44cec22ac936a37521afd98 in / 
# Thu, 21 Dec 2017 05:54:57 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 05:54:58 GMT
ENTRYPOINT ["/traefik"]
# Thu, 21 Dec 2017 05:54:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333498742cce05a8761e86c9d56b2a886bb02d3076211f55bfffcdfcf87f74d7`  
		Last Modified: Thu, 21 Dec 2017 05:55:48 GMT  
		Size: 12.6 MB (12606127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5.0-rc3`

```console
$ docker pull traefik@sha256:23c598bb5fc85924c4fcfc559b4ee8a0b76f21e232b6058f9bf89159d268ad66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.5.0-rc3` - linux; arm variant v6

```console
$ docker pull traefik@sha256:297dacdc88b9113b7cb3cc89f70a0c1b1e3f28ca535f2037379956de4467908f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13094230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7653c9687a7e1546856d8a0f12e5910062332caaf567a478cbe00cefce8977`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 21 Dec 2017 00:48:27 GMT
COPY file:29a67f719d95edcedd7c60dff05eb989545c4525b140f7080fbc428c0f9f0398 in / 
# Thu, 21 Dec 2017 00:48:28 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 00:48:28 GMT
ENTRYPOINT ["/traefik"]
# Thu, 21 Dec 2017 00:48:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4ee18b130c2b822cb1bfbc2c62a26a7ab74e447b136b35d00d6f033d853bd6`  
		Last Modified: Thu, 21 Dec 2017 00:48:58 GMT  
		Size: 12.9 MB (12939046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5.0-rc3` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:19f60e423f5bccb9cf4305d2428802ce094fe05180a2235c1cc90e83fde7651c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12761278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f029718b3e8a6bdb4ec3eae955e66c198853d72cd00c19ba1bb785fd2a9d6125`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 21 Dec 2017 05:54:55 GMT
COPY file:30e93be0b7452f451ffe631f26833d5ba3863bedb44cec22ac936a37521afd98 in / 
# Thu, 21 Dec 2017 05:54:57 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 05:54:58 GMT
ENTRYPOINT ["/traefik"]
# Thu, 21 Dec 2017 05:54:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333498742cce05a8761e86c9d56b2a886bb02d3076211f55bfffcdfcf87f74d7`  
		Last Modified: Thu, 21 Dec 2017 05:55:48 GMT  
		Size: 12.6 MB (12606127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5.0-rc3-alpine`

```console
$ docker pull traefik@sha256:4999559d9516f76b9931cbb774b6378891dc3cb6da4289fdbb715e5ec65db868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.5.0-rc3-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4a0926b336ca33cf953b710381db862194618d2ad35a83e694122bec6a7b0f3a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15424769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8a2c33352cc652d8432bcc8d13f78a4e9cdb98799f25e16e83ad8ba5a7eef6`
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
# Thu, 21 Dec 2017 00:48:36 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 21 Dec 2017 00:48:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 21 Dec 2017 00:48:37 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 00:48:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Dec 2017 00:48:37 GMT
CMD ["traefik"]
# Thu, 21 Dec 2017 00:48:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:48bb30d1185044a7dd9568a5a68ab59e1434d537d36bed35fd5bf2cd284aaebf`  
		Last Modified: Thu, 21 Dec 2017 00:49:12 GMT  
		Size: 13.1 MB (13106112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fd5b590d3bffa5c586f76522f12ebbfafa2d937c60c9177726dfd2e0f72b7a`  
		Last Modified: Thu, 21 Dec 2017 00:49:07 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5.0-rc3-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:33e60b41b601a0fdb5d09c20a2c668076be498b3fefbf7610a2af917e184c7ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15039630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65c7f8d7889f1c65161781f944b9791cfc9778741850a6d3115969c0988a211`
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
# Thu, 21 Dec 2017 05:55:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 21 Dec 2017 05:55:19 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 21 Dec 2017 05:55:19 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 05:55:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Dec 2017 05:55:20 GMT
CMD ["traefik"]
# Thu, 21 Dec 2017 05:55:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:bbe8e96fb71f0d5e80e5a08eef6948ccf94c99b46494e72b5026660393705dcb`  
		Last Modified: Thu, 21 Dec 2017 05:56:26 GMT  
		Size: 12.8 MB (12772871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5d7eb26f387d952a6bb1294f4a8aa31ca3bf3885c547c4d058180c1eee0b5f`  
		Last Modified: Thu, 21 Dec 2017 05:56:20 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5-alpine`

```console
$ docker pull traefik@sha256:4999559d9516f76b9931cbb774b6378891dc3cb6da4289fdbb715e5ec65db868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4a0926b336ca33cf953b710381db862194618d2ad35a83e694122bec6a7b0f3a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15424769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8a2c33352cc652d8432bcc8d13f78a4e9cdb98799f25e16e83ad8ba5a7eef6`
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
# Thu, 21 Dec 2017 00:48:36 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 21 Dec 2017 00:48:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 21 Dec 2017 00:48:37 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 00:48:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Dec 2017 00:48:37 GMT
CMD ["traefik"]
# Thu, 21 Dec 2017 00:48:37 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:48bb30d1185044a7dd9568a5a68ab59e1434d537d36bed35fd5bf2cd284aaebf`  
		Last Modified: Thu, 21 Dec 2017 00:49:12 GMT  
		Size: 13.1 MB (13106112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fd5b590d3bffa5c586f76522f12ebbfafa2d937c60c9177726dfd2e0f72b7a`  
		Last Modified: Thu, 21 Dec 2017 00:49:07 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:33e60b41b601a0fdb5d09c20a2c668076be498b3fefbf7610a2af917e184c7ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15039630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65c7f8d7889f1c65161781f944b9791cfc9778741850a6d3115969c0988a211`
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
# Thu, 21 Dec 2017 05:55:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 21 Dec 2017 05:55:19 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 21 Dec 2017 05:55:19 GMT
EXPOSE 80/tcp
# Thu, 21 Dec 2017 05:55:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 21 Dec 2017 05:55:20 GMT
CMD ["traefik"]
# Thu, 21 Dec 2017 05:55:21 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:bbe8e96fb71f0d5e80e5a08eef6948ccf94c99b46494e72b5026660393705dcb`  
		Last Modified: Thu, 21 Dec 2017 05:56:26 GMT  
		Size: 12.8 MB (12772871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5d7eb26f387d952a6bb1294f4a8aa31ca3bf3885c547c4d058180c1eee0b5f`  
		Last Modified: Thu, 21 Dec 2017 05:56:20 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
