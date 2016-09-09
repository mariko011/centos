## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:d4ed94c9ef6a3b0276c7a629079ebc67e3483768713d28cbb5793e8f17760931
```

-	Platforms:
	-	linux; amd64

### `debian:oldstable-backports` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37215354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228101db4ba677b64a3bf0e1b7fdcff05d158fd305b9e9f33440b44eab5e6833`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:58 GMT
ADD file:a7b326efe7f07dbfb923302e5839eaf2687fe07d26f0e4c6459f0af691269267 in / 
# Tue, 30 Aug 2016 21:00:58 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:00:59 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f405e6692c1480ac79fb41032bcbf5ffe298193c4df53df0224d5cbb6b28cb90`  
		Last Modified: Tue, 30 Aug 2016 21:02:54 GMT  
		Size: 37.2 MB (37215133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf8d575e8e2354c3b0352233102b63641ccc7e898c550108949bfbcd6f04e4`  
		Last Modified: Tue, 30 Aug 2016 21:03:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
