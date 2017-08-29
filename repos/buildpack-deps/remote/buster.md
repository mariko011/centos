## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:7575a9626ea1cb9314b46500fe14793fe1d1e84981ca0d45a01477f6ae9b0c0a
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:buster` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.5 MB (495476131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9f31d92c918799404e95b723779d2da61906c13efc4d3791b55af22234eed6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:07 GMT
ADD file:180cb5dbe138819fcefea6df1b24cb0b3c4eb27d3e11d9169168ac8c545dc6a4 in / 
# Mon, 24 Jul 2017 16:51:07 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:21:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:21:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:22:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:33:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:92a0fac866cea04683848cdc7ad341b5f7f333a754a785f920f0b59652ff8dca`  
		Last Modified: Mon, 24 Jul 2017 16:54:18 GMT  
		Size: 48.0 MB (48020220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9735199f4b35481a9d87a5fd8492b3c316623f0598cc6420b95f1e5a4d952df4`  
		Last Modified: Mon, 24 Jul 2017 17:31:53 GMT  
		Size: 8.6 MB (8551450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff30133646678929c7e1e2664f1c1296cf386035c8ed9fbb88653a371961b948`  
		Last Modified: Mon, 24 Jul 2017 17:31:55 GMT  
		Size: 4.4 MB (4422792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ad005191191924d89811248fbb883f4458c346ce9151d136cf997008ccfe71`  
		Last Modified: Mon, 24 Jul 2017 17:32:17 GMT  
		Size: 51.0 MB (50960409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f801de258c7f7522fa5597c6f3445a1649cd89735cc729aac428cce4be2bbc`  
		Last Modified: Mon, 28 Aug 2017 23:56:25 GMT  
		Size: 383.5 MB (383521260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
