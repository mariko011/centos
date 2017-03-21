## `traefik:morbier-alpine`

```console
$ docker pull traefik@sha256:b449da3eed19bd4090e14325f65772253abfae79c457fd2a0052b1b535e6e7da
```

-	Platforms:
	-	linux; amd64

### `traefik:morbier-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14113433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629db1942b0e8115938164c0f6d80c756e2ef4585c4b336c98e2b55e65403bef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:48:45 GMT
RUN apk --update upgrade     && apk --no-cache --no-progress add ca-certificates     && rm -rf /var/cache/apk/*
# Tue, 21 Mar 2017 17:41:05 GMT
COPY file:008a94ed7b95e67ea12e80be8f72b46ab22fcae35b8407dd54dd630258396b47 in /usr/local/bin/ 
# Tue, 21 Mar 2017 17:41:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Tue, 21 Mar 2017 17:41:07 GMT
EXPOSE 80/tcp
# Tue, 21 Mar 2017 17:41:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 21 Mar 2017 17:41:08 GMT
CMD ["--help"]
# Tue, 21 Mar 2017 17:41:09 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.2.0 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:7a9485001b9ab748071f19e9f956260424fd9224a18b80cfe3b73b659d5f8d04`  
		Last Modified: Tue, 21 Mar 2017 17:44:19 GMT  
		Size: 11.5 MB (11450952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736b24ff57416abf3e900d786e4e51fa1409729af7ebf848ccbf768ecf4b1a56`  
		Last Modified: Tue, 21 Mar 2017 17:44:14 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
