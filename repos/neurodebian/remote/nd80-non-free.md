## `neurodebian:nd80-non-free`

```console
$ docker pull neurodebian@sha256:73e226324a1a9b67ae1ff11a97f5aec2ad395351721388b322594ee925a453ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd80-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:cb00629b50315c8375d2eeb41b24cf97db3e8bd0c21ca496b8e0bb81ce9f2a87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52599124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d94552e859fdde2393f76aedc727517fcaa7ad4026e2ba853c6ef6fafb383a7b`
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
# Sat, 04 Nov 2017 08:42:05 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
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
	-	`sha256:c941cd9e2d6000c5ca09701ee53ec545110983bb926fc2e92e9a0182ce8fd11f`  
		Last Modified: Sat, 04 Nov 2017 08:45:23 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
