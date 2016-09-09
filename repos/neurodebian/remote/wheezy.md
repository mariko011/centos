## `neurodebian:wheezy`

```console
$ docker pull neurodebian@sha256:dd235c0c77d026d0f1c89f5f6a66bfe1239b6f1b743d09c5402761bf3091cc55
```

-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37242446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c475a192a29e8a7252521d8a66aeae73560b0250199b3beb359d63458ad3a37b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 22:00:19 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 26 Aug 2016 22:00:21 GMT
RUN echo 'deb http://neuro.debian.net/debian wheezy main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:00:25 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:00:27 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel wheezy main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:00:31 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b70ba19689cc006295539c03790b08d1cd0903886ce66b2532da3444311f2a`  
		Last Modified: Fri, 26 Aug 2016 22:04:10 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724c8687353d3581d94085ba51de72ae8fc42e7078012cd97483ae7b54eeaa77`  
		Last Modified: Fri, 26 Aug 2016 22:04:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392abf50083a9cedd3fa4b32835c9b65e2cfefc320ba5b0754db32cd644901b9`  
		Last Modified: Fri, 26 Aug 2016 22:04:10 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd0519c24d1a869d9272e57e384747abbc90cac4e445626b8e2ebcd1e07e08c`  
		Last Modified: Fri, 26 Aug 2016 22:04:10 GMT  
		Size: 32.1 KB (32132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
