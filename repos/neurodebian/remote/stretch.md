## `neurodebian:stretch`

```console
$ docker pull neurodebian@sha256:7bcf186b1f5f0c0f3dd392c88e8383a7c2173548864dd716f1e503d71a9083f5
```

-	Platforms:
	-	linux; amd64

### `neurodebian:stretch` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52160384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e189ed797e6038ef8cb57d40ad7264dc1d4cf24b480cc5ad5b8c46d8a285df22`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:49:26 GMT
ADD file:212fe5c6a3f3d10b0f5fc59f2019d5a12f266ff74b289f3ccc87bb878b01a437 in / 
# Wed, 07 Jun 2017 17:49:27 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:57:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Jun 2017 19:05:38 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Jun 2017 19:06:22 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:31a23e80b5c0100547b74b78634277f56239d4207fa7ea4f0540148525dbff03`  
		Last Modified: Wed, 07 Jun 2017 18:09:21 GMT  
		Size: 45.1 MB (45127747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1385bee5eded8ce4aeba65914556c29c85ad602a10b47676fd414a87c1c0d665`  
		Last Modified: Wed, 14 Jun 2017 19:26:48 GMT  
		Size: 7.0 MB (7029266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6f100552acbb744e4b42e1857b653164d89735c332173ad3d4ae565de67796`  
		Last Modified: Wed, 14 Jun 2017 19:26:46 GMT  
		Size: 3.1 KB (3136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188b3787998dbf6bff060d8e942f2c034064872660e8d7a96db8735a5cf1d893`  
		Last Modified: Wed, 14 Jun 2017 19:26:47 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
