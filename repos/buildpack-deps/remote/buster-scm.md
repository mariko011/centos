## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:992cc5ed36bee9e309b4ded0b19feab3ccb94ce3898711fd034f667654adcf6a
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:buster-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114163359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743f0608d0f40b89bedfa6ceab76d25c0e26e15a66c62e9b7da4eaa21be7070e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:11:40 GMT
ADD file:dcc206f29a20c5126bd3af150ab0452c5b90961d19c653964091a0e9240447cf in / 
# Tue, 20 Jun 2017 20:11:41 GMT
CMD ["bash"]
# Thu, 13 Jul 2017 19:57:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 19:57:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jul 2017 19:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a257a6c28b7cff742a16c8a6f10fca67d04c2f1f008642ad4d63083eea8707b3`  
		Last Modified: Tue, 20 Jun 2017 20:32:55 GMT  
		Size: 45.1 MB (45131285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b333bad1459cd9bec18029c30b7b0f0df824dbcc3cce478e46acc846aead1ed`  
		Last Modified: Thu, 13 Jul 2017 20:01:29 GMT  
		Size: 11.3 MB (11267683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7998b9f65bebbf5e3ce7fa7eba3575bf834391e6c01c6ed7f499979994ba923c`  
		Last Modified: Thu, 13 Jul 2017 20:01:27 GMT  
		Size: 4.4 MB (4423019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e597409d237f6af80e5ad7352ea523e9957bf811e1831a1dc0349fc8760c93b9`  
		Last Modified: Thu, 13 Jul 2017 20:01:51 GMT  
		Size: 53.3 MB (53341372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
