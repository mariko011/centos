## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:9cea8bc8e029efeb3e43633791ba5aa4bc88cb1a624bd72765e051bc409930d3
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.6 MB (457638104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c1d22f175a8ebe1752c25c9f749092baba78f9c584bee449dbeec36778c474`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:12 GMT
ADD file:aa371a6a9864ba179f42eeddca63e5f6f43762fe3f027c4bbb813d767ffcbe99 in / 
# Mon, 19 Sep 2016 17:43:12 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:50:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:50:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:52:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d6dba5ad0625e5a3b8bb5f58cfa8219b78c0d14d0ddc49bdefd3c520e3fd035c`  
		Last Modified: Mon, 19 Sep 2016 17:47:24 GMT  
		Size: 42.4 MB (42440104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa81a2a42fb74655b655f517192140b20313fea81c14f5422aa60a73507b3cc`  
		Last Modified: Mon, 19 Sep 2016 18:00:01 GMT  
		Size: 20.5 MB (20547543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1c1587f2d3a76643b9de8d779b5c4e2ede0e085ab975448e76cfb292385a7c`  
		Last Modified: Mon, 19 Sep 2016 18:00:40 GMT  
		Size: 48.0 MB (48043155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daba545e1121923e0925af7c04e9748ab2902d0e88b1bb9de0cde4ee95a7d017`  
		Last Modified: Mon, 19 Sep 2016 18:02:34 GMT  
		Size: 346.6 MB (346607302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
