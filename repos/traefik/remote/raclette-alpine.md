## `traefik:raclette-alpine`

```console
$ docker pull traefik@sha256:4df3b04a5cc4079eee53bbd13f84883287dd899918e52cafd02a4fe4162dd855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:raclette-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:351dd76e3c440dfc4addaef49e16f683b0e11ce53d49e224cf63b92be60231a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15335656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:466563807f9e6c78eff0ffd032adcd39b004ac2b4dc160bcb01a13fef5b3d457`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 04:48:44 GMT
RUN apk --no-cache add ca-certificates
# Wed, 13 Sep 2017 04:49:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 13 Sep 2017 04:49:05 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 13 Sep 2017 04:49:06 GMT
EXPOSE 80/tcp
# Wed, 13 Sep 2017 04:49:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 04:49:06 GMT
CMD ["traefik"]
# Wed, 13 Sep 2017 04:49:06 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:ed970e056cdbaca036bfa53ea930631ce8a7eaa756995e4abc13fb9c5c1f519b`  
		Last Modified: Wed, 13 Sep 2017 04:50:24 GMT  
		Size: 13.0 MB (12993556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dda859052f2679db3623b80755241eb9c6ed0808ccad068cdcf2214ba66d73`  
		Last Modified: Wed, 13 Sep 2017 04:50:22 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
