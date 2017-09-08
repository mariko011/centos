## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:d8f3ba7bff63efe4622610a50c9e36f73f99a047b845cb494dc30ffe39173cf0
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:buster-scm` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116806546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2971f0b5a2d880754cd8b492972e5bb4448c9a1e100c1daf6907a1b583a50efd`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:12 GMT
ADD file:f119e9d99ea0b9ed669f11a283364c30fb9ee0f82e6f7199c863eccfc3b0b56f in / 
# Thu, 07 Sep 2017 23:04:12 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:13:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:13:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:14:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1ff97b4f79d288d52633dd13b82a200555b9dcc0cade3b07f5aacb2952076436`  
		Last Modified: Thu, 07 Sep 2017 23:09:50 GMT  
		Size: 47.5 MB (47547481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd15b787068110ca18176dece3a6d187c3e5b51ba56bd4f30d8fed4448c7c9e`  
		Last Modified: Thu, 07 Sep 2017 23:54:05 GMT  
		Size: 8.5 MB (8548189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4276830652fb264450fd7f17b04a7def8a76b917885d42f872a2a173bc02c072`  
		Last Modified: Thu, 07 Sep 2017 23:54:04 GMT  
		Size: 9.0 MB (8970754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ffc8d8e0f7cac9c9cd21a005ae72e41ef7714264bdbe7dab109a6bc48f1bab`  
		Last Modified: Thu, 07 Sep 2017 23:54:29 GMT  
		Size: 51.7 MB (51740122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
