## `debian:experimental`

```console
$ docker pull debian@sha256:bda5e18de18a9b890dc8f917294f955827c1bed14536a4e8d665b868e1dcffc0
```

-	Platforms:
	-	linux; amd64

### `debian:experimental` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44250876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a043bad7ee2c00df094e65e02fa351c97a4cf3be1b9db7b431e0e72b14c8c400`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:38:44 GMT
ADD file:a2c9d65ff5258e3778a86b8f667223188c3ab6dac5e1f5b380b88679e7a11246 in / 
# Mon, 27 Feb 2017 20:38:45 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:39:48 GMT
RUN awk '$1 ~ "^deb" { $3 = "experimental"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:9ae0ca2913d5ce9279ff224ff348cc5903c789bebea6badd4e4676ed1acf181c`  
		Last Modified: Mon, 27 Feb 2017 20:49:16 GMT  
		Size: 44.3 MB (44250663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c8e919ab602872e9288d178c7ca64d609d00e9467d227a84e28b9bc65599d8`  
		Last Modified: Mon, 27 Feb 2017 20:52:17 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
