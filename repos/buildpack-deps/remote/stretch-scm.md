## `buildpack-deps:stretch-scm`

```console
$ docker pull buildpack-deps@sha256:80c4b70f3cf27912619a355b7b0386cd255705542bfd2247b1a7697316218b53
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-scm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107147015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367625a69b7abec8b101e4c7fb2c6c7a5da433d5ea1fd03f42a741ca05f548b2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:35:51 GMT
ADD file:12fbfae009c2bca2e7919562183a741eb25cea584815246d61e323976c92ae04 in / 
# Mon, 08 May 2017 23:36:09 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:00:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d31335c0dd8283dbd495d268a45a398386ea56ca38084475bcac53ec65d38edb`  
		Last Modified: Mon, 08 May 2017 23:51:51 GMT  
		Size: 45.1 MB (45071306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9fcf2064a61b29819273cc2455b76efcc50bc3f24b2d2a348c97e996eb427`  
		Last Modified: Tue, 09 May 2017 16:00:45 GMT  
		Size: 21.3 MB (21267722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6503329fc20d92a20fa42a4d81064315619eaa3304b135abe7fa9d3ecd3c19d4`  
		Last Modified: Tue, 09 May 2017 16:01:20 GMT  
		Size: 40.8 MB (40807987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
