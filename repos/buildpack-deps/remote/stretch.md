## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:06c92af1cd04b40ac439ecaaf33d318ed93d186d240ee47ba3b346026505e4fd
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.1 MB (312077413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65dffe2bb3bd2a9e4bfb93d0e3748126635638899d54539f0a96f21a552bc813`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:37:25 GMT
ADD file:bc30d36c1c3f3e470eff21bbb66e79cfe1959c536d7672c6ee126378c81e6d97 in / 
# Mon, 27 Feb 2017 20:37:26 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:20:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:20:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:22:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a6c161c4d6a5565cebc3a01c446ae8c083478103e47a144ecc11ccc81f6bb279`  
		Last Modified: Mon, 27 Feb 2017 20:46:44 GMT  
		Size: 44.1 MB (44066802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38dccc31626ac0801ab16782862a3a3a8e59193760e289ac917afb6c12bc9481`  
		Last Modified: Mon, 27 Feb 2017 22:00:55 GMT  
		Size: 21.0 MB (21017886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0594f81c2947035b4f72311892af69e30c5369f60487e52a95e95b733580053b`  
		Last Modified: Mon, 27 Feb 2017 22:01:30 GMT  
		Size: 40.0 MB (40047045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4913307e6547213e3f184c731e0d39f407c828d81a1186fd5ef23877d8dc10`  
		Last Modified: Mon, 27 Feb 2017 22:02:57 GMT  
		Size: 206.9 MB (206945680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
