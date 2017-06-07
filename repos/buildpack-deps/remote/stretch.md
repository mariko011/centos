## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:a101c715e8bf9b9227ff501cb3916d886f6bd1bf9fe8460bd9b3d7c369c7c517
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318320783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4f75eedd21bb92320a0740826893520c5f74c0bb928de86cacae977f9cb359b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:49:26 GMT
ADD file:212fe5c6a3f3d10b0f5fc59f2019d5a12f266ff74b289f3ccc87bb878b01a437 in / 
# Wed, 07 Jun 2017 17:49:27 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:42:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:44:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:59:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:31a23e80b5c0100547b74b78634277f56239d4207fa7ea4f0540148525dbff03`  
		Last Modified: Wed, 07 Jun 2017 18:09:21 GMT  
		Size: 45.1 MB (45127747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5310eb3880dd8b025df521d43d0c3d3b1cebb727f0c9a297591fd50045e40ee0`  
		Last Modified: Wed, 07 Jun 2017 20:11:52 GMT  
		Size: 11.1 MB (11107732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d00f132dbb64ec781d2d4c943235a1e4cf52dd6ae86aac367e80baf5665cdd9`  
		Last Modified: Wed, 07 Jun 2017 20:12:35 GMT  
		Size: 50.9 MB (50941873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d517415f65d9439e321bbd207f6e7748a78fe7ccd69c6844f6afc7ebc7fda0`  
		Last Modified: Wed, 07 Jun 2017 20:13:51 GMT  
		Size: 211.1 MB (211143431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
