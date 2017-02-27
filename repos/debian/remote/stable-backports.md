## `debian:stable-backports`

```console
$ docker pull debian@sha256:e08a4a0dd834d98386a2d81a17397c7b9e1bbb2ab3587fabf036c13bdf54606a
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51364417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56363bc3ede7d16c6c253710b94b00c78d60b185f328bfe3a857f5093c27fd75`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:36:41 GMT
ADD file:2686a37eda0e81e3d171a7fd9d289943dff33853c1fab8151dfc281a34c0876f in / 
# Mon, 27 Feb 2017 20:36:42 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:37:05 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:915665fee719519aa2d2da0013dc2184dacc08ec1e5a6580b714bc20b43057cc`  
		Last Modified: Mon, 27 Feb 2017 20:45:22 GMT  
		Size: 51.4 MB (51364202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a859d4e863d0ad3fc3d43178692fc0b0c2189c045a70b3df089357f09cf9206`  
		Last Modified: Mon, 27 Feb 2017 20:46:13 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
