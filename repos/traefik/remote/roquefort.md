## `traefik:roquefort`

```console
$ docker pull traefik@sha256:e9dcd8b3b0ded78d1edca42d087650c06a1d742092fe99d67ffb6a201c69ea45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6
	-	linux; arm64 variant v8

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
