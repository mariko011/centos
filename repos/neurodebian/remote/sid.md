## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:9e0903d957fb80c68b599b05410bdca35ce73f25af6c94407d663dc99b4df8b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:sid` - linux; amd64

```console
$ docker pull neurodebian@sha256:5d89f3ed07b2c596be931190848fbd980c5216666be0f5426735bfd28b14943e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57557824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6d62b01001273dd28beebe237c43d6dd89108045f082f23c0cf9989db29c2d7`
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
