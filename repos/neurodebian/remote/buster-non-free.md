## `neurodebian:buster-non-free`

```console
$ docker pull neurodebian@sha256:84eba7b7fdbfb8d41a6e7400f5464b8642a894ab431c3db729c3608269fc71a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:buster-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:182a3f78f09ea00833166f1797d7d745128eba348180f612c0efab30f7c0005a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57292179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91420942b50bb6b4c4d5881a73cbb3ec0e1a1e212c64a2f56a50cf55866cd874`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:29:38 GMT
ADD file:2ad6832b35851b2a96b581ef8ed45d25ac9de93d41289c5560c271fed9ba920e in / 
# Mon, 09 Oct 2017 21:29:38 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:07:28 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:07:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Mon, 09 Oct 2017 22:07:32 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 09 Oct 2017 22:07:40 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:85800cfdb88adf2f09c8fa7b9007830b06b159216512a8073639d55ef65bef2d`  
		Last Modified: Mon, 09 Oct 2017 21:35:49 GMT  
		Size: 47.5 MB (47527292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a78274d39bf07551874aa71555930b44f105d9f0145b4a6d158d369de21031`  
		Last Modified: Mon, 09 Oct 2017 22:10:30 GMT  
		Size: 9.8 MB (9761186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e647d090494aa2580e7ef218eb627bf24cbe52bcb8fb730aaa75cac1bb4b50`  
		Last Modified: Mon, 09 Oct 2017 22:10:28 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf199a6e52b8cddaa3fa37cc49dcd816ad7e489e8fd5a486dcc8a5f3779278fe`  
		Last Modified: Mon, 09 Oct 2017 22:10:28 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2337c7886bf1c45e33fa275b1d07669bb97b61de9b517b0454a0c14bfc929edb`  
		Last Modified: Mon, 09 Oct 2017 22:10:47 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
