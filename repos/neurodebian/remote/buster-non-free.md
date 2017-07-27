## `neurodebian:buster-non-free`

```console
$ docker pull neurodebian@sha256:a95f9788360d19b6a4bb68b7e987039b42d70eaf96429e3b0a1c7e13b64474d3
```

-	Platforms:
	-	linux; amd64

### `neurodebian:buster-non-free` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (52956151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab61714656677829a53b936d8dd376f8e71f0dd0e617fdbacf5c32b62224c015`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:07 GMT
ADD file:180cb5dbe138819fcefea6df1b24cb0b3c4eb27d3e11d9169168ac8c545dc6a4 in / 
# Mon, 24 Jul 2017 16:51:07 GMT
CMD ["bash"]
# Thu, 27 Jul 2017 19:50:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 19:50:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Thu, 27 Jul 2017 19:50:19 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 27 Jul 2017 19:50:32 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:92a0fac866cea04683848cdc7ad341b5f7f333a754a785f920f0b59652ff8dca`  
		Last Modified: Mon, 24 Jul 2017 16:54:18 GMT  
		Size: 48.0 MB (48020220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ae9835653c57f69090f8bf46fdc9a76c80e04c3dd1eecca77c6d5bf9e29f28`  
		Last Modified: Thu, 27 Jul 2017 20:00:35 GMT  
		Size: 4.9 MB (4932248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17553b8291ee64f35594371684339351ad0898dd7bbf8d0be9cff13aabb1db09`  
		Last Modified: Thu, 27 Jul 2017 20:00:33 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd603820eee28985c885c2654269d767bee2829e28046ff8fedb7d8871d8ccfc`  
		Last Modified: Thu, 27 Jul 2017 20:00:33 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b2219ce5240892e261df7035e0ecbad0e84553d098f854de93987c6722c934`  
		Last Modified: Thu, 27 Jul 2017 20:02:28 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
