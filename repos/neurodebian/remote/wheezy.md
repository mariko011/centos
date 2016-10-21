## `neurodebian:wheezy`

```console
$ docker pull neurodebian@sha256:36d2718c291ce0c17af09def12b944d0f039a9e9ad87ecff70900d1892c0c787
```

-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37247950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59e497a9510633e2efb2f931e7a665c63e1034a4d04e748d082800fdcffad748`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 22:30:35 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 21 Oct 2016 22:30:36 GMT
RUN echo 'deb http://neuro.debian.net/debian wheezy main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 21 Oct 2016 22:30:37 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 21 Oct 2016 22:30:38 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel wheezy main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 21 Oct 2016 22:30:39 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d650e95304fe53685ff8453cae238d9f8ed6309b2e005413641995ca9c8d9319`  
		Last Modified: Fri, 21 Oct 2016 22:30:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3d783484f3f5507c65f53db2329d56f5588a89836f4d6456a9ad2878ff9ae1`  
		Last Modified: Fri, 21 Oct 2016 22:30:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155ac87606e94bdadcfa35dae29ca4aacb363cb75cef1ddf2c5a6ffb5f4eb3eb`  
		Last Modified: Fri, 21 Oct 2016 22:30:51 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83d4f95735c09cedea4881c0afa972dbcf48e8301ec5d4c48866fd2d8fc21a4`  
		Last Modified: Fri, 21 Oct 2016 22:30:48 GMT  
		Size: 32.1 KB (32135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
