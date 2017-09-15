## `neurodebian:wheezy-non-free`

```console
$ docker pull neurodebian@sha256:f0803ddfb59c7bf76215a18204b2e72fbb2449776d4c7c3c6713c8fe2149a37c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:eed3b5b7c2ee6560583b44d11b6d478c2945400bac64c511773cd7b7a127ef5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38107144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a735e21fb01d4ba9d6b3aaebe4199bf75865be4fac390634aaa904d767543fbd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:15 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Wed, 13 Sep 2017 08:42:15 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:22:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:22:57 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Thu, 14 Sep 2017 00:22:58 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 14 Sep 2017 00:23:00 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4cc013d74d1687e7efb9227545b13767023aaa77d01ff0f9ffcbc213ce526e1`  
		Last Modified: Fri, 15 Sep 2017 00:16:17 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83b56b266b820a559e4f948426fc1b4981fdeb56f96904012861b1081d700a6`  
		Last Modified: Fri, 15 Sep 2017 00:16:17 GMT  
		Size: 3.2 KB (3192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c009060443e9e1044e7d979d6e9d926adcc9975f99a451da2aaf23864a404f7b`  
		Last Modified: Fri, 15 Sep 2017 00:16:17 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407dbde2844251ca3c1f346c5109c7a2559c11003f430c481f7257e5b7454106`  
		Last Modified: Fri, 15 Sep 2017 00:16:30 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
