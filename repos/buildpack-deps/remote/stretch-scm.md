## `buildpack-deps:stretch-scm`

```console
$ docker pull buildpack-deps@sha256:3c282772e2592326beaec42b232a28da3ac1de8ef5645455e2dba786ef442b6d
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-scm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111241626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2b3b8e34b966751a0450d380c8fa9fba1ce7421de8643b79b091b469ab5a0af`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:28 GMT
ADD file:7ce6519c11433fef38ac7510dc2d21c40998ab6534cdea84a05c7901b03312b0 in / 
# Fri, 23 Sep 2016 18:09:29 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:28:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:29:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1c8605a31c0121c5be301d0e0941e101cf3a2e97d241a5c63665eb1e5f45a8cf`  
		Last Modified: Fri, 23 Sep 2016 18:13:08 GMT  
		Size: 42.6 MB (42646885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af59809f2854e8085776c10c91fc9a59efed0ceb5cb6fba3aeca46e952f35ec`  
		Last Modified: Fri, 23 Sep 2016 18:28:48 GMT  
		Size: 20.6 MB (20554227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6953593df1ea26e66f3e24a2a63810f34ff17bb438aabe12a228b7c891703bfc`  
		Last Modified: Fri, 23 Sep 2016 18:29:38 GMT  
		Size: 48.0 MB (48040514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
