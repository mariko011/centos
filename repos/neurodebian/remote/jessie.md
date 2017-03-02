## `neurodebian:jessie`

```console
$ docker pull neurodebian@sha256:1bb1da19baffd9914604d2b9fec55274faa2bee1cb0c840e74a88102550d4c12
```

-	Platforms:
	-	linux; amd64

### `neurodebian:jessie` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51366946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3691ba94f96eb0de0a09e5edda05a882d120cc10d126b4a6d572fdc3c03c16d6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:59:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:59:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Tue, 28 Feb 2017 06:59:04 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893b104611faa9ea33e5184d10dae70db14832fbe93aea32c4d63a24d9b36813`  
		Last Modified: Thu, 02 Mar 2017 02:00:02 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabe184c61d6a28130847f5bc1123a39e09f918dbfe17f29fb1c61a973a5d80b`  
		Last Modified: Thu, 02 Mar 2017 02:00:01 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff7afe43432c5a67ebc73948fe22fce9e2c3a5c8890f04030f98dae81c9f38`  
		Last Modified: Thu, 02 Mar 2017 02:00:02 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
