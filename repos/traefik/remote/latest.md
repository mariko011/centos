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
