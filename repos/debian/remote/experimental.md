## `debian:experimental`

```console
$ docker pull debian@sha256:2ee64b558e10939df0bc24c149a4df87cb0f9e7290541cf430480c897caab06f
```

-	Platforms:
	-	linux; amd64

### `debian:experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43195481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f90cfcde531bf8626ccc2cfa66283eb172bb9473e1df33887674861e5263f3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Oct 2016 21:28:06 GMT
ADD file:5b04ad70b76398f321da67a541de53832d11caa168cb8e5b0f811f8acffbc4c5 in / 
# Mon, 17 Oct 2016 21:28:06 GMT
CMD ["/bin/bash"]
# Mon, 17 Oct 2016 23:42:50 GMT
RUN awk '$1 ~ "^deb" { $3 = "experimental"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:2b489ca88a9902d99083d985c03466175c0b09642920fe50dd366f44f4d6416c`  
		Last Modified: Mon, 17 Oct 2016 21:28:26 GMT  
		Size: 43.2 MB (43195267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a93729f88d90764f345a2051a2e528628608671b4ca41a57d43906aaff2772`  
		Last Modified: Mon, 17 Oct 2016 23:42:59 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
