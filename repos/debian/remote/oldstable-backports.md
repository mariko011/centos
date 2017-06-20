## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:3ddfb24761d16cb8d927d05a6ff0645fa19beeb05dc77ec64ed3f9dbc35fd2ab
```

-	Platforms:
	-	linux; amd64

### `debian:oldstable-backports` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52615023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2ec8b7dbb455eba362316113b9570d81f102e4383c970f298c27104f775d74`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:17:58 GMT
ADD file:07f20a598b2a818da38d85b1938bac1c66053cbdb33001e1bfce04f40af43079 in / 
# Tue, 20 Jun 2017 20:17:59 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:18:24 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7ec1d87ae5e4f2a1d7cb80ccaa7274920857f4dd38ecfa2a7290694ad74605ca`  
		Last Modified: Tue, 20 Jun 2017 20:41:16 GMT  
		Size: 52.6 MB (52614805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9368daf0ac68d54be0d5608e83ca42cb81962034538d5c38ced070c6f06be582`  
		Last Modified: Tue, 20 Jun 2017 20:42:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
