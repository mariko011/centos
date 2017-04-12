## `traefik:morbier-alpine`

```console
$ docker pull traefik@sha256:d7d6451f006286e1a50fa6c3eef2527125df5050c2f82fcb8cd5869fbccd89f1
```

-	Platforms:
	-	linux; amd64

### `traefik:morbier-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14141134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be426cecedab8dfd85b032c385e8168c88e19886e766d289772bd66cfbad4fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 23:48:45 GMT
RUN apk --update upgrade     && apk --no-cache --no-progress add ca-certificates     && rm -rf /var/cache/apk/*
# Wed, 12 Apr 2017 17:14:32 GMT
COPY file:704efd193c69964ac01de3216e01811a2b08b53dfd277a4da2ff8ccc88ef42c4 in /usr/local/bin/ 
# Wed, 12 Apr 2017 17:14:33 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Wed, 12 Apr 2017 17:14:34 GMT
EXPOSE 80/tcp
# Wed, 12 Apr 2017 17:14:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Apr 2017 17:14:36 GMT
CMD ["--help"]
# Wed, 12 Apr 2017 17:14:36 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.2.2 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:b4991ae7f7d130986aaa55dccaf7f1619a733fc31b13794b6244465c20d0a877`  
		Last Modified: Wed, 12 Apr 2017 17:17:56 GMT  
		Size: 11.5 MB (11478655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743b2af9f366be148c8707d97cc8b382ad6d385d7b75b0432197e1220e9fadcd`  
		Last Modified: Wed, 12 Apr 2017 17:17:48 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
