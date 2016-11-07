## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:41ae1d09ef398ead7f0a5a93942d5645e1644ec636e67c6d8a5e352409acaaf9
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-curl` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63963780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc5e30a4f2209d7e35309f266d4d1585710568951ad4db0a12d19afc888697e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:31:17 GMT
ADD file:4946b2fd6ad8f6dad8ce2007df355ffa80fbc0d560ac45600bc0305c812bc331 in / 
# Mon, 07 Nov 2016 20:31:17 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:28:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2c2697cc54a4087031e91659113de235e6bd969754303465add193727dc03fa6`  
		Last Modified: Mon, 07 Nov 2016 20:37:10 GMT  
		Size: 43.3 MB (43262401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b24aac71f904b1bd9a7a8823a0c8281406c9289c475d7231493950a1ba49f40`  
		Last Modified: Mon, 07 Nov 2016 23:00:27 GMT  
		Size: 20.7 MB (20701379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
