## `debian:experimental`

```console
$ docker pull debian@sha256:25ece2b7961dbe60ee0d5d2079b5a079d7117b1e1dfe741891612c14a2880f68
```

-	Platforms:
	-	linux; amd64

### `debian:experimental` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43262056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdc114a876dfd2acc3a3db806acb62dcf75432f2b90e93990a3aa661ddc804a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:32:59 GMT
ADD file:724584a6e3c142aa7adda3e1480b943991c78f5e59407d22d41d1801347552a9 in / 
# Mon, 07 Nov 2016 20:32:59 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 20:33:39 GMT
RUN awk '$1 ~ "^deb" { $3 = "experimental"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:22469bf6f70c49875464fd45e55d85ffe91f148e7a76caef36a493ec0cb31263`  
		Last Modified: Mon, 07 Nov 2016 20:41:43 GMT  
		Size: 43.3 MB (43261842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf0751a298fe60b97bc352a850e75d9a01c143608bb6f1571c2304a5fbb4c41`  
		Last Modified: Mon, 07 Nov 2016 20:44:29 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
