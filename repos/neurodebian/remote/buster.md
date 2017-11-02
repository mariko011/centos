## `neurodebian:buster`

```console
$ docker pull neurodebian@sha256:755bed1ea4b1a6504ca2f3379fed5d0f60679095dff2b060443fb20e7de9e0da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:buster` - linux; amd64

```console
$ docker pull neurodebian@sha256:f160df33e6885991d50405fa947ee31579033806de1b87e800a1fd920e0ebf90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57522965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c4fdb15873614474dad6e5ac576adc2bde7fd846e3f4bfeee5081eaa1a837f3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:29:38 GMT
ADD file:2ad6832b35851b2a96b581ef8ed45d25ac9de93d41289c5560c271fed9ba920e in / 
# Mon, 09 Oct 2017 21:29:38 GMT
CMD ["bash"]
# Wed, 01 Nov 2017 23:57:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Nov 2017 23:58:20 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 01 Nov 2017 23:58:20 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:85800cfdb88adf2f09c8fa7b9007830b06b159216512a8073639d55ef65bef2d`  
		Last Modified: Mon, 09 Oct 2017 21:35:49 GMT  
		Size: 47.5 MB (47527292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20c3203e6a3d64b295e324a9f8269b4e9d228047e37d16cbded318d5c1eed27`  
		Last Modified: Thu, 02 Nov 2017 00:05:32 GMT  
		Size: 10.0 MB (9992276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b0c9295abacdad535b6f3917253bcc7de07961c06ab87d1008d0668c1bce69`  
		Last Modified: Thu, 02 Nov 2017 00:05:31 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6ec62031112c1c6d5123bb24e2b2426dec0ff174381e6ff28614e5935fa6bd`  
		Last Modified: Thu, 02 Nov 2017 00:05:32 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
