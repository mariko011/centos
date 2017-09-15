## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:7ad7d8b568d888e60803968f52e9cfb41261acdaa606aa08c321dea410788d0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:9e938aefdd75257fd2519853eeaeda4f48c705692721e6831309d4e72eb26a8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.1 MB (58083711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4f3f2bd32b6e95b92b42cf2e01806f4ff55d751a4821a6bb66cc2619a207381`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:20 GMT
ADD file:24ed5f5bb68abbeda1e34de4caa7be426978141c1664a5238107589d4038b5b0 in / 
# Wed, 13 Sep 2017 08:41:21 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:24:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 00:13:26 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 15 Sep 2017 00:13:27 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 15 Sep 2017 00:13:34 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:82350343a6fef2218dcf962145f0ad627975bdd80329deb9ba552d2f787b0383`  
		Last Modified: Thu, 07 Sep 2017 23:14:32 GMT  
		Size: 47.8 MB (47753859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06c7c6bf8d9cec57913ff3b68e59e51c24111a75fceed397d5ee0c6f4fe3bf1`  
		Last Modified: Fri, 15 Sep 2017 00:18:35 GMT  
		Size: 10.3 MB (10326180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb801a62013cb980bb1542f1a8fb412779b60a528125eaf5b1eefc826f815fc`  
		Last Modified: Fri, 15 Sep 2017 00:18:32 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713f6f98a48e268a08315ad9b07b3835361dd8ad577ea6b26fb5ed56447fc8c1`  
		Last Modified: Fri, 15 Sep 2017 00:18:32 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4aa15fb99a26d422f2657d17b220a41e206421a70dda4a6a6f78ed04625f443`  
		Last Modified: Fri, 15 Sep 2017 00:18:53 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
