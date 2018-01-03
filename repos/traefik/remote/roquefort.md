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
