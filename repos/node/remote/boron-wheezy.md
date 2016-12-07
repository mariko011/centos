## `node:boron-wheezy`

```console
$ docker pull node@sha256:4eca04df2e045b000ef5c915ef483bbe8dece63aa058b76f582a94a7234d6dbf
```

-	Platforms:
	-	linux; amd64

### `node:boron-wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190659252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96300eda3c2d981fee0bc0d4e1d4dc8698b267a6ca00927ccb327cdd7f3c8f6e`
-	Default Command: `["node"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:32:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:32:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Nov 2016 19:19:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Nov 2016 19:19:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 23 Nov 2016 19:19:49 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 06 Dec 2016 23:20:52 GMT
ENV NODE_VERSION=6.9.2
# Tue, 06 Dec 2016 23:20:58 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 06 Dec 2016 23:20:59 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df674db1f5c55ee81a339f27b2104d63dee9bb1c6c6ab199c8b8a365b11dad1c`  
		Last Modified: Mon, 07 Nov 2016 23:05:45 GMT  
		Size: 6.7 MB (6749846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97590af2ddaf78e699b922536a6f7c27288dfcb51170ab3ad3e31dc9f6959f0`  
		Last Modified: Mon, 07 Nov 2016 23:06:14 GMT  
		Size: 37.4 MB (37366492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fdff07f85cdfe8c58e48ebf1c31d14b0622b3b6cf9ccd95d7582b0ebdbfe31c`  
		Last Modified: Mon, 07 Nov 2016 23:06:56 GMT  
		Size: 95.3 MB (95300484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b48925642d1e473bebb9efafa3c4109525f817f1abace152a26c0fd31de9f7`  
		Last Modified: Wed, 23 Nov 2016 19:47:05 GMT  
		Size: 4.0 KB (3952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3d48e4f397a3e00dbade5488e62d3207243f307f75f87a1e2e5688c605ae40`  
		Last Modified: Wed, 23 Nov 2016 19:47:03 GMT  
		Size: 97.2 KB (97213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed2beb85b17de675b7fa28a2229503edec88b34a1640bb88bd6deebc17d3414`  
		Last Modified: Tue, 06 Dec 2016 23:36:46 GMT  
		Size: 13.9 MB (13932683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
