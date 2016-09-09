## `debian:jessie-backports`

```console
$ docker pull debian@sha256:5aec71184531ac04ac9eff7db7877f43874ea998d89a6eb0a736746b163b3cc4
```

-	Platforms:
	-	linux; amd64

### `debian:jessie-backports` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51367488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75bc26d8ae1b93aaa487038343ca4ae48ad0ed89386c2af2b2c6f0b8dc3aa2e8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:00:53 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155a5eea8c2415a63cd38cc2b2d5498c1adf54b5e8a5bdcd04458bfe4a87c894`  
		Last Modified: Tue, 30 Aug 2016 21:02:32 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
