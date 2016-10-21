## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:aa958e624f1f251ac1a43ea2097985b48a02a63f05c367827f5ae21655992edd
```

-	Platforms:
	-	linux; amd64

### `debian:wheezy-backports` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37215358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9d878afcd5b1ad5daee396f59397990e6e7b5a4b2a343e63fa833c3eb5f623`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:26:57 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadb104c21a8fc4499a5c357a82d214ca11a949e95244a5a551e42601fd0687f`  
		Last Modified: Fri, 21 Oct 2016 16:27:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
