## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:4abdec871d16e395f0135797566b9205f0395c9a02461daa7c5e1806994b6661
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:buster-curl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60821987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9156e393b3d37c76582f283d48700d80d16634ebf5eb56cb362d6264ec2ac66f`
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
