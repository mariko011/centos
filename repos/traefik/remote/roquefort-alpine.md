## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:14cceac283fc1370eadb779a4f7585b07c203c7bb29e6dc457eadff5905be748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:roquefort-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:9f5d6c0d8d6d2fe10ba9d893c09e6661335702dfafa989ea73b0f1f0ee71a779
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15515554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d11cda1bf89f76d25de6e97745cb4b3bd8e12a4ee54a815f96056775818566f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 04:48:44 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Sep 2017 04:48:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.0-rc2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Sep 2017 04:48:53 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 13 Sep 2017 04:48:53 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:48:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 04:48:53 GMT
CMD ["traefik"]
# Wed, 13 Sep 2017 04:48:53 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26fc72133464791d3633640160b749ff206aea4427691f0272dbaac80a834ef`  
		Last Modified: Wed, 13 Sep 2017 04:49:42 GMT  
		Size: 351.4 KB (351357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58165a8649b6f0d5c887e966aa40ca1dfe87b6bd519b3ccb4e971e53282adcc3`  
		Last Modified: Wed, 13 Sep 2017 04:49:44 GMT  
		Size: 13.2 MB (13173453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1970d6850aa9000d1794eccef88a8af68f3121141df2f12e5950710d027bcd`  
		Last Modified: Wed, 13 Sep 2017 04:49:41 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
