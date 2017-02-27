## `debian:jessie-backports`

```console
$ docker pull debian@sha256:5965fadcd268683aff1dd5556e4637a6be3174092c7f3cccff9b3325a2fa878a
```

-	Platforms:
	-	linux; amd64

### `debian:jessie-backports` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51363590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f287d371994165e4a8c835533c9dc44e18743a84d9bd1c8acbcaa00f773078`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
