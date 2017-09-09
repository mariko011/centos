## `neurodebian:buster-non-free`

```console
$ docker pull neurodebian@sha256:db91aa7ccea9b72281210fb736e09609ff37ce25fbb767b3a99132888fc183bf
```

-	Platforms:
	-	linux; amd64

### `neurodebian:buster-non-free` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57040964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aeeff4b9a2aaf87a24476c88a080d07bf2d2bbe97ccbf6b7ae42d7b373a06b3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:12 GMT
ADD file:f119e9d99ea0b9ed669f11a283364c30fb9ee0f82e6f7199c863eccfc3b0b56f in / 
# Thu, 07 Sep 2017 23:04:12 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:21:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:21:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 08 Sep 2017 08:21:58 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 08 Sep 2017 08:22:04 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:1ff97b4f79d288d52633dd13b82a200555b9dcc0cade3b07f5aacb2952076436`  
		Last Modified: Thu, 07 Sep 2017 23:09:50 GMT  
		Size: 47.5 MB (47547481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11019654780bdce3f5138a17b7390b273161d50b09e9c6d8f75c1876a0fc6c05`  
		Last Modified: Fri, 08 Sep 2017 23:44:23 GMT  
		Size: 9.5 MB (9489803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1267156a4577b429e8b724a7c2bfaaab5c2fdda554904173245e93a30d8843c`  
		Last Modified: Fri, 08 Sep 2017 23:44:21 GMT  
		Size: 3.1 KB (3136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a0df967de7707a0585d704b23823c0a7aaf7505b1983d4c29543fd642f7408`  
		Last Modified: Fri, 08 Sep 2017 23:44:21 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54328ec632a5655c6fc9b89203c74427d4e98f3f17c5eef67be57692d955bab`  
		Last Modified: Fri, 08 Sep 2017 23:44:42 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
