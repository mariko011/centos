## `node:7-wheezy`

```console
$ docker pull node@sha256:3d38749fd82672351e30e87bd772409e46afefbd6d153c64f6424c0e1316cbba
```

-	Platforms:
	-	linux; amd64

### `node:7-wheezy` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 MB (196643567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc21f97c7664f66ee787ae7b2332c448d7b19f4cee7c2b2b20c94068ebda7d2`
-	Default Command: `["node"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:30:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:30:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:31:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 07:41:19 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 26 Jul 2017 07:41:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 26 Jul 2017 07:41:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 26 Jul 2017 07:42:24 GMT
ENV NODE_VERSION=7.10.1
# Thu, 27 Jul 2017 16:07:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 27 Jul 2017 16:07:57 GMT
ENV YARN_VERSION=0.24.4
# Thu, 27 Jul 2017 16:08:00 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 27 Jul 2017 16:08:02 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d630c0070b4ded910e5fb310f33ed808e3235dc5404c8afc98f82a3c191550`  
		Last Modified: Mon, 24 Jul 2017 17:38:17 GMT  
		Size: 6.9 MB (6948595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c4434d7858cac2afc20dc1e6b18dbc5cbe14447df03199e895f53cd59f085b`  
		Last Modified: Mon, 24 Jul 2017 17:38:35 GMT  
		Size: 37.9 MB (37938424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facceed7e9e5461593431499743ba1696733bf243ed03ab2b5e2005262b6b41b`  
		Last Modified: Mon, 24 Jul 2017 17:39:03 GMT  
		Size: 96.9 MB (96946764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e1c395c007fc40543814918232d967ed1e1a19b84f51ae7b6ea5fe586ab64b`  
		Last Modified: Wed, 26 Jul 2017 07:46:12 GMT  
		Size: 4.0 KB (3976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483e73b026ebe5b3be6ba9df873caddd4af3175412651ca6e61a028d039b1a96`  
		Last Modified: Wed, 26 Jul 2017 07:46:12 GMT  
		Size: 119.2 KB (119154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c91320859fc5a4695cc4dc9ce2887f0e60229ac5175beb2cbfc732b2662e13`  
		Last Modified: Thu, 27 Jul 2017 16:21:02 GMT  
		Size: 15.7 MB (15682422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28689170712656c8c40e7167a8173ba7799a13251d112fea67424eab338b3c7f`  
		Last Modified: Thu, 27 Jul 2017 16:20:56 GMT  
		Size: 900.6 KB (900595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
