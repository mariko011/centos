## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:f9c6c35221d2b2c270f1c4bc2db4695fa738a947d36feee90c07bc508bed32a1
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.1 MB (318131301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316af82765adc3bb593eb824a8cd9257372b31326cf39a49c31c60aa1d12b06f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:26:26 GMT
ADD file:3e87e8bcd3e576dad7c7632c32d053dc2ac10103d8db164567bc44f3a212d8bb in / 
# Mon, 24 Apr 2017 19:26:27 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:17:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:76c33172ab4c3bfe88cef473b7fb807a0d06740604b3b5966c22e499609074e6`  
		Last Modified: Mon, 24 Apr 2017 19:38:06 GMT  
		Size: 45.1 MB (45070239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd034a0d94e626b5e864ffb2294eb1a1f65c9afc0ad41a4096851e0b7ff115bc`  
		Last Modified: Mon, 24 Apr 2017 22:25:35 GMT  
		Size: 21.3 MB (21267362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026dda99b7f3a1996508cb7df0efa84a7009a081e44ffac6f8b74acedb879d26`  
		Last Modified: Mon, 24 Apr 2017 22:26:20 GMT  
		Size: 40.8 MB (40808098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51143e7c4f3e4f9f589fe9af1b95352ab2adc72b71c69a8f82ba955b1b034ef9`  
		Last Modified: Mon, 24 Apr 2017 22:27:31 GMT  
		Size: 211.0 MB (210985602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
