## `buildpack-deps:wheezy-scm`

```console
$ docker pull buildpack-deps@sha256:ae08abb450a61cc0d2363c8e9a287ab80680e84698283fe0e2cd558fe9999a07
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82989828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a528f6a67972ec5d73ddce427a7fe19263412305f02e62e806bbd15cb2931c5d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 23:05:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:06:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0be653e0fcc6c891b4087051f57520a0842eb3dc1851303e3033a19b826c96`  
		Last Modified: Wed, 21 Jun 2017 01:04:25 GMT  
		Size: 6.9 MB (6948769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa838faeb7f25579c1ddf0f6d835598d148c6835aab540efa901d140b9e4b39`  
		Last Modified: Wed, 21 Jun 2017 01:05:10 GMT  
		Size: 37.9 MB (37937419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
