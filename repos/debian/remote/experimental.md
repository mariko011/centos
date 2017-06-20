## `debian:experimental`

```console
$ docker pull debian@sha256:c058fd7332876d1a51c076e2772a41c6e39c5e6ce6ef01c325cf6a898b27240d
```

-	Platforms:
	-	linux; amd64

### `debian:experimental` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45199049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60edba8597148d0112bd5e3b24a6c8507f4dfd1812d1c31c614e853bee10a0f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:28:09 GMT
ADD file:f0d001a590c8bb88d3464ecd948c055f1662411161988776379be212c5f93581 in / 
# Tue, 20 Jun 2017 20:28:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:31:41 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:648183d4464f86a83a3919de5e4016609a3882a0ac6f69fe10915f5df6d41ae5`  
		Last Modified: Tue, 20 Jun 2017 20:34:37 GMT  
		Size: 45.2 MB (45198836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceef396c0eeb919f3a68f12a4d02ac872b02357422b5faed32c963a38c2c8ef7`  
		Last Modified: Tue, 20 Jun 2017 20:34:30 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
