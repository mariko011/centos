## `buildpack-deps:stretch-scm`

```console
$ docker pull buildpack-deps@sha256:8c7f3038e7b5885f4925055193a8a3f6c0dd3f49dc8300392a8fd44e46836ac2
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-scm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115229773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d8647b46453bf19367f902ecce46ca09a2b443de930d654de08668ec7ff3ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:13:38 GMT
ADD file:b8661e5bd7179ac7b23f0013637df93301390246609d446f45217ead261c33bf in / 
# Tue, 13 Dec 2016 22:13:43 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:01:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ca67a6a92c6d53b4eea40b8e1f63130784c8751379ffdc08b680768c57e510bc`  
		Last Modified: Tue, 13 Dec 2016 22:23:25 GMT  
		Size: 43.7 MB (43673589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50a9ffe9d75cfda065f757fa9081dbf0712e0713f4e61b82e1f9ef1e832cf23`  
		Last Modified: Thu, 15 Dec 2016 19:38:38 GMT  
		Size: 20.9 MB (20861095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df867bf106bd575d903c4270040d250a16b3b9597ba19434ab5f01e1d778849`  
		Last Modified: Thu, 15 Dec 2016 19:39:20 GMT  
		Size: 50.7 MB (50695089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
