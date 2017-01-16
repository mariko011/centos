## `debian:stable-backports`

```console
$ docker pull debian@sha256:0005ae6fdbccb29821d5d8a3b0cb3ecf3452ca77ad193470a85b14152a31d7e4
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51362637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18fc7c2a74319002f5b3087f420925b9d56e61150e1b93c16a40ebd3aac034e0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:38:12 GMT
ADD file:49dcbceb95bd77d88dd935e3917908553cc3e5097ad79bcb8efba647a812adb6 in / 
# Mon, 16 Jan 2017 20:38:19 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:38:47 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:38e0dd992b37f141cb77cd465f9a885cd6967c73e9a3ec86481a1198677a4e53`  
		Last Modified: Mon, 16 Jan 2017 20:48:45 GMT  
		Size: 51.4 MB (51362420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d8d3e257c86378baf5b9973a133af9609ff48acb1b463b0d788a30f53450eb`  
		Last Modified: Mon, 16 Jan 2017 20:49:37 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
