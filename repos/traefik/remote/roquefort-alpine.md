## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:56bdb834eb91b7491d1655acb35aa0449736b8e82ec97cce9c0da3a7493e3344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:roquefort-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:5a9a8feb27464638cf5595e3bb702b71a8e51b05377f666673609bb30eac0126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15554914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1644b8725f3fe1e7249ae35fc5f6930173f1db9b4b52114357299af9031bdd18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:11:48 GMT
RUN apk --no-cache add ca-certificates
# Fri, 03 Nov 2017 22:12:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.2/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Fri, 03 Nov 2017 22:12:04 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 03 Nov 2017 22:12:04 GMT
EXPOSE 80/tcp
# Fri, 03 Nov 2017 22:12:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 22:12:04 GMT
CMD ["traefik"]
# Fri, 03 Nov 2017 22:12:04 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:5fe144399c0c6d570a4e7a9c14a23202c922ef89310a19f938dc639581fb1125`  
		Last Modified: Fri, 03 Nov 2017 22:12:37 GMT  
		Size: 13.2 MB (13212140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9774c8f2cc57b0c1fc683734a5b63f533482162672432071dd82b5d9d6260843`  
		Last Modified: Fri, 03 Nov 2017 22:12:37 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
