## `debian:testing-backports`

```console
$ docker pull debian@sha256:aa74a4032aaa38797cdd8f73168b33b1e46823a794e52610490193ae486231f2
```

-	Platforms:
	-	linux; amd64

### `debian:testing-backports` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45127940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d69862217eb09c25a20ab4920a15af4f0a18c150beee1d93694f8f7f01987b8c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:51:26 GMT
ADD file:e45915dc75b34d84c15cf2b3bd0d50fe35e35fb43cd5b09226b861282df8539c in / 
# Wed, 07 Jun 2017 17:51:27 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 17:51:51 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1cddb87b7c733738837c74c2c86967f99b229c6f882ec76b4a946faf3500fb48`  
		Last Modified: Wed, 07 Jun 2017 18:11:46 GMT  
		Size: 45.1 MB (45127725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8def12faf5db00cf9a0bd8c7cf2a49a36b5adde7f443b4b730327b28bf2f4b`  
		Last Modified: Wed, 07 Jun 2017 18:12:58 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
