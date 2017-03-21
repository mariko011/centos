## `buildpack-deps:stretch-scm`

```console
$ docker pull buildpack-deps@sha256:f75f29b0e851f8eef1d59024c3502b4da8fdce5a96ccb06ab8f3713c29587764
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105155399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e54bb8b790805714e244a0eee3a539a267f023cef0e7ef6eb34c30ee586b1c6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:33:45 GMT
ADD file:b784c500074cf93203f92498cb90882e098a854589ab7274432b376198176dfa in / 
# Tue, 21 Mar 2017 18:33:46 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:14:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:14:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:012cbff939ac501cbf2ec74788932aec11774e5a1cf3aa98e83fc0770331d7b0`  
		Last Modified: Tue, 21 Mar 2017 18:48:04 GMT  
		Size: 44.1 MB (44088731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351ea4253a6d4de9934229b0a3a79fa8ca81eff1ee23a632fcf3df109baf83a2`  
		Last Modified: Tue, 21 Mar 2017 20:05:51 GMT  
		Size: 21.0 MB (21018191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0f95e0817298dbe40ba7e33e4d322b95edf2e04418eb34316da813e79f4008`  
		Last Modified: Tue, 21 Mar 2017 20:06:36 GMT  
		Size: 40.0 MB (40048477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
