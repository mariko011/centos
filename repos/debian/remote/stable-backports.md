## `debian:stable-backports`

```console
$ docker pull debian@sha256:5b1b4ad1d82e5475f9752c447a097788c3f12d0b96e52cf0d187ccbabaed16e3
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45125680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9af363e2668b680616d084a6082f549e0dd7d5e4c14310615c21452cf480de0b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:52 GMT
ADD file:4a5eacc45062c4bc339a20c8517d6c999d31123e7ea1c2d63cfc4530735b1695 in / 
# Thu, 07 Sep 2017 23:06:52 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:06:58 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:05517c67421e17b1e09684629a620d6f2a3b66efca6213cd6a89ce306a1b9157`  
		Last Modified: Thu, 07 Sep 2017 23:15:37 GMT  
		Size: 45.1 MB (45125464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83785f78b07c7c115ff2b1907bb106b74482b3a5aae60f817389823f67351bef`  
		Last Modified: Thu, 07 Sep 2017 23:19:52 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
