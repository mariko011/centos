## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:874ccb38d6deec7d0b6425fb96202e66a3ba6a01165d8a5440be7780b7efb19d
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49156069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1c70a710e15544a7896ac5656e95cf22e93b5c707d67af8b8e9ef3a876c452`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:31:17 GMT
ADD file:4946b2fd6ad8f6dad8ce2007df355ffa80fbc0d560ac45600bc0305c812bc331 in / 
# Mon, 07 Nov 2016 20:31:17 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:35:55 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Tue, 08 Nov 2016 22:35:59 GMT
RUN echo 'deb http://neuro.debian.net/debian sid main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:36:00 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:36:01 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel sid main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:36:05 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:2c2697cc54a4087031e91659113de235e6bd969754303465add193727dc03fa6`  
		Last Modified: Mon, 07 Nov 2016 20:37:10 GMT  
		Size: 43.3 MB (43262401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a385648b3520025a9bb60d6a18b473628fd034b9fb78fe160b176bbce393644`  
		Last Modified: Tue, 08 Nov 2016 22:36:27 GMT  
		Size: 5.9 MB (5889900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cf0c0bb1d5f9322e60651349c382fe1859e31682398601e0a897b2dc5156d9`  
		Last Modified: Tue, 08 Nov 2016 22:36:27 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b5f8be0176c0cc9babfc56afe3c38f68644fc32e28203c3cbefe5d7e418504`  
		Last Modified: Tue, 08 Nov 2016 22:36:26 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6cae4cfd8b0603aedeec13fc8f92b2e3f17d4769efa55522d9af814aee4450`  
		Last Modified: Tue, 08 Nov 2016 22:36:26 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddecd010024cb6cada9294701dfa2a126d40e0d55a4374d4eee507bd587b217a`  
		Last Modified: Tue, 08 Nov 2016 22:36:25 GMT  
		Size: 3.1 KB (3104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
