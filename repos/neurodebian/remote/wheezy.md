## `neurodebian:wheezy`

```console
$ docker pull neurodebian@sha256:3f17e1d19e1778501ae7ac85407d3c87cfdc3bbdd9c342c3544f92b4ec953e78
```

-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37288269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dabe138029611e4619c033d25bd8231384f9e7c581e4d9fdbd6929a295c8ca1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:14:33 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:14:35 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Tue, 28 Feb 2017 15:14:35 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71b4825d3d088855532644ba3f12cc1138d3b447803f9ca29c5fc6359868d37`  
		Last Modified: Thu, 02 Mar 2017 02:03:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955c2ec82f631356ed431b70ca1205068b2a6a6e3a78006e8779c8417c232044`  
		Last Modified: Thu, 02 Mar 2017 02:03:27 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ed04d2193e48456c830ed3891dd99c2bbd6eeedc135e878c50e4530f470be3`  
		Last Modified: Thu, 02 Mar 2017 02:03:27 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
