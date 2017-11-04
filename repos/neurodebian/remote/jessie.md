## `neurodebian:jessie`

```console
$ docker pull neurodebian@sha256:e0a85410f98415e9caf02fb7dc3a425f313cca5426d56e4f1b6ab66197f05e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:jessie` - linux; amd64

```console
$ docker pull neurodebian@sha256:c789f78860bb684c3656936410c6ae4939b2fce02e1556bcd39df38681bd3cc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52598816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05e882c0156163c15b7ddcf92352eca25f0f992e59ad2c3242517fe71d0b3d4`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 08:41:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 08:42:02 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Sat, 04 Nov 2017 08:42:02 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f1a3a43c988db5dc8fcc08e7265558e244136960dad469d02499b61db89cd9`  
		Last Modified: Sat, 04 Nov 2017 08:45:11 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ca7eb7716b73b8886634c9ec9265424322ebc1b280f2c332478dc109625321`  
		Last Modified: Sat, 04 Nov 2017 08:45:11 GMT  
		Size: 3.2 KB (3158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6724758c0ab95328de0382cce0ca76f55fefb210a83c5fe8998f4539f7e70f8a`  
		Last Modified: Sat, 04 Nov 2017 08:45:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
