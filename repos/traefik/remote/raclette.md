## `traefik:raclette`

```console
$ docker pull traefik@sha256:0d0acf7b2ef4cf4ca9d0c94204d2474b9cba3d290e6014970be7c459d1a9f374
```

-	Platforms:
	-	linux; amd64

### `traefik:raclette` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (12961982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5cb0b02b5317c546da690ae905b7577d880f0358785dd8c3ac3cfd465482a4`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Thu, 27 Jul 2017 19:57:41 GMT
COPY file:f4eb9b49e4b4f93d434577528c476bd94799b135d345ccc50a519c1f13f6f97a in /etc/ssl/certs/ 
# Fri, 08 Sep 2017 22:27:49 GMT
COPY file:fbed2852269667c12ff28ccf5da16f6b38aeb3a303c8932e8ce6160c33df5016 in / 
# Fri, 08 Sep 2017 22:27:50 GMT
EXPOSE 80/tcp
# Fri, 08 Sep 2017 22:27:50 GMT
ENTRYPOINT ["/traefik"]
# Fri, 08 Sep 2017 22:27:50 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.8 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:df350fade9bb2857316784e0d70a781999080daabbf1abb69a9547d8ea86559a`  
		Last Modified: Thu, 27 Jul 2017 19:58:57 GMT  
		Size: 135.0 KB (135039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2aac8501ff1b4c9b628e7fb8befdfeff217457492d1d33e6b25014aa538cb9`  
		Last Modified: Fri, 08 Sep 2017 22:29:52 GMT  
		Size: 12.8 MB (12826943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
