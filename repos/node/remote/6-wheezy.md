## `node:6-wheezy`

```console
$ docker pull node@sha256:e109a582dc7ed94a8db8bd6c2cfb4327d7b73de18412d6a1f36cfca70d3f5176
```

-	Platforms:
	-	linux; amd64

### `node:6-wheezy` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195318082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197c45d3bb3aefb583e03ef88161bb2cddfcc791a2920712d64dcba9f10c0510`
-	Default Command: `["node"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 20:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 20:03:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 20:05:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 16:31:43 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 08 Jun 2017 16:31:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 08 Jun 2017 16:31:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 08 Jun 2017 17:10:28 GMT
ENV NODE_VERSION=6.11.0
# Thu, 08 Jun 2017 17:10:34 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 08 Jun 2017 17:10:34 GMT
ENV YARN_VERSION=0.24.6
# Thu, 08 Jun 2017 17:10:39 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 08 Jun 2017 17:10:40 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd5db52f078fabd5bfc38197a904c009cd5fde1b237d5d3c8868eb30e34fb1`  
		Last Modified: Wed, 07 Jun 2017 20:15:36 GMT  
		Size: 6.9 MB (6948482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02720d78d8cf03e04692a6628b08128ec3123a78f31a369c2c1fdcb2fd32d11c`  
		Last Modified: Wed, 07 Jun 2017 20:16:16 GMT  
		Size: 37.9 MB (37937378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913479fc9b99d1b74ea67714c7f0d787e209ef561b9b97da088c6820e1ceb8ca`  
		Last Modified: Wed, 07 Jun 2017 20:17:13 GMT  
		Size: 96.9 MB (96948347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3340f589b379ee6244d9425cd51212efbc00b507ee237f95e52278d39020423d`  
		Last Modified: Thu, 08 Jun 2017 17:25:34 GMT  
		Size: 4.0 KB (3982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604965bd6e0cf732604896118265ead27d536092dd81454fd9ea57b0c9caaa07`  
		Last Modified: Thu, 08 Jun 2017 17:25:35 GMT  
		Size: 119.2 KB (119151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242048ee8b907fe34ec6751c29e2872dc436f427ef996e72e663176a4ab57aaa`  
		Last Modified: Thu, 08 Jun 2017 17:38:23 GMT  
		Size: 14.4 MB (14354932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0798ddc526ed87c037b1a059a128b4c9ade5bc3cfdcef879bde4fd67891c4664`  
		Last Modified: Thu, 08 Jun 2017 17:38:18 GMT  
		Size: 900.7 KB (900724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
