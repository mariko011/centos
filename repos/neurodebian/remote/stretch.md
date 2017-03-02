## `neurodebian:stretch`

```console
$ docker pull neurodebian@sha256:e2f932c1330aeec8365b31084b751da699ccbbe90460f2d37bae54789ac26b63
```

-	Platforms:
	-	linux; amd64

### `neurodebian:stretch` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50967172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc5afefb847801bc36d3bf2132449834d3a6313b8f29f42d4334a1797322275`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:37:25 GMT
ADD file:bc30d36c1c3f3e470eff21bbb66e79cfe1959c536d7672c6ee126378c81e6d97 in / 
# Mon, 27 Feb 2017 20:37:26 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:14:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:14:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Tue, 28 Feb 2017 15:14:50 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:a6c161c4d6a5565cebc3a01c446ae8c083478103e47a144ecc11ccc81f6bb279`  
		Last Modified: Mon, 27 Feb 2017 20:46:44 GMT  
		Size: 44.1 MB (44066802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56a1b05a5faea5f99a5fec243799e085bc6ad8ada388952e968ae47ed749bd9`  
		Last Modified: Thu, 02 Mar 2017 02:02:10 GMT  
		Size: 6.9 MB (6897002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b678dbfe4cae71ad499af3a904a2d126cab59fa887daef7f6ef3a1b5adb77ad`  
		Last Modified: Thu, 02 Mar 2017 02:02:07 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a194d5aeedd4cd8eb4969bdb9c724de5be320ff1e8e1fbcadbbf45795e621de`  
		Last Modified: Thu, 02 Mar 2017 02:02:07 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
