## `traefik:roquefort`

```console
$ docker pull traefik@sha256:86a291e9730a2a14dc3c217046bbebaaac857222574c2d379c93209bb2cbe6bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `traefik:roquefort` - linux; amd64

```console
$ docker pull traefik@sha256:a9928ff975c9312fe08b45999109eb17dd0e77e52b52cfdf38d062fca290e3bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13142534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bb27b65baa6aaabc3cac287a479d7c830ad081797126cd1e06d9bc936faefe`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 13 Sep 2017 04:48:38 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:35:38 GMT
COPY file:ec652feb0db4e6bdda1b5cf980cd856e7bb880e86788b03fae8f684d754a2180 in / 
# Mon, 18 Sep 2017 19:35:38 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:38 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:35:38 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:093789f888ec4feea87b82cd3a9343498efd4964d33ebce1b3673818c8f6d319`  
		Last Modified: Wed, 13 Sep 2017 04:49:20 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bf210584c66d1b6d808afc92ce56e7d3b467a4e5f77364a7542cd612481da6`  
		Last Modified: Mon, 18 Sep 2017 19:36:33 GMT  
		Size: 13.0 MB (13007495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm variant v6

```console
$ docker pull traefik@sha256:e03155763e17df70ed1ee652110f13c756de924933f9c26dfc769da7f9f89626
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12320873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb190cee8902470c4eb336250d3ab6944d3dab4a76ee898b3ef0d8dbaa165fb1`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Wed, 27 Sep 2017 03:23:59 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Wed, 27 Sep 2017 03:24:00 GMT
COPY file:39714462a3194d410cddd010c3c4f5ab509cc33d56ff2a5ca0e508185f2ab931 in / 
# Wed, 27 Sep 2017 03:24:01 GMT
EXPOSE 80/tcp
# Wed, 27 Sep 2017 03:24:01 GMT
ENTRYPOINT ["/traefik"]
# Wed, 27 Sep 2017 03:24:02 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:047ee6a8ab25d2b192fd6a096e61910c5f95ccded229f6d6332ee92f0af0063b`  
		Last Modified: Wed, 27 Sep 2017 03:24:17 GMT  
		Size: 135.1 KB (135073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1001bc1e47135963d31e1d70815f033e1f90f564b99f25e60279667a111d4d8e`  
		Last Modified: Wed, 27 Sep 2017 03:24:20 GMT  
		Size: 12.2 MB (12185800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:1b0bb34dea1f0be6ad8168fec52bd5335e50f8abd866130d7c86c36e3b2f3017
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (12009630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bda0babda2eab55336491a46c0af9ec665e4a96ca52648564e356ae93535f0`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 09 Sep 2017 01:28:53 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Mon, 18 Sep 2017 19:35:49 GMT
COPY file:2a8f8a2988c6c8db57bc49055cf632c75cd16a7675f49b471380b3688a655c4b in / 
# Mon, 18 Sep 2017 19:35:50 GMT
EXPOSE 80/tcp
# Mon, 18 Sep 2017 19:35:50 GMT
ENTRYPOINT ["/traefik"]
# Mon, 18 Sep 2017 19:35:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:58a6bc979c3bd1ae60711b6840afae5b6a156b4cfc797a53471d36be2a308822`  
		Last Modified: Sat, 09 Sep 2017 01:29:25 GMT  
		Size: 135.0 KB (135037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3165c235810f7bd941873c299ffc0b58670008553e2685b7974b6c0fb0f11652`  
		Last Modified: Mon, 18 Sep 2017 19:36:14 GMT  
		Size: 11.9 MB (11874593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
