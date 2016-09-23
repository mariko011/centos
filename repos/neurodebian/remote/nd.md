## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:04f474e7f840aa3dd22850f3c5df78609db7760b4668ff29a41e7e09c65ec239
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (48972434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f692edd2a9ae789e311e7a0a1c9012ae8ddaca2565fdc21ab43e19424d9f2ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:05 GMT
ADD file:38fc3f9aecc8de28ee67c48e4f26a9dd74b238023b7f92c19da2f642b9d0fc14 in / 
# Fri, 23 Sep 2016 18:09:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:49:42 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 23 Sep 2016 20:49:43 GMT
RUN echo 'deb http://neuro.debian.net/debian sid main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:43 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:44 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel sid main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:48 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:8d7c8b969090899eedb896dfcdfc11e08596be2a94b1ae77609086ede354ab53`  
		Last Modified: Fri, 23 Sep 2016 18:11:54 GMT  
		Size: 43.1 MB (43149672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be51a2ce539ed6e162963358273e445361a39522fcb1500bf1bd94ce38142130`  
		Last Modified: Fri, 23 Sep 2016 20:49:56 GMT  
		Size: 5.8 MB (5818993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a90c9759705d032197a920971807107255d9db3e281baf45e508922bc16eb`  
		Last Modified: Fri, 23 Sep 2016 20:49:55 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2282d1d12acf21e84f067555b24f5f6e7d0b94805a8e3493ff51c751a4da93f1`  
		Last Modified: Fri, 23 Sep 2016 20:49:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6febf55fcd65c7af430b108e3b8484a95a528fce01d2d7839c60cac55ff086c9`  
		Last Modified: Fri, 23 Sep 2016 20:49:55 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3077bd4066c7d5e395a773c7f8a0d4206fcdf1a751a734624e0081817327bfa9`  
		Last Modified: Fri, 23 Sep 2016 20:49:55 GMT  
		Size: 3.1 KB (3105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
