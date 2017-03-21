## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:fb5981b4d43b9201cd6479c88a3c323bf2caca63f1c1bea95104445e96e9d9f0
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.1 MB (312082986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231afedd88a8b4737dc4f9aa2142c666a028fa0fdfc349764764f3a22565c003`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:33:45 GMT
ADD file:b784c500074cf93203f92498cb90882e098a854589ab7274432b376198176dfa in / 
# Tue, 21 Mar 2017 18:33:46 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:14:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:14:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:56:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:012cbff939ac501cbf2ec74788932aec11774e5a1cf3aa98e83fc0770331d7b0`  
		Last Modified: Tue, 21 Mar 2017 18:48:04 GMT  
		Size: 44.1 MB (44088731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351ea4253a6d4de9934229b0a3a79fa8ca81eff1ee23a632fcf3df109baf83a2`  
		Last Modified: Tue, 21 Mar 2017 20:05:51 GMT  
		Size: 21.0 MB (21018191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0f95e0817298dbe40ba7e33e4d322b95edf2e04418eb34316da813e79f4008`  
		Last Modified: Tue, 21 Mar 2017 20:06:36 GMT  
		Size: 40.0 MB (40048477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f1a7b439fc0298d1756ec7972a30799f6154f194c322772293ed44a6a40a33`  
		Last Modified: Tue, 21 Mar 2017 20:08:17 GMT  
		Size: 206.9 MB (206927587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
