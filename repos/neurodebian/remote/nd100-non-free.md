## `neurodebian:nd100-non-free`

```console
$ docker pull neurodebian@sha256:578e397100507955a9c5341a12f61801f44f876bb5ce1faa704e79d70653f1a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd100-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:0e1c2465d894d47ba5eb2d0f7b802a643051ddd38e817467e5f425d3335326eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57523300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d654ab523d0f449269f443e6c1fdc86e681a3ba74852ecd5d4569b9c61ec41`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:19:49 GMT
ADD file:2ad6832b35851b2a96b581ef8ed45d25ac9de93d41289c5560c271fed9ba920e in / 
# Sat, 04 Nov 2017 05:19:49 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 08:42:37 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 08:42:40 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Sat, 04 Nov 2017 08:42:41 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Sat, 04 Nov 2017 08:42:44 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:85800cfdb88adf2f09c8fa7b9007830b06b159216512a8073639d55ef65bef2d`  
		Last Modified: Mon, 09 Oct 2017 21:35:49 GMT  
		Size: 47.5 MB (47527292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a615d59fdb099e2c5dbd4ec774253008f01e8f68400c2a19efbe475ca24ed623`  
		Last Modified: Sat, 04 Nov 2017 08:46:04 GMT  
		Size: 10.0 MB (9992303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06113edd07cefe46b2d3da5f2536a705d326fc2e1cbb1cbab0a948531a1b0ab`  
		Last Modified: Sat, 04 Nov 2017 08:46:03 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd21098848368521a8f4feedd901cb67e028af0873450f7d02bf3b846f80657`  
		Last Modified: Sat, 04 Nov 2017 08:46:04 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304613cbb0f209e8750ef4f786596506b8a0e7a07d1b39ead3b1ab4475bf7313`  
		Last Modified: Sat, 04 Nov 2017 08:46:17 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
