## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:044b256c7bbad6cb39394898926cd7f3cda19ee92b68c674289d7b73b097be53
```

-	Platforms:
	-	linux; amd64

### `neurodebian:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51369452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad57bbff3a005131d2d126ae031ee482270e1ec3d538598f0426d8613b9f998`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 17:31:52 GMT
RUN echo 'deb http://neuro.debian.net/debian jessie main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 01 Aug 2016 17:31:54 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 01 Aug 2016 17:31:55 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel jessie main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 01 Aug 2016 17:32:14 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb95ab5480340193a679f58c726e208ce0a14a881cc48f3ec6b68490ca768abe`  
		Last Modified: Mon, 01 Aug 2016 17:32:24 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc27603e46bd3d4ee9b3e08f58b6a6b577c6cb5a6cb31ddc38937117f8d847f`  
		Last Modified: Mon, 01 Aug 2016 17:32:24 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e997984e865e5dc9a44099240240b68e5315cfe2fa33fe0536c4a69bb384a9`  
		Last Modified: Mon, 01 Aug 2016 17:32:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16185ca875cfc73da65eb0621e3cb38544a728079f7b6aa3f9c0cc2eaf05ef2`  
		Last Modified: Mon, 01 Aug 2016 17:32:25 GMT  
		Size: 3.2 KB (3168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
