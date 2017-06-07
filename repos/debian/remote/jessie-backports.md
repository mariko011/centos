## `debian:jessie-backports`

```console
$ docker pull debian@sha256:9df7961d699e106f6e5532afd5f77825fee2b0aeefcef3635ec4e7bb8013a3b8
```

-	Platforms:
	-	linux; amd64

### `debian:jessie-backports` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52568486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a6ea96c5617aec62717d465e7cdc5a2ee2178784db9dff8275f80afb6bcbe6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 17:42:11 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405e00049647dfac67f042d02f7a39503ab054d2d6ecd23eb2081ebc2e86c22c`  
		Last Modified: Wed, 07 Jun 2017 18:00:47 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
