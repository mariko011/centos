<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.4`](#traefik14)
-	[`traefik:1.4.6`](#traefik146)
-	[`traefik:1.4.6-alpine`](#traefik146-alpine)
-	[`traefik:1.4-alpine`](#traefik14-alpine)
-	[`traefik:1.5`](#traefik15)
-	[`traefik:1.5.0-rc5`](#traefik150-rc5)
-	[`traefik:1.5.0-rc5-alpine`](#traefik150-rc5-alpine)
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
-	[`traefik:v1.5.0-rc5`](#traefikv150-rc5)
-	[`traefik:v1.5.0-rc5-alpine`](#traefikv150-rc5-alpine)
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
$ docker pull traefik@sha256:2b0988a767c999cd5624c9cb5b1296fd47d6b1c9d605261561861318548ca470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:787ecb78fd3f6510ec8625de29f381432f7cc0137ca512a28f3323505e2fab3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15555432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808e8ce221becd87609debf0f65b6c98a83c2634dee65ca86972e905340aa6b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 10 Jan 2018 01:29:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Jan 2018 01:29:56 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 10 Jan 2018 01:29:57 GMT
EXPOSE 80/tcp
# Wed, 10 Jan 2018 01:29:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:29:57 GMT
CMD ["traefik"]
# Wed, 10 Jan 2018 01:29:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a99270dcaf96b89a8439a3a354ec08c8990be54f3da8d98878d61d2d29a055`  
		Last Modified: Wed, 10 Jan 2018 01:31:57 GMT  
		Size: 13.2 MB (13212352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbce4d825a07325b1760840bc7bab50110e3c5eb0509e808899a45eeda41fae`  
		Last Modified: Wed, 10 Jan 2018 01:31:56 GMT  
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
$ docker pull traefik@sha256:2b0988a767c999cd5624c9cb5b1296fd47d6b1c9d605261561861318548ca470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:787ecb78fd3f6510ec8625de29f381432f7cc0137ca512a28f3323505e2fab3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15555432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808e8ce221becd87609debf0f65b6c98a83c2634dee65ca86972e905340aa6b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 10 Jan 2018 01:29:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Jan 2018 01:29:56 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 10 Jan 2018 01:29:57 GMT
EXPOSE 80/tcp
# Wed, 10 Jan 2018 01:29:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:29:57 GMT
CMD ["traefik"]
# Wed, 10 Jan 2018 01:29:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a99270dcaf96b89a8439a3a354ec08c8990be54f3da8d98878d61d2d29a055`  
		Last Modified: Wed, 10 Jan 2018 01:31:57 GMT  
		Size: 13.2 MB (13212352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbce4d825a07325b1760840bc7bab50110e3c5eb0509e808899a45eeda41fae`  
		Last Modified: Wed, 10 Jan 2018 01:31:56 GMT  
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
$ docker pull traefik@sha256:84d5b20c07746c23bf9fd69cdecaa197379cac67656c8580c0b96e50663d6c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.5` - linux; amd64

```console
$ docker pull traefik@sha256:c60acf6747240b0b2230d27b4adcf12e1c576b464f8ae10c7adc6342ebb90c82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13965999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91947fe923092b3fa633a78d411a35081493fb3fb0d6b64d6173d41d4f4536dc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 15 Jan 2018 20:54:16 GMT
COPY file:e26fd854efc106fc813378371ea737213cfcf18d204618507c18debe34537798 in / 
# Mon, 15 Jan 2018 20:54:16 GMT
EXPOSE 80/tcp
# Mon, 15 Jan 2018 20:54:16 GMT
ENTRYPOINT ["/traefik"]
# Mon, 15 Jan 2018 20:54:17 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5698da4fee45086b63212064546b904e63a68411bb4eb012495c3f4af1007030`  
		Last Modified: Mon, 15 Jan 2018 20:55:29 GMT  
		Size: 13.8 MB (13810847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:dd85619d6e04b5be9f32bce85b191afb0733085fde2a85ecd58c9f868f148c97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13103563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4259facb82910472d07d05e9a64f3ca088b31bd943b3d9f1471a08f07e058e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 16 Jan 2018 00:48:26 GMT
COPY file:cca0f42b2f0f03f582f8e3d0c90246387b0062210c36014404d9f1ca7b515126 in / 
# Tue, 16 Jan 2018 00:48:26 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 00:48:26 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Jan 2018 00:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a157a3ab5a235521fa3e8a41c049e684f7335cad8af4e35c5babc0a64e447d`  
		Last Modified: Tue, 16 Jan 2018 00:48:57 GMT  
		Size: 12.9 MB (12948379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5.0-rc5`

```console
$ docker pull traefik@sha256:84d5b20c07746c23bf9fd69cdecaa197379cac67656c8580c0b96e50663d6c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.5.0-rc5` - linux; amd64

```console
$ docker pull traefik@sha256:c60acf6747240b0b2230d27b4adcf12e1c576b464f8ae10c7adc6342ebb90c82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13965999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91947fe923092b3fa633a78d411a35081493fb3fb0d6b64d6173d41d4f4536dc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 15 Jan 2018 20:54:16 GMT
COPY file:e26fd854efc106fc813378371ea737213cfcf18d204618507c18debe34537798 in / 
# Mon, 15 Jan 2018 20:54:16 GMT
EXPOSE 80/tcp
# Mon, 15 Jan 2018 20:54:16 GMT
ENTRYPOINT ["/traefik"]
# Mon, 15 Jan 2018 20:54:17 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5698da4fee45086b63212064546b904e63a68411bb4eb012495c3f4af1007030`  
		Last Modified: Mon, 15 Jan 2018 20:55:29 GMT  
		Size: 13.8 MB (13810847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5.0-rc5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:dd85619d6e04b5be9f32bce85b191afb0733085fde2a85ecd58c9f868f148c97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13103563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4259facb82910472d07d05e9a64f3ca088b31bd943b3d9f1471a08f07e058e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 16 Jan 2018 00:48:26 GMT
COPY file:cca0f42b2f0f03f582f8e3d0c90246387b0062210c36014404d9f1ca7b515126 in / 
# Tue, 16 Jan 2018 00:48:26 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 00:48:26 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Jan 2018 00:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a157a3ab5a235521fa3e8a41c049e684f7335cad8af4e35c5babc0a64e447d`  
		Last Modified: Tue, 16 Jan 2018 00:48:57 GMT  
		Size: 12.9 MB (12948379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5.0-rc5-alpine`

```console
$ docker pull traefik@sha256:e255561c7600cc4e966fcfead68f05d84d4a3e2f521858d94dfe7a55c22a45fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.5.0-rc5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:cbe04cef5e8be378d028c224b000cb8e236a0aaeeab30f523ab5e7e61198f9bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16320991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8107dee977f191bdaa4f04bb6c27e1c3b3f5a63c8123be046bdb1079dedb162a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Mon, 15 Jan 2018 20:54:54 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 15 Jan 2018 20:55:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 15 Jan 2018 20:55:02 GMT
EXPOSE 80/tcp
# Mon, 15 Jan 2018 20:55:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 Jan 2018 20:55:02 GMT
CMD ["traefik"]
# Mon, 15 Jan 2018 20:55:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64303efbf65e418ba9d342594cc98ab207536c913b2e6680773d546ead7b6f2`  
		Last Modified: Mon, 15 Jan 2018 20:56:50 GMT  
		Size: 14.0 MB (13977913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459bbc7bf0de5f51d2952171f8a65c8186c6dbaafb58e89d9852eb4207e8e4ab`  
		Last Modified: Mon, 15 Jan 2018 20:56:47 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5.0-rc5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b892353ff6f45b8238a818cb63e3ea1ebe890d0559eae0edeea41df6083a9e3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15435288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a81000d7e4ae2ad1ace6b7d678d34f6bde4d62b1e3763c71063a9620b41bbcb2`
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
# Tue, 16 Jan 2018 00:48:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Jan 2018 00:48:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 16 Jan 2018 00:48:35 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 00:48:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Jan 2018 00:48:36 GMT
CMD ["traefik"]
# Tue, 16 Jan 2018 00:48:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ac2f2ee2343abfa7c6e991098660e1a775901cf497f6cf7323628511b362447`  
		Last Modified: Tue, 16 Jan 2018 00:49:12 GMT  
		Size: 13.1 MB (13116630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3e97776a52bf72881b85f0315eb251f03b20a4a01cc7bfd2330d5adc5a5312`  
		Last Modified: Tue, 16 Jan 2018 00:49:08 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.5-alpine`

```console
$ docker pull traefik@sha256:e255561c7600cc4e966fcfead68f05d84d4a3e2f521858d94dfe7a55c22a45fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:1.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:cbe04cef5e8be378d028c224b000cb8e236a0aaeeab30f523ab5e7e61198f9bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16320991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8107dee977f191bdaa4f04bb6c27e1c3b3f5a63c8123be046bdb1079dedb162a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Mon, 15 Jan 2018 20:54:54 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 15 Jan 2018 20:55:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 15 Jan 2018 20:55:02 GMT
EXPOSE 80/tcp
# Mon, 15 Jan 2018 20:55:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 Jan 2018 20:55:02 GMT
CMD ["traefik"]
# Mon, 15 Jan 2018 20:55:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64303efbf65e418ba9d342594cc98ab207536c913b2e6680773d546ead7b6f2`  
		Last Modified: Mon, 15 Jan 2018 20:56:50 GMT  
		Size: 14.0 MB (13977913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459bbc7bf0de5f51d2952171f8a65c8186c6dbaafb58e89d9852eb4207e8e4ab`  
		Last Modified: Mon, 15 Jan 2018 20:56:47 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b892353ff6f45b8238a818cb63e3ea1ebe890d0559eae0edeea41df6083a9e3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15435288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a81000d7e4ae2ad1ace6b7d678d34f6bde4d62b1e3763c71063a9620b41bbcb2`
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
# Tue, 16 Jan 2018 00:48:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Jan 2018 00:48:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 16 Jan 2018 00:48:35 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 00:48:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Jan 2018 00:48:36 GMT
CMD ["traefik"]
# Tue, 16 Jan 2018 00:48:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ac2f2ee2343abfa7c6e991098660e1a775901cf497f6cf7323628511b362447`  
		Last Modified: Tue, 16 Jan 2018 00:49:12 GMT  
		Size: 13.1 MB (13116630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3e97776a52bf72881b85f0315eb251f03b20a4a01cc7bfd2330d5adc5a5312`  
		Last Modified: Tue, 16 Jan 2018 00:49:08 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:2b0988a767c999cd5624c9cb5b1296fd47d6b1c9d605261561861318548ca470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:787ecb78fd3f6510ec8625de29f381432f7cc0137ca512a28f3323505e2fab3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15555432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808e8ce221becd87609debf0f65b6c98a83c2634dee65ca86972e905340aa6b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 10 Jan 2018 01:29:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Jan 2018 01:29:56 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 10 Jan 2018 01:29:57 GMT
EXPOSE 80/tcp
# Wed, 10 Jan 2018 01:29:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:29:57 GMT
CMD ["traefik"]
# Wed, 10 Jan 2018 01:29:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a99270dcaf96b89a8439a3a354ec08c8990be54f3da8d98878d61d2d29a055`  
		Last Modified: Wed, 10 Jan 2018 01:31:57 GMT  
		Size: 13.2 MB (13212352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbce4d825a07325b1760840bc7bab50110e3c5eb0509e808899a45eeda41fae`  
		Last Modified: Wed, 10 Jan 2018 01:31:56 GMT  
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
$ docker pull traefik@sha256:84d5b20c07746c23bf9fd69cdecaa197379cac67656c8580c0b96e50663d6c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:cancoillotte` - linux; amd64

```console
$ docker pull traefik@sha256:c60acf6747240b0b2230d27b4adcf12e1c576b464f8ae10c7adc6342ebb90c82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13965999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91947fe923092b3fa633a78d411a35081493fb3fb0d6b64d6173d41d4f4536dc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 15 Jan 2018 20:54:16 GMT
COPY file:e26fd854efc106fc813378371ea737213cfcf18d204618507c18debe34537798 in / 
# Mon, 15 Jan 2018 20:54:16 GMT
EXPOSE 80/tcp
# Mon, 15 Jan 2018 20:54:16 GMT
ENTRYPOINT ["/traefik"]
# Mon, 15 Jan 2018 20:54:17 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5698da4fee45086b63212064546b904e63a68411bb4eb012495c3f4af1007030`  
		Last Modified: Mon, 15 Jan 2018 20:55:29 GMT  
		Size: 13.8 MB (13810847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte` - linux; arm variant v6

```console
$ docker pull traefik@sha256:dd85619d6e04b5be9f32bce85b191afb0733085fde2a85ecd58c9f868f148c97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13103563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4259facb82910472d07d05e9a64f3ca088b31bd943b3d9f1471a08f07e058e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 16 Jan 2018 00:48:26 GMT
COPY file:cca0f42b2f0f03f582f8e3d0c90246387b0062210c36014404d9f1ca7b515126 in / 
# Tue, 16 Jan 2018 00:48:26 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 00:48:26 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Jan 2018 00:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a157a3ab5a235521fa3e8a41c049e684f7335cad8af4e35c5babc0a64e447d`  
		Last Modified: Tue, 16 Jan 2018 00:48:57 GMT  
		Size: 12.9 MB (12948379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:cancoillotte-alpine`

```console
$ docker pull traefik@sha256:e255561c7600cc4e966fcfead68f05d84d4a3e2f521858d94dfe7a55c22a45fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:cancoillotte-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:cbe04cef5e8be378d028c224b000cb8e236a0aaeeab30f523ab5e7e61198f9bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16320991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8107dee977f191bdaa4f04bb6c27e1c3b3f5a63c8123be046bdb1079dedb162a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Mon, 15 Jan 2018 20:54:54 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 15 Jan 2018 20:55:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 15 Jan 2018 20:55:02 GMT
EXPOSE 80/tcp
# Mon, 15 Jan 2018 20:55:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 Jan 2018 20:55:02 GMT
CMD ["traefik"]
# Mon, 15 Jan 2018 20:55:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64303efbf65e418ba9d342594cc98ab207536c913b2e6680773d546ead7b6f2`  
		Last Modified: Mon, 15 Jan 2018 20:56:50 GMT  
		Size: 14.0 MB (13977913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459bbc7bf0de5f51d2952171f8a65c8186c6dbaafb58e89d9852eb4207e8e4ab`  
		Last Modified: Mon, 15 Jan 2018 20:56:47 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:cancoillotte-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b892353ff6f45b8238a818cb63e3ea1ebe890d0559eae0edeea41df6083a9e3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15435288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a81000d7e4ae2ad1ace6b7d678d34f6bde4d62b1e3763c71063a9620b41bbcb2`
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
# Tue, 16 Jan 2018 00:48:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Jan 2018 00:48:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 16 Jan 2018 00:48:35 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 00:48:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Jan 2018 00:48:36 GMT
CMD ["traefik"]
# Tue, 16 Jan 2018 00:48:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ac2f2ee2343abfa7c6e991098660e1a775901cf497f6cf7323628511b362447`  
		Last Modified: Tue, 16 Jan 2018 00:49:12 GMT  
		Size: 13.1 MB (13116630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3e97776a52bf72881b85f0315eb251f03b20a4a01cc7bfd2330d5adc5a5312`  
		Last Modified: Tue, 16 Jan 2018 00:49:08 GMT  
		Size: 343.0 B  
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
$ docker pull traefik@sha256:2b0988a767c999cd5624c9cb5b1296fd47d6b1c9d605261561861318548ca470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:roquefort-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:787ecb78fd3f6510ec8625de29f381432f7cc0137ca512a28f3323505e2fab3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15555432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808e8ce221becd87609debf0f65b6c98a83c2634dee65ca86972e905340aa6b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 10 Jan 2018 01:29:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Jan 2018 01:29:56 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 10 Jan 2018 01:29:57 GMT
EXPOSE 80/tcp
# Wed, 10 Jan 2018 01:29:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:29:57 GMT
CMD ["traefik"]
# Wed, 10 Jan 2018 01:29:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a99270dcaf96b89a8439a3a354ec08c8990be54f3da8d98878d61d2d29a055`  
		Last Modified: Wed, 10 Jan 2018 01:31:57 GMT  
		Size: 13.2 MB (13212352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbce4d825a07325b1760840bc7bab50110e3c5eb0509e808899a45eeda41fae`  
		Last Modified: Wed, 10 Jan 2018 01:31:56 GMT  
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
$ docker pull traefik@sha256:2b0988a767c999cd5624c9cb5b1296fd47d6b1c9d605261561861318548ca470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4.6-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:787ecb78fd3f6510ec8625de29f381432f7cc0137ca512a28f3323505e2fab3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15555432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808e8ce221becd87609debf0f65b6c98a83c2634dee65ca86972e905340aa6b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 10 Jan 2018 01:29:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Jan 2018 01:29:56 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 10 Jan 2018 01:29:57 GMT
EXPOSE 80/tcp
# Wed, 10 Jan 2018 01:29:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:29:57 GMT
CMD ["traefik"]
# Wed, 10 Jan 2018 01:29:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a99270dcaf96b89a8439a3a354ec08c8990be54f3da8d98878d61d2d29a055`  
		Last Modified: Wed, 10 Jan 2018 01:31:57 GMT  
		Size: 13.2 MB (13212352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbce4d825a07325b1760840bc7bab50110e3c5eb0509e808899a45eeda41fae`  
		Last Modified: Wed, 10 Jan 2018 01:31:56 GMT  
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
$ docker pull traefik@sha256:2b0988a767c999cd5624c9cb5b1296fd47d6b1c9d605261561861318548ca470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:787ecb78fd3f6510ec8625de29f381432f7cc0137ca512a28f3323505e2fab3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15555432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808e8ce221becd87609debf0f65b6c98a83c2634dee65ca86972e905340aa6b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Wed, 10 Jan 2018 01:29:56 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.6/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 10 Jan 2018 01:29:56 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 10 Jan 2018 01:29:57 GMT
EXPOSE 80/tcp
# Wed, 10 Jan 2018 01:29:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 01:29:57 GMT
CMD ["traefik"]
# Wed, 10 Jan 2018 01:29:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.6 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a99270dcaf96b89a8439a3a354ec08c8990be54f3da8d98878d61d2d29a055`  
		Last Modified: Wed, 10 Jan 2018 01:31:57 GMT  
		Size: 13.2 MB (13212352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbce4d825a07325b1760840bc7bab50110e3c5eb0509e808899a45eeda41fae`  
		Last Modified: Wed, 10 Jan 2018 01:31:56 GMT  
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
$ docker pull traefik@sha256:84d5b20c07746c23bf9fd69cdecaa197379cac67656c8580c0b96e50663d6c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.5` - linux; amd64

```console
$ docker pull traefik@sha256:c60acf6747240b0b2230d27b4adcf12e1c576b464f8ae10c7adc6342ebb90c82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13965999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91947fe923092b3fa633a78d411a35081493fb3fb0d6b64d6173d41d4f4536dc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 15 Jan 2018 20:54:16 GMT
COPY file:e26fd854efc106fc813378371ea737213cfcf18d204618507c18debe34537798 in / 
# Mon, 15 Jan 2018 20:54:16 GMT
EXPOSE 80/tcp
# Mon, 15 Jan 2018 20:54:16 GMT
ENTRYPOINT ["/traefik"]
# Mon, 15 Jan 2018 20:54:17 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5698da4fee45086b63212064546b904e63a68411bb4eb012495c3f4af1007030`  
		Last Modified: Mon, 15 Jan 2018 20:55:29 GMT  
		Size: 13.8 MB (13810847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:dd85619d6e04b5be9f32bce85b191afb0733085fde2a85ecd58c9f868f148c97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13103563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4259facb82910472d07d05e9a64f3ca088b31bd943b3d9f1471a08f07e058e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 16 Jan 2018 00:48:26 GMT
COPY file:cca0f42b2f0f03f582f8e3d0c90246387b0062210c36014404d9f1ca7b515126 in / 
# Tue, 16 Jan 2018 00:48:26 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 00:48:26 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Jan 2018 00:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a157a3ab5a235521fa3e8a41c049e684f7335cad8af4e35c5babc0a64e447d`  
		Last Modified: Tue, 16 Jan 2018 00:48:57 GMT  
		Size: 12.9 MB (12948379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5.0-rc5`

```console
$ docker pull traefik@sha256:84d5b20c07746c23bf9fd69cdecaa197379cac67656c8580c0b96e50663d6c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.5.0-rc5` - linux; amd64

```console
$ docker pull traefik@sha256:c60acf6747240b0b2230d27b4adcf12e1c576b464f8ae10c7adc6342ebb90c82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13965999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91947fe923092b3fa633a78d411a35081493fb3fb0d6b64d6173d41d4f4536dc`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 15 Jan 2018 20:54:16 GMT
COPY file:e26fd854efc106fc813378371ea737213cfcf18d204618507c18debe34537798 in / 
# Mon, 15 Jan 2018 20:54:16 GMT
EXPOSE 80/tcp
# Mon, 15 Jan 2018 20:54:16 GMT
ENTRYPOINT ["/traefik"]
# Mon, 15 Jan 2018 20:54:17 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5698da4fee45086b63212064546b904e63a68411bb4eb012495c3f4af1007030`  
		Last Modified: Mon, 15 Jan 2018 20:55:29 GMT  
		Size: 13.8 MB (13810847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5.0-rc5` - linux; arm variant v6

```console
$ docker pull traefik@sha256:dd85619d6e04b5be9f32bce85b191afb0733085fde2a85ecd58c9f868f148c97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13103563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4259facb82910472d07d05e9a64f3ca088b31bd943b3d9f1471a08f07e058e`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 16 Jan 2018 00:48:26 GMT
COPY file:cca0f42b2f0f03f582f8e3d0c90246387b0062210c36014404d9f1ca7b515126 in / 
# Tue, 16 Jan 2018 00:48:26 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 00:48:26 GMT
ENTRYPOINT ["/traefik"]
# Tue, 16 Jan 2018 00:48:26 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a157a3ab5a235521fa3e8a41c049e684f7335cad8af4e35c5babc0a64e447d`  
		Last Modified: Tue, 16 Jan 2018 00:48:57 GMT  
		Size: 12.9 MB (12948379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5.0-rc5-alpine`

```console
$ docker pull traefik@sha256:e255561c7600cc4e966fcfead68f05d84d4a3e2f521858d94dfe7a55c22a45fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.5.0-rc5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:cbe04cef5e8be378d028c224b000cb8e236a0aaeeab30f523ab5e7e61198f9bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16320991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8107dee977f191bdaa4f04bb6c27e1c3b3f5a63c8123be046bdb1079dedb162a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Mon, 15 Jan 2018 20:54:54 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 15 Jan 2018 20:55:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 15 Jan 2018 20:55:02 GMT
EXPOSE 80/tcp
# Mon, 15 Jan 2018 20:55:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 Jan 2018 20:55:02 GMT
CMD ["traefik"]
# Mon, 15 Jan 2018 20:55:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64303efbf65e418ba9d342594cc98ab207536c913b2e6680773d546ead7b6f2`  
		Last Modified: Mon, 15 Jan 2018 20:56:50 GMT  
		Size: 14.0 MB (13977913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459bbc7bf0de5f51d2952171f8a65c8186c6dbaafb58e89d9852eb4207e8e4ab`  
		Last Modified: Mon, 15 Jan 2018 20:56:47 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5.0-rc5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b892353ff6f45b8238a818cb63e3ea1ebe890d0559eae0edeea41df6083a9e3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15435288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a81000d7e4ae2ad1ace6b7d678d34f6bde4d62b1e3763c71063a9620b41bbcb2`
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
# Tue, 16 Jan 2018 00:48:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Jan 2018 00:48:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 16 Jan 2018 00:48:35 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 00:48:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Jan 2018 00:48:36 GMT
CMD ["traefik"]
# Tue, 16 Jan 2018 00:48:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ac2f2ee2343abfa7c6e991098660e1a775901cf497f6cf7323628511b362447`  
		Last Modified: Tue, 16 Jan 2018 00:49:12 GMT  
		Size: 13.1 MB (13116630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3e97776a52bf72881b85f0315eb251f03b20a4a01cc7bfd2330d5adc5a5312`  
		Last Modified: Tue, 16 Jan 2018 00:49:08 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.5-alpine`

```console
$ docker pull traefik@sha256:e255561c7600cc4e966fcfead68f05d84d4a3e2f521858d94dfe7a55c22a45fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:v1.5-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:cbe04cef5e8be378d028c224b000cb8e236a0aaeeab30f523ab5e7e61198f9bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16320991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8107dee977f191bdaa4f04bb6c27e1c3b3f5a63c8123be046bdb1079dedb162a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:28:51 GMT
RUN apk --no-cache add ca-certificates
# Mon, 15 Jan 2018 20:54:54 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 15 Jan 2018 20:55:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 15 Jan 2018 20:55:02 GMT
EXPOSE 80/tcp
# Mon, 15 Jan 2018 20:55:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 Jan 2018 20:55:02 GMT
CMD ["traefik"]
# Mon, 15 Jan 2018 20:55:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3eb27e4ab8454370b50d5b8d9c153713bebe12c43d63dac2ae368fcce7d6d4`  
		Last Modified: Wed, 10 Jan 2018 01:30:19 GMT  
		Size: 351.0 KB (350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64303efbf65e418ba9d342594cc98ab207536c913b2e6680773d546ead7b6f2`  
		Last Modified: Mon, 15 Jan 2018 20:56:50 GMT  
		Size: 14.0 MB (13977913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459bbc7bf0de5f51d2952171f8a65c8186c6dbaafb58e89d9852eb4207e8e4ab`  
		Last Modified: Mon, 15 Jan 2018 20:56:47 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.5-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:b892353ff6f45b8238a818cb63e3ea1ebe890d0559eae0edeea41df6083a9e3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15435288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a81000d7e4ae2ad1ace6b7d678d34f6bde4d62b1e3763c71063a9620b41bbcb2`
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
# Tue, 16 Jan 2018 00:48:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.5.0-rc5/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 16 Jan 2018 00:48:35 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 16 Jan 2018 00:48:35 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 00:48:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Jan 2018 00:48:36 GMT
CMD ["traefik"]
# Tue, 16 Jan 2018 00:48:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0-rc5 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:0ac2f2ee2343abfa7c6e991098660e1a775901cf497f6cf7323628511b362447`  
		Last Modified: Tue, 16 Jan 2018 00:49:12 GMT  
		Size: 13.1 MB (13116630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3e97776a52bf72881b85f0315eb251f03b20a4a01cc7bfd2330d5adc5a5312`  
		Last Modified: Tue, 16 Jan 2018 00:49:08 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
