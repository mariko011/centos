## `debian:stable-backports`

```console
$ docker pull debian@sha256:16821bd02994f3b8b92309a3b14644cca4ba88b3c7d4478965bc267d07adc27f
```

-	Platforms:
	-	linux; amd64

### `debian:stable-backports` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52568498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19a149b6166e9eb76c3ae4aab0659cc0482b23dbfab4f7a7d83e4333b3dfacc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:47:25 GMT
ADD file:14e05caae1c4303adf56fba2e0c436f793ecbda2c1906c46a4fcb0151ae88b69 in / 
# Wed, 07 Jun 2017 17:47:26 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 17:47:49 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d7c44e2bbdd529e04cff408b23ce9b2d4890d34f9ac7505503ef365b00d62f2c`  
		Last Modified: Wed, 07 Jun 2017 18:06:59 GMT  
		Size: 52.6 MB (52568283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbf8efb802946f9b67e20871d900ea00b7e804c165eb19f84b5a0a2bc702496`  
		Last Modified: Wed, 07 Jun 2017 18:07:55 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
