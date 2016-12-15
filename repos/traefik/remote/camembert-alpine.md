## `traefik:camembert-alpine`

```console
$ docker pull traefik@sha256:71b0e51c1362df31932970b505309640b356d446eddc391be70dcb77f3b81384
```

-	Platforms:
	-	linux; amd64

### `traefik:camembert-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (8982665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6735f5a43197cf24b4f1c487c9f63a082dfccb2f7838d4c803dcfb1a6db6ba2d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Mon, 21 Nov 2016 17:43:51 GMT
RUN apk --update upgrade     && apk --no-cache --no-progress add ca-certificates     && rm -rf /var/cache/apk/*
# Thu, 15 Dec 2016 17:54:06 GMT
COPY file:29b1fa12b70d2862f67cec3f481f6cc7866d44322d068d99898a0020e3561814 in /usr/local/bin/ 
# Thu, 15 Dec 2016 17:54:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 15 Dec 2016 17:54:07 GMT
EXPOSE 80/tcp
# Thu, 15 Dec 2016 17:54:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Dec 2016 17:54:08 GMT
CMD ["--help"]
# Thu, 15 Dec 2016 17:54:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.1.2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d5cfd5b8a3036de2e1fcd7d02dda0290defd69d9248b43e53932852cc1083c`  
		Last Modified: Mon, 21 Nov 2016 17:44:54 GMT  
		Size: 1.2 MB (1206402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1341e36f47235bfeb2d12a19e447704f2633aab1e057686ba93194f9a6299c`  
		Last Modified: Thu, 15 Dec 2016 17:55:17 GMT  
		Size: 5.5 MB (5462966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9500d43a6d5b71f1cbdf0626b409d61f8249e8ea1c3a0e97b8cac562ec29ac`  
		Last Modified: Thu, 15 Dec 2016 17:55:15 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
