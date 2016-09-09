## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:24e8d67bce5a180edce4db3eb623b4959d09678ced9d3775cd7c26ef449f87a0
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48280643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ff7b15c4e906a8ccd36d505bf74c8929ac07e35ee7422e84babb30eeef6996`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:48:23 GMT
ADD file:ef6cd3ee88d7045391cb7b6c1014d225d1abe9c0539fa50b9260639774032866 in /
# Thu, 28 Jul 2016 17:48:24 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 22:01:33 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 26 Aug 2016 22:01:36 GMT
RUN echo 'deb http://neuro.debian.net/debian sid main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:01:38 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:01:40 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel sid main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:01:46 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:f8e784df59625b49bca4ce9f70150e254beed293dd99fc93da5039461894ad16`  
		Last Modified: Thu, 28 Jul 2016 17:51:47 GMT  
		Size: 42.5 MB (42487630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854f815ce9a95bbadd43edf01364c92d90a8530a4573e7b935ed077b63c15a43`  
		Last Modified: Fri, 26 Aug 2016 22:05:54 GMT  
		Size: 5.8 MB (5789242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2db132d21fb668dd933dea03cfad6db013d62477653894549b0fac1661fa4f2`  
		Last Modified: Fri, 26 Aug 2016 22:05:52 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eac8056a60a609f335d86768ee26326f053cd9a8fb9d2430abce20e02892ec7`  
		Last Modified: Fri, 26 Aug 2016 22:05:51 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42c2a99afec79b7b109879aa2c2d3687028a060bb1db24ff769f5b799759116`  
		Last Modified: Fri, 26 Aug 2016 22:05:51 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b5e9d2eb69de4856da96fe0e52c8d65725d152af86d23e9443b6c1226ee53f`  
		Last Modified: Fri, 26 Aug 2016 22:05:53 GMT  
		Size: 3.1 KB (3106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
