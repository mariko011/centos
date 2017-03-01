## `traefik:morbier-alpine`

```console
$ docker pull traefik@sha256:3bd420fa5280bb745b021558963b7875820d663b420a290f10e7c393aa4dd785
```

-	Platforms:
	-	linux; amd64

### `traefik:morbier-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14101532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31d931bcf51d481f45daa022e390d8d135b6324fcedbed7045e1f9be99d7c47`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 22:08:21 GMT
RUN apk --update upgrade     && apk --no-cache --no-progress add ca-certificates     && rm -rf /var/cache/apk/*
# Wed, 01 Mar 2017 18:10:40 GMT
COPY file:e352f17cbb00844eb8ce037d893cefab213f0fccc880145207ff3e6c8791d472 in /usr/local/bin/ 
# Wed, 01 Mar 2017 18:10:41 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 01 Mar 2017 18:10:41 GMT
EXPOSE 80/tcp
# Wed, 01 Mar 2017 18:10:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Mar 2017 18:10:42 GMT
CMD ["--help"]
# Wed, 01 Mar 2017 18:10:43 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.2.0-rc2 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1bb5764098d6c54914885aa0f3b9c3291affe6a45b107bb34d8dd9a00f6882`  
		Last Modified: Tue, 27 Dec 2016 22:32:49 GMT  
		Size: 344.0 KB (343977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4274315b44ec125e36ff0476e6e3555377cadfae1bd5db828d5c947832c8894c`  
		Last Modified: Wed, 01 Mar 2017 18:12:16 GMT  
		Size: 11.4 MB (11444127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77408ec73990636c31b3e45e534a91e34d5823103012d231f36001787732b8c7`  
		Last Modified: Wed, 01 Mar 2017 18:12:13 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
