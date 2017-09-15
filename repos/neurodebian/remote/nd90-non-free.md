## `neurodebian:nd90-non-free`

```console
$ docker pull neurodebian@sha256:653f13e9c7f5a019801d818fa8e5da0405fa23ed630cd7d52e0cfd4d3aafafeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd90-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:362bc433fc581e6ef3910bd0da6439d6abe664b6e76ed402847bf1f1363620a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52347588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2fc8205c0c55859631b918dc614c606fcca14bc1f682f7feaa968ee89368ae1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 00:23:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:23:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Thu, 14 Sep 2017 00:23:34 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 14 Sep 2017 00:23:37 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cea1227b7dc401b540ff5d4c61b70a31d377cad1d645d6e38345e76c81ae9b`  
		Last Modified: Fri, 15 Sep 2017 00:17:18 GMT  
		Size: 7.2 MB (7218393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aeff65c8329f66305aaadc9b0e02b3ff448562a207bb5a4bd6a0e848795f16c`  
		Last Modified: Fri, 15 Sep 2017 00:17:15 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ba0f30b7477e796753756780fda60f291a2fa27a91513891fec306dc50d8d5`  
		Last Modified: Fri, 15 Sep 2017 00:17:15 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bcba80c83ca81ca1bc6a82105f3835a6889daedded11af179334cacaa2fb37`  
		Last Modified: Fri, 15 Sep 2017 00:17:36 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
