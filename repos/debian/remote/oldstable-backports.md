## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:1a70a71fe37695e579066c8b70ef7f1d50a0a5236d8564e3052b84fa4310c3da
```

-	Platforms:
	-	linux; amd64

### `debian:oldstable-backports` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37272165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6811e51e6eb60bbb2d1deb6243a01ab1eae4dae61b9607c2c27c548002875d71`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:30:09 GMT
ADD file:6298f3fb9691593e4ca324f68e9abbea8b5f06a791cb59e8825cc957247201bf in / 
# Tue, 21 Mar 2017 18:30:10 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:30:47 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ec07b6ab510f122383e43c9360a7b101dabee4a92bb7d1f5ef3015a353d6af2a`  
		Last Modified: Tue, 21 Mar 2017 18:42:16 GMT  
		Size: 37.3 MB (37271946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5fb747d11e63bffc93b6a9a17c40c270f05c88bd4d083d47812ab8081966b1`  
		Last Modified: Tue, 21 Mar 2017 18:43:26 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
