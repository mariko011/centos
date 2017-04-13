## `traefik:morbier-alpine`

```console
$ docker pull traefik@sha256:1df256566b63967e6564e32dd70037169101b11b9a028f4d5225cea62f7cc777
```

-	Platforms:
	-	linux; amd64

### `traefik:morbier-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14288049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea941f2b2800089db19392e2b103c76d22a68a52eac972a9b496fd890dc958c5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:48:45 GMT
RUN apk --update upgrade     && apk --no-cache --no-progress add ca-certificates     && rm -rf /var/cache/apk/*
# Thu, 13 Apr 2017 20:25:51 GMT
COPY file:ec7cf8cbb3faa3fb0d60458bbd5995a898484ccabed446f8b10e6f925dd2cead in /usr/local/bin/ 
# Thu, 13 Apr 2017 20:25:52 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 13 Apr 2017 20:25:52 GMT
EXPOSE 80/tcp
# Thu, 13 Apr 2017 20:25:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Apr 2017 20:25:54 GMT
CMD ["--help"]
# Thu, 13 Apr 2017 20:25:55 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.2.3 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2be7a0b895245c185e936adfa71f8616de72afd92fcec49c2abeb4fda04cf85`  
		Last Modified: Sat, 04 Mar 2017 06:32:03 GMT  
		Size: 348.8 KB (348756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b98c6c8f58dd75abe542a9c606ba8d0536b8b53270480e392a7da38a101162`  
		Last Modified: Thu, 13 Apr 2017 20:28:18 GMT  
		Size: 11.6 MB (11625569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57dc86261bbd7d6e003166ae9b218eee0f7b39416f9496a65fb0a519e33c6910`  
		Last Modified: Thu, 13 Apr 2017 20:28:15 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
