## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:16125c5c3531bcd33a6b15dde4333bf33dedf57b4a7f3c2cee359c1f647d5bfb
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.2 MB (309154571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d87c762f80e572747148ec97010dc2ed7ee7637de00e876df9ba79152df4524`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Oct 2016 21:26:49 GMT
ADD file:5064de32df8d190bfda6b1588f654a7cb927a8177765aa689925da3ae52b3e6e in / 
# Mon, 17 Oct 2016 21:26:49 GMT
CMD ["/bin/bash"]
# Mon, 17 Oct 2016 23:41:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 17 Oct 2016 23:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 00:20:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5a07caa71861fb61d7142fcb4e9587355b1463ffe02a83d963728acda4e7bdf0`  
		Last Modified: Mon, 17 Oct 2016 21:27:09 GMT  
		Size: 43.2 MB (43208423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdf74d8838d93d31f9c1f3b98ae50ebd8871831ed25e21b8c7ed0cf925005f`  
		Last Modified: Mon, 17 Oct 2016 23:41:38 GMT  
		Size: 20.6 MB (20565446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdd27f02ce4cd0c55b6bd4b0aa86af56afa5b7599d2a3379cf950bc5abda52a`  
		Last Modified: Mon, 17 Oct 2016 23:42:41 GMT  
		Size: 48.2 MB (48243962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c500387ed332e221d1e132445b74839ae7ed1e6261f1a11e8efb09fd76024ab7`  
		Last Modified: Tue, 18 Oct 2016 00:21:46 GMT  
		Size: 197.1 MB (197136740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
