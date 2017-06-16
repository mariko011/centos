## `traefik:raclette-alpine`

```console
$ docker pull traefik@sha256:55b6e4e8e7a81b244e9cd6095d31c221f0e069c993c6286c50d5447d2aeaaff3
```

-	Platforms:
	-	linux; amd64

### `traefik:raclette-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15541493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d62c4da2d54394d648be8f145498971330abbaf4f859af4d473d3e44b945b625`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 25 May 2017 23:31:54 GMT
ADD file:c34582524a7c4fa2ccb67d48efaa6edacff8bc8115a26a511b2385a03f56aa8e in / 
# Thu, 25 May 2017 23:31:55 GMT
CMD ["/bin/sh"]
# Wed, 31 May 2017 19:30:30 GMT
RUN apk --update upgrade     && apk --no-cache --no-progress add ca-certificates     && rm -rf /var/cache/apk/*
# Fri, 16 Jun 2017 16:53:01 GMT
COPY file:c7f2e27faced0512923ad3c6bff933e520fb8c5048d77cccff6cdd6bf4b7b735 in /usr/local/bin/ 
# Fri, 16 Jun 2017 16:53:02 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Fri, 16 Jun 2017 16:53:03 GMT
EXPOSE 80/tcp
# Fri, 16 Jun 2017 16:53:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Jun 2017 16:53:04 GMT
CMD ["--help"]
# Fri, 16 Jun 2017 16:53:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:486a8e636d6250a74d15cdb3582f4dd198271a80118f5a2f59de3d9cd8433611`  
		Last Modified: Thu, 25 May 2017 23:35:56 GMT  
		Size: 2.4 MB (2383064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277d094369e28b1075c8b83b0a65ff6b37e9bac0bbe9ee6f315d79eeb2e24b48`  
		Last Modified: Wed, 31 May 2017 19:45:17 GMT  
		Size: 346.8 KB (346820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78d6a594219342f339a876fe7aa789137e85db7dfeea05155ae501707c6d786`  
		Last Modified: Fri, 16 Jun 2017 16:56:13 GMT  
		Size: 12.8 MB (12811270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20198322089564b516ab5701ded17adf7a4e37ed49b9fd81aaa28dfda8827f7`  
		Last Modified: Fri, 16 Jun 2017 16:56:10 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
