## `clearlinux:latest`

```console
$ docker pull clearlinux@sha256:94ac34c75a3d9edb130e7480389ac75a1458cd4c59d66971d08e3a16a6b5aa0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clearlinux:latest` - linux; amd64

```console
$ docker pull clearlinux@sha256:b8beb50cd7b8c41d16fac71d25f40d7eb495a44b9dccff5afe9d1284e5eeabc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26837900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f4b894bb780c0dd50910ecfb783718d37e42377f391ae16f6c85f147fb7c73`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:33:17 GMT
MAINTAINER William Douglas <william.douglas@intel.com>
# Wed, 18 Oct 2017 23:20:06 GMT
ADD file:773e936a8662922615ab016d5046700f50c91b10fa5815bd43a58e83940faac5 in / 
# Fri, 20 Oct 2017 20:18:28 GMT
RUN clrtrust generate
# Fri, 20 Oct 2017 20:18:29 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4725589eb95e8eafa54be53fdf7e3d960f81cc49ef5670a90baa93a988d707a7`  
		Last Modified: Wed, 18 Oct 2017 23:20:21 GMT  
		Size: 26.4 MB (26387206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c216aa6532e49afe1229292efce2471d7054f1b8d072de5d46f83fb4b0dcbe2`  
		Last Modified: Fri, 20 Oct 2017 20:18:39 GMT  
		Size: 450.7 KB (450694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
