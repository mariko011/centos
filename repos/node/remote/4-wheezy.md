## `node:4-wheezy`

```console
$ docker pull node@sha256:0cb10a7fc671f071121567de968c8a591874de8e276f74e89f465be1615f0b98
```

-	Platforms:
	-	linux; amd64

### `node:4-wheezy` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193440034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7967f20cb27a4dd35a41b3ec7804f7ac18fe62c79af26090f5ed7f5f64c4602`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Apr 2017 19:30:04 GMT
ADD file:cda477892272e4acea1f147bb76a3de26ec0d0abfd0c8c4171bfb10053c98985 in / 
# Mon, 24 Apr 2017 19:30:04 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:00:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:19:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:36:37 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 25 Apr 2017 11:36:41 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done
# Tue, 25 Apr 2017 11:36:42 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 25 Apr 2017 11:36:43 GMT
ENV NODE_VERSION=4.8.2
# Tue, 25 Apr 2017 11:36:48 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 25 Apr 2017 11:36:49 GMT
ENV YARN_VERSION=0.23.2
# Tue, 25 Apr 2017 11:36:53 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Tue, 25 Apr 2017 11:36:54 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:1d46ed2a74b7da1620376a8b57cf77856ed64160d01186fc015979796e664085`  
		Last Modified: Mon, 24 Apr 2017 19:41:46 GMT  
		Size: 38.1 MB (38117052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9304274c9ac261b14cf3ee7685f9120bed42c9a833a7337975a9975750eed1`  
		Last Modified: Mon, 24 Apr 2017 22:28:57 GMT  
		Size: 7.0 MB (6953934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d844091a3ba3d7bd7708b0f781a9fcae97c8d5ebfa2b8d04a2296ea91ff73eed`  
		Last Modified: Mon, 24 Apr 2017 22:29:33 GMT  
		Size: 37.9 MB (37942506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c0bd28e42599b16836ea6ef61d0807afd71c0fa78e6c2e347d591db20d41a1`  
		Last Modified: Mon, 24 Apr 2017 22:30:22 GMT  
		Size: 96.9 MB (96919668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e3dedd814382d6da4a09e89ee24b3df83e024726e53ebcddf6ecfe4c418b24`  
		Last Modified: Tue, 25 Apr 2017 20:00:47 GMT  
		Size: 4.0 KB (3972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac141f05db9b24410d60e94e0e1924827e792f154412973117d7b6ce3802e2b`  
		Last Modified: Tue, 25 Apr 2017 20:00:46 GMT  
		Size: 119.2 KB (119158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143680dbac896bcdd8013aa081edc4c63aa42e8e3b9436092bec12e7b8dc133c`  
		Last Modified: Tue, 25 Apr 2017 20:00:51 GMT  
		Size: 12.5 MB (12497472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028ccdbf31303822ac13c2644b286d86c549e81486ecd1962c32c4a794f96fa3`  
		Last Modified: Tue, 25 Apr 2017 20:00:47 GMT  
		Size: 886.3 KB (886272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
