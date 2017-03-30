## `node:wheezy`

```console
$ docker pull node@sha256:e7f26a12ae23e8354ca9e0d087755935f685ae9034a0f221753030a9589fa705
```

-	Platforms:
	-	linux; amd64

### `node:wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193432764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8e4523feb7e3912663fe4a659145f304c7dc15e81d1d755b165edeb2e4a9af`
-	Default Command: `["node"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:57:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:58:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:55:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 22 Mar 2017 23:56:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 22 Mar 2017 23:57:00 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 30 Mar 2017 17:34:17 GMT
ENV NODE_VERSION=7.8.0
# Thu, 30 Mar 2017 17:34:23 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 30 Mar 2017 17:34:23 GMT
ENV YARN_VERSION=0.21.3
# Thu, 30 Mar 2017 17:34:27 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Thu, 30 Mar 2017 17:34:28 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd07181070a737cb357be3bea64f2aa58df705e14b1fce01b2b99cb4811f69b8`  
		Last Modified: Tue, 21 Mar 2017 20:10:33 GMT  
		Size: 37.4 MB (37442499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8750db8db04d2739634c5b74f813c6a57c80097cb876a8f9316d44e3cba9e04`  
		Last Modified: Tue, 21 Mar 2017 20:11:34 GMT  
		Size: 95.4 MB (95409786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a90fdff5f49ef78929293fd0da5445005d8dd0f3f3ef7df7ad815889d98174`  
		Last Modified: Thu, 23 Mar 2017 00:37:35 GMT  
		Size: 4.0 KB (3952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e079f2625984b95f720c7f1fdde053f9850c78dc72d0c27783d86bd7511715`  
		Last Modified: Thu, 23 Mar 2017 00:37:36 GMT  
		Size: 119.1 KB (119059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54bdd11e12ac2cfb3928a3a00fe453e30ba1fee082c6e70b59bd11f4e8e8fd1`  
		Last Modified: Thu, 30 Mar 2017 17:59:30 GMT  
		Size: 15.5 MB (15485821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a41366f21535a9dc3056d3fd9c6522921d5d092a7112bc7607b9c70e0a5b9d`  
		Last Modified: Thu, 30 Mar 2017 17:59:26 GMT  
		Size: 875.4 KB (875442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
