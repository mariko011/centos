## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:e53660cbdaf7ac95646e59fd50fd305b1e38dba6afce7353b9e3fa8b0a41faf8
```

-	Platforms:
	-	linux; amd64

### `debian:oldstable-backports` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37215474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e9752b2ef94dbe5c55e0611c04b2b145bcc3b37d56975a9e0b6a05e4711cd3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:24:06 GMT
ADD file:cf469eea38c12856948191a24e3378840d8296b1f888391495a22a87c0ce4b72 in / 
# Fri, 21 Oct 2016 16:24:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:24:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:827b6e3ea0092e4fd1f52c39d8ca9f72c8902435abf043255ce75dce1a9667a3`  
		Last Modified: Fri, 21 Oct 2016 16:24:26 GMT  
		Size: 37.2 MB (37215257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ef8cd6320dbc2c5c9d44ffc8571c36c047af189548d973d560088d0182d1e6`  
		Last Modified: Fri, 21 Oct 2016 16:24:46 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
