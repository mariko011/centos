## `buildpack-deps:stretch-scm`

```console
$ docker pull buildpack-deps@sha256:10fed4935206a30e93248a458da3594bb5c16da034f97c2cd4592bd6ebdd7742
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105131733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd096e06a3214a150328ad0c273882a18199d6c549faebe9e2acdaef7028c07f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:37:25 GMT
ADD file:bc30d36c1c3f3e470eff21bbb66e79cfe1959c536d7672c6ee126378c81e6d97 in / 
# Mon, 27 Feb 2017 20:37:26 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:20:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:20:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:0594f81c2947035b4f72311892af69e30c5369f60487e52a95e95b733580053b`  
		Last Modified: Mon, 27 Feb 2017 22:01:30 GMT  
		Size: 40.0 MB (40047045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
