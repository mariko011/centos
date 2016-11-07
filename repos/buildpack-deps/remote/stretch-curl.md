## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:7ddbcc5f6c4bf8000a5ccd0d2902e6268fdbb862ea1ca4e8942ceab13b33fb44
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63830420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d4cddfe77851d704caab4e63752ee21e650d8530f7eba9b08c91e9999def25`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:32:09 GMT
ADD file:de2806ecf4d136cd7c460d60fea41c6870c8ab6e418e8795696aabe598706b1f in / 
# Mon, 07 Nov 2016 20:32:10 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e643679981aeea654a0348b1e068356da942b158b26e3e89a3e0956a1bab37cd`  
		Last Modified: Mon, 07 Nov 2016 20:39:41 GMT  
		Size: 43.2 MB (43247274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1d88194b68a5d7eb5ac6244315789ae8a38c2e4e19e300eb380af8af44f914`  
		Last Modified: Mon, 07 Nov 2016 23:02:52 GMT  
		Size: 20.6 MB (20583146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
