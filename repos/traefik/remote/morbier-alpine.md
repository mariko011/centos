## `traefik:morbier-alpine`

```console
$ docker pull traefik@sha256:53ab780b9b3cc124a8d4429883d919a24c891b713b2979bd49b234e9e5416ee4
```

-	Platforms:
	-	linux; amd64

### `traefik:morbier-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14106607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f694aa183e5a5749690c3164f8a8732bc0b386034f6f83ba0380d51a6fe7ed1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:48:45 GMT
RUN apk --update upgrade     && apk --no-cache --no-progress add ca-certificates     && rm -rf /var/cache/apk/*
# Fri, 03 Mar 2017 23:48:50 GMT
COPY file:e352f17cbb00844eb8ce037d893cefab213f0fccc880145207ff3e6c8791d472 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:48:50 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 03 Mar 2017 23:48:50 GMT
EXPOSE 80/tcp
# Fri, 03 Mar 2017 23:48:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Mar 2017 23:48:51 GMT
CMD ["--help"]
# Fri, 03 Mar 2017 23:48:51 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.2.0-rc2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:392524fb1edbe255c6b9aad834a9c600fb7cfd528fe2f7ad17a4255e8b20400f`  
		Last Modified: Sat, 04 Mar 2017 06:33:11 GMT  
		Size: 11.4 MB (11444128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb927ef8d03f1236f012e8e57d351224879c57d851e3df262aa143eb42a4ebd0`  
		Last Modified: Sat, 04 Mar 2017 06:33:03 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
