## `buildpack-deps:stretch-scm`

```console
$ docker pull buildpack-deps@sha256:99ad25220a3902ae6bf8f27b45a21a960883bc8431315b36ea5e26092bf22b6e
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-scm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110897054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4208e9e109c9cac7f725fd557a1d8c5505ad9c5d6a56ce2dd0c48c06bce1e727`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:19 GMT
ADD file:f4dd1b1b9cc583c29a7f62931be96757f4923749694c91b6fd1fee351b2fb11d in / 
# Tue, 30 Aug 2016 21:01:19 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:55:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e00445ae9689f633454e9b0ce6d52e6faffbe7b4f818cc662898864aa663bd96`  
		Last Modified: Tue, 30 Aug 2016 21:04:30 GMT  
		Size: 42.3 MB (42346419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd32f2e8f57fee022056f95a32d7018acaab95964b296d3adc1a0f6b14936b`  
		Last Modified: Tue, 30 Aug 2016 22:03:39 GMT  
		Size: 20.5 MB (20539923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d9d2d1397550707934b95871a84ecd09748029066a5e8442bb62ad106a54f2`  
		Last Modified: Tue, 30 Aug 2016 22:03:53 GMT  
		Size: 48.0 MB (48010712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
