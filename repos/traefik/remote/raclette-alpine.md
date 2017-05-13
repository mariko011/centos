## `traefik:raclette-alpine`

```console
$ docker pull traefik@sha256:e7789714decfe67d6f72dcdc341515a1a73e5919d515d6464ee45b28d477a9ec
```

-	Platforms:
	-	linux; amd64

### `traefik:raclette-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15539248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409e2d26b2ac9b7eebcbf0a9bcfef1275aa7d95c13ca3819b16e58c640aa282d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 23:38:38 GMT
RUN apk --update upgrade     && apk --no-cache --no-progress add ca-certificates     && rm -rf /var/cache/apk/*
# Wed, 10 May 2017 23:39:05 GMT
COPY file:e9a7dc1b961947108732da1ba64ce7af529c7873b190979ed13790f5a3a30266 in /usr/local/bin/ 
# Wed, 10 May 2017 23:39:06 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 10 May 2017 23:39:06 GMT
EXPOSE 80/tcp
# Wed, 10 May 2017 23:39:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 May 2017 23:39:08 GMT
CMD ["--help"]
# Wed, 10 May 2017 23:39:08 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.0-rc1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9026ef6e053e15387887a39afe45b491998cf4bd1281fc1a2779c399b82e7f`  
		Last Modified: Sat, 13 May 2017 19:36:47 GMT  
		Size: 346.8 KB (346820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a3e081a526f55dac7eb3b72f238940e7d048825792ad04d4295038c6ca8cd0`  
		Last Modified: Sat, 13 May 2017 19:38:44 GMT  
		Size: 12.8 MB (12809052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7a552fc9504647c3f1f07b3d9eb653a248a4ad482c0452a0c1c4636e51cf9f`  
		Last Modified: Sat, 13 May 2017 19:38:40 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
