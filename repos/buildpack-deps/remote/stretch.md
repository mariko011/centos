## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:8e0cbaff09c95c2ae8a01cd1eb4129aef3ea9d2f9ce438c73c85e4987e053973
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.5 MB (306506775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30ce5b221f189295201e47ca560610b62a70fd677658e2f08f71fb360392634`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:32:09 GMT
ADD file:de2806ecf4d136cd7c460d60fea41c6870c8ab6e418e8795696aabe598706b1f in / 
# Mon, 07 Nov 2016 20:32:10 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:30:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:30:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:31:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e643679981aeea654a0348b1e068356da942b158b26e3e89a3e0956a1bab37cd`  
		Last Modified: Mon, 07 Nov 2016 20:39:41 GMT  
		Size: 43.2 MB (43247274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1d88194b68a5d7eb5ac6244315789ae8a38c2e4e19e300eb380af8af44f914`  
		Last Modified: Mon, 07 Nov 2016 23:02:52 GMT  
		Size: 20.6 MB (20583146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f974f0677959b11302c5274541d77d0294f3ce665c421c6c0edcf223f8cdee`  
		Last Modified: Mon, 07 Nov 2016 23:03:28 GMT  
		Size: 49.0 MB (48953887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb81a8f3cefce549950e130231fa6fb2923e2fba3514a55f243fd262acef00d`  
		Last Modified: Mon, 07 Nov 2016 23:04:43 GMT  
		Size: 193.7 MB (193722468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
