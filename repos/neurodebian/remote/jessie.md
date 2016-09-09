## `neurodebian:jessie`

```console
$ docker pull neurodebian@sha256:5f544c2bcd18a902c69437945ec08911c1e36bf3ab221efd72fd5cd6058fdbc6
```

-	Platforms:
	-	linux; amd64

### `neurodebian:jessie` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51369450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b33f314ebb91b12a003012b64e78bb7311b071ca23c78530e70bdd143e5d0044`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 22:00:34 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 26 Aug 2016 22:00:37 GMT
RUN echo 'deb http://neuro.debian.net/debian jessie main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:00:39 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:00:41 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel jessie main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:01:00 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cbd5bbf6674522d85b12cb8a4c4c03d2ee07e0ecf522180bb0cd1ef6f5e6c6a`  
		Last Modified: Fri, 26 Aug 2016 22:04:43 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57bf915b3be9553fff672183e6464a4115fd92f881b8e84acfbce3c62b50bbf`  
		Last Modified: Fri, 26 Aug 2016 22:04:43 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa805de2654103116cc10a6fb27529d97d7428c073e89d627faf380b0ac61a7`  
		Last Modified: Fri, 26 Aug 2016 22:04:42 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a13ff803176cc663d970c04f81a70ba9efd3b569616d298e9cd9c709fb98c8`  
		Last Modified: Fri, 26 Aug 2016 22:04:42 GMT  
		Size: 3.2 KB (3167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
