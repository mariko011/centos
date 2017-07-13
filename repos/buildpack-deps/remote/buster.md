## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:1525c643191278c94a939ef9bdc0ef0bf8091fa957001abd4d36e48a6f27830f
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:buster` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.8 MB (327804712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd4053da0c2ce8601faabd57f7a129fd85eac7a3217e00cbb7c9689446dbde0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:11:40 GMT
ADD file:dcc206f29a20c5126bd3af150ab0452c5b90961d19c653964091a0e9240447cf in / 
# Tue, 20 Jun 2017 20:11:41 GMT
CMD ["bash"]
# Thu, 13 Jul 2017 19:57:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 19:57:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jul 2017 19:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 19:59:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a257a6c28b7cff742a16c8a6f10fca67d04c2f1f008642ad4d63083eea8707b3`  
		Last Modified: Tue, 20 Jun 2017 20:32:55 GMT  
		Size: 45.1 MB (45131285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b333bad1459cd9bec18029c30b7b0f0df824dbcc3cce478e46acc846aead1ed`  
		Last Modified: Thu, 13 Jul 2017 20:01:29 GMT  
		Size: 11.3 MB (11267683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7998b9f65bebbf5e3ce7fa7eba3575bf834391e6c01c6ed7f499979994ba923c`  
		Last Modified: Thu, 13 Jul 2017 20:01:27 GMT  
		Size: 4.4 MB (4423019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e597409d237f6af80e5ad7352ea523e9957bf811e1831a1dc0349fc8760c93b9`  
		Last Modified: Thu, 13 Jul 2017 20:01:51 GMT  
		Size: 53.3 MB (53341372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045db37f3ecb150ccaff0961381dbe53c3107e89cf5be0c01a8f79d729a99fe8`  
		Last Modified: Thu, 13 Jul 2017 20:02:35 GMT  
		Size: 213.6 MB (213641353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
