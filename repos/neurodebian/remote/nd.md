## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:c662dd719a2eacfb2041ce2e6b43af2a1ecd59266d3dfd9f3e3cd731a8d3f271
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51152793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afe67a5758404caab205b390a153f00dd753e4b75796a53f0eeb0519bdde1856`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:36:00 GMT
ADD file:976136a811110184c7ff305b3354fc765d3d21ce0d7ce86eee8900a231e0e38a in / 
# Mon, 27 Feb 2017 20:36:01 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 06:59:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:13:39 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Tue, 28 Feb 2017 15:13:40 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:a40c9d226366db9384aa684e3d34913cdacf75282bdc70dff4ff186e130ee2c3`  
		Last Modified: Mon, 27 Feb 2017 20:44:12 GMT  
		Size: 44.3 MB (44250775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02eb1a3dc004d53d4a6883e49e9302f027080a4da87ddcfa50286d1db0abd1a`  
		Last Modified: Thu, 02 Mar 2017 02:01:28 GMT  
		Size: 6.9 MB (6898651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7cb8d4fa7b4586dc1c62988517b88dc29c1d9d105eb1b11005305f6f874f76`  
		Last Modified: Thu, 02 Mar 2017 02:01:26 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55569cea217a8a0af384b1ad2eaba12e458fcc7173d1fe2eba45a38e9edb065d`  
		Last Modified: Thu, 02 Mar 2017 02:01:26 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
