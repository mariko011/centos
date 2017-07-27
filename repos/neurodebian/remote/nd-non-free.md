## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:df566ea3a6ba04b51f049cd03af025233de1a2f0d012c130bebee995bc3c58a4
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd-non-free` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53367149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9641d81a14763d8df06293c9c7aa28506921dcc1798093714a381f184774871`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:22 GMT
ADD file:366ed17a0f83cce653d5f267000d2766de9f465b087c3c17d9c865f1ac7dc8b3 in / 
# Mon, 24 Jul 2017 16:52:23 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 07:13:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 07:13:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 26 Jul 2017 07:13:35 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 27 Jul 2017 19:50:44 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:b5499bef70c58635bb757692533c72902e2ab8d155d0eafc76cda92862472a27`  
		Last Modified: Mon, 24 Jul 2017 16:57:55 GMT  
		Size: 48.4 MB (48430926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef294cf5faea197b967c297a72baaec2172d170c5c8fc266149089fae70ce67`  
		Last Modified: Wed, 26 Jul 2017 07:15:17 GMT  
		Size: 4.9 MB (4932575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c06431a9f44ed06c6bdf3ee6bfdcadf6b8f144b09611e6feeb56dd8dccd87b`  
		Last Modified: Wed, 26 Jul 2017 07:15:16 GMT  
		Size: 3.1 KB (3136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0db9333b5b144eb676a73e0a5ea1913f21c4ebe97850d069a5aa0301985ebb0`  
		Last Modified: Wed, 26 Jul 2017 07:15:17 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efde84264ab8bb40bcd7a3822c9f3934c6de18c332a2e6b6d39348aec19b591`  
		Last Modified: Thu, 27 Jul 2017 20:02:56 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
