## `debian:stable-backports`

```console
$ docker pull debian@sha256:858bce7803e20ed37e4eec54ef7887ca83b7404bddfa46b5958f18b2b6dc33f7
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51357979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ddcaa64325055210050f97a65dd711769be49cde5c6f8f5b15f8f9d9b9630f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:31:42 GMT
ADD file:4e5a9224b9ee783bdcfa9f32f1f90b8d892d7361b8d4dfbb3c4f3467cd167595 in / 
# Mon, 07 Nov 2016 20:31:42 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 20:31:56 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e173942a851194415cdbde3dd398f710b15e891ac31473042e3305f8bcb22c6b`  
		Last Modified: Mon, 07 Nov 2016 20:38:12 GMT  
		Size: 51.4 MB (51357763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa7c83b6f88783afb9a7677fcc81df049dab9e7f4740b7007ccbd0808d4c578`  
		Last Modified: Mon, 07 Nov 2016 20:39:13 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
