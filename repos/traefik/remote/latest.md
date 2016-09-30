## `traefik:latest`

```console
$ docker pull traefik@sha256:58a445b720f40bbb99f572838bdb2845a7e5857070aebf624ceff11fa70ba5cb
```

-	Platforms:
	-	linux; amd64

### `traefik:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b484f287e16089871d375770bb57c18b0df79b53d6d30b4d4a51c7e3da0f5712`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:39 GMT
COPY file:cf2d208eee34f301179807ffea35c3a9cceb36e80d7484fadabbb6cda7c15bfb in /etc/ssl/certs/ 
# Mon, 26 Sep 2016 20:43:56 GMT
COPY file:74f4dad4add12da450dc791f785641321170d0758990b7114eeae35d2a481cd0 in / 
# Mon, 26 Sep 2016 20:43:57 GMT
EXPOSE 80/tcp
# Mon, 26 Sep 2016 20:43:57 GMT
ENTRYPOINT ["/traefik"]
```

-	Layers:
	-	`sha256:895d64059c56a06236d7b4d0c91cdeb1601186b9d6f771b0575ca7d034406d17`  
		Last Modified: Mon, 26 Sep 2016 20:44:06 GMT  
		Size: 153.8 KB (153795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f2e3c65ef44f67ba0963b931fb369fc8ac53c63a7922ce32542e0b0b82eaa6`  
		Last Modified: Mon, 26 Sep 2016 20:44:08 GMT  
		Size: 6.5 MB (6542502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
