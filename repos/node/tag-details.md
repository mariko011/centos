<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `node`

-	[`node:7.5.0`](#node750)
-	[`node:7.5`](#node75)
-	[`node:7`](#node7)
-	[`node:latest`](#nodelatest)
-	[`node:7.5.0-alpine`](#node750-alpine)
-	[`node:7.5-alpine`](#node75-alpine)
-	[`node:7-alpine`](#node7-alpine)
-	[`node:alpine`](#nodealpine)
-	[`node:7.5.0-onbuild`](#node750-onbuild)
-	[`node:7.5-onbuild`](#node75-onbuild)
-	[`node:7-onbuild`](#node7-onbuild)
-	[`node:onbuild`](#nodeonbuild)
-	[`node:7.5.0-slim`](#node750-slim)
-	[`node:7.5-slim`](#node75-slim)
-	[`node:7-slim`](#node7-slim)
-	[`node:slim`](#nodeslim)
-	[`node:7.5.0-wheezy`](#node750-wheezy)
-	[`node:7.5-wheezy`](#node75-wheezy)
-	[`node:7-wheezy`](#node7-wheezy)
-	[`node:wheezy`](#nodewheezy)
-	[`node:6.9.5`](#node695)
-	[`node:6.9`](#node69)
-	[`node:6`](#node6)
-	[`node:boron`](#nodeboron)
-	[`node:6.9.5-alpine`](#node695-alpine)
-	[`node:6.9-alpine`](#node69-alpine)
-	[`node:6-alpine`](#node6-alpine)
-	[`node:boron-alpine`](#nodeboron-alpine)
-	[`node:6.9.5-onbuild`](#node695-onbuild)
-	[`node:6.9-onbuild`](#node69-onbuild)
-	[`node:6-onbuild`](#node6-onbuild)
-	[`node:boron-onbuild`](#nodeboron-onbuild)
-	[`node:6.9.5-slim`](#node695-slim)
-	[`node:6.9-slim`](#node69-slim)
-	[`node:6-slim`](#node6-slim)
-	[`node:boron-slim`](#nodeboron-slim)
-	[`node:6.9.5-wheezy`](#node695-wheezy)
-	[`node:6.9-wheezy`](#node69-wheezy)
-	[`node:6-wheezy`](#node6-wheezy)
-	[`node:boron-wheezy`](#nodeboron-wheezy)
-	[`node:4.7.3`](#node473)
-	[`node:4.7`](#node47)
-	[`node:4`](#node4)
-	[`node:argon`](#nodeargon)
-	[`node:4.7.3-alpine`](#node473-alpine)
-	[`node:4.7-alpine`](#node47-alpine)
-	[`node:4-alpine`](#node4-alpine)
-	[`node:argon-alpine`](#nodeargon-alpine)
-	[`node:4.7.3-onbuild`](#node473-onbuild)
-	[`node:4.7-onbuild`](#node47-onbuild)
-	[`node:4-onbuild`](#node4-onbuild)
-	[`node:argon-onbuild`](#nodeargon-onbuild)
-	[`node:4.7.3-slim`](#node473-slim)
-	[`node:4.7-slim`](#node47-slim)
-	[`node:4-slim`](#node4-slim)
-	[`node:argon-slim`](#nodeargon-slim)
-	[`node:4.7.3-wheezy`](#node473-wheezy)
-	[`node:4.7-wheezy`](#node47-wheezy)
-	[`node:4-wheezy`](#node4-wheezy)
-	[`node:argon-wheezy`](#nodeargon-wheezy)

## `node:7.5.0`

```console
$ docker pull node@sha256:9ccd4088d444725999ee89810dc756a55e71dc95bb37882772c5b2a390efe003
```

-	Platforms:
	-	linux; amd64

### `node:7.5.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (258997147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b3438205508915bb4daa2162fd2b36af5c385a28d5eedb89ac22cf19479ef2`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:34 GMT
ENV NODE_VERSION=7.5.0
# Fri, 10 Feb 2017 01:33:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:39 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edad2411bbf6e1aab86b85406a3cbcd73bd5d8d933bf09b3f71ce6e8ed881d8`  
		Last Modified: Fri, 10 Feb 2017 17:46:59 GMT  
		Size: 15.4 MB (15365162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7.5`

```console
$ docker pull node@sha256:9ccd4088d444725999ee89810dc756a55e71dc95bb37882772c5b2a390efe003
```

-	Platforms:
	-	linux; amd64

### `node:7.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (258997147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b3438205508915bb4daa2162fd2b36af5c385a28d5eedb89ac22cf19479ef2`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:34 GMT
ENV NODE_VERSION=7.5.0
# Fri, 10 Feb 2017 01:33:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:39 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edad2411bbf6e1aab86b85406a3cbcd73bd5d8d933bf09b3f71ce6e8ed881d8`  
		Last Modified: Fri, 10 Feb 2017 17:46:59 GMT  
		Size: 15.4 MB (15365162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7`

```console
$ docker pull node@sha256:9ccd4088d444725999ee89810dc756a55e71dc95bb37882772c5b2a390efe003
```

-	Platforms:
	-	linux; amd64

### `node:7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (258997147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b3438205508915bb4daa2162fd2b36af5c385a28d5eedb89ac22cf19479ef2`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:34 GMT
ENV NODE_VERSION=7.5.0
# Fri, 10 Feb 2017 01:33:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:39 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edad2411bbf6e1aab86b85406a3cbcd73bd5d8d933bf09b3f71ce6e8ed881d8`  
		Last Modified: Fri, 10 Feb 2017 17:46:59 GMT  
		Size: 15.4 MB (15365162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:latest`

```console
$ docker pull node@sha256:9ccd4088d444725999ee89810dc756a55e71dc95bb37882772c5b2a390efe003
```

-	Platforms:
	-	linux; amd64

### `node:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (258997147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b3438205508915bb4daa2162fd2b36af5c385a28d5eedb89ac22cf19479ef2`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:34 GMT
ENV NODE_VERSION=7.5.0
# Fri, 10 Feb 2017 01:33:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:39 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edad2411bbf6e1aab86b85406a3cbcd73bd5d8d933bf09b3f71ce6e8ed881d8`  
		Last Modified: Fri, 10 Feb 2017 17:46:59 GMT  
		Size: 15.4 MB (15365162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7.5.0-alpine`

```console
$ docker pull node@sha256:d48ceef37d6675a3c1b15a948b21f1b3a6f99160220600a05561c92e8a78f195
```

-	Platforms:
	-	linux; amd64

### `node:7.5.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18744652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0895ecd79009e63e34c26b5c2fe60a9397dddecb0a3c928ddd9942f635faf760`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:20:05 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 16:59:52 GMT
ENV NODE_VERSION=7.5.0
# Wed, 01 Feb 2017 17:14:08 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Feb 2017 17:14:08 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2e4d69d5b4ef50035bd561be49cd838e30a4debc717c10a025e9562c4f27be`  
		Last Modified: Wed, 01 Feb 2017 17:35:13 GMT  
		Size: 16.4 MB (16431562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7.5-alpine`

```console
$ docker pull node@sha256:d48ceef37d6675a3c1b15a948b21f1b3a6f99160220600a05561c92e8a78f195
```

-	Platforms:
	-	linux; amd64

### `node:7.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18744652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0895ecd79009e63e34c26b5c2fe60a9397dddecb0a3c928ddd9942f635faf760`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:20:05 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 16:59:52 GMT
ENV NODE_VERSION=7.5.0
# Wed, 01 Feb 2017 17:14:08 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Feb 2017 17:14:08 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2e4d69d5b4ef50035bd561be49cd838e30a4debc717c10a025e9562c4f27be`  
		Last Modified: Wed, 01 Feb 2017 17:35:13 GMT  
		Size: 16.4 MB (16431562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7-alpine`

```console
$ docker pull node@sha256:d48ceef37d6675a3c1b15a948b21f1b3a6f99160220600a05561c92e8a78f195
```

-	Platforms:
	-	linux; amd64

### `node:7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18744652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0895ecd79009e63e34c26b5c2fe60a9397dddecb0a3c928ddd9942f635faf760`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:20:05 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 16:59:52 GMT
ENV NODE_VERSION=7.5.0
# Wed, 01 Feb 2017 17:14:08 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Feb 2017 17:14:08 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2e4d69d5b4ef50035bd561be49cd838e30a4debc717c10a025e9562c4f27be`  
		Last Modified: Wed, 01 Feb 2017 17:35:13 GMT  
		Size: 16.4 MB (16431562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:alpine`

```console
$ docker pull node@sha256:d48ceef37d6675a3c1b15a948b21f1b3a6f99160220600a05561c92e8a78f195
```

-	Platforms:
	-	linux; amd64

### `node:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18744652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0895ecd79009e63e34c26b5c2fe60a9397dddecb0a3c928ddd9942f635faf760`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:20:05 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 16:59:52 GMT
ENV NODE_VERSION=7.5.0
# Wed, 01 Feb 2017 17:14:08 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Feb 2017 17:14:08 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2e4d69d5b4ef50035bd561be49cd838e30a4debc717c10a025e9562c4f27be`  
		Last Modified: Wed, 01 Feb 2017 17:35:13 GMT  
		Size: 16.4 MB (16431562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7.5.0-onbuild`

```console
$ docker pull node@sha256:fd0b22f77e65eefcf2a3a8b0bf82a16d34717bb850a90516a5626619f5816a07
```

-	Platforms:
	-	linux; amd64

### `node:7.5.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (258997275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ca3173b1aadb22acaf7483fc805d6a928b960f2969c4e6ad563d19d8a5e5bd`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:34 GMT
ENV NODE_VERSION=7.5.0
# Fri, 10 Feb 2017 01:33:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:39 GMT
CMD ["node"]
# Fri, 10 Feb 2017 01:33:41 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:33:41 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:33:42 GMT
ONBUILD ARG NODE_ENV
# Fri, 10 Feb 2017 01:33:42 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 10 Feb 2017 01:33:43 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 10 Feb 2017 01:33:43 GMT
ONBUILD RUN npm install && npm cache clean
# Fri, 10 Feb 2017 01:33:43 GMT
ONBUILD COPY . /usr/src/app
# Fri, 10 Feb 2017 01:33:44 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edad2411bbf6e1aab86b85406a3cbcd73bd5d8d933bf09b3f71ce6e8ed881d8`  
		Last Modified: Fri, 10 Feb 2017 17:46:59 GMT  
		Size: 15.4 MB (15365162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fb0be088367cad15f93b56d71b009b63177448530c97977a07f4f83efca684`  
		Last Modified: Fri, 10 Feb 2017 17:48:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7.5-onbuild`

```console
$ docker pull node@sha256:fd0b22f77e65eefcf2a3a8b0bf82a16d34717bb850a90516a5626619f5816a07
```

-	Platforms:
	-	linux; amd64

### `node:7.5-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (258997275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ca3173b1aadb22acaf7483fc805d6a928b960f2969c4e6ad563d19d8a5e5bd`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:34 GMT
ENV NODE_VERSION=7.5.0
# Fri, 10 Feb 2017 01:33:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:39 GMT
CMD ["node"]
# Fri, 10 Feb 2017 01:33:41 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:33:41 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:33:42 GMT
ONBUILD ARG NODE_ENV
# Fri, 10 Feb 2017 01:33:42 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 10 Feb 2017 01:33:43 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 10 Feb 2017 01:33:43 GMT
ONBUILD RUN npm install && npm cache clean
# Fri, 10 Feb 2017 01:33:43 GMT
ONBUILD COPY . /usr/src/app
# Fri, 10 Feb 2017 01:33:44 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edad2411bbf6e1aab86b85406a3cbcd73bd5d8d933bf09b3f71ce6e8ed881d8`  
		Last Modified: Fri, 10 Feb 2017 17:46:59 GMT  
		Size: 15.4 MB (15365162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fb0be088367cad15f93b56d71b009b63177448530c97977a07f4f83efca684`  
		Last Modified: Fri, 10 Feb 2017 17:48:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7-onbuild`

```console
$ docker pull node@sha256:fd0b22f77e65eefcf2a3a8b0bf82a16d34717bb850a90516a5626619f5816a07
```

-	Platforms:
	-	linux; amd64

### `node:7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (258997275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ca3173b1aadb22acaf7483fc805d6a928b960f2969c4e6ad563d19d8a5e5bd`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:34 GMT
ENV NODE_VERSION=7.5.0
# Fri, 10 Feb 2017 01:33:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:39 GMT
CMD ["node"]
# Fri, 10 Feb 2017 01:33:41 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:33:41 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:33:42 GMT
ONBUILD ARG NODE_ENV
# Fri, 10 Feb 2017 01:33:42 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 10 Feb 2017 01:33:43 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 10 Feb 2017 01:33:43 GMT
ONBUILD RUN npm install && npm cache clean
# Fri, 10 Feb 2017 01:33:43 GMT
ONBUILD COPY . /usr/src/app
# Fri, 10 Feb 2017 01:33:44 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edad2411bbf6e1aab86b85406a3cbcd73bd5d8d933bf09b3f71ce6e8ed881d8`  
		Last Modified: Fri, 10 Feb 2017 17:46:59 GMT  
		Size: 15.4 MB (15365162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fb0be088367cad15f93b56d71b009b63177448530c97977a07f4f83efca684`  
		Last Modified: Fri, 10 Feb 2017 17:48:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:onbuild`

```console
$ docker pull node@sha256:fd0b22f77e65eefcf2a3a8b0bf82a16d34717bb850a90516a5626619f5816a07
```

-	Platforms:
	-	linux; amd64

### `node:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (258997275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ca3173b1aadb22acaf7483fc805d6a928b960f2969c4e6ad563d19d8a5e5bd`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:34 GMT
ENV NODE_VERSION=7.5.0
# Fri, 10 Feb 2017 01:33:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:39 GMT
CMD ["node"]
# Fri, 10 Feb 2017 01:33:41 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:33:41 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:33:42 GMT
ONBUILD ARG NODE_ENV
# Fri, 10 Feb 2017 01:33:42 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 10 Feb 2017 01:33:43 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 10 Feb 2017 01:33:43 GMT
ONBUILD RUN npm install && npm cache clean
# Fri, 10 Feb 2017 01:33:43 GMT
ONBUILD COPY . /usr/src/app
# Fri, 10 Feb 2017 01:33:44 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edad2411bbf6e1aab86b85406a3cbcd73bd5d8d933bf09b3f71ce6e8ed881d8`  
		Last Modified: Fri, 10 Feb 2017 17:46:59 GMT  
		Size: 15.4 MB (15365162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fb0be088367cad15f93b56d71b009b63177448530c97977a07f4f83efca684`  
		Last Modified: Fri, 10 Feb 2017 17:48:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7.5.0-slim`

```console
$ docker pull node@sha256:961c7606d67643c33a873e965d4470eea58c817adc1a919f88018aedc58c51f2
```

-	Platforms:
	-	linux; amd64

### `node:7.5.0-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85441946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a08de64d50fe86ce5ca66d0721a90989671e92a4effa0e76c3980d391061ba`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:14:12 GMT
ENV NODE_VERSION=7.5.0
# Wed, 01 Feb 2017 17:14:21 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:14:21 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5127ea3f03c514139c8accd2929406937bf307a53be9b7757b731508bd3e2448`  
		Last Modified: Wed, 01 Feb 2017 17:37:25 GMT  
		Size: 15.4 MB (15443738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7.5-slim`

```console
$ docker pull node@sha256:961c7606d67643c33a873e965d4470eea58c817adc1a919f88018aedc58c51f2
```

-	Platforms:
	-	linux; amd64

### `node:7.5-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85441946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a08de64d50fe86ce5ca66d0721a90989671e92a4effa0e76c3980d391061ba`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:14:12 GMT
ENV NODE_VERSION=7.5.0
# Wed, 01 Feb 2017 17:14:21 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:14:21 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5127ea3f03c514139c8accd2929406937bf307a53be9b7757b731508bd3e2448`  
		Last Modified: Wed, 01 Feb 2017 17:37:25 GMT  
		Size: 15.4 MB (15443738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7-slim`

```console
$ docker pull node@sha256:961c7606d67643c33a873e965d4470eea58c817adc1a919f88018aedc58c51f2
```

-	Platforms:
	-	linux; amd64

### `node:7-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85441946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a08de64d50fe86ce5ca66d0721a90989671e92a4effa0e76c3980d391061ba`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:14:12 GMT
ENV NODE_VERSION=7.5.0
# Wed, 01 Feb 2017 17:14:21 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:14:21 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5127ea3f03c514139c8accd2929406937bf307a53be9b7757b731508bd3e2448`  
		Last Modified: Wed, 01 Feb 2017 17:37:25 GMT  
		Size: 15.4 MB (15443738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:slim`

```console
$ docker pull node@sha256:961c7606d67643c33a873e965d4470eea58c817adc1a919f88018aedc58c51f2
```

-	Platforms:
	-	linux; amd64

### `node:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85441946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a08de64d50fe86ce5ca66d0721a90989671e92a4effa0e76c3980d391061ba`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:14:12 GMT
ENV NODE_VERSION=7.5.0
# Wed, 01 Feb 2017 17:14:21 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:14:21 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5127ea3f03c514139c8accd2929406937bf307a53be9b7757b731508bd3e2448`  
		Last Modified: Wed, 01 Feb 2017 17:37:25 GMT  
		Size: 15.4 MB (15443738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7.5.0-wheezy`

```console
$ docker pull node@sha256:60baba059fafc7bc0b9ce13efafa4bcd8b983b02bf6093d614496994c36d3873
```

-	Platforms:
	-	linux; amd64

### `node:7.5.0-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193724627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9942a35859d9c13c13696ed190dc8b1987506d284e6b5986f4716c28013dc315`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:44:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:33:11 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:33:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:45 GMT
ENV NODE_VERSION=7.5.0
# Fri, 10 Feb 2017 01:33:49 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:50 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0288640dbf2403284d3762ea20566e82748c399a83969cdb4a4781e43edab51f`  
		Last Modified: Thu, 09 Feb 2017 19:10:18 GMT  
		Size: 96.7 MB (96704625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4e7fedda28d3d462db589dc177be0c37a69ec87815d3a2c6cb6ee7e59e3cc`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb700b13cec0995fe9feb1f47de26b26b20b543c79d949dab204cf913488752`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 100.5 KB (100494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568ed0c16f8ee346ecee543f2f642f9185d9cf98cab48ca0aa3dc9095a7c63ca`  
		Last Modified: Fri, 10 Feb 2017 17:49:22 GMT  
		Size: 15.4 MB (15365160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7.5-wheezy`

```console
$ docker pull node@sha256:60baba059fafc7bc0b9ce13efafa4bcd8b983b02bf6093d614496994c36d3873
```

-	Platforms:
	-	linux; amd64

### `node:7.5-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193724627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9942a35859d9c13c13696ed190dc8b1987506d284e6b5986f4716c28013dc315`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:44:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:33:11 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:33:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:45 GMT
ENV NODE_VERSION=7.5.0
# Fri, 10 Feb 2017 01:33:49 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:50 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0288640dbf2403284d3762ea20566e82748c399a83969cdb4a4781e43edab51f`  
		Last Modified: Thu, 09 Feb 2017 19:10:18 GMT  
		Size: 96.7 MB (96704625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4e7fedda28d3d462db589dc177be0c37a69ec87815d3a2c6cb6ee7e59e3cc`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb700b13cec0995fe9feb1f47de26b26b20b543c79d949dab204cf913488752`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 100.5 KB (100494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568ed0c16f8ee346ecee543f2f642f9185d9cf98cab48ca0aa3dc9095a7c63ca`  
		Last Modified: Fri, 10 Feb 2017 17:49:22 GMT  
		Size: 15.4 MB (15365160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7-wheezy`

```console
$ docker pull node@sha256:60baba059fafc7bc0b9ce13efafa4bcd8b983b02bf6093d614496994c36d3873
```

-	Platforms:
	-	linux; amd64

### `node:7-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193724627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9942a35859d9c13c13696ed190dc8b1987506d284e6b5986f4716c28013dc315`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:44:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:33:11 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:33:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:45 GMT
ENV NODE_VERSION=7.5.0
# Fri, 10 Feb 2017 01:33:49 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:50 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0288640dbf2403284d3762ea20566e82748c399a83969cdb4a4781e43edab51f`  
		Last Modified: Thu, 09 Feb 2017 19:10:18 GMT  
		Size: 96.7 MB (96704625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4e7fedda28d3d462db589dc177be0c37a69ec87815d3a2c6cb6ee7e59e3cc`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb700b13cec0995fe9feb1f47de26b26b20b543c79d949dab204cf913488752`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 100.5 KB (100494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568ed0c16f8ee346ecee543f2f642f9185d9cf98cab48ca0aa3dc9095a7c63ca`  
		Last Modified: Fri, 10 Feb 2017 17:49:22 GMT  
		Size: 15.4 MB (15365160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:wheezy`

```console
$ docker pull node@sha256:60baba059fafc7bc0b9ce13efafa4bcd8b983b02bf6093d614496994c36d3873
```

-	Platforms:
	-	linux; amd64

### `node:wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193724627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9942a35859d9c13c13696ed190dc8b1987506d284e6b5986f4716c28013dc315`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:44:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:33:11 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:33:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:45 GMT
ENV NODE_VERSION=7.5.0
# Fri, 10 Feb 2017 01:33:49 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:50 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0288640dbf2403284d3762ea20566e82748c399a83969cdb4a4781e43edab51f`  
		Last Modified: Thu, 09 Feb 2017 19:10:18 GMT  
		Size: 96.7 MB (96704625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4e7fedda28d3d462db589dc177be0c37a69ec87815d3a2c6cb6ee7e59e3cc`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb700b13cec0995fe9feb1f47de26b26b20b543c79d949dab204cf913488752`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 100.5 KB (100494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568ed0c16f8ee346ecee543f2f642f9185d9cf98cab48ca0aa3dc9095a7c63ca`  
		Last Modified: Fri, 10 Feb 2017 17:49:22 GMT  
		Size: 15.4 MB (15365160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.9.5`

```console
$ docker pull node@sha256:cf454b60ee452473f963f60ff18ba75b8e900174aae9bf0e8051e5a83db85b30
```

-	Platforms:
	-	linux; amd64

### `node:6.9.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257567293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde8ba396275ebd79e67dc99e6e25e1920eaba7cae21a7000e0e510610ce9b03`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:17 GMT
ENV NODE_VERSION=6.9.5
# Fri, 10 Feb 2017 01:33:22 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:23 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68bca313f9e9785be98a35f345a034c0510819c2fb224d520fa8c525e200264`  
		Last Modified: Fri, 10 Feb 2017 17:43:21 GMT  
		Size: 13.9 MB (13935308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.9`

```console
$ docker pull node@sha256:cf454b60ee452473f963f60ff18ba75b8e900174aae9bf0e8051e5a83db85b30
```

-	Platforms:
	-	linux; amd64

### `node:6.9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257567293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde8ba396275ebd79e67dc99e6e25e1920eaba7cae21a7000e0e510610ce9b03`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:17 GMT
ENV NODE_VERSION=6.9.5
# Fri, 10 Feb 2017 01:33:22 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:23 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68bca313f9e9785be98a35f345a034c0510819c2fb224d520fa8c525e200264`  
		Last Modified: Fri, 10 Feb 2017 17:43:21 GMT  
		Size: 13.9 MB (13935308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6`

```console
$ docker pull node@sha256:cf454b60ee452473f963f60ff18ba75b8e900174aae9bf0e8051e5a83db85b30
```

-	Platforms:
	-	linux; amd64

### `node:6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257567293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde8ba396275ebd79e67dc99e6e25e1920eaba7cae21a7000e0e510610ce9b03`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:17 GMT
ENV NODE_VERSION=6.9.5
# Fri, 10 Feb 2017 01:33:22 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:23 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68bca313f9e9785be98a35f345a034c0510819c2fb224d520fa8c525e200264`  
		Last Modified: Fri, 10 Feb 2017 17:43:21 GMT  
		Size: 13.9 MB (13935308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:boron`

```console
$ docker pull node@sha256:cf454b60ee452473f963f60ff18ba75b8e900174aae9bf0e8051e5a83db85b30
```

-	Platforms:
	-	linux; amd64

### `node:boron` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257567293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde8ba396275ebd79e67dc99e6e25e1920eaba7cae21a7000e0e510610ce9b03`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:17 GMT
ENV NODE_VERSION=6.9.5
# Fri, 10 Feb 2017 01:33:22 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:23 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68bca313f9e9785be98a35f345a034c0510819c2fb224d520fa8c525e200264`  
		Last Modified: Fri, 10 Feb 2017 17:43:21 GMT  
		Size: 13.9 MB (13935308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.9.5-alpine`

```console
$ docker pull node@sha256:c44622b4a3f2ef62895fa90bc5b3723d4c348b3b0ec1495a3a4ad60dcfe80973
```

-	Platforms:
	-	linux; amd64

### `node:6.9.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66cf88e4fc205d9112a5e0cb65d66838f89be81f7862f9dec4f78e5e1f700d14`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:20:05 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:14:34 GMT
ENV NODE_VERSION=6.9.5
# Wed, 01 Feb 2017 17:25:51 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Feb 2017 17:25:51 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578bb84776dc22ddd7e5d514d0ab96260b8d6352487d6e52b7eec282ac0b396b`  
		Last Modified: Wed, 01 Feb 2017 17:40:55 GMT  
		Size: 14.9 MB (14908552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.9-alpine`

```console
$ docker pull node@sha256:c44622b4a3f2ef62895fa90bc5b3723d4c348b3b0ec1495a3a4ad60dcfe80973
```

-	Platforms:
	-	linux; amd64

### `node:6.9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66cf88e4fc205d9112a5e0cb65d66838f89be81f7862f9dec4f78e5e1f700d14`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:20:05 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:14:34 GMT
ENV NODE_VERSION=6.9.5
# Wed, 01 Feb 2017 17:25:51 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Feb 2017 17:25:51 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578bb84776dc22ddd7e5d514d0ab96260b8d6352487d6e52b7eec282ac0b396b`  
		Last Modified: Wed, 01 Feb 2017 17:40:55 GMT  
		Size: 14.9 MB (14908552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6-alpine`

```console
$ docker pull node@sha256:c44622b4a3f2ef62895fa90bc5b3723d4c348b3b0ec1495a3a4ad60dcfe80973
```

-	Platforms:
	-	linux; amd64

### `node:6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66cf88e4fc205d9112a5e0cb65d66838f89be81f7862f9dec4f78e5e1f700d14`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:20:05 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:14:34 GMT
ENV NODE_VERSION=6.9.5
# Wed, 01 Feb 2017 17:25:51 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Feb 2017 17:25:51 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578bb84776dc22ddd7e5d514d0ab96260b8d6352487d6e52b7eec282ac0b396b`  
		Last Modified: Wed, 01 Feb 2017 17:40:55 GMT  
		Size: 14.9 MB (14908552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:boron-alpine`

```console
$ docker pull node@sha256:c44622b4a3f2ef62895fa90bc5b3723d4c348b3b0ec1495a3a4ad60dcfe80973
```

-	Platforms:
	-	linux; amd64

### `node:boron-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66cf88e4fc205d9112a5e0cb65d66838f89be81f7862f9dec4f78e5e1f700d14`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:20:05 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:14:34 GMT
ENV NODE_VERSION=6.9.5
# Wed, 01 Feb 2017 17:25:51 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Feb 2017 17:25:51 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578bb84776dc22ddd7e5d514d0ab96260b8d6352487d6e52b7eec282ac0b396b`  
		Last Modified: Wed, 01 Feb 2017 17:40:55 GMT  
		Size: 14.9 MB (14908552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.9.5-onbuild`

```console
$ docker pull node@sha256:ed130e71d345052c37da3b3aaf4999f8821646ffe244ef823427f4a5fc89b305
```

-	Platforms:
	-	linux; amd64

### `node:6.9.5-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257567420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea6ec7abd4213c91dbd0fed458da205aff344474af82fde2a1e3dbe486479b4`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:17 GMT
ENV NODE_VERSION=6.9.5
# Fri, 10 Feb 2017 01:33:22 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:23 GMT
CMD ["node"]
# Fri, 10 Feb 2017 01:33:24 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:33:25 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:33:25 GMT
ONBUILD ARG NODE_ENV
# Fri, 10 Feb 2017 01:33:26 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 10 Feb 2017 01:33:26 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 10 Feb 2017 01:33:27 GMT
ONBUILD RUN npm install && npm cache clean
# Fri, 10 Feb 2017 01:33:27 GMT
ONBUILD COPY . /usr/src/app
# Fri, 10 Feb 2017 01:33:27 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68bca313f9e9785be98a35f345a034c0510819c2fb224d520fa8c525e200264`  
		Last Modified: Fri, 10 Feb 2017 17:43:21 GMT  
		Size: 13.9 MB (13935308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb7c8b4fc6114211e0d5119cbee18f94d6b768895eb39e80c813ec601a70789`  
		Last Modified: Fri, 10 Feb 2017 17:44:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.9-onbuild`

```console
$ docker pull node@sha256:ed130e71d345052c37da3b3aaf4999f8821646ffe244ef823427f4a5fc89b305
```

-	Platforms:
	-	linux; amd64

### `node:6.9-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257567420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea6ec7abd4213c91dbd0fed458da205aff344474af82fde2a1e3dbe486479b4`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:17 GMT
ENV NODE_VERSION=6.9.5
# Fri, 10 Feb 2017 01:33:22 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:23 GMT
CMD ["node"]
# Fri, 10 Feb 2017 01:33:24 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:33:25 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:33:25 GMT
ONBUILD ARG NODE_ENV
# Fri, 10 Feb 2017 01:33:26 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 10 Feb 2017 01:33:26 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 10 Feb 2017 01:33:27 GMT
ONBUILD RUN npm install && npm cache clean
# Fri, 10 Feb 2017 01:33:27 GMT
ONBUILD COPY . /usr/src/app
# Fri, 10 Feb 2017 01:33:27 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68bca313f9e9785be98a35f345a034c0510819c2fb224d520fa8c525e200264`  
		Last Modified: Fri, 10 Feb 2017 17:43:21 GMT  
		Size: 13.9 MB (13935308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb7c8b4fc6114211e0d5119cbee18f94d6b768895eb39e80c813ec601a70789`  
		Last Modified: Fri, 10 Feb 2017 17:44:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6-onbuild`

```console
$ docker pull node@sha256:ed130e71d345052c37da3b3aaf4999f8821646ffe244ef823427f4a5fc89b305
```

-	Platforms:
	-	linux; amd64

### `node:6-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257567420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea6ec7abd4213c91dbd0fed458da205aff344474af82fde2a1e3dbe486479b4`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:17 GMT
ENV NODE_VERSION=6.9.5
# Fri, 10 Feb 2017 01:33:22 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:23 GMT
CMD ["node"]
# Fri, 10 Feb 2017 01:33:24 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:33:25 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:33:25 GMT
ONBUILD ARG NODE_ENV
# Fri, 10 Feb 2017 01:33:26 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 10 Feb 2017 01:33:26 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 10 Feb 2017 01:33:27 GMT
ONBUILD RUN npm install && npm cache clean
# Fri, 10 Feb 2017 01:33:27 GMT
ONBUILD COPY . /usr/src/app
# Fri, 10 Feb 2017 01:33:27 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68bca313f9e9785be98a35f345a034c0510819c2fb224d520fa8c525e200264`  
		Last Modified: Fri, 10 Feb 2017 17:43:21 GMT  
		Size: 13.9 MB (13935308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb7c8b4fc6114211e0d5119cbee18f94d6b768895eb39e80c813ec601a70789`  
		Last Modified: Fri, 10 Feb 2017 17:44:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:boron-onbuild`

```console
$ docker pull node@sha256:ed130e71d345052c37da3b3aaf4999f8821646ffe244ef823427f4a5fc89b305
```

-	Platforms:
	-	linux; amd64

### `node:boron-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257567420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea6ec7abd4213c91dbd0fed458da205aff344474af82fde2a1e3dbe486479b4`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:17 GMT
ENV NODE_VERSION=6.9.5
# Fri, 10 Feb 2017 01:33:22 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:23 GMT
CMD ["node"]
# Fri, 10 Feb 2017 01:33:24 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:33:25 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:33:25 GMT
ONBUILD ARG NODE_ENV
# Fri, 10 Feb 2017 01:33:26 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 10 Feb 2017 01:33:26 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 10 Feb 2017 01:33:27 GMT
ONBUILD RUN npm install && npm cache clean
# Fri, 10 Feb 2017 01:33:27 GMT
ONBUILD COPY . /usr/src/app
# Fri, 10 Feb 2017 01:33:27 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68bca313f9e9785be98a35f345a034c0510819c2fb224d520fa8c525e200264`  
		Last Modified: Fri, 10 Feb 2017 17:43:21 GMT  
		Size: 13.9 MB (13935308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb7c8b4fc6114211e0d5119cbee18f94d6b768895eb39e80c813ec601a70789`  
		Last Modified: Fri, 10 Feb 2017 17:44:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.9.5-slim`

```console
$ docker pull node@sha256:adba0de8e39679d351d040830de6a0bce701b0825b99c829ef12432b69a770e9
```

-	Platforms:
	-	linux; amd64

### `node:6.9.5-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84012326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4432b160620391ad6d5c2b1136a7aae4bdd59cdff7f3d31bcac8a1103f270be0`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:25:55 GMT
ENV NODE_VERSION=6.9.5
# Wed, 01 Feb 2017 17:26:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:26:04 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942a1cc8cbe652f022aeb3fe261121476655e14f10f89ed733bebacc3895d80b`  
		Last Modified: Wed, 01 Feb 2017 17:43:06 GMT  
		Size: 14.0 MB (14014118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.9-slim`

```console
$ docker pull node@sha256:adba0de8e39679d351d040830de6a0bce701b0825b99c829ef12432b69a770e9
```

-	Platforms:
	-	linux; amd64

### `node:6.9-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84012326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4432b160620391ad6d5c2b1136a7aae4bdd59cdff7f3d31bcac8a1103f270be0`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:25:55 GMT
ENV NODE_VERSION=6.9.5
# Wed, 01 Feb 2017 17:26:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:26:04 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942a1cc8cbe652f022aeb3fe261121476655e14f10f89ed733bebacc3895d80b`  
		Last Modified: Wed, 01 Feb 2017 17:43:06 GMT  
		Size: 14.0 MB (14014118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6-slim`

```console
$ docker pull node@sha256:adba0de8e39679d351d040830de6a0bce701b0825b99c829ef12432b69a770e9
```

-	Platforms:
	-	linux; amd64

### `node:6-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84012326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4432b160620391ad6d5c2b1136a7aae4bdd59cdff7f3d31bcac8a1103f270be0`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:25:55 GMT
ENV NODE_VERSION=6.9.5
# Wed, 01 Feb 2017 17:26:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:26:04 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942a1cc8cbe652f022aeb3fe261121476655e14f10f89ed733bebacc3895d80b`  
		Last Modified: Wed, 01 Feb 2017 17:43:06 GMT  
		Size: 14.0 MB (14014118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:boron-slim`

```console
$ docker pull node@sha256:adba0de8e39679d351d040830de6a0bce701b0825b99c829ef12432b69a770e9
```

-	Platforms:
	-	linux; amd64

### `node:boron-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84012326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4432b160620391ad6d5c2b1136a7aae4bdd59cdff7f3d31bcac8a1103f270be0`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:25:55 GMT
ENV NODE_VERSION=6.9.5
# Wed, 01 Feb 2017 17:26:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:26:04 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942a1cc8cbe652f022aeb3fe261121476655e14f10f89ed733bebacc3895d80b`  
		Last Modified: Wed, 01 Feb 2017 17:43:06 GMT  
		Size: 14.0 MB (14014118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.9.5-wheezy`

```console
$ docker pull node@sha256:96c0186d3742525f9503636dc81831d8a237561b3e6cade7d416ffd04ba24d48
```

-	Platforms:
	-	linux; amd64

### `node:6.9.5-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192294770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38b62fb934af5e4d4d74bc61b87bfcca3c504fdab0c9a443628052164a5c1d6`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:44:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:33:11 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:33:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:28 GMT
ENV NODE_VERSION=6.9.5
# Fri, 10 Feb 2017 01:33:32 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:33 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0288640dbf2403284d3762ea20566e82748c399a83969cdb4a4781e43edab51f`  
		Last Modified: Thu, 09 Feb 2017 19:10:18 GMT  
		Size: 96.7 MB (96704625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4e7fedda28d3d462db589dc177be0c37a69ec87815d3a2c6cb6ee7e59e3cc`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb700b13cec0995fe9feb1f47de26b26b20b543c79d949dab204cf913488752`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 100.5 KB (100494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700da241a4958fd7e497578adb8688c73cb1d4740a0f534007d6f47d53e8ee90`  
		Last Modified: Fri, 10 Feb 2017 17:45:43 GMT  
		Size: 13.9 MB (13935303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.9-wheezy`

```console
$ docker pull node@sha256:96c0186d3742525f9503636dc81831d8a237561b3e6cade7d416ffd04ba24d48
```

-	Platforms:
	-	linux; amd64

### `node:6.9-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192294770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38b62fb934af5e4d4d74bc61b87bfcca3c504fdab0c9a443628052164a5c1d6`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:44:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:33:11 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:33:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:28 GMT
ENV NODE_VERSION=6.9.5
# Fri, 10 Feb 2017 01:33:32 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:33 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0288640dbf2403284d3762ea20566e82748c399a83969cdb4a4781e43edab51f`  
		Last Modified: Thu, 09 Feb 2017 19:10:18 GMT  
		Size: 96.7 MB (96704625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4e7fedda28d3d462db589dc177be0c37a69ec87815d3a2c6cb6ee7e59e3cc`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb700b13cec0995fe9feb1f47de26b26b20b543c79d949dab204cf913488752`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 100.5 KB (100494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700da241a4958fd7e497578adb8688c73cb1d4740a0f534007d6f47d53e8ee90`  
		Last Modified: Fri, 10 Feb 2017 17:45:43 GMT  
		Size: 13.9 MB (13935303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6-wheezy`

```console
$ docker pull node@sha256:96c0186d3742525f9503636dc81831d8a237561b3e6cade7d416ffd04ba24d48
```

-	Platforms:
	-	linux; amd64

### `node:6-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192294770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38b62fb934af5e4d4d74bc61b87bfcca3c504fdab0c9a443628052164a5c1d6`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:44:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:33:11 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:33:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:28 GMT
ENV NODE_VERSION=6.9.5
# Fri, 10 Feb 2017 01:33:32 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:33 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0288640dbf2403284d3762ea20566e82748c399a83969cdb4a4781e43edab51f`  
		Last Modified: Thu, 09 Feb 2017 19:10:18 GMT  
		Size: 96.7 MB (96704625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4e7fedda28d3d462db589dc177be0c37a69ec87815d3a2c6cb6ee7e59e3cc`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb700b13cec0995fe9feb1f47de26b26b20b543c79d949dab204cf913488752`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 100.5 KB (100494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700da241a4958fd7e497578adb8688c73cb1d4740a0f534007d6f47d53e8ee90`  
		Last Modified: Fri, 10 Feb 2017 17:45:43 GMT  
		Size: 13.9 MB (13935303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:boron-wheezy`

```console
$ docker pull node@sha256:96c0186d3742525f9503636dc81831d8a237561b3e6cade7d416ffd04ba24d48
```

-	Platforms:
	-	linux; amd64

### `node:boron-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192294770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38b62fb934af5e4d4d74bc61b87bfcca3c504fdab0c9a443628052164a5c1d6`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:44:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:33:11 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:33:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:28 GMT
ENV NODE_VERSION=6.9.5
# Fri, 10 Feb 2017 01:33:32 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:33 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0288640dbf2403284d3762ea20566e82748c399a83969cdb4a4781e43edab51f`  
		Last Modified: Thu, 09 Feb 2017 19:10:18 GMT  
		Size: 96.7 MB (96704625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4e7fedda28d3d462db589dc177be0c37a69ec87815d3a2c6cb6ee7e59e3cc`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb700b13cec0995fe9feb1f47de26b26b20b543c79d949dab204cf913488752`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 100.5 KB (100494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700da241a4958fd7e497578adb8688c73cb1d4740a0f534007d6f47d53e8ee90`  
		Last Modified: Fri, 10 Feb 2017 17:45:43 GMT  
		Size: 13.9 MB (13935303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.7.3`

```console
$ docker pull node@sha256:49a36121a8beecd1a5d6d057aa7d7be62d98a74ce23f6348107ee8c16e9b3371
```

-	Platforms:
	-	linux; amd64

### `node:4.7.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255817775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a83b6db17dc05076bb95042860c784550aa4498bcbedc4091869e0c0d47f90`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NODE_VERSION=4.7.3
# Fri, 10 Feb 2017 01:32:59 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:00 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1496391d9d155720aaf94deb694968ea0d4ffb5463417c126e50ce0942fb46e5`  
		Last Modified: Fri, 10 Feb 2017 17:39:40 GMT  
		Size: 12.2 MB (12185790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.7`

```console
$ docker pull node@sha256:49a36121a8beecd1a5d6d057aa7d7be62d98a74ce23f6348107ee8c16e9b3371
```

-	Platforms:
	-	linux; amd64

### `node:4.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255817775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a83b6db17dc05076bb95042860c784550aa4498bcbedc4091869e0c0d47f90`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NODE_VERSION=4.7.3
# Fri, 10 Feb 2017 01:32:59 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:00 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1496391d9d155720aaf94deb694968ea0d4ffb5463417c126e50ce0942fb46e5`  
		Last Modified: Fri, 10 Feb 2017 17:39:40 GMT  
		Size: 12.2 MB (12185790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4`

```console
$ docker pull node@sha256:49a36121a8beecd1a5d6d057aa7d7be62d98a74ce23f6348107ee8c16e9b3371
```

-	Platforms:
	-	linux; amd64

### `node:4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255817775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a83b6db17dc05076bb95042860c784550aa4498bcbedc4091869e0c0d47f90`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NODE_VERSION=4.7.3
# Fri, 10 Feb 2017 01:32:59 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:00 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1496391d9d155720aaf94deb694968ea0d4ffb5463417c126e50ce0942fb46e5`  
		Last Modified: Fri, 10 Feb 2017 17:39:40 GMT  
		Size: 12.2 MB (12185790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:argon`

```console
$ docker pull node@sha256:49a36121a8beecd1a5d6d057aa7d7be62d98a74ce23f6348107ee8c16e9b3371
```

-	Platforms:
	-	linux; amd64

### `node:argon` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255817775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a83b6db17dc05076bb95042860c784550aa4498bcbedc4091869e0c0d47f90`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NODE_VERSION=4.7.3
# Fri, 10 Feb 2017 01:32:59 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:00 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1496391d9d155720aaf94deb694968ea0d4ffb5463417c126e50ce0942fb46e5`  
		Last Modified: Fri, 10 Feb 2017 17:39:40 GMT  
		Size: 12.2 MB (12185790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.7.3-alpine`

```console
$ docker pull node@sha256:825949ac2ac08d73cca40dda3ad4ac641a78f382b8e97fdcc7e84548981a06e4
```

-	Platforms:
	-	linux; amd64

### `node:4.7.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12792868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9c55c1ac21d3022379f3ee54d3cb1844c90665716e1c0a169c7aa6e54f845f`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:20:05 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:26:15 GMT
ENV NODE_VERSION=4.7.3
# Wed, 01 Feb 2017 17:33:19 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Feb 2017 17:33:19 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8862f810bb5a123dbfc4436ae722380eacb6412ea9935a60c0ab76d4f0c4c7`  
		Last Modified: Wed, 01 Feb 2017 17:46:35 GMT  
		Size: 10.5 MB (10479778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.7-alpine`

```console
$ docker pull node@sha256:825949ac2ac08d73cca40dda3ad4ac641a78f382b8e97fdcc7e84548981a06e4
```

-	Platforms:
	-	linux; amd64

### `node:4.7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12792868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9c55c1ac21d3022379f3ee54d3cb1844c90665716e1c0a169c7aa6e54f845f`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:20:05 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:26:15 GMT
ENV NODE_VERSION=4.7.3
# Wed, 01 Feb 2017 17:33:19 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Feb 2017 17:33:19 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8862f810bb5a123dbfc4436ae722380eacb6412ea9935a60c0ab76d4f0c4c7`  
		Last Modified: Wed, 01 Feb 2017 17:46:35 GMT  
		Size: 10.5 MB (10479778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4-alpine`

```console
$ docker pull node@sha256:825949ac2ac08d73cca40dda3ad4ac641a78f382b8e97fdcc7e84548981a06e4
```

-	Platforms:
	-	linux; amd64

### `node:4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12792868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9c55c1ac21d3022379f3ee54d3cb1844c90665716e1c0a169c7aa6e54f845f`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:20:05 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:26:15 GMT
ENV NODE_VERSION=4.7.3
# Wed, 01 Feb 2017 17:33:19 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Feb 2017 17:33:19 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8862f810bb5a123dbfc4436ae722380eacb6412ea9935a60c0ab76d4f0c4c7`  
		Last Modified: Wed, 01 Feb 2017 17:46:35 GMT  
		Size: 10.5 MB (10479778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:argon-alpine`

```console
$ docker pull node@sha256:825949ac2ac08d73cca40dda3ad4ac641a78f382b8e97fdcc7e84548981a06e4
```

-	Platforms:
	-	linux; amd64

### `node:argon-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 MB (12792868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9c55c1ac21d3022379f3ee54d3cb1844c90665716e1c0a169c7aa6e54f845f`
-	Default Command: `["node"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:20:05 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:26:15 GMT
ENV NODE_VERSION=4.7.3
# Wed, 01 Feb 2017 17:33:19 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 01 Feb 2017 17:33:19 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8862f810bb5a123dbfc4436ae722380eacb6412ea9935a60c0ab76d4f0c4c7`  
		Last Modified: Wed, 01 Feb 2017 17:46:35 GMT  
		Size: 10.5 MB (10479778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.7.3-onbuild`

```console
$ docker pull node@sha256:c2bf29a5d4eba77cccec90cd5f19f7a04fcd1f474550990895ca09e69bba3a61
```

-	Platforms:
	-	linux; amd64

### `node:4.7.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255817901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50c6661cc16b92db621349f8cfa3c529553ac4a6bd58290ef9c74542479d5a4`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NODE_VERSION=4.7.3
# Fri, 10 Feb 2017 01:32:59 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:00 GMT
CMD ["node"]
# Fri, 10 Feb 2017 01:33:01 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:33:02 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:33:02 GMT
ONBUILD ARG NODE_ENV
# Fri, 10 Feb 2017 01:33:03 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 10 Feb 2017 01:33:03 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 10 Feb 2017 01:33:04 GMT
ONBUILD RUN npm install && npm cache clean
# Fri, 10 Feb 2017 01:33:04 GMT
ONBUILD COPY . /usr/src/app
# Fri, 10 Feb 2017 01:33:05 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1496391d9d155720aaf94deb694968ea0d4ffb5463417c126e50ce0942fb46e5`  
		Last Modified: Fri, 10 Feb 2017 17:39:40 GMT  
		Size: 12.2 MB (12185790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3584990528b12263b9aebe1b8a9ceee6f8d54ed4efb1c250127d945db0524a7c`  
		Last Modified: Fri, 10 Feb 2017 17:40:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.7-onbuild`

```console
$ docker pull node@sha256:c2bf29a5d4eba77cccec90cd5f19f7a04fcd1f474550990895ca09e69bba3a61
```

-	Platforms:
	-	linux; amd64

### `node:4.7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255817901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50c6661cc16b92db621349f8cfa3c529553ac4a6bd58290ef9c74542479d5a4`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NODE_VERSION=4.7.3
# Fri, 10 Feb 2017 01:32:59 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:00 GMT
CMD ["node"]
# Fri, 10 Feb 2017 01:33:01 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:33:02 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:33:02 GMT
ONBUILD ARG NODE_ENV
# Fri, 10 Feb 2017 01:33:03 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 10 Feb 2017 01:33:03 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 10 Feb 2017 01:33:04 GMT
ONBUILD RUN npm install && npm cache clean
# Fri, 10 Feb 2017 01:33:04 GMT
ONBUILD COPY . /usr/src/app
# Fri, 10 Feb 2017 01:33:05 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1496391d9d155720aaf94deb694968ea0d4ffb5463417c126e50ce0942fb46e5`  
		Last Modified: Fri, 10 Feb 2017 17:39:40 GMT  
		Size: 12.2 MB (12185790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3584990528b12263b9aebe1b8a9ceee6f8d54ed4efb1c250127d945db0524a7c`  
		Last Modified: Fri, 10 Feb 2017 17:40:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4-onbuild`

```console
$ docker pull node@sha256:c2bf29a5d4eba77cccec90cd5f19f7a04fcd1f474550990895ca09e69bba3a61
```

-	Platforms:
	-	linux; amd64

### `node:4-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255817901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50c6661cc16b92db621349f8cfa3c529553ac4a6bd58290ef9c74542479d5a4`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NODE_VERSION=4.7.3
# Fri, 10 Feb 2017 01:32:59 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:00 GMT
CMD ["node"]
# Fri, 10 Feb 2017 01:33:01 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:33:02 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:33:02 GMT
ONBUILD ARG NODE_ENV
# Fri, 10 Feb 2017 01:33:03 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 10 Feb 2017 01:33:03 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 10 Feb 2017 01:33:04 GMT
ONBUILD RUN npm install && npm cache clean
# Fri, 10 Feb 2017 01:33:04 GMT
ONBUILD COPY . /usr/src/app
# Fri, 10 Feb 2017 01:33:05 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1496391d9d155720aaf94deb694968ea0d4ffb5463417c126e50ce0942fb46e5`  
		Last Modified: Fri, 10 Feb 2017 17:39:40 GMT  
		Size: 12.2 MB (12185790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3584990528b12263b9aebe1b8a9ceee6f8d54ed4efb1c250127d945db0524a7c`  
		Last Modified: Fri, 10 Feb 2017 17:40:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:argon-onbuild`

```console
$ docker pull node@sha256:c2bf29a5d4eba77cccec90cd5f19f7a04fcd1f474550990895ca09e69bba3a61
```

-	Platforms:
	-	linux; amd64

### `node:argon-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255817901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50c6661cc16b92db621349f8cfa3c529553ac4a6bd58290ef9c74542479d5a4`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:32:50 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:32:54 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:32:54 GMT
ENV NODE_VERSION=4.7.3
# Fri, 10 Feb 2017 01:32:59 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:00 GMT
CMD ["node"]
# Fri, 10 Feb 2017 01:33:01 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Feb 2017 01:33:02 GMT
WORKDIR /usr/src/app
# Fri, 10 Feb 2017 01:33:02 GMT
ONBUILD ARG NODE_ENV
# Fri, 10 Feb 2017 01:33:03 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Fri, 10 Feb 2017 01:33:03 GMT
ONBUILD COPY package.json /usr/src/app/
# Fri, 10 Feb 2017 01:33:04 GMT
ONBUILD RUN npm install && npm cache clean
# Fri, 10 Feb 2017 01:33:04 GMT
ONBUILD COPY . /usr/src/app
# Fri, 10 Feb 2017 01:33:05 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d67d70af20eacb1f44361dc61d94cf38a7ee5167a030c88d6906cf76611455`  
		Last Modified: Fri, 10 Feb 2017 17:39:35 GMT  
		Size: 4.4 KB (4361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddfaaf1b6a67e1384b5ea8db83c32fffb9cb38ba1663840c633a24e33443c32`  
		Last Modified: Fri, 10 Feb 2017 17:39:36 GMT  
		Size: 100.5 KB (100493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1496391d9d155720aaf94deb694968ea0d4ffb5463417c126e50ce0942fb46e5`  
		Last Modified: Fri, 10 Feb 2017 17:39:40 GMT  
		Size: 12.2 MB (12185790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3584990528b12263b9aebe1b8a9ceee6f8d54ed4efb1c250127d945db0524a7c`  
		Last Modified: Fri, 10 Feb 2017 17:40:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.7.3-slim`

```console
$ docker pull node@sha256:9267e8076c6a7f46762a019c0fdbe9299ae1425eacbcf8dad0482daa8d010187
```

-	Platforms:
	-	linux; amd64

### `node:4.7.3-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82262867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f1ce929cc24f0aedd672a66fc65dc22961669eb46b3c37422b5993c57f656a`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:33:23 GMT
ENV NODE_VERSION=4.7.3
# Wed, 01 Feb 2017 17:33:32 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:33:32 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fff1a933f493b1ab353ba1f52e973e29b9e20629350edd628e309b9adee3a09`  
		Last Modified: Wed, 01 Feb 2017 17:48:48 GMT  
		Size: 12.3 MB (12264659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.7-slim`

```console
$ docker pull node@sha256:9267e8076c6a7f46762a019c0fdbe9299ae1425eacbcf8dad0482daa8d010187
```

-	Platforms:
	-	linux; amd64

### `node:4.7-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82262867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f1ce929cc24f0aedd672a66fc65dc22961669eb46b3c37422b5993c57f656a`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:33:23 GMT
ENV NODE_VERSION=4.7.3
# Wed, 01 Feb 2017 17:33:32 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:33:32 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fff1a933f493b1ab353ba1f52e973e29b9e20629350edd628e309b9adee3a09`  
		Last Modified: Wed, 01 Feb 2017 17:48:48 GMT  
		Size: 12.3 MB (12264659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4-slim`

```console
$ docker pull node@sha256:9267e8076c6a7f46762a019c0fdbe9299ae1425eacbcf8dad0482daa8d010187
```

-	Platforms:
	-	linux; amd64

### `node:4-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82262867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f1ce929cc24f0aedd672a66fc65dc22961669eb46b3c37422b5993c57f656a`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:33:23 GMT
ENV NODE_VERSION=4.7.3
# Wed, 01 Feb 2017 17:33:32 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:33:32 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fff1a933f493b1ab353ba1f52e973e29b9e20629350edd628e309b9adee3a09`  
		Last Modified: Wed, 01 Feb 2017 17:48:48 GMT  
		Size: 12.3 MB (12264659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:argon-slim`

```console
$ docker pull node@sha256:9267e8076c6a7f46762a019c0fdbe9299ae1425eacbcf8dad0482daa8d010187
```

-	Platforms:
	-	linux; amd64

### `node:argon-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82262867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f1ce929cc24f0aedd672a66fc65dc22961669eb46b3c37422b5993c57f656a`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:33:23 GMT
ENV NODE_VERSION=4.7.3
# Wed, 01 Feb 2017 17:33:32 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:33:32 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fff1a933f493b1ab353ba1f52e973e29b9e20629350edd628e309b9adee3a09`  
		Last Modified: Wed, 01 Feb 2017 17:48:48 GMT  
		Size: 12.3 MB (12264659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.7.3-wheezy`

```console
$ docker pull node@sha256:070637f6982a8232ddd716d313bf0c37ee7ccf7c2e074d7157153d5439c30bb1
```

-	Platforms:
	-	linux; amd64

### `node:4.7.3-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190545258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278b4dad73f340dbeca1a807731f46cba762642c67e7e85f60fc626a0e1c9343`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:44:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:33:11 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:33:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:12 GMT
ENV NODE_VERSION=4.7.3
# Fri, 10 Feb 2017 01:33:16 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:17 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0288640dbf2403284d3762ea20566e82748c399a83969cdb4a4781e43edab51f`  
		Last Modified: Thu, 09 Feb 2017 19:10:18 GMT  
		Size: 96.7 MB (96704625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4e7fedda28d3d462db589dc177be0c37a69ec87815d3a2c6cb6ee7e59e3cc`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb700b13cec0995fe9feb1f47de26b26b20b543c79d949dab204cf913488752`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 100.5 KB (100494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee11db4b4393aa7cab823cfbd2fa87ddb68c9bf24e70a5e48d36dae45c4dabd7`  
		Last Modified: Fri, 10 Feb 2017 17:42:06 GMT  
		Size: 12.2 MB (12185791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.7-wheezy`

```console
$ docker pull node@sha256:070637f6982a8232ddd716d313bf0c37ee7ccf7c2e074d7157153d5439c30bb1
```

-	Platforms:
	-	linux; amd64

### `node:4.7-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190545258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278b4dad73f340dbeca1a807731f46cba762642c67e7e85f60fc626a0e1c9343`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:44:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:33:11 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:33:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:12 GMT
ENV NODE_VERSION=4.7.3
# Fri, 10 Feb 2017 01:33:16 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:17 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0288640dbf2403284d3762ea20566e82748c399a83969cdb4a4781e43edab51f`  
		Last Modified: Thu, 09 Feb 2017 19:10:18 GMT  
		Size: 96.7 MB (96704625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4e7fedda28d3d462db589dc177be0c37a69ec87815d3a2c6cb6ee7e59e3cc`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb700b13cec0995fe9feb1f47de26b26b20b543c79d949dab204cf913488752`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 100.5 KB (100494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee11db4b4393aa7cab823cfbd2fa87ddb68c9bf24e70a5e48d36dae45c4dabd7`  
		Last Modified: Fri, 10 Feb 2017 17:42:06 GMT  
		Size: 12.2 MB (12185791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4-wheezy`

```console
$ docker pull node@sha256:070637f6982a8232ddd716d313bf0c37ee7ccf7c2e074d7157153d5439c30bb1
```

-	Platforms:
	-	linux; amd64

### `node:4-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190545258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278b4dad73f340dbeca1a807731f46cba762642c67e7e85f60fc626a0e1c9343`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:44:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:33:11 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:33:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:12 GMT
ENV NODE_VERSION=4.7.3
# Fri, 10 Feb 2017 01:33:16 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:17 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0288640dbf2403284d3762ea20566e82748c399a83969cdb4a4781e43edab51f`  
		Last Modified: Thu, 09 Feb 2017 19:10:18 GMT  
		Size: 96.7 MB (96704625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4e7fedda28d3d462db589dc177be0c37a69ec87815d3a2c6cb6ee7e59e3cc`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb700b13cec0995fe9feb1f47de26b26b20b543c79d949dab204cf913488752`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 100.5 KB (100494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee11db4b4393aa7cab823cfbd2fa87ddb68c9bf24e70a5e48d36dae45c4dabd7`  
		Last Modified: Fri, 10 Feb 2017 17:42:06 GMT  
		Size: 12.2 MB (12185791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:argon-wheezy`

```console
$ docker pull node@sha256:070637f6982a8232ddd716d313bf0c37ee7ccf7c2e074d7157153d5439c30bb1
```

-	Platforms:
	-	linux; amd64

### `node:argon-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190545258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278b4dad73f340dbeca1a807731f46cba762642c67e7e85f60fc626a0e1c9343`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:44:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:33:11 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:33:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:12 GMT
ENV NODE_VERSION=4.7.3
# Fri, 10 Feb 2017 01:33:16 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:17 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0288640dbf2403284d3762ea20566e82748c399a83969cdb4a4781e43edab51f`  
		Last Modified: Thu, 09 Feb 2017 19:10:18 GMT  
		Size: 96.7 MB (96704625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4e7fedda28d3d462db589dc177be0c37a69ec87815d3a2c6cb6ee7e59e3cc`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb700b13cec0995fe9feb1f47de26b26b20b543c79d949dab204cf913488752`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 100.5 KB (100494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee11db4b4393aa7cab823cfbd2fa87ddb68c9bf24e70a5e48d36dae45c4dabd7`  
		Last Modified: Fri, 10 Feb 2017 17:42:06 GMT  
		Size: 12.2 MB (12185791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
