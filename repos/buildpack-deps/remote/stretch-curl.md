## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:048aa04cf7741a8d5e28597eaae8c056a6aab527f67e78a0ae6dd34ac23085f2
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65106922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c348e260a0583a1f049b3eefb7ae8fddcd9919da5d1306ee11d887ead3f29c6b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:33:45 GMT
ADD file:b784c500074cf93203f92498cb90882e098a854589ab7274432b376198176dfa in / 
# Tue, 21 Mar 2017 18:33:46 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:14:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
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
