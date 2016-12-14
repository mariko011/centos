## `debian:jessie-backports`

```console
$ docker pull debian@sha256:bc322c6ef32577d9b31ff26d51addffe5be04ade2f4be1bb7218347a0ad1fadf
```

-	Platforms:
	-	linux; amd64

### `debian:jessie-backports` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51363341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b9e7b6444fe2bed742cec87fa830d5b447a7f874148cf2be2071a16dd13bc0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:11:18 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bee5e776fd6b58543055615dcd4ebd1d390cba2b2c8c51b1ab159de44c406`  
		Last Modified: Tue, 13 Dec 2016 22:18:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
