## `clearlinux:base`

```console
$ docker pull clearlinux@sha256:84ca8f06c4d39c51be0f67f6a0672069bbd0d756b89e7d749f040fa318b9c49d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clearlinux:base` - linux; amd64

```console
$ docker pull clearlinux@sha256:2de8b0720eda3ee646999d75b0ff7dd413deb0a5f4cb4c7bc563de7a6eda1efc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26838191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32685d114002f6014b2fddda1379c447f58f9566406eb5a82f7b87fce7fa1ae7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 03 Nov 2017 22:51:09 GMT
MAINTAINER William Douglas <william.douglas@intel.com>
# Fri, 03 Nov 2017 22:51:11 GMT
ADD file:773e936a8662922615ab016d5046700f50c91b10fa5815bd43a58e83940faac5 in / 
# Fri, 03 Nov 2017 22:51:13 GMT
RUN clrtrust generate
# Fri, 03 Nov 2017 22:51:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4725589eb95e8eafa54be53fdf7e3d960f81cc49ef5670a90baa93a988d707a7`  
		Last Modified: Wed, 18 Oct 2017 23:20:21 GMT  
		Size: 26.4 MB (26387206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc3aaa4d240ab365c89b931b1f9c9f3338a01c1ebf7bf57f30d7b4c860bcbab`  
		Last Modified: Fri, 03 Nov 2017 22:51:19 GMT  
		Size: 451.0 KB (450985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
