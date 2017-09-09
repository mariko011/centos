## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:a11a99023d6b02c361723ee01afe0099ea18af44f750023bdcb8464a4b8acaf6
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57890184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c44241788d9ca747b05f32099511756f0ec0b9f1e6ec7d8cb081afc2ab7970`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:23 GMT
ADD file:24ed5f5bb68abbeda1e34de4caa7be426978141c1664a5238107589d4038b5b0 in / 
# Thu, 07 Sep 2017 23:06:24 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:22:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:22:26 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 08 Sep 2017 08:22:27 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:82350343a6fef2218dcf962145f0ad627975bdd80329deb9ba552d2f787b0383`  
		Last Modified: Thu, 07 Sep 2017 23:14:32 GMT  
		Size: 47.8 MB (47753859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2180496150c47d6238268bb1ece3a9ff219cfb4eb4f5d12d2cd8c50a90355210`  
		Last Modified: Fri, 08 Sep 2017 23:45:03 GMT  
		Size: 10.1 MB (10132956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b214ef6383ec09530e5d8f232179544498f9de272da87c17db215c1479d40`  
		Last Modified: Fri, 08 Sep 2017 23:45:01 GMT  
		Size: 3.1 KB (3136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295a90e778fd0da178a1cea1ca2afe771e47e23921b1d40c1e68b6e7303bb1a8`  
		Last Modified: Fri, 08 Sep 2017 23:45:02 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
