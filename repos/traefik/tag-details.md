<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.4`](#traefik14)
-	[`traefik:1.4.6`](#traefik146)
-	[`traefik:1.4.6-alpine`](#traefik146-alpine)
-	[`traefik:1.4-alpine`](#traefik14-alpine)
-	[`traefik:1.5`](#traefik15)
-	[`traefik:1.5.0-rc4`](#traefik150-rc4)
-	[`traefik:1.5.0-rc4-alpine`](#traefik150-rc4-alpine)
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
-	[`traefik:v1.5.0-rc4`](#traefikv150-rc4)
-	[`traefik:v1.5.0-rc4-alpine`](#traefikv150-rc4-alpine)
-	[`traefik:v1.5-alpine`](#traefikv15-alpine)

## `traefik:1.4`

```console
$ docker pull traefik@sha256:89cb51b507f84cde07e19c2d0e84ef1273dd81683debc0bc50468dd424880a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9984cd9827d1046390e57d098d3438f44aa15440fa8e19a026a3fea5ddc05c87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12065790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f285e6f27dc2855f763f6c9d08f5622732b4302c32614806ea54dda3cc0c2174`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 03 Jan 2018 05:54:51 GMT
COPY file:363b0d9c6991ea72b83e798841ea50cca719eccca318e14b662c5ba2cfbd1736 in / 
# Wed, 03 Jan 2018 05:54:52 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 05:54:52 GMT
ENTRYPOINT ["/traefik"]
# Wed, 03 Jan 2018 05:54:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83a6ad999471323d8d6afec2359a0084fdea88c5c2d89ec7e09d121fa4ac728`  
		Last Modified: Wed, 03 Jan 2018 05:55:45 GMT  
		Size: 11.9 MB (11910639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.6`

```console
$ docker pull traefik@sha256:89cb51b507f84cde07e19c2d0e84ef1273dd81683debc0bc50468dd424880a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.4.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9984cd9827d1046390e57d098d3438f44aa15440fa8e19a026a3fea5ddc05c87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12065790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f285e6f27dc2855f763f6c9d08f5622732b4302c32614806ea54dda3cc0c2174`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 03 Jan 2018 05:54:51 GMT
COPY file:363b0d9c6991ea72b83e798841ea50cca719eccca318e14b662c5ba2cfbd1736 in / 
# Wed, 03 Jan 2018 05:54:52 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 05:54:52 GMT
ENTRYPOINT ["/traefik"]
# Wed, 03 Jan 2018 05:54:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83a6ad999471323d8d6afec2359a0084fdea88c5c2d89ec7e09d121fa4ac728`  
		Last Modified: Wed, 03 Jan 2018 05:55:45 GMT  
		Size: 11.9 MB (11910639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.6-alpine`

```console
$ docker pull traefik@sha256:3792c9b872f3e708ec007b36d5c7066c51b58cc304d624b8d1a48def1f597f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.4.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a421ded3f80a9c619f95cd3c40de8604da79d327d53baa1465bec4f480770995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14343852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1e04c63c21c9608228e276c3d893f1d1c87da928a2c46d3ea9af2877ff5170`
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
# Wed, 03 Jan 2018 05:55:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 03 Jan 2018 05:55:17 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 03 Jan 2018 05:55:18 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 05:55:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 05:55:19 GMT
CMD ["traefik"]
# Wed, 03 Jan 2018 05:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:af4d9bddeb2909e9d78ab59fa875558a493e7f3010ff51d01f20ab620bc90e1f`  
		Last Modified: Wed, 03 Jan 2018 05:56:35 GMT  
		Size: 12.1 MB (12077092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84254d88f0153709bef46d2c254734a6a28b1d1d1e848ad3d5681f8fa3b60e45`  
		Last Modified: Wed, 03 Jan 2018 05:56:31 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4-alpine`

```console
$ docker pull traefik@sha256:3792c9b872f3e708ec007b36d5c7066c51b58cc304d624b8d1a48def1f597f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:1.4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a421ded3f80a9c619f95cd3c40de8604da79d327d53baa1465bec4f480770995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14343852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1e04c63c21c9608228e276c3d893f1d1c87da928a2c46d3ea9af2877ff5170`
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
# Wed, 03 Jan 2018 05:55:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 03 Jan 2018 05:55:17 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 03 Jan 2018 05:55:18 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 05:55:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 05:55:19 GMT
CMD ["traefik"]
# Wed, 03 Jan 2018 05:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:af4d9bddeb2909e9d78ab59fa875558a493e7f3010ff51d01f20ab620bc90e1f`  
		Last Modified: Wed, 03 Jan 2018 05:56:35 GMT  
		Size: 12.1 MB (12077092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84254d88f0153709bef46d2c254734a6a28b1d1d1e848ad3d5681f8fa3b60e45`  
		Last Modified: Wed, 03 Jan 2018 05:56:31 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5`

```console
$ docker pull traefik@sha256:d7d43516529cff5b03bf9a2ae5564cca7aa9b27d5f415f7f567ffba8a41e3c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.5` - linux; amd64

```console
$ docker pull traefik@sha256:0cfc6bd95f93749e5fa52acafdcc0850a74a259d40405f132d56660ef5f03ec7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13958771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f95bbafd3bd97596f43deeab8c215ac3eeb1ca300f63ccdaf175afab5bd0cb`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 04 Jan 2018 17:59:48 GMT
COPY file:814db57f6caa786ab2ab7d1352639cd969586a97cc81ddacbc53036d12c38ac7 in / 
# Thu, 04 Jan 2018 17:59:48 GMT
EXPOSE 80/tcp
# Thu, 04 Jan 2018 17:59:48 GMT
ENTRYPOINT ["/traefik"]
# Thu, 04 Jan 2018 17:59:49 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5966baca844a31e55f12a0193322fe9e9ea6a1d6a52c7ff40880551cf205f7cc`  
		Last Modified: Thu, 04 Jan 2018 18:01:19 GMT  
		Size: 13.8 MB (13803619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:d4aa04640aaeb606b2aee4419012798d373aa2c48612bf7ecd8a00fe97019e1b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13094470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ee548093c5c04be909152d5d84ece746a714e69011e214c154a76609fe274b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 05 Jan 2018 00:48:25 GMT
COPY file:e5aa52ff80288b659c2b132edca7e5ff093f49c0df891fa911c466b7deffd328 in / 
# Fri, 05 Jan 2018 00:48:25 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 00:48:26 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Jan 2018 00:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3664f7d1017ff81d773b629224d5ee2b263a65958ad61b6962b685e5d0f6e846`  
		Last Modified: Fri, 05 Jan 2018 00:48:56 GMT  
		Size: 12.9 MB (12939286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a2ea1bc20307477e3281fdcf86528c005487ca8c0db84f756789d1a6ada00525
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12761589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d237239c694754765662ab8a448dc393e44663221f2543668cfd6668763ffb0c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 05 Jan 2018 05:54:39 GMT
COPY file:f188ffaa1598c2c1c78a6b292398de9a5881c101f0b6bb653a0d71d5f9e0eada in / 
# Fri, 05 Jan 2018 05:54:39 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 05:54:40 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Jan 2018 05:54:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dc9d7a1a51c35b0f9cedc44fe37c503c356287b2b227ca3f3fbe55b2368d68`  
		Last Modified: Fri, 05 Jan 2018 05:55:39 GMT  
		Size: 12.6 MB (12606438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5.0-rc4`

```console
$ docker pull traefik@sha256:d7d43516529cff5b03bf9a2ae5564cca7aa9b27d5f415f7f567ffba8a41e3c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.5.0-rc4` - linux; amd64

```console
$ docker pull traefik@sha256:0cfc6bd95f93749e5fa52acafdcc0850a74a259d40405f132d56660ef5f03ec7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13958771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f95bbafd3bd97596f43deeab8c215ac3eeb1ca300f63ccdaf175afab5bd0cb`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 04 Jan 2018 17:59:48 GMT
COPY file:814db57f6caa786ab2ab7d1352639cd969586a97cc81ddacbc53036d12c38ac7 in / 
# Thu, 04 Jan 2018 17:59:48 GMT
EXPOSE 80/tcp
# Thu, 04 Jan 2018 17:59:48 GMT
ENTRYPOINT ["/traefik"]
# Thu, 04 Jan 2018 17:59:49 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5966baca844a31e55f12a0193322fe9e9ea6a1d6a52c7ff40880551cf205f7cc`  
		Last Modified: Thu, 04 Jan 2018 18:01:19 GMT  
		Size: 13.8 MB (13803619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5.0-rc4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:d4aa04640aaeb606b2aee4419012798d373aa2c48612bf7ecd8a00fe97019e1b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13094470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ee548093c5c04be909152d5d84ece746a714e69011e214c154a76609fe274b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 05 Jan 2018 00:48:25 GMT
COPY file:e5aa52ff80288b659c2b132edca7e5ff093f49c0df891fa911c466b7deffd328 in / 
# Fri, 05 Jan 2018 00:48:25 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 00:48:26 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Jan 2018 00:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3664f7d1017ff81d773b629224d5ee2b263a65958ad61b6962b685e5d0f6e846`  
		Last Modified: Fri, 05 Jan 2018 00:48:56 GMT  
		Size: 12.9 MB (12939286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5.0-rc4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a2ea1bc20307477e3281fdcf86528c005487ca8c0db84f756789d1a6ada00525
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12761589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d237239c694754765662ab8a448dc393e44663221f2543668cfd6668763ffb0c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 05 Jan 2018 05:54:39 GMT
COPY file:f188ffaa1598c2c1c78a6b292398de9a5881c101f0b6bb653a0d71d5f9e0eada in / 
# Fri, 05 Jan 2018 05:54:39 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 05:54:40 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Jan 2018 05:54:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dc9d7a1a51c35b0f9cedc44fe37c503c356287b2b227ca3f3fbe55b2368d68`  
		Last Modified: Fri, 05 Jan 2018 05:55:39 GMT  
		Size: 12.6 MB (12606438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5.0-rc4-alpine`

```console
$ docker pull traefik@sha256:186d9f46545b403a4c6ebe49f1b98264fb8576740bb34745a68634d411d61953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.5.0-rc4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:89ac58a2a53d9accc3453593d747d2804dd7c5c3efe973421538dbc78d181760
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16313012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189c74abbe44f9a5f10e734956968fa4c0f0d889a4a621892dd9e44b0e562eed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 04 Jan 2018 18:00:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 04 Jan 2018 18:00:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 04 Jan 2018 18:00:37 GMT
EXPOSE 80/tcp
# Thu, 04 Jan 2018 18:00:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Jan 2018 18:00:38 GMT
CMD ["traefik"]
# Thu, 04 Jan 2018 18:00:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1182221af24ed32f78614e6664f134d9753c1c2f11dd1d72e776351d473cad70`  
		Last Modified: Thu, 04 Jan 2018 18:02:39 GMT  
		Size: 14.0 MB (13970178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9cc591ab64b9c49bde10c1f39bf8ad89b7e8d2209ff80a059b8ba69d517dff`  
		Last Modified: Thu, 04 Jan 2018 18:02:36 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5.0-rc4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ffd95fa5f26a812e5d0cdf92b4640d0026a7f36257c576777f3775e3323bfa39
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15425617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41e63241501d54f980631e029cc59d770b7ad382abb385ad8bf7800a2fa04372`
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
# Fri, 05 Jan 2018 00:48:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Jan 2018 00:48:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 05 Jan 2018 00:48:35 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 00:48:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Jan 2018 00:48:35 GMT
CMD ["traefik"]
# Fri, 05 Jan 2018 00:48:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e221bd2c8c1591001b8ff9d2e5387a806dbee238b94b010be6a6e0d044da6690`  
		Last Modified: Fri, 05 Jan 2018 00:49:12 GMT  
		Size: 13.1 MB (13106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dc8697c4ec239289a12e54bc9a96802dd1f1b60c760ef106f7f44f6f7ecf6b`  
		Last Modified: Fri, 05 Jan 2018 00:49:07 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5.0-rc4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2c14fe80f5b505c611d7a2e0356496b5713e667efc0bc9743854531d49cdd1f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15040036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b051be62faf48f3a9b5a8fe7cadfe227f84f0c57fcb0a2080873521fb8cd598`
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
# Fri, 05 Jan 2018 05:55:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Jan 2018 05:55:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 05 Jan 2018 05:55:06 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 05:55:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Jan 2018 05:55:08 GMT
CMD ["traefik"]
# Fri, 05 Jan 2018 05:55:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:90575458b92222c8060972148c506e1017efb11f7efd291c407edae67b1bd541`  
		Last Modified: Fri, 05 Jan 2018 05:56:26 GMT  
		Size: 12.8 MB (12773278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cb0ab1cc379644a9d6e57118a68cb611f26bdd7f9f536c5be2f683ed4f8b91`  
		Last Modified: Fri, 05 Jan 2018 05:56:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5-alpine`

```console
$ docker pull traefik@sha256:186d9f46545b403a4c6ebe49f1b98264fb8576740bb34745a68634d411d61953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:89ac58a2a53d9accc3453593d747d2804dd7c5c3efe973421538dbc78d181760
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16313012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189c74abbe44f9a5f10e734956968fa4c0f0d889a4a621892dd9e44b0e562eed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 04 Jan 2018 18:00:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 04 Jan 2018 18:00:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 04 Jan 2018 18:00:37 GMT
EXPOSE 80/tcp
# Thu, 04 Jan 2018 18:00:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Jan 2018 18:00:38 GMT
CMD ["traefik"]
# Thu, 04 Jan 2018 18:00:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1182221af24ed32f78614e6664f134d9753c1c2f11dd1d72e776351d473cad70`  
		Last Modified: Thu, 04 Jan 2018 18:02:39 GMT  
		Size: 14.0 MB (13970178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9cc591ab64b9c49bde10c1f39bf8ad89b7e8d2209ff80a059b8ba69d517dff`  
		Last Modified: Thu, 04 Jan 2018 18:02:36 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ffd95fa5f26a812e5d0cdf92b4640d0026a7f36257c576777f3775e3323bfa39
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15425617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41e63241501d54f980631e029cc59d770b7ad382abb385ad8bf7800a2fa04372`
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
# Fri, 05 Jan 2018 00:48:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Jan 2018 00:48:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 05 Jan 2018 00:48:35 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 00:48:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Jan 2018 00:48:35 GMT
CMD ["traefik"]
# Fri, 05 Jan 2018 00:48:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e221bd2c8c1591001b8ff9d2e5387a806dbee238b94b010be6a6e0d044da6690`  
		Last Modified: Fri, 05 Jan 2018 00:49:12 GMT  
		Size: 13.1 MB (13106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dc8697c4ec239289a12e54bc9a96802dd1f1b60c760ef106f7f44f6f7ecf6b`  
		Last Modified: Fri, 05 Jan 2018 00:49:07 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2c14fe80f5b505c611d7a2e0356496b5713e667efc0bc9743854531d49cdd1f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15040036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b051be62faf48f3a9b5a8fe7cadfe227f84f0c57fcb0a2080873521fb8cd598`
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
# Fri, 05 Jan 2018 05:55:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Jan 2018 05:55:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 05 Jan 2018 05:55:06 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 05:55:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Jan 2018 05:55:08 GMT
CMD ["traefik"]
# Fri, 05 Jan 2018 05:55:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:90575458b92222c8060972148c506e1017efb11f7efd291c407edae67b1bd541`  
		Last Modified: Fri, 05 Jan 2018 05:56:26 GMT  
		Size: 12.8 MB (12773278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cb0ab1cc379644a9d6e57118a68cb611f26bdd7f9f536c5be2f683ed4f8b91`  
		Last Modified: Fri, 05 Jan 2018 05:56:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:3792c9b872f3e708ec007b36d5c7066c51b58cc304d624b8d1a48def1f597f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a421ded3f80a9c619f95cd3c40de8604da79d327d53baa1465bec4f480770995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14343852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1e04c63c21c9608228e276c3d893f1d1c87da928a2c46d3ea9af2877ff5170`
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
# Wed, 03 Jan 2018 05:55:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 03 Jan 2018 05:55:17 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 03 Jan 2018 05:55:18 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 05:55:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 05:55:19 GMT
CMD ["traefik"]
# Wed, 03 Jan 2018 05:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:af4d9bddeb2909e9d78ab59fa875558a493e7f3010ff51d01f20ab620bc90e1f`  
		Last Modified: Wed, 03 Jan 2018 05:56:35 GMT  
		Size: 12.1 MB (12077092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84254d88f0153709bef46d2c254734a6a28b1d1d1e848ad3d5681f8fa3b60e45`  
		Last Modified: Wed, 03 Jan 2018 05:56:31 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:cancoillotte`

```console
$ docker pull traefik@sha256:d7d43516529cff5b03bf9a2ae5564cca7aa9b27d5f415f7f567ffba8a41e3c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:cancoillotte` - linux; amd64

```console
$ docker pull traefik@sha256:0cfc6bd95f93749e5fa52acafdcc0850a74a259d40405f132d56660ef5f03ec7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13958771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f95bbafd3bd97596f43deeab8c215ac3eeb1ca300f63ccdaf175afab5bd0cb`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 04 Jan 2018 17:59:48 GMT
COPY file:814db57f6caa786ab2ab7d1352639cd969586a97cc81ddacbc53036d12c38ac7 in / 
# Thu, 04 Jan 2018 17:59:48 GMT
EXPOSE 80/tcp
# Thu, 04 Jan 2018 17:59:48 GMT
ENTRYPOINT ["/traefik"]
# Thu, 04 Jan 2018 17:59:49 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5966baca844a31e55f12a0193322fe9e9ea6a1d6a52c7ff40880551cf205f7cc`  
		Last Modified: Thu, 04 Jan 2018 18:01:19 GMT  
		Size: 13.8 MB (13803619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte` - linux; arm variant v6

```console
$ docker pull traefik@sha256:d4aa04640aaeb606b2aee4419012798d373aa2c48612bf7ecd8a00fe97019e1b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13094470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ee548093c5c04be909152d5d84ece746a714e69011e214c154a76609fe274b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 05 Jan 2018 00:48:25 GMT
COPY file:e5aa52ff80288b659c2b132edca7e5ff093f49c0df891fa911c466b7deffd328 in / 
# Fri, 05 Jan 2018 00:48:25 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 00:48:26 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Jan 2018 00:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3664f7d1017ff81d773b629224d5ee2b263a65958ad61b6962b685e5d0f6e846`  
		Last Modified: Fri, 05 Jan 2018 00:48:56 GMT  
		Size: 12.9 MB (12939286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a2ea1bc20307477e3281fdcf86528c005487ca8c0db84f756789d1a6ada00525
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12761589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d237239c694754765662ab8a448dc393e44663221f2543668cfd6668763ffb0c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 05 Jan 2018 05:54:39 GMT
COPY file:f188ffaa1598c2c1c78a6b292398de9a5881c101f0b6bb653a0d71d5f9e0eada in / 
# Fri, 05 Jan 2018 05:54:39 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 05:54:40 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Jan 2018 05:54:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dc9d7a1a51c35b0f9cedc44fe37c503c356287b2b227ca3f3fbe55b2368d68`  
		Last Modified: Fri, 05 Jan 2018 05:55:39 GMT  
		Size: 12.6 MB (12606438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:cancoillotte-alpine`

```console
$ docker pull traefik@sha256:186d9f46545b403a4c6ebe49f1b98264fb8576740bb34745a68634d411d61953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:cancoillotte-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:89ac58a2a53d9accc3453593d747d2804dd7c5c3efe973421538dbc78d181760
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16313012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189c74abbe44f9a5f10e734956968fa4c0f0d889a4a621892dd9e44b0e562eed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 04 Jan 2018 18:00:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 04 Jan 2018 18:00:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 04 Jan 2018 18:00:37 GMT
EXPOSE 80/tcp
# Thu, 04 Jan 2018 18:00:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Jan 2018 18:00:38 GMT
CMD ["traefik"]
# Thu, 04 Jan 2018 18:00:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1182221af24ed32f78614e6664f134d9753c1c2f11dd1d72e776351d473cad70`  
		Last Modified: Thu, 04 Jan 2018 18:02:39 GMT  
		Size: 14.0 MB (13970178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9cc591ab64b9c49bde10c1f39bf8ad89b7e8d2209ff80a059b8ba69d517dff`  
		Last Modified: Thu, 04 Jan 2018 18:02:36 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ffd95fa5f26a812e5d0cdf92b4640d0026a7f36257c576777f3775e3323bfa39
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15425617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41e63241501d54f980631e029cc59d770b7ad382abb385ad8bf7800a2fa04372`
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
# Fri, 05 Jan 2018 00:48:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Jan 2018 00:48:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 05 Jan 2018 00:48:35 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 00:48:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Jan 2018 00:48:35 GMT
CMD ["traefik"]
# Fri, 05 Jan 2018 00:48:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e221bd2c8c1591001b8ff9d2e5387a806dbee238b94b010be6a6e0d044da6690`  
		Last Modified: Fri, 05 Jan 2018 00:49:12 GMT  
		Size: 13.1 MB (13106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dc8697c4ec239289a12e54bc9a96802dd1f1b60c760ef106f7f44f6f7ecf6b`  
		Last Modified: Fri, 05 Jan 2018 00:49:07 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2c14fe80f5b505c611d7a2e0356496b5713e667efc0bc9743854531d49cdd1f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15040036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b051be62faf48f3a9b5a8fe7cadfe227f84f0c57fcb0a2080873521fb8cd598`
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
# Fri, 05 Jan 2018 05:55:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Jan 2018 05:55:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 05 Jan 2018 05:55:06 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 05:55:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Jan 2018 05:55:08 GMT
CMD ["traefik"]
# Fri, 05 Jan 2018 05:55:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:90575458b92222c8060972148c506e1017efb11f7efd291c407edae67b1bd541`  
		Last Modified: Fri, 05 Jan 2018 05:56:26 GMT  
		Size: 12.8 MB (12773278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cb0ab1cc379644a9d6e57118a68cb611f26bdd7f9f536c5be2f683ed4f8b91`  
		Last Modified: Fri, 05 Jan 2018 05:56:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:89cb51b507f84cde07e19c2d0e84ef1273dd81683debc0bc50468dd424880a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:latest` - linux; arm variant v6

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

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9984cd9827d1046390e57d098d3438f44aa15440fa8e19a026a3fea5ddc05c87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12065790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f285e6f27dc2855f763f6c9d08f5622732b4302c32614806ea54dda3cc0c2174`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 03 Jan 2018 05:54:51 GMT
COPY file:363b0d9c6991ea72b83e798841ea50cca719eccca318e14b662c5ba2cfbd1736 in / 
# Wed, 03 Jan 2018 05:54:52 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 05:54:52 GMT
ENTRYPOINT ["/traefik"]
# Wed, 03 Jan 2018 05:54:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83a6ad999471323d8d6afec2359a0084fdea88c5c2d89ec7e09d121fa4ac728`  
		Last Modified: Wed, 03 Jan 2018 05:55:45 GMT  
		Size: 11.9 MB (11910639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort`

```console
$ docker pull traefik@sha256:89cb51b507f84cde07e19c2d0e84ef1273dd81683debc0bc50468dd424880a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:roquefort` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9984cd9827d1046390e57d098d3438f44aa15440fa8e19a026a3fea5ddc05c87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12065790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f285e6f27dc2855f763f6c9d08f5622732b4302c32614806ea54dda3cc0c2174`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 03 Jan 2018 05:54:51 GMT
COPY file:363b0d9c6991ea72b83e798841ea50cca719eccca318e14b662c5ba2cfbd1736 in / 
# Wed, 03 Jan 2018 05:54:52 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 05:54:52 GMT
ENTRYPOINT ["/traefik"]
# Wed, 03 Jan 2018 05:54:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83a6ad999471323d8d6afec2359a0084fdea88c5c2d89ec7e09d121fa4ac728`  
		Last Modified: Wed, 03 Jan 2018 05:55:45 GMT  
		Size: 11.9 MB (11910639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:3792c9b872f3e708ec007b36d5c7066c51b58cc304d624b8d1a48def1f597f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:roquefort-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a421ded3f80a9c619f95cd3c40de8604da79d327d53baa1465bec4f480770995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14343852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1e04c63c21c9608228e276c3d893f1d1c87da928a2c46d3ea9af2877ff5170`
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
# Wed, 03 Jan 2018 05:55:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 03 Jan 2018 05:55:17 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 03 Jan 2018 05:55:18 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 05:55:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 05:55:19 GMT
CMD ["traefik"]
# Wed, 03 Jan 2018 05:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:af4d9bddeb2909e9d78ab59fa875558a493e7f3010ff51d01f20ab620bc90e1f`  
		Last Modified: Wed, 03 Jan 2018 05:56:35 GMT  
		Size: 12.1 MB (12077092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84254d88f0153709bef46d2c254734a6a28b1d1d1e848ad3d5681f8fa3b60e45`  
		Last Modified: Wed, 03 Jan 2018 05:56:31 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4`

```console
$ docker pull traefik@sha256:89cb51b507f84cde07e19c2d0e84ef1273dd81683debc0bc50468dd424880a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9984cd9827d1046390e57d098d3438f44aa15440fa8e19a026a3fea5ddc05c87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12065790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f285e6f27dc2855f763f6c9d08f5622732b4302c32614806ea54dda3cc0c2174`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 03 Jan 2018 05:54:51 GMT
COPY file:363b0d9c6991ea72b83e798841ea50cca719eccca318e14b662c5ba2cfbd1736 in / 
# Wed, 03 Jan 2018 05:54:52 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 05:54:52 GMT
ENTRYPOINT ["/traefik"]
# Wed, 03 Jan 2018 05:54:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83a6ad999471323d8d6afec2359a0084fdea88c5c2d89ec7e09d121fa4ac728`  
		Last Modified: Wed, 03 Jan 2018 05:55:45 GMT  
		Size: 11.9 MB (11910639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.6`

```console
$ docker pull traefik@sha256:89cb51b507f84cde07e19c2d0e84ef1273dd81683debc0bc50468dd424880a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.4.6` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9984cd9827d1046390e57d098d3438f44aa15440fa8e19a026a3fea5ddc05c87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12065790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f285e6f27dc2855f763f6c9d08f5622732b4302c32614806ea54dda3cc0c2174`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 03 Jan 2018 05:54:51 GMT
COPY file:363b0d9c6991ea72b83e798841ea50cca719eccca318e14b662c5ba2cfbd1736 in / 
# Wed, 03 Jan 2018 05:54:52 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 05:54:52 GMT
ENTRYPOINT ["/traefik"]
# Wed, 03 Jan 2018 05:54:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83a6ad999471323d8d6afec2359a0084fdea88c5c2d89ec7e09d121fa4ac728`  
		Last Modified: Wed, 03 Jan 2018 05:55:45 GMT  
		Size: 11.9 MB (11910639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.6-alpine`

```console
$ docker pull traefik@sha256:3792c9b872f3e708ec007b36d5c7066c51b58cc304d624b8d1a48def1f597f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.4.6-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a421ded3f80a9c619f95cd3c40de8604da79d327d53baa1465bec4f480770995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14343852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1e04c63c21c9608228e276c3d893f1d1c87da928a2c46d3ea9af2877ff5170`
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
# Wed, 03 Jan 2018 05:55:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 03 Jan 2018 05:55:17 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 03 Jan 2018 05:55:18 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 05:55:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 05:55:19 GMT
CMD ["traefik"]
# Wed, 03 Jan 2018 05:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:af4d9bddeb2909e9d78ab59fa875558a493e7f3010ff51d01f20ab620bc90e1f`  
		Last Modified: Wed, 03 Jan 2018 05:56:35 GMT  
		Size: 12.1 MB (12077092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84254d88f0153709bef46d2c254734a6a28b1d1d1e848ad3d5681f8fa3b60e45`  
		Last Modified: Wed, 03 Jan 2018 05:56:31 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4-alpine`

```console
$ docker pull traefik@sha256:3792c9b872f3e708ec007b36d5c7066c51b58cc304d624b8d1a48def1f597f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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

### `traefik:v1.4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a421ded3f80a9c619f95cd3c40de8604da79d327d53baa1465bec4f480770995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14343852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1e04c63c21c9608228e276c3d893f1d1c87da928a2c46d3ea9af2877ff5170`
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
# Wed, 03 Jan 2018 05:55:16 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 03 Jan 2018 05:55:17 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 03 Jan 2018 05:55:18 GMT
EXPOSE 80/tcp
# Wed, 03 Jan 2018 05:55:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 03 Jan 2018 05:55:19 GMT
CMD ["traefik"]
# Wed, 03 Jan 2018 05:55:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:af4d9bddeb2909e9d78ab59fa875558a493e7f3010ff51d01f20ab620bc90e1f`  
		Last Modified: Wed, 03 Jan 2018 05:56:35 GMT  
		Size: 12.1 MB (12077092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84254d88f0153709bef46d2c254734a6a28b1d1d1e848ad3d5681f8fa3b60e45`  
		Last Modified: Wed, 03 Jan 2018 05:56:31 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5`

```console
$ docker pull traefik@sha256:d7d43516529cff5b03bf9a2ae5564cca7aa9b27d5f415f7f567ffba8a41e3c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.5` - linux; amd64

```console
$ docker pull traefik@sha256:0cfc6bd95f93749e5fa52acafdcc0850a74a259d40405f132d56660ef5f03ec7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13958771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f95bbafd3bd97596f43deeab8c215ac3eeb1ca300f63ccdaf175afab5bd0cb`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 04 Jan 2018 17:59:48 GMT
COPY file:814db57f6caa786ab2ab7d1352639cd969586a97cc81ddacbc53036d12c38ac7 in / 
# Thu, 04 Jan 2018 17:59:48 GMT
EXPOSE 80/tcp
# Thu, 04 Jan 2018 17:59:48 GMT
ENTRYPOINT ["/traefik"]
# Thu, 04 Jan 2018 17:59:49 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5966baca844a31e55f12a0193322fe9e9ea6a1d6a52c7ff40880551cf205f7cc`  
		Last Modified: Thu, 04 Jan 2018 18:01:19 GMT  
		Size: 13.8 MB (13803619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:d4aa04640aaeb606b2aee4419012798d373aa2c48612bf7ecd8a00fe97019e1b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13094470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ee548093c5c04be909152d5d84ece746a714e69011e214c154a76609fe274b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 05 Jan 2018 00:48:25 GMT
COPY file:e5aa52ff80288b659c2b132edca7e5ff093f49c0df891fa911c466b7deffd328 in / 
# Fri, 05 Jan 2018 00:48:25 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 00:48:26 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Jan 2018 00:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3664f7d1017ff81d773b629224d5ee2b263a65958ad61b6962b685e5d0f6e846`  
		Last Modified: Fri, 05 Jan 2018 00:48:56 GMT  
		Size: 12.9 MB (12939286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a2ea1bc20307477e3281fdcf86528c005487ca8c0db84f756789d1a6ada00525
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12761589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d237239c694754765662ab8a448dc393e44663221f2543668cfd6668763ffb0c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 05 Jan 2018 05:54:39 GMT
COPY file:f188ffaa1598c2c1c78a6b292398de9a5881c101f0b6bb653a0d71d5f9e0eada in / 
# Fri, 05 Jan 2018 05:54:39 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 05:54:40 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Jan 2018 05:54:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dc9d7a1a51c35b0f9cedc44fe37c503c356287b2b227ca3f3fbe55b2368d68`  
		Last Modified: Fri, 05 Jan 2018 05:55:39 GMT  
		Size: 12.6 MB (12606438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5.0-rc4`

```console
$ docker pull traefik@sha256:d7d43516529cff5b03bf9a2ae5564cca7aa9b27d5f415f7f567ffba8a41e3c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.5.0-rc4` - linux; amd64

```console
$ docker pull traefik@sha256:0cfc6bd95f93749e5fa52acafdcc0850a74a259d40405f132d56660ef5f03ec7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13958771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f95bbafd3bd97596f43deeab8c215ac3eeb1ca300f63ccdaf175afab5bd0cb`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Thu, 04 Jan 2018 17:59:48 GMT
COPY file:814db57f6caa786ab2ab7d1352639cd969586a97cc81ddacbc53036d12c38ac7 in / 
# Thu, 04 Jan 2018 17:59:48 GMT
EXPOSE 80/tcp
# Thu, 04 Jan 2018 17:59:48 GMT
ENTRYPOINT ["/traefik"]
# Thu, 04 Jan 2018 17:59:49 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5966baca844a31e55f12a0193322fe9e9ea6a1d6a52c7ff40880551cf205f7cc`  
		Last Modified: Thu, 04 Jan 2018 18:01:19 GMT  
		Size: 13.8 MB (13803619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5.0-rc4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:d4aa04640aaeb606b2aee4419012798d373aa2c48612bf7ecd8a00fe97019e1b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13094470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ee548093c5c04be909152d5d84ece746a714e69011e214c154a76609fe274b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 05 Jan 2018 00:48:25 GMT
COPY file:e5aa52ff80288b659c2b132edca7e5ff093f49c0df891fa911c466b7deffd328 in / 
# Fri, 05 Jan 2018 00:48:25 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 00:48:26 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Jan 2018 00:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3664f7d1017ff81d773b629224d5ee2b263a65958ad61b6962b685e5d0f6e846`  
		Last Modified: Fri, 05 Jan 2018 00:48:56 GMT  
		Size: 12.9 MB (12939286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5.0-rc4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:a2ea1bc20307477e3281fdcf86528c005487ca8c0db84f756789d1a6ada00525
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12761589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d237239c694754765662ab8a448dc393e44663221f2543668cfd6668763ffb0c`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Fri, 05 Jan 2018 05:54:39 GMT
COPY file:f188ffaa1598c2c1c78a6b292398de9a5881c101f0b6bb653a0d71d5f9e0eada in / 
# Fri, 05 Jan 2018 05:54:39 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 05:54:40 GMT
ENTRYPOINT ["/traefik"]
# Fri, 05 Jan 2018 05:54:41 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dc9d7a1a51c35b0f9cedc44fe37c503c356287b2b227ca3f3fbe55b2368d68`  
		Last Modified: Fri, 05 Jan 2018 05:55:39 GMT  
		Size: 12.6 MB (12606438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5.0-rc4-alpine`

```console
$ docker pull traefik@sha256:186d9f46545b403a4c6ebe49f1b98264fb8576740bb34745a68634d411d61953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.5.0-rc4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:89ac58a2a53d9accc3453593d747d2804dd7c5c3efe973421538dbc78d181760
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16313012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189c74abbe44f9a5f10e734956968fa4c0f0d889a4a621892dd9e44b0e562eed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 04 Jan 2018 18:00:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 04 Jan 2018 18:00:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 04 Jan 2018 18:00:37 GMT
EXPOSE 80/tcp
# Thu, 04 Jan 2018 18:00:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Jan 2018 18:00:38 GMT
CMD ["traefik"]
# Thu, 04 Jan 2018 18:00:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1182221af24ed32f78614e6664f134d9753c1c2f11dd1d72e776351d473cad70`  
		Last Modified: Thu, 04 Jan 2018 18:02:39 GMT  
		Size: 14.0 MB (13970178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9cc591ab64b9c49bde10c1f39bf8ad89b7e8d2209ff80a059b8ba69d517dff`  
		Last Modified: Thu, 04 Jan 2018 18:02:36 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5.0-rc4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ffd95fa5f26a812e5d0cdf92b4640d0026a7f36257c576777f3775e3323bfa39
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15425617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41e63241501d54f980631e029cc59d770b7ad382abb385ad8bf7800a2fa04372`
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
# Fri, 05 Jan 2018 00:48:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Jan 2018 00:48:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 05 Jan 2018 00:48:35 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 00:48:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Jan 2018 00:48:35 GMT
CMD ["traefik"]
# Fri, 05 Jan 2018 00:48:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e221bd2c8c1591001b8ff9d2e5387a806dbee238b94b010be6a6e0d044da6690`  
		Last Modified: Fri, 05 Jan 2018 00:49:12 GMT  
		Size: 13.1 MB (13106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dc8697c4ec239289a12e54bc9a96802dd1f1b60c760ef106f7f44f6f7ecf6b`  
		Last Modified: Fri, 05 Jan 2018 00:49:07 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5.0-rc4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2c14fe80f5b505c611d7a2e0356496b5713e667efc0bc9743854531d49cdd1f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15040036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b051be62faf48f3a9b5a8fe7cadfe227f84f0c57fcb0a2080873521fb8cd598`
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
# Fri, 05 Jan 2018 05:55:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Jan 2018 05:55:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 05 Jan 2018 05:55:06 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 05:55:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Jan 2018 05:55:08 GMT
CMD ["traefik"]
# Fri, 05 Jan 2018 05:55:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:90575458b92222c8060972148c506e1017efb11f7efd291c407edae67b1bd541`  
		Last Modified: Fri, 05 Jan 2018 05:56:26 GMT  
		Size: 12.8 MB (12773278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cb0ab1cc379644a9d6e57118a68cb611f26bdd7f9f536c5be2f683ed4f8b91`  
		Last Modified: Fri, 05 Jan 2018 05:56:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5-alpine`

```console
$ docker pull traefik@sha256:186d9f46545b403a4c6ebe49f1b98264fb8576740bb34745a68634d411d61953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:89ac58a2a53d9accc3453593d747d2804dd7c5c3efe973421538dbc78d181760
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16313012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189c74abbe44f9a5f10e734956968fa4c0f0d889a4a621892dd9e44b0e562eed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:19:59 GMT
RUN apk --no-cache add ca-certificates
# Thu, 04 Jan 2018 18:00:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Thu, 04 Jan 2018 18:00:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 04 Jan 2018 18:00:37 GMT
EXPOSE 80/tcp
# Thu, 04 Jan 2018 18:00:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Jan 2018 18:00:38 GMT
CMD ["traefik"]
# Thu, 04 Jan 2018 18:00:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1182221af24ed32f78614e6664f134d9753c1c2f11dd1d72e776351d473cad70`  
		Last Modified: Thu, 04 Jan 2018 18:02:39 GMT  
		Size: 14.0 MB (13970178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9cc591ab64b9c49bde10c1f39bf8ad89b7e8d2209ff80a059b8ba69d517dff`  
		Last Modified: Thu, 04 Jan 2018 18:02:36 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:ffd95fa5f26a812e5d0cdf92b4640d0026a7f36257c576777f3775e3323bfa39
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15425617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41e63241501d54f980631e029cc59d770b7ad382abb385ad8bf7800a2fa04372`
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
# Fri, 05 Jan 2018 00:48:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Jan 2018 00:48:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 05 Jan 2018 00:48:35 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 00:48:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Jan 2018 00:48:35 GMT
CMD ["traefik"]
# Fri, 05 Jan 2018 00:48:35 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:e221bd2c8c1591001b8ff9d2e5387a806dbee238b94b010be6a6e0d044da6690`  
		Last Modified: Fri, 05 Jan 2018 00:49:12 GMT  
		Size: 13.1 MB (13106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dc8697c4ec239289a12e54bc9a96802dd1f1b60c760ef106f7f44f6f7ecf6b`  
		Last Modified: Fri, 05 Jan 2018 00:49:07 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:2c14fe80f5b505c611d7a2e0356496b5713e667efc0bc9743854531d49cdd1f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15040036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b051be62faf48f3a9b5a8fe7cadfe227f84f0c57fcb0a2080873521fb8cd598`
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
# Fri, 05 Jan 2018 05:55:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 05 Jan 2018 05:55:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 05 Jan 2018 05:55:06 GMT
EXPOSE 80/tcp
# Fri, 05 Jan 2018 05:55:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Jan 2018 05:55:08 GMT
CMD ["traefik"]
# Fri, 05 Jan 2018 05:55:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:90575458b92222c8060972148c506e1017efb11f7efd291c407edae67b1bd541`  
		Last Modified: Fri, 05 Jan 2018 05:56:26 GMT  
		Size: 12.8 MB (12773278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cb0ab1cc379644a9d6e57118a68cb611f26bdd7f9f536c5be2f683ed4f8b91`  
		Last Modified: Fri, 05 Jan 2018 05:56:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
