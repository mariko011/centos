## `buildpack-deps:stretch-scm`

```console
$ docker pull buildpack-deps@sha256:4ac5f07eb3f86254865e22b466b05c48b3df05fcf441a299f2bf9f4acc3ccc10
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107191706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89838e3334cbb27558ed3de35b81d42e6c2ce05376cbf904411c05700d34cc4b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d9add01f107cb501fcbae0bbfbff3c879dcf5910a9066077b2cc755c98cc4c`  
		Last Modified: Wed, 21 Jun 2017 00:50:55 GMT  
		Size: 50.9 MB (50943337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
