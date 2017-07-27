## `neurodebian:nd70-non-free`

```console
$ docker pull neurodebian@sha256:182e766c68800fdd3db43a1f4e60f9d14883b52ce20a8848548ecc02bc2f17d0
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd70-non-free` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38107539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61951ae97c134c286e4aa208f7f52bb61269fddff09838b00d5e60347a53c65b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:12:42 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 07:12:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 26 Jul 2017 07:12:44 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 27 Jul 2017 19:44:49 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd8e91dc92649d4c930ba86c767d74b1157899fab7e8e6910769f86f48b1c29`  
		Last Modified: Wed, 26 Jul 2017 07:14:37 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c24262c4a31ec6ce3db7c9fe83639cfa74cbcbaa3ed8c769e7c94513c85581c`  
		Last Modified: Wed, 26 Jul 2017 07:14:37 GMT  
		Size: 3.1 KB (3136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf7e3e516478ad1e9930aaad4fea1ddd6b8cf3fd879ddc36e8793fa6d301d18`  
		Last Modified: Wed, 26 Jul 2017 07:14:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e3e0069bdbab0dd79f3fc20a16882c2ab09d734411437b33fe623fdb75d9d8`  
		Last Modified: Thu, 27 Jul 2017 19:58:58 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
