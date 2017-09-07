## `debian:experimental-20170907`

```console
$ docker pull debian@sha256:57dd5b345322d64daf64a3d39fa02f4b0008e114414ac07cd708b6e1368dfc78
```

-	Platforms:
	-	linux; amd64

### `debian:experimental-20170907` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47754071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51b982c056d18f0a36ace011b8a1daa634489e7fb395635717fcb52eb4a8549c`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:28 GMT
ADD file:d0270982773408f1cdf0c8b01e5018e290d9610439ed9c7850263b89ab19b137 in / 
# Thu, 07 Sep 2017 23:08:28 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:09:21 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:decbfd438e8ee9760428fd8b690b778724082111bd0992789a970cf6855da1cc`  
		Last Modified: Thu, 07 Sep 2017 23:10:36 GMT  
		Size: 47.8 MB (47753857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d62e2abf6f32b02bcdd95713b824a0295ae814798292ca9af41438dac6141c4`  
		Last Modified: Thu, 07 Sep 2017 23:10:29 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
