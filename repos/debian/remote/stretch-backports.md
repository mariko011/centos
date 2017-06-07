## `debian:stretch-backports`

```console
$ docker pull debian@sha256:ded4539b4e6f6fc95ab5308a7cece09427b0377af9fadefdc360c8d73213a735
```

-	Platforms:
	-	linux; amd64

### `debian:stretch-backports` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45127963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3420837854a462ca49ed8a96c21e64fa4a3734edbab38ea71cd55faecee8f3b5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:49:26 GMT
ADD file:212fe5c6a3f3d10b0f5fc59f2019d5a12f266ff74b289f3ccc87bb878b01a437 in / 
# Wed, 07 Jun 2017 17:49:27 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 17:49:51 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:31a23e80b5c0100547b74b78634277f56239d4207fa7ea4f0540148525dbff03`  
		Last Modified: Wed, 07 Jun 2017 18:09:21 GMT  
		Size: 45.1 MB (45127747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587874e279bc21d9d954ce230ff0a2447d2970e57233bc0d90d24fe537568952`  
		Last Modified: Wed, 07 Jun 2017 18:10:14 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
