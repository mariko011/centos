## `buildpack-deps:stretch-scm`

```console
$ docker pull buildpack-deps@sha256:70ef47b9e9a7267c1dfcd19c43c18b05491f223598903ea06eb98609b15d2b93
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-scm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (112017831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90f57b76bffc3da5f7dd036b246051ae909747c52d870c6feb2d74228567c60`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Oct 2016 21:26:49 GMT
ADD file:5064de32df8d190bfda6b1588f654a7cb927a8177765aa689925da3ae52b3e6e in / 
# Mon, 17 Oct 2016 21:26:49 GMT
CMD ["/bin/bash"]
# Mon, 17 Oct 2016 23:41:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 17 Oct 2016 23:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:7fdd27f02ce4cd0c55b6bd4b0aa86af56afa5b7599d2a3379cf950bc5abda52a`  
		Last Modified: Mon, 17 Oct 2016 23:42:41 GMT  
		Size: 48.2 MB (48243962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
