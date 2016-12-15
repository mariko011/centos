## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:d97116abca332fc65e963e273c3f55678a84868dd0ff02f3d82fd36f5355605d
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.7 MB (309684249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcd0cdad3f8e54955f2d7a6905b08da3e99f57bdcca37aba5d55352e9b23fef4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:13:38 GMT
ADD file:b8661e5bd7179ac7b23f0013637df93301390246609d446f45217ead261c33bf in / 
# Tue, 13 Dec 2016 22:13:43 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:01:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 19:04:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ca67a6a92c6d53b4eea40b8e1f63130784c8751379ffdc08b680768c57e510bc`  
		Last Modified: Tue, 13 Dec 2016 22:23:25 GMT  
		Size: 43.7 MB (43673589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50a9ffe9d75cfda065f757fa9081dbf0712e0713f4e61b82e1f9ef1e832cf23`  
		Last Modified: Thu, 15 Dec 2016 19:38:38 GMT  
		Size: 20.9 MB (20861095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df867bf106bd575d903c4270040d250a16b3b9597ba19434ab5f01e1d778849`  
		Last Modified: Thu, 15 Dec 2016 19:39:20 GMT  
		Size: 50.7 MB (50695089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dd9a54d00c00788c372a742dfd583dda8248a2d445ea31922ac7a8f97c9ec4`  
		Last Modified: Thu, 15 Dec 2016 19:40:40 GMT  
		Size: 194.5 MB (194454476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
