## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:abd14dc0c2ec35f052f7c066adfae9d272c618cdbf519f18cf1e0e2d0cf610bb
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65084688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5861c6b9f1e4707f605dea83cc77e9e94debee63ea22150fb81fecfeb2c46d2d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:37:25 GMT
ADD file:bc30d36c1c3f3e470eff21bbb66e79cfe1959c536d7672c6ee126378c81e6d97 in / 
# Mon, 27 Feb 2017 20:37:26 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:20:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a6c161c4d6a5565cebc3a01c446ae8c083478103e47a144ecc11ccc81f6bb279`  
		Last Modified: Mon, 27 Feb 2017 20:46:44 GMT  
		Size: 44.1 MB (44066802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38dccc31626ac0801ab16782862a3a3a8e59193760e289ac917afb6c12bc9481`  
		Last Modified: Mon, 27 Feb 2017 22:00:55 GMT  
		Size: 21.0 MB (21017886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
