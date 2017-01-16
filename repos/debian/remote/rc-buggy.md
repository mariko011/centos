## `debian:rc-buggy`

```console
$ docker pull debian@sha256:f32905c66ca9434dff388f223f6d8eed2ae27b37556659725f8a74a158e8b5b0
```

-	Platforms:
	-	linux; amd64

### `debian:rc-buggy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43955312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0187adfe542000a0667f6abadb6828d913195a41e3af02ee0688fc59299edf2d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:37:19 GMT
ADD file:9d5e2a376a3a1005ec449a01b6afb4a2f264284d88861474541467b835a7edfc in / 
# Mon, 16 Jan 2017 20:37:27 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:42:40 GMT
RUN awk '$1 ~ "^deb" { $3 = "rc-buggy"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f6add9a5d611457943cd08d9e4e8160a51728a916702da8ece8704c13f50a720`  
		Last Modified: Mon, 16 Jan 2017 20:47:37 GMT  
		Size: 44.0 MB (43955096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a7d13517075af573575a0e070959e0d0d5f4d892b0b55dde5380395808609f`  
		Last Modified: Mon, 16 Jan 2017 20:58:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
