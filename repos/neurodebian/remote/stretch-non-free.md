## `neurodebian:stretch-non-free`

```console
$ docker pull neurodebian@sha256:d9775580967aae667d8124b91e1adf26aee7f3ae7bc7f33094ef3b776f310d11
```

-	Platforms:
	-	linux; amd64

### `neurodebian:stretch-non-free` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52176162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ab98df6f7e7b8067bf747863f7c7bba3e31e0d8b2b17e3a8f6d0446641e92`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:13:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 07:13:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 26 Jul 2017 07:13:18 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 27 Jul 2017 19:49:56 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc1137ec8064e90028f9f740b6cc07fd0c1dfe26d5b5a8e25de8dc1f6a5369`  
		Last Modified: Wed, 26 Jul 2017 07:15:04 GMT  
		Size: 7.0 MB (7029551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd188c0462df82216e4e62ff0c7c2b140ecdeeded1c5e9c9c432a6ecd606380b`  
		Last Modified: Wed, 26 Jul 2017 07:15:02 GMT  
		Size: 3.1 KB (3135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a102e943dd5e49070bd884c21f128a5fe5d3cb6b8885a58b7bf3c55a0fdccf2e`  
		Last Modified: Wed, 26 Jul 2017 07:15:02 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59cef664526feea398cf7975587de4c572d4a767b531dcbf106648facef8c029`  
		Last Modified: Thu, 27 Jul 2017 20:00:17 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
