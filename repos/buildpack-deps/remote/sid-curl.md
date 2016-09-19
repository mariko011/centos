## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:9fe4e6dfa9c1a084eb94354492df693678fbda7bdfd1db73463964ad4d8f1036
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-curl` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63783162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4a83ce1a1bbe909c32a9977ad41a107b862acdc6771a05728cea0eb63c1a6b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:55 GMT
ADD file:e1f71b04b8aa93bcaa59d04d2b86b5bbbb572eda80ef31b43328c5702ce3bc6d in / 
# Mon, 19 Sep 2016 17:42:55 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:48:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:dca6e68f53db97e624204489d149932fd6643c0f737cef6a6531dc870e2b9c3c`  
		Last Modified: Mon, 19 Sep 2016 17:46:11 GMT  
		Size: 43.2 MB (43235728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af28ad81fae6afb462f86ef33bee9f301f34dd27a9192d84c69ec4475910959`  
		Last Modified: Mon, 19 Sep 2016 17:56:58 GMT  
		Size: 20.5 MB (20547434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
