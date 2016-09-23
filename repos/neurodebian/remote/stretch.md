## `neurodebian:stretch`

```console
$ docker pull neurodebian@sha256:8eddac390e6696a4e6795963e52d3c33e911833ad828cbc1125a3d7c61ceee10
```

-	Platforms:
	-	linux; amd64

### `neurodebian:stretch` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48062309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f4bd63ddf33b3e3f257e769018c8eb6c6f632c51a2c09f9e6d5cee0b795a57d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:28 GMT
ADD file:7ce6519c11433fef38ac7510dc2d21c40998ab6534cdea84a05c7901b03312b0 in / 
# Fri, 23 Sep 2016 18:09:29 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:50:44 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 23 Sep 2016 20:50:45 GMT
RUN echo 'deb http://neuro.debian.net/debian stretch main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:50:46 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:50:46 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel stretch main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:50:48 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:1c8605a31c0121c5be301d0e0941e101cf3a2e97d241a5c63665eb1e5f45a8cf`  
		Last Modified: Fri, 23 Sep 2016 18:13:08 GMT  
		Size: 42.6 MB (42646885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945eab8fe099e92c5e78407750d152ed9813d0a423dc756df6450810086d2285`  
		Last Modified: Fri, 23 Sep 2016 20:50:57 GMT  
		Size: 5.4 MB (5411648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3730d71f0c17fbbdfb7a89582e6d9b11932c6e87260895ba06eb565b8e373a2`  
		Last Modified: Fri, 23 Sep 2016 20:50:55 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce1a92c3666a8dd61140c3d135006a51c18c12a2ef40e41f06e50ec5ef96bb7`  
		Last Modified: Fri, 23 Sep 2016 20:50:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e72177e977de0ce46f4c4ffa3b23ad9431fca1f8cdaf45b46512d3b71c442ab`  
		Last Modified: Fri, 23 Sep 2016 20:50:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146e8f2158910aa0d9efa39ac3eb31a088cee744c0cffc4b58c09b69e5d3b2ab`  
		Last Modified: Fri, 23 Sep 2016 20:50:55 GMT  
		Size: 3.1 KB (3105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
