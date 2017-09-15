## `neurodebian:nd100-non-free`

```console
$ docker pull neurodebian@sha256:8a538b3a4803544769055b97bacf4485c235835903742dda349cf3710bc8dfd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd100-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:771795773e38e861a7291cea63a59c4a2ae4b12d29e4b5206d08bca41b59a338
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57876900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3a4ff2d0cf702a928335ddf7b8071d580d9af01a2a431c7f06326f86799290`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:31 GMT
ADD file:f119e9d99ea0b9ed669f11a283364c30fb9ee0f82e6f7199c863eccfc3b0b56f in / 
# Wed, 13 Sep 2017 08:40:32 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:23:50 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:24:04 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Thu, 14 Sep 2017 00:24:05 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 14 Sep 2017 00:24:08 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:1ff97b4f79d288d52633dd13b82a200555b9dcc0cade3b07f5aacb2952076436`  
		Last Modified: Thu, 07 Sep 2017 23:09:50 GMT  
		Size: 47.5 MB (47547481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d152be3255af453bb83b1defa84f841a8d022515089f885e9a96ee816b3c8b8a`  
		Last Modified: Fri, 15 Sep 2017 00:17:56 GMT  
		Size: 10.3 MB (10325716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4489c8ebfb9b158a9f7135c3e12771de0b17bbcd76d031a8cf358cdb370f50be`  
		Last Modified: Fri, 15 Sep 2017 00:17:52 GMT  
		Size: 3.1 KB (3149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f7d547d01166065ac4692f8a7f1ff7ff3a97cf15c75a5853a195bfead0822c`  
		Last Modified: Fri, 15 Sep 2017 00:17:53 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea86707925fc06d7826fc5da3ff094690a5580fb9e226dfc927f6976e4c865df`  
		Last Modified: Fri, 15 Sep 2017 00:18:14 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
