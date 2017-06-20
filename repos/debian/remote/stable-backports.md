## `debian:stable-backports`

```console
$ docker pull debian@sha256:edde35d71dd27d68e5fd4f4f8af6326e4833871902c5e451a83af088f0ec26ba
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45140065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:433bd8735e2db729a1fe5b22b56b64bd9697ff51eb703e3d6d953a5e4c2ea375`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:21:57 GMT
ADD file:9c9710c289d7b177f13da3d0943894105f022e565f8e0ceb140319bfdd170c15 in / 
# Tue, 20 Jun 2017 20:21:58 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:22:24 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f02c85e8286d87be9e2f8566a8453e95d1b9a36d0a145c380875fd3dea2417cb`  
		Last Modified: Tue, 20 Jun 2017 20:48:14 GMT  
		Size: 45.1 MB (45139849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c73d8d8027eeb6c971000a078a198c8d8552e75ae6980cb05fedfe3c0dfeac`  
		Last Modified: Tue, 20 Jun 2017 20:49:42 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
