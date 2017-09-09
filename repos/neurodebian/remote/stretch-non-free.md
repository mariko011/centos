## `neurodebian:stretch-non-free`

```console
$ docker pull neurodebian@sha256:b09c09faa34bca0ea096b9360ee5121e048594cb8e2d7744d7d546ade88a2996
```

-	Platforms:
	-	linux; amd64

### `neurodebian:stretch-non-free` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52159315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b01fedc1373365b47858ed4c5ad28a6600eda522eec48f6429621f85c88a8343`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:21:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:21:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 08 Sep 2017 08:21:26 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 08 Sep 2017 08:21:32 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af70fb2e507c38701a09e962ce023c11489ffd9c6b2459f311dd9bacd6c8af0d`  
		Last Modified: Fri, 08 Sep 2017 23:43:42 GMT  
		Size: 7.0 MB (7030140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1347847ef9b04820efd03f8a99e12ec87da0f1a39eaf6dc2c55ce013d106433`  
		Last Modified: Fri, 08 Sep 2017 23:43:41 GMT  
		Size: 3.1 KB (3136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7706502bc9769b44642d8dd762aca47f6b7794937f6202674a2e9e0483b6f3c7`  
		Last Modified: Fri, 08 Sep 2017 23:43:41 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e00e4ec0344844f0bbec56971fa251c3818b90a5ca5c4fabe63a4b3abaa2b5e`  
		Last Modified: Fri, 08 Sep 2017 23:44:02 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
