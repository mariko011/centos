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
