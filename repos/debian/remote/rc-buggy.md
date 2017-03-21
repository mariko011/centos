## `debian:rc-buggy`

```console
$ docker pull debian@sha256:913c8c1da94e7d9d7fe21a45b4677770ecbb59087556e98fae5c45959f008351
```

-	Platforms:
	-	linux; amd64

### `debian:rc-buggy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44268782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618ae3314e46e0100a29b79391c489931058c68be15157d6bb5bb7dfe1e1dd80`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:31:29 GMT
ADD file:c8a621347a67ba4a8bb70860663bb66e3d9e758ad2d8e53eabce6274b5a6c77b in / 
# Tue, 21 Mar 2017 18:31:30 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:37:16 GMT
RUN awk '$1 ~ "^deb" { $3 = "rc-buggy"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:0d62cc759168569be1547237908d9f01ae76df507f508033feaed6291c60a06e`  
		Last Modified: Tue, 21 Mar 2017 18:44:16 GMT  
		Size: 44.3 MB (44268563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142169badb9e1fa43e70d53be7cda19fb23634c77509d1b173e181c281b39062`  
		Last Modified: Tue, 21 Mar 2017 18:54:56 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
