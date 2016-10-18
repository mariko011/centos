## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:8e79e753a6f11eb6032c48a09ebf5163a09f4b2d8aa567d172e3f52170503a58
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63773869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47caa368357686b13e498077b38d74dc791c5c2eb8efbbf2533ee45544f2c61a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Oct 2016 21:26:49 GMT
ADD file:5064de32df8d190bfda6b1588f654a7cb927a8177765aa689925da3ae52b3e6e in / 
# Mon, 17 Oct 2016 21:26:49 GMT
CMD ["/bin/bash"]
# Mon, 17 Oct 2016 23:41:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5a07caa71861fb61d7142fcb4e9587355b1463ffe02a83d963728acda4e7bdf0`  
		Last Modified: Mon, 17 Oct 2016 21:27:09 GMT  
		Size: 43.2 MB (43208423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdf74d8838d93d31f9c1f3b98ae50ebd8871831ed25e21b8c7ed0cf925005f`  
		Last Modified: Mon, 17 Oct 2016 23:41:38 GMT  
		Size: 20.6 MB (20565446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
