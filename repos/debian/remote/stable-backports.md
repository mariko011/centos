## `debian:stable-backports`

```console
$ docker pull debian@sha256:9b8a1032f0aac72439bfd8b685eade76454b456f74efcefc498308091d6b0157
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51439396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d94160ecee1c39033dc9fe574697b26e43b1aa416af7a1751f2d4e22a90200`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:32:32 GMT
ADD file:220b9488c96728c5881b365e968968271c6e5e34e00b8c19f3097238e92fc870 in / 
# Tue, 21 Mar 2017 18:32:44 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:22 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d372dc7ace90b531332e1c03401406474bde33de2ec3fef6d1a7dc3b3749862c`  
		Last Modified: Tue, 21 Mar 2017 18:45:50 GMT  
		Size: 51.4 MB (51439181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391fbb901bbc72dab132554678bed1a02dc6d6e6ee5ce7042fb49b3957eee831`  
		Last Modified: Tue, 21 Mar 2017 18:47:14 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
