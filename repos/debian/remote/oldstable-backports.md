## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:f74438c79a54c093ecffdbb75fe93f7372958480f5e99e1d28a86b39eb138a08
```

-	Platforms:
	-	linux; amd64

### `debian:oldstable-backports` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37284637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764e4c03e12e9700bdb895a8ef06a9ec538018cdc9fe9e3eab49b5ba54829281`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:11:36 GMT
ADD file:604f803d557d9d84f1d5c52e8597a089b47f8cb5c12d21d1dce3dbccb0d2e4f2 in / 
# Tue, 13 Dec 2016 22:11:36 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:12:03 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5dbb800bcadebe047db2347ad16d6167a8b94d1d3b673b87a0476d9b1af6977a`  
		Last Modified: Tue, 13 Dec 2016 22:19:01 GMT  
		Size: 37.3 MB (37284420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383260373713ea0a800a1179866a31461e1c989310e0d06b91bd9359cc76bce9`  
		Last Modified: Tue, 13 Dec 2016 22:19:52 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
