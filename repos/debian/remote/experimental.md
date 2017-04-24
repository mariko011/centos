## `debian:experimental`

```console
$ docker pull debian@sha256:45a0f952468cac1fe084214ca5140f8796c75fa643a31fafa0bd4655e579e072
```

-	Platforms:
	-	linux; amd64

### `debian:experimental` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45249615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47cc648c331e6f5dbf14aa9512eac00dc9042a650dcbc4e1053f756e5654aa8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:28:51 GMT
ADD file:ad0b65b930f612742a1284b75f19fd93f08c8506c75ea0658906cc81e5b1ba3f in / 
# Mon, 24 Apr 2017 19:28:52 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:31:31 GMT
RUN awk '$1 ~ "^deb" { $3 = "experimental"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:0dc7e76d3c0bb577ad23ee68280acffbd30b4af0772ccf75c3a64cca9cfffbd4`  
		Last Modified: Mon, 24 Apr 2017 19:40:39 GMT  
		Size: 45.2 MB (45249402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a53d8666567530560af59ebe53f1fc62a2c451c64d8d22bc278517a5c62ca3`  
		Last Modified: Mon, 24 Apr 2017 19:44:08 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
