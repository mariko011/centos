## `neurodebian:jessie`

```console
$ docker pull neurodebian@sha256:66d683264c33ce6934d5bb16b913df83689c1e51f56d6c52039c7ea808d057ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:jessie` - linux; amd64

```console
$ docker pull neurodebian@sha256:c13a8235073dcf5b1a78a8696c7f47371089ec0a76ba32cf5d7a7e1fadb2dbbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52599233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b33e953b7766cad5f0a776c33ea84b41fd3282a4e6e50314206c14780dd4ba0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:23:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:23:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Thu, 14 Sep 2017 00:23:16 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98dff6a01f7e4bd7a1167e30182b9e4c6f9d5ff3da4c47e9ad5e5bb9237a9f86`  
		Last Modified: Fri, 15 Sep 2017 00:16:43 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c82a90e639eab0648742dbe89ce237694deb034c552324f8f2c8484d4fd6b8f`  
		Last Modified: Fri, 15 Sep 2017 00:16:43 GMT  
		Size: 3.2 KB (3153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a910c68d43c735a40cd5bb364069d26dfa7955a97d70472c3a93929ceb8a2c34`  
		Last Modified: Fri, 15 Sep 2017 00:16:43 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
