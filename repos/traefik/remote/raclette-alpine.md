## `traefik:raclette-alpine`

```console
$ docker pull traefik@sha256:a6403e5e5db203e9bff6f93d522659fe2558f26fe6a085be4a18f8f89032d590
```

-	Platforms:
	-	linux; amd64

### `traefik:raclette-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15557928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47141a1c6a89cadab9d05b137fba1416e937a58185d95b6315af9a8a06175dcd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Thu, 29 Jun 2017 00:34:03 GMT
RUN apk --update upgrade     && apk --no-cache --no-progress add ca-certificates     && rm -rf /var/cache/apk/*
# Thu, 27 Jul 2017 19:58:45 GMT
COPY file:4bd7318837da858b22b4a12833615c8548c86e2e3db810f822c6d79c0ab03fb0 in /usr/local/bin/ 
# Thu, 27 Jul 2017 19:58:46 GMT
COPY file:41f5bd1ea0a61e819b7d8c5489c305d4f2798046917dd6b6695318f555981727 in / 
# Thu, 27 Jul 2017 19:58:46 GMT
EXPOSE 80/tcp
# Thu, 27 Jul 2017 19:58:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 27 Jul 2017 19:58:46 GMT
CMD ["--help"]
# Thu, 27 Jul 2017 19:58:47 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.3.4 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda6150311e39a452548116345e35aac3673b0ad9c56eca12d277d7db4bed6c6`  
		Last Modified: Thu, 29 Jun 2017 23:07:52 GMT  
		Size: 346.8 KB (346835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb5e34ffa84656affe951b47a4dba99bf6c7a6f0d7af655d0bbda41a19b0287`  
		Last Modified: Thu, 27 Jul 2017 20:00:11 GMT  
		Size: 12.8 MB (12825745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0941f4dd46909649f82fb8845ecb901460a494ef523fe1ff34f06d6af5134e8b`  
		Last Modified: Thu, 27 Jul 2017 20:00:08 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
