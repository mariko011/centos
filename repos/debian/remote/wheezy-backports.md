## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:2bde5432f169a679ee38e69730eed0563c0bb502146d6c5e52fe064ba55a827a
```

-	Platforms:
	-	linux; amd64

### `debian:wheezy-backports` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37284366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766d3c1067231e9c4ce29a906dfde1e2ab3186ef953c23fa0e1ed5e5e1ab679d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:16:01 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022dd987a747f5107266ec087ee03ac6d4c0e5f2ac0180dbf799f0d31641e681`  
		Last Modified: Tue, 13 Dec 2016 22:28:12 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
