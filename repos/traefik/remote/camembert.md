## `traefik:camembert`

```console
$ docker pull traefik@sha256:9cf3675a141ec33e8e307f22e15d1b93e2436707f400a7d75e53d71260e6ea6a
```

-	Platforms:
	-	linux; amd64

### `traefik:camembert` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5395025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f608d3f99750fe0607a600e4c05f5229f930fd4fcd3bba24fc86a9162f95b62`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:39 GMT
COPY file:cf2d208eee34f301179807ffea35c3a9cceb36e80d7484fadabbb6cda7c15bfb in /etc/ssl/certs/ 
# Fri, 30 Sep 2016 18:21:07 GMT
COPY file:b2922db1432e4ff498a591d7cd5d30260ab56e297e2cc596f70626024a0211a3 in / 
# Fri, 30 Sep 2016 18:21:07 GMT
EXPOSE 80/tcp
# Fri, 30 Sep 2016 18:21:07 GMT
ENTRYPOINT ["/traefik"]
```

-	Layers:
	-	`sha256:895d64059c56a06236d7b4d0c91cdeb1601186b9d6f771b0575ca7d034406d17`  
		Last Modified: Mon, 26 Sep 2016 20:44:06 GMT  
		Size: 153.8 KB (153795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58bf35a8d54eada9001dec722f11c002d1b1f47faed9a1e40efad009d24c13b`  
		Last Modified: Fri, 30 Sep 2016 18:21:17 GMT  
		Size: 5.2 MB (5241230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
