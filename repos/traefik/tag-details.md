<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `traefik`

-	[`traefik:1.4`](#traefik14)
-	[`traefik:1.4.4`](#traefik144)
-	[`traefik:1.4.4-alpine`](#traefik144-alpine)
-	[`traefik:1.4-alpine`](#traefik14-alpine)
-	[`traefik:alpine`](#traefikalpine)
-	[`traefik:latest`](#traefiklatest)
-	[`traefik:roquefort`](#traefikroquefort)
-	[`traefik:roquefort-alpine`](#traefikroquefort-alpine)
-	[`traefik:v1.4`](#traefikv14)
-	[`traefik:v1.4.4`](#traefikv144)
-	[`traefik:v1.4.4-alpine`](#traefikv144-alpine)
-	[`traefik:v1.4-alpine`](#traefikv14-alpine)

## `traefik:1.4`

```console
$ docker pull traefik@sha256:e981e8ba3c23a2f313a710a4283f066898b716cf0671652cab3408486a550183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4` - linux; amd64

```console
$ docker pull traefik@sha256:a2c87d5b44a82c3d3e04e9a89f5e43b4c9efe808a8fa1c93f8485d9d0c822376
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13201128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b70521daafc5b3efd2a09ce8c66356a243fd215e2d618de0beefc3607ad244`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 27 Nov 2017 17:48:35 GMT
COPY file:f23ca3fa277b6ccd2160e9d207f8042b26edfb24ad2b5a36f263306da170ba8f in / 
# Mon, 27 Nov 2017 17:48:35 GMT
EXPOSE 80/tcp
# Mon, 27 Nov 2017 17:48:36 GMT
ENTRYPOINT ["/traefik"]
# Mon, 27 Nov 2017 17:48:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb7a21e8abb32447e473f883dd232a20294cb8c3658134050950c32e75659a9`  
		Last Modified: Mon, 27 Nov 2017 17:49:06 GMT  
		Size: 13.0 MB (13045976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:761b9a58b9ba5520d01706b26049ae6a035dc59f2eddf0d378bc92654cd1a340
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12379917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50dad28f9c3f567e7a7d3d85b8f8a81fc66e464a97e872e396147a0115a30a2f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 28 Nov 2017 00:48:27 GMT
COPY file:327819c43ad7b1d875f176c7d047bc64bfd6bbf2454fae2f7cc55902bf517524 in / 
# Tue, 28 Nov 2017 00:48:28 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 00:48:28 GMT
ENTRYPOINT ["/traefik"]
# Tue, 28 Nov 2017 00:48:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69806d4ca578cd5aa6a9474ba15127ae429c8155127d2936cbfcd90c1179344a`  
		Last Modified: Tue, 28 Nov 2017 00:48:50 GMT  
		Size: 12.2 MB (12224733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9037b846d4f636becad01b9b227a48f97520001f13c4ce674495d632329a449a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12066633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cafba00fe810d6141d66b6e375e39acfdf007c5002e33ad471d6f896fab6eff3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 28 Nov 2017 05:55:08 GMT
COPY file:adb6d39ebf8999c86c793e1bbfb214fe4a47abdcdbea7af02e93de0da7772c39 in / 
# Tue, 28 Nov 2017 05:55:09 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 05:55:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 28 Nov 2017 05:55:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f54cc44b98ff6f4ff32c6f37f99c7cfd0ef90d5f774a86afab0e32fcc3683ef`  
		Last Modified: Tue, 28 Nov 2017 05:56:15 GMT  
		Size: 11.9 MB (11911482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.4`

```console
$ docker pull traefik@sha256:e981e8ba3c23a2f313a710a4283f066898b716cf0671652cab3408486a550183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4.4` - linux; amd64

```console
$ docker pull traefik@sha256:a2c87d5b44a82c3d3e04e9a89f5e43b4c9efe808a8fa1c93f8485d9d0c822376
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13201128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b70521daafc5b3efd2a09ce8c66356a243fd215e2d618de0beefc3607ad244`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 27 Nov 2017 17:48:35 GMT
COPY file:f23ca3fa277b6ccd2160e9d207f8042b26edfb24ad2b5a36f263306da170ba8f in / 
# Mon, 27 Nov 2017 17:48:35 GMT
EXPOSE 80/tcp
# Mon, 27 Nov 2017 17:48:36 GMT
ENTRYPOINT ["/traefik"]
# Mon, 27 Nov 2017 17:48:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb7a21e8abb32447e473f883dd232a20294cb8c3658134050950c32e75659a9`  
		Last Modified: Mon, 27 Nov 2017 17:49:06 GMT  
		Size: 13.0 MB (13045976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:761b9a58b9ba5520d01706b26049ae6a035dc59f2eddf0d378bc92654cd1a340
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12379917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50dad28f9c3f567e7a7d3d85b8f8a81fc66e464a97e872e396147a0115a30a2f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 28 Nov 2017 00:48:27 GMT
COPY file:327819c43ad7b1d875f176c7d047bc64bfd6bbf2454fae2f7cc55902bf517524 in / 
# Tue, 28 Nov 2017 00:48:28 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 00:48:28 GMT
ENTRYPOINT ["/traefik"]
# Tue, 28 Nov 2017 00:48:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69806d4ca578cd5aa6a9474ba15127ae429c8155127d2936cbfcd90c1179344a`  
		Last Modified: Tue, 28 Nov 2017 00:48:50 GMT  
		Size: 12.2 MB (12224733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9037b846d4f636becad01b9b227a48f97520001f13c4ce674495d632329a449a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12066633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cafba00fe810d6141d66b6e375e39acfdf007c5002e33ad471d6f896fab6eff3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 28 Nov 2017 05:55:08 GMT
COPY file:adb6d39ebf8999c86c793e1bbfb214fe4a47abdcdbea7af02e93de0da7772c39 in / 
# Tue, 28 Nov 2017 05:55:09 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 05:55:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 28 Nov 2017 05:55:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f54cc44b98ff6f4ff32c6f37f99c7cfd0ef90d5f774a86afab0e32fcc3683ef`  
		Last Modified: Tue, 28 Nov 2017 05:56:15 GMT  
		Size: 11.9 MB (11911482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4.4-alpine`

```console
$ docker pull traefik@sha256:92f90b4ce082cd34a8b9bb72f488cda36e0c8857a970ebbbcd0224fa6701094d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:24f28addcd16d41d1a2538b67374835c943b93443febb063421164380af1ee24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15556110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aad6afea43ba0c90cf85fd333b05c522de62fc6a64567249e2c44e9d6a489e9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:11:48 GMT
RUN apk --no-cache add ca-certificates
# Mon, 27 Nov 2017 17:48:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 27 Nov 2017 17:48:50 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 27 Nov 2017 17:48:51 GMT
EXPOSE 80/tcp
# Mon, 27 Nov 2017 17:48:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Nov 2017 17:48:51 GMT
CMD ["traefik"]
# Mon, 27 Nov 2017 17:48:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1b5a373182e138267e064029f8bb8a05b1bcf12872e930b45342833defae7468`  
		Last Modified: Mon, 27 Nov 2017 17:49:47 GMT  
		Size: 13.2 MB (13213334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872e4ec3ee66a26daf940650bad1ed8ab8f0cb07db4f24d663d24e348f438c0`  
		Last Modified: Mon, 27 Nov 2017 17:49:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:faa5d2c0d9ee61a77bd840b09a26971314bbba07a006ef69e78a941bf20abcef
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14712262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ab0231d64572fd60d74ae45c5f3c95fbb5d77fd2ac7758830599b444fe06c5`
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
# Tue, 28 Nov 2017 00:48:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 28 Nov 2017 00:48:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 28 Nov 2017 00:48:37 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 00:48:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Nov 2017 00:48:38 GMT
CMD ["traefik"]
# Tue, 28 Nov 2017 00:48:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1c3f52905fff68da1bc966476184e0afe150cd1c03065dd3eebab85fb1384222`  
		Last Modified: Tue, 28 Nov 2017 00:49:05 GMT  
		Size: 12.4 MB (12393609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba0fadeb65d8a5d41efda0e673321fb4792471228321bd53451a93585391e1`  
		Last Modified: Tue, 28 Nov 2017 00:49:01 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4.4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:fb5cfeab807c54ec76c89c099c92b20b4ac04d50b3980b33f3860d214f5ec3bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14344777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c042111f3b865ffab3aa2e84fad87987e510c21cbcaf9d0c59d261c17bc7cb4`
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
# Tue, 28 Nov 2017 05:55:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 28 Nov 2017 05:55:42 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 28 Nov 2017 05:55:43 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 05:55:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Nov 2017 05:55:44 GMT
CMD ["traefik"]
# Tue, 28 Nov 2017 05:55:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:2350efe314ead32e9c9e2d56579cfb97a7626ac22239bd5c2ccfa9ce2338acdf`  
		Last Modified: Tue, 28 Nov 2017 05:57:58 GMT  
		Size: 12.1 MB (12078020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155e97cc9138ea610b81fddd03146f23b43ceb2649d9f6886f55d8d3a25e471a`  
		Last Modified: Tue, 28 Nov 2017 05:57:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:1.4-alpine`

```console
$ docker pull traefik@sha256:92f90b4ce082cd34a8b9bb72f488cda36e0c8857a970ebbbcd0224fa6701094d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:24f28addcd16d41d1a2538b67374835c943b93443febb063421164380af1ee24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15556110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aad6afea43ba0c90cf85fd333b05c522de62fc6a64567249e2c44e9d6a489e9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:11:48 GMT
RUN apk --no-cache add ca-certificates
# Mon, 27 Nov 2017 17:48:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 27 Nov 2017 17:48:50 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 27 Nov 2017 17:48:51 GMT
EXPOSE 80/tcp
# Mon, 27 Nov 2017 17:48:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Nov 2017 17:48:51 GMT
CMD ["traefik"]
# Mon, 27 Nov 2017 17:48:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1b5a373182e138267e064029f8bb8a05b1bcf12872e930b45342833defae7468`  
		Last Modified: Mon, 27 Nov 2017 17:49:47 GMT  
		Size: 13.2 MB (13213334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872e4ec3ee66a26daf940650bad1ed8ab8f0cb07db4f24d663d24e348f438c0`  
		Last Modified: Mon, 27 Nov 2017 17:49:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:faa5d2c0d9ee61a77bd840b09a26971314bbba07a006ef69e78a941bf20abcef
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14712262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ab0231d64572fd60d74ae45c5f3c95fbb5d77fd2ac7758830599b444fe06c5`
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
# Tue, 28 Nov 2017 00:48:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 28 Nov 2017 00:48:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 28 Nov 2017 00:48:37 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 00:48:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Nov 2017 00:48:38 GMT
CMD ["traefik"]
# Tue, 28 Nov 2017 00:48:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1c3f52905fff68da1bc966476184e0afe150cd1c03065dd3eebab85fb1384222`  
		Last Modified: Tue, 28 Nov 2017 00:49:05 GMT  
		Size: 12.4 MB (12393609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba0fadeb65d8a5d41efda0e673321fb4792471228321bd53451a93585391e1`  
		Last Modified: Tue, 28 Nov 2017 00:49:01 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:1.4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:fb5cfeab807c54ec76c89c099c92b20b4ac04d50b3980b33f3860d214f5ec3bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14344777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c042111f3b865ffab3aa2e84fad87987e510c21cbcaf9d0c59d261c17bc7cb4`
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
# Tue, 28 Nov 2017 05:55:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 28 Nov 2017 05:55:42 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 28 Nov 2017 05:55:43 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 05:55:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Nov 2017 05:55:44 GMT
CMD ["traefik"]
# Tue, 28 Nov 2017 05:55:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:2350efe314ead32e9c9e2d56579cfb97a7626ac22239bd5c2ccfa9ce2338acdf`  
		Last Modified: Tue, 28 Nov 2017 05:57:58 GMT  
		Size: 12.1 MB (12078020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155e97cc9138ea610b81fddd03146f23b43ceb2649d9f6886f55d8d3a25e471a`  
		Last Modified: Tue, 28 Nov 2017 05:57:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:alpine`

```console
$ docker pull traefik@sha256:92f90b4ce082cd34a8b9bb72f488cda36e0c8857a970ebbbcd0224fa6701094d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:alpine` - linux; amd64

```console
$ docker pull traefik@sha256:24f28addcd16d41d1a2538b67374835c943b93443febb063421164380af1ee24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15556110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aad6afea43ba0c90cf85fd333b05c522de62fc6a64567249e2c44e9d6a489e9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:11:48 GMT
RUN apk --no-cache add ca-certificates
# Mon, 27 Nov 2017 17:48:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 27 Nov 2017 17:48:50 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 27 Nov 2017 17:48:51 GMT
EXPOSE 80/tcp
# Mon, 27 Nov 2017 17:48:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Nov 2017 17:48:51 GMT
CMD ["traefik"]
# Mon, 27 Nov 2017 17:48:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1b5a373182e138267e064029f8bb8a05b1bcf12872e930b45342833defae7468`  
		Last Modified: Mon, 27 Nov 2017 17:49:47 GMT  
		Size: 13.2 MB (13213334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872e4ec3ee66a26daf940650bad1ed8ab8f0cb07db4f24d663d24e348f438c0`  
		Last Modified: Mon, 27 Nov 2017 17:49:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:faa5d2c0d9ee61a77bd840b09a26971314bbba07a006ef69e78a941bf20abcef
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14712262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ab0231d64572fd60d74ae45c5f3c95fbb5d77fd2ac7758830599b444fe06c5`
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
# Tue, 28 Nov 2017 00:48:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 28 Nov 2017 00:48:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 28 Nov 2017 00:48:37 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 00:48:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Nov 2017 00:48:38 GMT
CMD ["traefik"]
# Tue, 28 Nov 2017 00:48:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1c3f52905fff68da1bc966476184e0afe150cd1c03065dd3eebab85fb1384222`  
		Last Modified: Tue, 28 Nov 2017 00:49:05 GMT  
		Size: 12.4 MB (12393609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba0fadeb65d8a5d41efda0e673321fb4792471228321bd53451a93585391e1`  
		Last Modified: Tue, 28 Nov 2017 00:49:01 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:fb5cfeab807c54ec76c89c099c92b20b4ac04d50b3980b33f3860d214f5ec3bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14344777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c042111f3b865ffab3aa2e84fad87987e510c21cbcaf9d0c59d261c17bc7cb4`
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
# Tue, 28 Nov 2017 05:55:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 28 Nov 2017 05:55:42 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 28 Nov 2017 05:55:43 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 05:55:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Nov 2017 05:55:44 GMT
CMD ["traefik"]
# Tue, 28 Nov 2017 05:55:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:2350efe314ead32e9c9e2d56579cfb97a7626ac22239bd5c2ccfa9ce2338acdf`  
		Last Modified: Tue, 28 Nov 2017 05:57:58 GMT  
		Size: 12.1 MB (12078020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155e97cc9138ea610b81fddd03146f23b43ceb2649d9f6886f55d8d3a25e471a`  
		Last Modified: Tue, 28 Nov 2017 05:57:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:latest`

```console
$ docker pull traefik@sha256:6835de7dc794f666bde4794cbff5a1733af2bdbf8aec330575e16d9b6eb75438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:a2c87d5b44a82c3d3e04e9a89f5e43b4c9efe808a8fa1c93f8485d9d0c822376
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13201128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b70521daafc5b3efd2a09ce8c66356a243fd215e2d618de0beefc3607ad244`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 27 Nov 2017 17:48:35 GMT
COPY file:f23ca3fa277b6ccd2160e9d207f8042b26edfb24ad2b5a36f263306da170ba8f in / 
# Mon, 27 Nov 2017 17:48:35 GMT
EXPOSE 80/tcp
# Mon, 27 Nov 2017 17:48:36 GMT
ENTRYPOINT ["/traefik"]
# Mon, 27 Nov 2017 17:48:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb7a21e8abb32447e473f883dd232a20294cb8c3658134050950c32e75659a9`  
		Last Modified: Mon, 27 Nov 2017 17:49:06 GMT  
		Size: 13.0 MB (13045976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:761b9a58b9ba5520d01706b26049ae6a035dc59f2eddf0d378bc92654cd1a340
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12379917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50dad28f9c3f567e7a7d3d85b8f8a81fc66e464a97e872e396147a0115a30a2f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 28 Nov 2017 00:48:27 GMT
COPY file:327819c43ad7b1d875f176c7d047bc64bfd6bbf2454fae2f7cc55902bf517524 in / 
# Tue, 28 Nov 2017 00:48:28 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 00:48:28 GMT
ENTRYPOINT ["/traefik"]
# Tue, 28 Nov 2017 00:48:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69806d4ca578cd5aa6a9474ba15127ae429c8155127d2936cbfcd90c1179344a`  
		Last Modified: Tue, 28 Nov 2017 00:48:50 GMT  
		Size: 12.2 MB (12224733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort`

```console
$ docker pull traefik@sha256:e981e8ba3c23a2f313a710a4283f066898b716cf0671652cab3408486a550183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:roquefort` - linux; amd64

```console
$ docker pull traefik@sha256:a2c87d5b44a82c3d3e04e9a89f5e43b4c9efe808a8fa1c93f8485d9d0c822376
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13201128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b70521daafc5b3efd2a09ce8c66356a243fd215e2d618de0beefc3607ad244`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 27 Nov 2017 17:48:35 GMT
COPY file:f23ca3fa277b6ccd2160e9d207f8042b26edfb24ad2b5a36f263306da170ba8f in / 
# Mon, 27 Nov 2017 17:48:35 GMT
EXPOSE 80/tcp
# Mon, 27 Nov 2017 17:48:36 GMT
ENTRYPOINT ["/traefik"]
# Mon, 27 Nov 2017 17:48:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb7a21e8abb32447e473f883dd232a20294cb8c3658134050950c32e75659a9`  
		Last Modified: Mon, 27 Nov 2017 17:49:06 GMT  
		Size: 13.0 MB (13045976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm variant v6

```console
$ docker pull traefik@sha256:761b9a58b9ba5520d01706b26049ae6a035dc59f2eddf0d378bc92654cd1a340
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12379917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50dad28f9c3f567e7a7d3d85b8f8a81fc66e464a97e872e396147a0115a30a2f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 28 Nov 2017 00:48:27 GMT
COPY file:327819c43ad7b1d875f176c7d047bc64bfd6bbf2454fae2f7cc55902bf517524 in / 
# Tue, 28 Nov 2017 00:48:28 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 00:48:28 GMT
ENTRYPOINT ["/traefik"]
# Tue, 28 Nov 2017 00:48:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69806d4ca578cd5aa6a9474ba15127ae429c8155127d2936cbfcd90c1179344a`  
		Last Modified: Tue, 28 Nov 2017 00:48:50 GMT  
		Size: 12.2 MB (12224733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9037b846d4f636becad01b9b227a48f97520001f13c4ce674495d632329a449a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12066633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cafba00fe810d6141d66b6e375e39acfdf007c5002e33ad471d6f896fab6eff3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 28 Nov 2017 05:55:08 GMT
COPY file:adb6d39ebf8999c86c793e1bbfb214fe4a47abdcdbea7af02e93de0da7772c39 in / 
# Tue, 28 Nov 2017 05:55:09 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 05:55:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 28 Nov 2017 05:55:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f54cc44b98ff6f4ff32c6f37f99c7cfd0ef90d5f774a86afab0e32fcc3683ef`  
		Last Modified: Tue, 28 Nov 2017 05:56:15 GMT  
		Size: 11.9 MB (11911482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:92f90b4ce082cd34a8b9bb72f488cda36e0c8857a970ebbbcd0224fa6701094d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:roquefort-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:24f28addcd16d41d1a2538b67374835c943b93443febb063421164380af1ee24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15556110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aad6afea43ba0c90cf85fd333b05c522de62fc6a64567249e2c44e9d6a489e9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:11:48 GMT
RUN apk --no-cache add ca-certificates
# Mon, 27 Nov 2017 17:48:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 27 Nov 2017 17:48:50 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 27 Nov 2017 17:48:51 GMT
EXPOSE 80/tcp
# Mon, 27 Nov 2017 17:48:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Nov 2017 17:48:51 GMT
CMD ["traefik"]
# Mon, 27 Nov 2017 17:48:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1b5a373182e138267e064029f8bb8a05b1bcf12872e930b45342833defae7468`  
		Last Modified: Mon, 27 Nov 2017 17:49:47 GMT  
		Size: 13.2 MB (13213334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872e4ec3ee66a26daf940650bad1ed8ab8f0cb07db4f24d663d24e348f438c0`  
		Last Modified: Mon, 27 Nov 2017 17:49:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:faa5d2c0d9ee61a77bd840b09a26971314bbba07a006ef69e78a941bf20abcef
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14712262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ab0231d64572fd60d74ae45c5f3c95fbb5d77fd2ac7758830599b444fe06c5`
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
# Tue, 28 Nov 2017 00:48:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 28 Nov 2017 00:48:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 28 Nov 2017 00:48:37 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 00:48:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Nov 2017 00:48:38 GMT
CMD ["traefik"]
# Tue, 28 Nov 2017 00:48:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1c3f52905fff68da1bc966476184e0afe150cd1c03065dd3eebab85fb1384222`  
		Last Modified: Tue, 28 Nov 2017 00:49:05 GMT  
		Size: 12.4 MB (12393609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba0fadeb65d8a5d41efda0e673321fb4792471228321bd53451a93585391e1`  
		Last Modified: Tue, 28 Nov 2017 00:49:01 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:fb5cfeab807c54ec76c89c099c92b20b4ac04d50b3980b33f3860d214f5ec3bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14344777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c042111f3b865ffab3aa2e84fad87987e510c21cbcaf9d0c59d261c17bc7cb4`
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
# Tue, 28 Nov 2017 05:55:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 28 Nov 2017 05:55:42 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 28 Nov 2017 05:55:43 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 05:55:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Nov 2017 05:55:44 GMT
CMD ["traefik"]
# Tue, 28 Nov 2017 05:55:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:2350efe314ead32e9c9e2d56579cfb97a7626ac22239bd5c2ccfa9ce2338acdf`  
		Last Modified: Tue, 28 Nov 2017 05:57:58 GMT  
		Size: 12.1 MB (12078020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155e97cc9138ea610b81fddd03146f23b43ceb2649d9f6886f55d8d3a25e471a`  
		Last Modified: Tue, 28 Nov 2017 05:57:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4`

```console
$ docker pull traefik@sha256:e981e8ba3c23a2f313a710a4283f066898b716cf0671652cab3408486a550183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4` - linux; amd64

```console
$ docker pull traefik@sha256:a2c87d5b44a82c3d3e04e9a89f5e43b4c9efe808a8fa1c93f8485d9d0c822376
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13201128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b70521daafc5b3efd2a09ce8c66356a243fd215e2d618de0beefc3607ad244`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 27 Nov 2017 17:48:35 GMT
COPY file:f23ca3fa277b6ccd2160e9d207f8042b26edfb24ad2b5a36f263306da170ba8f in / 
# Mon, 27 Nov 2017 17:48:35 GMT
EXPOSE 80/tcp
# Mon, 27 Nov 2017 17:48:36 GMT
ENTRYPOINT ["/traefik"]
# Mon, 27 Nov 2017 17:48:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb7a21e8abb32447e473f883dd232a20294cb8c3658134050950c32e75659a9`  
		Last Modified: Mon, 27 Nov 2017 17:49:06 GMT  
		Size: 13.0 MB (13045976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:761b9a58b9ba5520d01706b26049ae6a035dc59f2eddf0d378bc92654cd1a340
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12379917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50dad28f9c3f567e7a7d3d85b8f8a81fc66e464a97e872e396147a0115a30a2f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 28 Nov 2017 00:48:27 GMT
COPY file:327819c43ad7b1d875f176c7d047bc64bfd6bbf2454fae2f7cc55902bf517524 in / 
# Tue, 28 Nov 2017 00:48:28 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 00:48:28 GMT
ENTRYPOINT ["/traefik"]
# Tue, 28 Nov 2017 00:48:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69806d4ca578cd5aa6a9474ba15127ae429c8155127d2936cbfcd90c1179344a`  
		Last Modified: Tue, 28 Nov 2017 00:48:50 GMT  
		Size: 12.2 MB (12224733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9037b846d4f636becad01b9b227a48f97520001f13c4ce674495d632329a449a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12066633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cafba00fe810d6141d66b6e375e39acfdf007c5002e33ad471d6f896fab6eff3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 28 Nov 2017 05:55:08 GMT
COPY file:adb6d39ebf8999c86c793e1bbfb214fe4a47abdcdbea7af02e93de0da7772c39 in / 
# Tue, 28 Nov 2017 05:55:09 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 05:55:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 28 Nov 2017 05:55:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f54cc44b98ff6f4ff32c6f37f99c7cfd0ef90d5f774a86afab0e32fcc3683ef`  
		Last Modified: Tue, 28 Nov 2017 05:56:15 GMT  
		Size: 11.9 MB (11911482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.4`

```console
$ docker pull traefik@sha256:e981e8ba3c23a2f313a710a4283f066898b716cf0671652cab3408486a550183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4.4` - linux; amd64

```console
$ docker pull traefik@sha256:a2c87d5b44a82c3d3e04e9a89f5e43b4c9efe808a8fa1c93f8485d9d0c822376
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13201128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b70521daafc5b3efd2a09ce8c66356a243fd215e2d618de0beefc3607ad244`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Mon, 27 Nov 2017 17:48:35 GMT
COPY file:f23ca3fa277b6ccd2160e9d207f8042b26edfb24ad2b5a36f263306da170ba8f in / 
# Mon, 27 Nov 2017 17:48:35 GMT
EXPOSE 80/tcp
# Mon, 27 Nov 2017 17:48:36 GMT
ENTRYPOINT ["/traefik"]
# Mon, 27 Nov 2017 17:48:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb7a21e8abb32447e473f883dd232a20294cb8c3658134050950c32e75659a9`  
		Last Modified: Mon, 27 Nov 2017 17:49:06 GMT  
		Size: 13.0 MB (13045976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.4` - linux; arm variant v6

```console
$ docker pull traefik@sha256:761b9a58b9ba5520d01706b26049ae6a035dc59f2eddf0d378bc92654cd1a340
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12379917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50dad28f9c3f567e7a7d3d85b8f8a81fc66e464a97e872e396147a0115a30a2f`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 28 Nov 2017 00:48:27 GMT
COPY file:327819c43ad7b1d875f176c7d047bc64bfd6bbf2454fae2f7cc55902bf517524 in / 
# Tue, 28 Nov 2017 00:48:28 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 00:48:28 GMT
ENTRYPOINT ["/traefik"]
# Tue, 28 Nov 2017 00:48:28 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69806d4ca578cd5aa6a9474ba15127ae429c8155127d2936cbfcd90c1179344a`  
		Last Modified: Tue, 28 Nov 2017 00:48:50 GMT  
		Size: 12.2 MB (12224733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.4` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9037b846d4f636becad01b9b227a48f97520001f13c4ce674495d632329a449a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.1 MB (12066633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cafba00fe810d6141d66b6e375e39acfdf007c5002e33ad471d6f896fab6eff3`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 28 Nov 2017 05:55:08 GMT
COPY file:adb6d39ebf8999c86c793e1bbfb214fe4a47abdcdbea7af02e93de0da7772c39 in / 
# Tue, 28 Nov 2017 05:55:09 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 05:55:09 GMT
ENTRYPOINT ["/traefik"]
# Tue, 28 Nov 2017 05:55:10 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f54cc44b98ff6f4ff32c6f37f99c7cfd0ef90d5f774a86afab0e32fcc3683ef`  
		Last Modified: Tue, 28 Nov 2017 05:56:15 GMT  
		Size: 11.9 MB (11911482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4.4-alpine`

```console
$ docker pull traefik@sha256:92f90b4ce082cd34a8b9bb72f488cda36e0c8857a970ebbbcd0224fa6701094d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:24f28addcd16d41d1a2538b67374835c943b93443febb063421164380af1ee24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15556110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aad6afea43ba0c90cf85fd333b05c522de62fc6a64567249e2c44e9d6a489e9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:11:48 GMT
RUN apk --no-cache add ca-certificates
# Mon, 27 Nov 2017 17:48:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 27 Nov 2017 17:48:50 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 27 Nov 2017 17:48:51 GMT
EXPOSE 80/tcp
# Mon, 27 Nov 2017 17:48:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Nov 2017 17:48:51 GMT
CMD ["traefik"]
# Mon, 27 Nov 2017 17:48:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1b5a373182e138267e064029f8bb8a05b1bcf12872e930b45342833defae7468`  
		Last Modified: Mon, 27 Nov 2017 17:49:47 GMT  
		Size: 13.2 MB (13213334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872e4ec3ee66a26daf940650bad1ed8ab8f0cb07db4f24d663d24e348f438c0`  
		Last Modified: Mon, 27 Nov 2017 17:49:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:faa5d2c0d9ee61a77bd840b09a26971314bbba07a006ef69e78a941bf20abcef
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14712262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ab0231d64572fd60d74ae45c5f3c95fbb5d77fd2ac7758830599b444fe06c5`
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
# Tue, 28 Nov 2017 00:48:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 28 Nov 2017 00:48:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 28 Nov 2017 00:48:37 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 00:48:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Nov 2017 00:48:38 GMT
CMD ["traefik"]
# Tue, 28 Nov 2017 00:48:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1c3f52905fff68da1bc966476184e0afe150cd1c03065dd3eebab85fb1384222`  
		Last Modified: Tue, 28 Nov 2017 00:49:05 GMT  
		Size: 12.4 MB (12393609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba0fadeb65d8a5d41efda0e673321fb4792471228321bd53451a93585391e1`  
		Last Modified: Tue, 28 Nov 2017 00:49:01 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4.4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:fb5cfeab807c54ec76c89c099c92b20b4ac04d50b3980b33f3860d214f5ec3bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14344777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c042111f3b865ffab3aa2e84fad87987e510c21cbcaf9d0c59d261c17bc7cb4`
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
# Tue, 28 Nov 2017 05:55:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 28 Nov 2017 05:55:42 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 28 Nov 2017 05:55:43 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 05:55:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Nov 2017 05:55:44 GMT
CMD ["traefik"]
# Tue, 28 Nov 2017 05:55:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:2350efe314ead32e9c9e2d56579cfb97a7626ac22239bd5c2ccfa9ce2338acdf`  
		Last Modified: Tue, 28 Nov 2017 05:57:58 GMT  
		Size: 12.1 MB (12078020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155e97cc9138ea610b81fddd03146f23b43ceb2649d9f6886f55d8d3a25e471a`  
		Last Modified: Tue, 28 Nov 2017 05:57:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `traefik:v1.4-alpine`

```console
$ docker pull traefik@sha256:92f90b4ce082cd34a8b9bb72f488cda36e0c8857a970ebbbcd0224fa6701094d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:v1.4-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:24f28addcd16d41d1a2538b67374835c943b93443febb063421164380af1ee24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15556110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aad6afea43ba0c90cf85fd333b05c522de62fc6a64567249e2c44e9d6a489e9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:11:48 GMT
RUN apk --no-cache add ca-certificates
# Mon, 27 Nov 2017 17:48:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Mon, 27 Nov 2017 17:48:50 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Mon, 27 Nov 2017 17:48:51 GMT
EXPOSE 80/tcp
# Mon, 27 Nov 2017 17:48:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Nov 2017 17:48:51 GMT
CMD ["traefik"]
# Mon, 27 Nov 2017 17:48:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1b5a373182e138267e064029f8bb8a05b1bcf12872e930b45342833defae7468`  
		Last Modified: Mon, 27 Nov 2017 17:49:47 GMT  
		Size: 13.2 MB (13213334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872e4ec3ee66a26daf940650bad1ed8ab8f0cb07db4f24d663d24e348f438c0`  
		Last Modified: Mon, 27 Nov 2017 17:49:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:faa5d2c0d9ee61a77bd840b09a26971314bbba07a006ef69e78a941bf20abcef
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14712262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ab0231d64572fd60d74ae45c5f3c95fbb5d77fd2ac7758830599b444fe06c5`
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
# Tue, 28 Nov 2017 00:48:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 28 Nov 2017 00:48:37 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 28 Nov 2017 00:48:37 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 00:48:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Nov 2017 00:48:38 GMT
CMD ["traefik"]
# Tue, 28 Nov 2017 00:48:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:1c3f52905fff68da1bc966476184e0afe150cd1c03065dd3eebab85fb1384222`  
		Last Modified: Tue, 28 Nov 2017 00:49:05 GMT  
		Size: 12.4 MB (12393609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba0fadeb65d8a5d41efda0e673321fb4792471228321bd53451a93585391e1`  
		Last Modified: Tue, 28 Nov 2017 00:49:01 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:v1.4-alpine` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:fb5cfeab807c54ec76c89c099c92b20b4ac04d50b3980b33f3860d214f5ec3bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14344777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c042111f3b865ffab3aa2e84fad87987e510c21cbcaf9d0c59d261c17bc7cb4`
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
# Tue, 28 Nov 2017 05:55:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.4/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 28 Nov 2017 05:55:42 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 28 Nov 2017 05:55:43 GMT
EXPOSE 80/tcp
# Tue, 28 Nov 2017 05:55:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 28 Nov 2017 05:55:44 GMT
CMD ["traefik"]
# Tue, 28 Nov 2017 05:55:45 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.4 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:2350efe314ead32e9c9e2d56579cfb97a7626ac22239bd5c2ccfa9ce2338acdf`  
		Last Modified: Tue, 28 Nov 2017 05:57:58 GMT  
		Size: 12.1 MB (12078020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155e97cc9138ea610b81fddd03146f23b43ceb2649d9f6886f55d8d3a25e471a`  
		Last Modified: Tue, 28 Nov 2017 05:57:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
