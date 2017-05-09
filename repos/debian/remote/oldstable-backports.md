## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:2fbd60e09e5ff5ca0ec0a1e0df7747e3c2ebe109eb905da1d25173a5b36cafbf
```

-	Platforms:
	-	linux; amd64

### `debian:oldstable-backports` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38117056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e15cb4dc95d9bc91ba93f6e9c8cd6b09803bf72dc67cb77ae55c3a7613a43f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:30:19 GMT
ADD file:548f71df8e50c14bca424e00f85cd478906bb64919f3b7888720e77005fa800b in / 
# Mon, 08 May 2017 23:30:20 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:31:23 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8a41ad1d5afe929953675413936484fdf9685a3de11f825bcebbfa03252e2547`  
		Last Modified: Mon, 08 May 2017 23:46:59 GMT  
		Size: 38.1 MB (38116838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6b1be11db1000aad8fa5b631e4c991845d22c155036714a8911422f28225a1`  
		Last Modified: Mon, 08 May 2017 23:48:03 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
