## `debian:experimental`

```console
$ docker pull debian@sha256:d86fc73bf0f776d827a43d3707b1e83f282fcbf27f8ad023283ecad625f6322f
```

-	Platforms:
	-	linux; amd64

### `debian:experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43954798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04595a6ecba52334f3c943d53b61dc206a8c7e842caf8c6b52b842cb9bb476b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:00 GMT
ADD file:7e183aaabd1e1a41ebed3f4faf9932276b00573e145414cddeb1ccc375e28fe6 in / 
# Mon, 16 Jan 2017 20:41:09 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:42:41 GMT
RUN awk '$1 ~ "^deb" { $3 = "experimental"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:e6cfcbcab1ae3fd8833fc27f2b13af9b2c21fa0d0770b5db229d9c2a8469c51c`  
		Last Modified: Mon, 16 Jan 2017 20:53:02 GMT  
		Size: 44.0 MB (43954584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:539d2fc941b18cb2d54656cf8c27ae97f0c4f2ab35b06072c2b4ef11d30d7ddb`  
		Last Modified: Mon, 16 Jan 2017 20:58:35 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
