## `neurodebian:wheezy`

```console
$ docker pull neurodebian@sha256:895764057ace95587705a012c473c5088a2bb1d6cb437eac985d37f8dac004b6
```

-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37241396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c4364b2cac180e8920e9092515c32b2f8c7ce48d42819369a48f70483b53b3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:36:54 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Tue, 08 Nov 2016 22:37:03 GMT
RUN echo 'deb http://neuro.debian.net/debian wheezy main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:37:11 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:37:19 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel wheezy main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:37:28 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e118f55972e94668e22128479b1490adf25abaddd9148e6bfc0297f957d15e9b`  
		Last Modified: Tue, 08 Nov 2016 22:37:53 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c4cfdd579c0045d420c3ef4e8c9f3311cae220257dc0d6f581bcc5f9d5c853`  
		Last Modified: Tue, 08 Nov 2016 22:37:53 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a257649bd9800871daa330640d01f01f2f9686ba18274705813bdf48701474`  
		Last Modified: Tue, 08 Nov 2016 22:37:54 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dc51495b3f6c24c7572a8e39ebfd67de72278e24657fdc2b70ea80235eb88c`  
		Last Modified: Tue, 08 Nov 2016 22:37:54 GMT  
		Size: 32.1 KB (32137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
