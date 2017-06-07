## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:1364eabae91cf6ba9841d007e2fe7a2e94de99b55f3394b6f7bd22918d3dd7c4
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-curl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56546187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b8f853e9adfff51381b6efbcde2f05c772ba2652575bc72a7f1c58809f6ac0a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:45:47 GMT
ADD file:a66dc0ceece0e281da4052a3eae5b966d83cc9d3f269ffd3ea29f2b59e4f1463 in / 
# Wed, 07 Jun 2017 17:45:48 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:acc9a3eece3b042d397feae332fe06f3a630b42b002f384d91ad214e5b0c30a9`  
		Last Modified: Wed, 07 Jun 2017 18:04:09 GMT  
		Size: 45.3 MB (45313821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda5906e878d15a3548f75de4cb0c85ce97fff4c1ee1eb6e6f928122f9756dd`  
		Last Modified: Wed, 07 Jun 2017 20:09:28 GMT  
		Size: 11.2 MB (11232366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
