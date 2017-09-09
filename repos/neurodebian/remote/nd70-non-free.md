## `neurodebian:nd70-non-free`

```console
$ docker pull neurodebian@sha256:e599aedb30392acbed758b9b3ab88dbfc8bbfb6da1ffd703ea501484205717a7
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd70-non-free` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38107079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eec5b2814b88c1325285153ea9fb557cfcd64c82e0da049903fed84d39e79208`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:20:33 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:20:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 08 Sep 2017 08:20:35 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 08 Sep 2017 08:20:41 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075a0c84e7c44092beea8ba896badc1605ad07c704c19320fc91b77255877587`  
		Last Modified: Fri, 08 Sep 2017 23:42:22 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d34737906c41ced68b0621b464bc1459ac63ad879a0796974d7b99930957ec7`  
		Last Modified: Fri, 08 Sep 2017 23:42:22 GMT  
		Size: 3.2 KB (3185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de138b9cbcc153c404346fc5bbdaad3e139db34d8798a1cd879ecb94934ba192`  
		Last Modified: Fri, 08 Sep 2017 23:42:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77b704610b9c304d3589351cf433be3899c9daf791816d9128d3a1d72d0fbde`  
		Last Modified: Fri, 08 Sep 2017 23:42:42 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
