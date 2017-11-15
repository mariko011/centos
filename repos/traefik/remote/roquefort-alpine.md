## `traefik:roquefort-alpine`

```console
$ docker pull traefik@sha256:2054d829c8d51e1afd50263e4c274affc0c8333067719e64b32473eb926dd84b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:roquefort-alpine` - linux; amd64

```console
$ docker pull traefik@sha256:e6de11c7c469127cfd45b7de31ceda150faa44524be8d24331d410bc61442350
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15556238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84fd432ced6626e3c12d54c7b283360178687b3931ae142559703f88e2e4217c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Fri, 03 Nov 2017 22:11:48 GMT
RUN apk --no-cache add ca-certificates
# Tue, 14 Nov 2017 18:48:50 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Tue, 14 Nov 2017 18:48:51 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 14 Nov 2017 18:48:51 GMT
EXPOSE 80/tcp
# Tue, 14 Nov 2017 18:48:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Nov 2017 18:48:51 GMT
CMD ["traefik"]
# Tue, 14 Nov 2017 18:48:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.3 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:138cfc2981e83fc3de2867e51cd3470f8876d2605e0aa8a9c1c7d3fc8f997b19`  
		Last Modified: Tue, 14 Nov 2017 18:49:46 GMT  
		Size: 13.2 MB (13213465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a34cd623b791b0c456b2689b04bec01f24c2e374a2f569e4b23a7240ea50f04`  
		Last Modified: Tue, 14 Nov 2017 18:49:44 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:roquefort-alpine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:0e03f96733b71079b96b3252f1e7f68473d3973f6dc57bec42fa6b79daa08190
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14712218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ded284b53c4106c696efdc240f52477c354ce8edc0763106af378d038fdb7cff`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 15 Nov 2017 00:48:35 GMT
RUN apk --no-cache add ca-certificates
# Wed, 15 Nov 2017 00:48:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='arm' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/traefik "https://github.com/containous/traefik/releases/download/v1.4.3/traefik_linux-$arch"; 	apk del .fetch-deps; 	chmod +x /usr/local/bin/traefik
# Wed, 15 Nov 2017 00:48:42 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 15 Nov 2017 00:48:43 GMT
EXPOSE 80/tcp
# Wed, 15 Nov 2017 00:48:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 Nov 2017 00:48:43 GMT
CMD ["traefik"]
# Wed, 15 Nov 2017 00:48:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.4.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a327851d323fa2321bd95a42227f24138450e43ea70af9570970baf49ae6ba`  
		Last Modified: Wed, 15 Nov 2017 00:49:06 GMT  
		Size: 352.2 KB (352157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c260c9e2d99658be4950ff034d307834f1b45eef28a8931a4d94349e4cb43924`  
		Last Modified: Wed, 15 Nov 2017 00:49:10 GMT  
		Size: 12.4 MB (12393561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4772d320af6ee4bc2130ad44283183f5bac58833693eced8b5535eae60b269c`  
		Last Modified: Wed, 15 Nov 2017 00:49:06 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
