## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:d4a49234b71f4cf88a597604e9875806f5fda465fb2eab1e19c309065361ed09
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.5 MB (107488979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4e303e60d3a034ad2b8a53a4696fdb52c9df803c42b4371affd58267637411`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:45:47 GMT
ADD file:a66dc0ceece0e281da4052a3eae5b966d83cc9d3f269ffd3ea29f2b59e4f1463 in / 
# Wed, 07 Jun 2017 17:45:48 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:ac85a12d174b5650f919587cbf7c8cc617a8db5e87676dd26c41461d31b5ec38`  
		Last Modified: Wed, 07 Jun 2017 20:10:10 GMT  
		Size: 50.9 MB (50942792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
