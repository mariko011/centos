## `traefik:latest`

```console
$ docker pull traefik@sha256:07cf8c720c13faedda0c6c3d72a0ebdb3dab7219c957e3367260885e48af00c5
```

-	Platforms:
	-	linux; amd64

### `traefik:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5611075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaaaa23f5ea5a42b9d60ebe8ab0ba40bdb8e3255bf139c50ea4570da8c465229`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:39 GMT
COPY file:cf2d208eee34f301179807ffea35c3a9cceb36e80d7484fadabbb6cda7c15bfb in /etc/ssl/certs/ 
# Tue, 29 Nov 2016 18:30:19 GMT
COPY file:b4b4e35266ef0dbe33c4fcf61415ff3325418b0e393fc41726f9becb7f5a2623 in / 
# Tue, 29 Nov 2016 18:30:19 GMT
EXPOSE 80/tcp
# Tue, 29 Nov 2016 18:30:19 GMT
ENTRYPOINT ["/traefik"]
# Tue, 29 Nov 2016 18:30:20 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.1.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:895d64059c56a06236d7b4d0c91cdeb1601186b9d6f771b0575ca7d034406d17`  
		Last Modified: Mon, 26 Sep 2016 20:44:06 GMT  
		Size: 153.8 KB (153795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9519bbf6d429b3bce5135d282eef9eb10ac672f43541076ffc72d0b3be02440f`  
		Last Modified: Tue, 29 Nov 2016 18:30:38 GMT  
		Size: 5.5 MB (5457280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
