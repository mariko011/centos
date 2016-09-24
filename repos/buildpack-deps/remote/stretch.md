## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:45ed077817c658f47fa3e091af1cb197d1c7ec796d03995493ec24e6c36ed11c
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.9 MB (457872883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2bb9d6c3ff2f0fbc5c9a60d3b1f0bdd31f2fc13c83004e16613af07d01e91b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:28 GMT
ADD file:7ce6519c11433fef38ac7510dc2d21c40998ab6534cdea84a05c7901b03312b0 in / 
# Fri, 23 Sep 2016 18:09:29 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:28:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:29:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1c8605a31c0121c5be301d0e0941e101cf3a2e97d241a5c63665eb1e5f45a8cf`  
		Last Modified: Fri, 23 Sep 2016 18:13:08 GMT  
		Size: 42.6 MB (42646885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af59809f2854e8085776c10c91fc9a59efed0ceb5cb6fba3aeca46e952f35ec`  
		Last Modified: Fri, 23 Sep 2016 18:28:48 GMT  
		Size: 20.6 MB (20554227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6953593df1ea26e66f3e24a2a63810f34ff17bb438aabe12a228b7c891703bfc`  
		Last Modified: Fri, 23 Sep 2016 18:29:38 GMT  
		Size: 48.0 MB (48040514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe739731c2c0353ea6d1ce5f37316621d41f43a46b5bdab0129e7c468c2dbb8`  
		Last Modified: Sat, 24 Sep 2016 00:20:03 GMT  
		Size: 346.6 MB (346631257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
