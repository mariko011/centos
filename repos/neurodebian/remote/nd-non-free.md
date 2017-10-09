## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:64e2c4f5feb252ce818c9f060b98dc98da3ab5f941b87e409e8f6274d2bbcfa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:8e3b4a2224d0ef87697e8440fb103626b9a115d128769bfd002387672ff24c03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57326951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8659fe1638adb4a84d0e673d4f0407735f0598f806d97ad3463dd883cd6c7c7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:07:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:08:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Mon, 09 Oct 2017 22:08:11 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 09 Oct 2017 22:08:17 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b13d95da7a55b9795729134fafe94cae1b02dda697ee404acf07663c59e4e49`  
		Last Modified: Mon, 09 Oct 2017 22:11:06 GMT  
		Size: 9.8 MB (9761332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37723a8487094ac865b70bbacb24b181157ea345ca2907480909421877f4a2`  
		Last Modified: Mon, 09 Oct 2017 22:11:04 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44ffb753539422d52d049f3f198d1ad182bb696174699cbec9ad19ca2e03110`  
		Last Modified: Mon, 09 Oct 2017 22:11:04 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1050653a7b8d0898fa0a01de0f9e0ce590f7a366a64f328e75b03ebd4556bc`  
		Last Modified: Mon, 09 Oct 2017 22:11:25 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
