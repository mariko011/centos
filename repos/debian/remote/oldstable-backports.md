## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:7608a4eadd0bae528b44b743124c6e23d2629b0deb952725392bf35b43296cff
```

-	Platforms:
	-	linux; amd64

### `debian:oldstable-backports` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38105319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db06a7ef5f910c26d8d49dec38c64907d651ce548a0903a8df2eb23cc47a2ac6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:43:47 GMT
ADD file:4735aae1a64586c2514128769d74d2a8d8efaf8b3cbfcbcc24efd5c1572c3362 in / 
# Wed, 07 Jun 2017 17:43:48 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 17:44:11 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:03e7d7e4aecb1cdd2b57d5d41908154bf0b1530e55c6e68f014e1a627ba703d3`  
		Last Modified: Wed, 07 Jun 2017 18:02:01 GMT  
		Size: 38.1 MB (38105101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77f2aaa2150d24ea971392cd3c34dc5be393afd60ed4b7dacfa0ef4ced636ab`  
		Last Modified: Wed, 07 Jun 2017 18:02:54 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
