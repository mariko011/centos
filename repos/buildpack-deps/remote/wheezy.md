## `buildpack-deps:wheezy`

```console
$ docker pull buildpack-deps@sha256:87a60c2764c40a133a3e66e9a033b8120c60e82c6accc0cf731201b9eebf8674
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.9 MB (179939293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c9c55c3e276e6ed7e479895648e9cacad5386109758183258b3ad45b654709`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 20:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 20:03:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 20:05:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd5db52f078fabd5bfc38197a904c009cd5fde1b237d5d3c8868eb30e34fb1`  
		Last Modified: Wed, 07 Jun 2017 20:15:36 GMT  
		Size: 6.9 MB (6948482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02720d78d8cf03e04692a6628b08128ec3123a78f31a369c2c1fdcb2fd32d11c`  
		Last Modified: Wed, 07 Jun 2017 20:16:16 GMT  
		Size: 37.9 MB (37937378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913479fc9b99d1b74ea67714c7f0d787e209ef561b9b97da088c6820e1ceb8ca`  
		Last Modified: Wed, 07 Jun 2017 20:17:13 GMT  
		Size: 96.9 MB (96948347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
