## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:136ae2f96dad2c666653bf097400386a664f948a4116522586fc12daab8d3955
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.6 MB (312584873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:978864212cf590cb761de07d1e5ad9b35819ec430e35894484337c85aff8891a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Oct 2016 21:26:09 GMT
ADD file:7a91bb1a28e088d8d427022bb612873476ea54ec75cb559e5943b771d7412386 in / 
# Mon, 17 Oct 2016 21:26:10 GMT
CMD ["/bin/bash"]
# Mon, 17 Oct 2016 23:39:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 17 Oct 2016 23:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:30:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:279daf9814f4ba6feba147fd51356389273017b7d4a057e5a7cf724467c2fbcd`  
		Last Modified: Mon, 17 Oct 2016 21:26:30 GMT  
		Size: 43.2 MB (43195045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee53d9e55ce8c4310eed9df888489b1e79dc22764f3c442d8e767d0f4218b57`  
		Last Modified: Mon, 17 Oct 2016 23:40:01 GMT  
		Size: 20.6 MB (20581005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1bde82dbdb2519006f9578e8408db12a546bf1b5ae03940b08f3f20ca8b3dc`  
		Last Modified: Mon, 17 Oct 2016 23:41:03 GMT  
		Size: 48.3 MB (48288494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104b4dcc54477251d7ef5e2ee4b62b6e37d7c6b181dc9ef7dc5a55b6ef1375b0`  
		Last Modified: Mon, 31 Oct 2016 21:41:03 GMT  
		Size: 200.5 MB (200520329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
