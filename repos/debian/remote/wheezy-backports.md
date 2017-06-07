## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:2fd9e2251604821bc8d35380b146f6446fa06f94c5899c51c16e57cb1d029159
```

-	Platforms:
	-	linux; amd64

### `debian:wheezy-backports` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38105305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1151287ade0f6d2070855b58770b6e57e12ef88d1512a2cad380868f79505fdf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 17:55:28 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc8a0c4f28ec080930cd07e241c0e7cba67cd7776b1c4a8cdbb8bb0598d39b9`  
		Last Modified: Wed, 07 Jun 2017 18:18:02 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
