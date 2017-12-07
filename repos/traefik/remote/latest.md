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
