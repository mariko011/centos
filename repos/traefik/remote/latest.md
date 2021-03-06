## `traefik:latest`

```console
$ docker pull traefik@sha256:39dbc4a7f6302539b9224f713d1049a8b9c0ebc21e3677ece1b52b207da43482
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:4547e2bc48d68fc9b7cb917e4076080c06dad366060b926955cc7df8c4e240dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13965644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aa5d83f0f88a7a27adc39fa1761cc7b93798f2ea12135eacb6ea6204d785480`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:11:40 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 23 Jan 2018 20:48:57 GMT
COPY file:133daa205c1cb3b9daa0560cb80693f7537255ec7118944762284913598fcd39 in / 
# Tue, 23 Jan 2018 20:48:58 GMT
EXPOSE 80/tcp
# Tue, 23 Jan 2018 20:48:58 GMT
ENTRYPOINT ["/traefik"]
# Tue, 23 Jan 2018 20:48:58 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:5d3835484afecc78dccfa2f7d4fcf273aacfe0c7600b957314e38488f3942045`  
		Last Modified: Fri, 03 Nov 2017 22:12:12 GMT  
		Size: 155.2 KB (155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbfb4552450025da7a61fe68950b87dd9a0b68bf32c91342eae60be7aed7f779`  
		Last Modified: Tue, 23 Jan 2018 21:02:26 GMT  
		Size: 13.8 MB (13810492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:059cfc7d681687e41498a88ca86e06ce6dc766c559188a7cd7fb7a8e99130277
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13104674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86e143fce253d801b76079fed65e2dbd42ac59fe3b5bb3e1390098f98bdcf7ff`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 24 Jan 2018 00:48:29 GMT
COPY file:10121f54d1ab55b8ef3abf6f2fe39816cd27a10e15056bb03829f08586d0089c in / 
# Wed, 24 Jan 2018 00:48:29 GMT
EXPOSE 80/tcp
# Wed, 24 Jan 2018 00:48:29 GMT
ENTRYPOINT ["/traefik"]
# Wed, 24 Jan 2018 00:48:29 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4082130f7ec059fbf99a9a6f8188bb419e0cde800d966ed0760c7614fde8c90`  
		Last Modified: Wed, 24 Jan 2018 00:48:52 GMT  
		Size: 12.9 MB (12949490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e1bd6e53c43b9e78883dafe730158c76b388aac1b08984769c2423b3f8ff0729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12771512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e14c612dc39cdccd74886c248093841c67b3c0f09dde8862bcbc70a32f93045`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 25 Oct 2017 04:54:39 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 24 Jan 2018 05:54:47 GMT
COPY file:0af3348d0ff35955e182e1ba870dd33e98f143817b1687805830fc3b7c90e0ca in / 
# Wed, 24 Jan 2018 05:54:48 GMT
EXPOSE 80/tcp
# Wed, 24 Jan 2018 05:54:48 GMT
ENTRYPOINT ["/traefik"]
# Wed, 24 Jan 2018 05:54:49 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.5.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:78fe135ba97a13abc86dbe373975f0d0712d8aa6e540e09824b715a55d7e2ed3`  
		Last Modified: Wed, 25 Oct 2017 04:55:01 GMT  
		Size: 155.2 KB (155151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab0916a3cb35293b4e4b5892afa2d03031db1d4de70da1516313affec820df73`  
		Last Modified: Wed, 24 Jan 2018 05:55:53 GMT  
		Size: 12.6 MB (12616361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
