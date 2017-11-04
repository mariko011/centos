## `neurodebian:wheezy`

```console
$ docker pull neurodebian@sha256:f11b587766f40f79c720d385ede4809e20389d17a026fd9aef9a166698ed177d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy` - linux; amd64

```console
$ docker pull neurodebian@sha256:714a6caebd7c37d5e60254964723dc8cdda0de295bfcb7aadbf61cda31010fc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38106836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6450c2c1305819d096be5c559bc7ff90cf4becdd8c878e8a9acfd96dc779ac`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:23 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Sat, 04 Nov 2017 05:27:23 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 08:41:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 08:41:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Sat, 04 Nov 2017 08:41:49 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb505c156e9cc6882121587a03cbefdbe4046ffbd5f9616395b40ba989ae237`  
		Last Modified: Sat, 04 Nov 2017 08:44:49 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fd741c54bcfd4186df252697675b9fd2052e09d2eb2c7bb20056fade7a739e`  
		Last Modified: Sat, 04 Nov 2017 08:44:49 GMT  
		Size: 3.2 KB (3192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea027ce593eb1bb2d8b714ad2e76b9e228cacfbb9d5a44dbe51d5d3418573b7`  
		Last Modified: Sat, 04 Nov 2017 08:44:49 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
