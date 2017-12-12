## `neurodebian:buster-non-free`

```console
$ docker pull neurodebian@sha256:91156c313a99eb6dcec85820d1c27aa429da9f31c0f619e3842056e9e2218a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:buster-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:cc45fb6a86327db528fc22dc11599d62610f794e4a3aae4c5c4ef4ee967667a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57720161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19080ed665cd96646b3f1df9c2a19a8beeee802e04597434e6153191cd765d2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:40:39 GMT
ADD file:5acb415d8aef071824037168ffd780c0156d7461794616d021f6dc513df447c2 in / 
# Tue, 12 Dec 2017 01:40:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:12:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:12:03 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 12 Dec 2017 05:12:04 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 12 Dec 2017 05:12:14 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:cc20a3251af543b53fcd0a7105c798d682c3081d6517d9a4dfc2c260260685f2`  
		Last Modified: Tue, 12 Dec 2017 01:47:10 GMT  
		Size: 48.3 MB (48257859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab2749017011564ec61cd2960165576a1883beb19cd1f318d10630f8d4c1675`  
		Last Modified: Tue, 12 Dec 2017 05:15:55 GMT  
		Size: 9.5 MB (9458596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7326c741f87f6b5720d696305f5110fe93c33dec728c2da1e35e90fd6f45856e`  
		Last Modified: Tue, 12 Dec 2017 05:15:54 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcff23652d751147ef8b7e5ceefc2228666aecdf5644422e81de854b0343f0dc`  
		Last Modified: Tue, 12 Dec 2017 05:15:53 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d448da50b97fb27f87f249d3ecd54f99ca812a18db6ba13238565b2d4bb44`  
		Last Modified: Tue, 12 Dec 2017 05:16:17 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
