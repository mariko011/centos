## `debian:stretch-backports`

```console
$ docker pull debian@sha256:4f6839c39110d2cc5dd015e05a950987357a2bb936103e9bbb7f12a08a4d17eb
```

-	Platforms:
	-	linux; amd64

### `debian:stretch-backports` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45140041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afea2a829b8d585aba7c44074baca2c6b5f42f11528b2050fba494dfec07e9bb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:24:36 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be148671aa1be8c9490697595d25c7e8ff02fe257058de0e14a30bc67a4e9a3c`  
		Last Modified: Tue, 20 Jun 2017 20:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
