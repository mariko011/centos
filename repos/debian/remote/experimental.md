## `debian:experimental`

```console
$ docker pull debian@sha256:b2db6f356cd3a661c65561551f62ef7c0f4e572a72ecaa963b185a9c19281620
```

-	Platforms:
	-	linux; amd64

### `debian:experimental` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43149949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda107e3e1854c709310712990d2c0ecb87adbd81e20e8a973790c10dd91d88a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:49 GMT
ADD file:286a04aac900adf29f3e767caa4bb36905f49550fbc227060ff35a167bc4ef68 in / 
# Fri, 23 Sep 2016 18:09:49 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:09:56 GMT
RUN awk '$1 ~ "^deb" { $3 = "experimental"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:413a42177b7d9644688ecdc18b7e2d49257dc2c6de964c99fc2a8e39c7f683d8`  
		Last Modified: Fri, 23 Sep 2016 18:14:05 GMT  
		Size: 43.1 MB (43149731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf792c378c2e0ac870f2de994dc931ede9ad21c9a424ac1e288c64a12af283d`  
		Last Modified: Fri, 23 Sep 2016 18:15:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
