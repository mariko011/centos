## `traefik:camembert-alpine`

```console
$ docker pull traefik@sha256:908b721ccb603e1d0ebf89112ee660d36f25b7c792b870889ff2f58f115faf32
```

-	Platforms:
	-	linux; amd64

### `traefik:camembert-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (8976974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197183e1fb8379e8b23cee73f3ccecbf6547b6f46410145b7475191ddf1faeb7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Mon, 21 Nov 2016 17:43:51 GMT
RUN apk --update upgrade     && apk --no-cache --no-progress add ca-certificates     && rm -rf /var/cache/apk/*
# Tue, 29 Nov 2016 18:30:21 GMT
COPY file:b4b4e35266ef0dbe33c4fcf61415ff3325418b0e393fc41726f9becb7f5a2623 in /usr/local/bin/ 
# Tue, 29 Nov 2016 18:30:21 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 29 Nov 2016 18:30:22 GMT
EXPOSE 80/tcp
# Tue, 29 Nov 2016 18:30:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 29 Nov 2016 18:30:23 GMT
CMD ["--help"]
# Tue, 29 Nov 2016 18:30:23 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.1.1 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:f021d58bfbd466e186cf8738975bfdeda9814352d4905955c8378038b398501b`  
		Last Modified: Tue, 29 Nov 2016 18:31:47 GMT  
		Size: 5.5 MB (5457274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c59b7c695c24bf1c1efa93f1fa2d0e7d38445ccfcbbdb229eda6864f6f4b5b`  
		Last Modified: Tue, 29 Nov 2016 18:31:45 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
