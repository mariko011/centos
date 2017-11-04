## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:e684c6c63c5c1161de1cc7cf0447d82d14251ebd008faa16466c2f0b68239b5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:sid-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:4ba52d82cabf396b05ca2c9e4669f36863fc52309c2cc0cc9541f8e644fcca4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57558102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c759a48df4e295592b1c0a9402962ec19a16ce26eb1e4f226c93f59f749f867e`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:10 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Sat, 04 Nov 2017 05:26:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 08:42:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 08:43:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Sat, 04 Nov 2017 08:43:02 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Sat, 04 Nov 2017 08:43:05 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5751345d8527627b8e485df85c4a68af45ad6c4d4fcf9e7a3a6413d0b9a58b0`  
		Last Modified: Sat, 04 Nov 2017 08:46:28 GMT  
		Size: 10.0 MB (9992484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d3dd8ddc835caa51d9b3d0a4c9c5eb2abaaaece722703c8b19e11df6160475`  
		Last Modified: Sat, 04 Nov 2017 08:46:27 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5ccf329cebda5748171604399334d3116eb54aaa846669e6a6f3bef9fed2af`  
		Last Modified: Sat, 04 Nov 2017 08:46:27 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713f131c8b8cc38dfad8e9ee9c999e874b5866b8fc7531bde3673436bde8b484`  
		Last Modified: Sat, 04 Nov 2017 08:46:39 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
