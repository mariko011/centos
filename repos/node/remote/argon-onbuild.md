## `node:argon-onbuild`

```console
$ docker pull node@sha256:423168aa6e08570f7329f85a7b2e48eaf8a44f92481d760f4b303e4cdd8bbdb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `node:argon-onbuild` - linux; amd64

```console
$ docker pull node@sha256:a1aba66ccaee0d8216c1834d4d6452b1c164a28cb3555ff4e4da5d55a79384ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263278789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dcfb815fadfacb59bcc4f9ed3d5d8aa1593afff5fa96f237306370954e8bc01`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:30:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:25:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 25 Oct 2017 14:24:55 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 25 Oct 2017 15:09:08 GMT
ENV NODE_VERSION=4.8.5
# Wed, 25 Oct 2017 15:09:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 25 Oct 2017 15:09:12 GMT
ENV YARN_VERSION=1.2.1
# Wed, 25 Oct 2017 15:09:16 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 25 Oct 2017 15:09:16 GMT
CMD ["node"]
# Wed, 25 Oct 2017 15:21:55 GMT
RUN mkdir -p /usr/src/app
# Wed, 25 Oct 2017 15:21:55 GMT
WORKDIR /usr/src/app
# Wed, 25 Oct 2017 15:21:55 GMT
ONBUILD ARG NODE_ENV
# Wed, 25 Oct 2017 15:21:55 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Wed, 25 Oct 2017 15:21:55 GMT
ONBUILD COPY package.json /usr/src/app/
# Wed, 25 Oct 2017 15:21:56 GMT
ONBUILD RUN npm install && npm cache clean --force
# Wed, 25 Oct 2017 15:21:56 GMT
ONBUILD COPY . /usr/src/app
# Wed, 25 Oct 2017 15:21:56 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb98c08d57eb9aa8b8a810bcee569cbeab2e6828840f36deb1ef485b3ae16b2`  
		Last Modified: Mon, 09 Oct 2017 22:59:19 GMT  
		Size: 134.7 MB (134687179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f957ac1b6e47d05250e85f6dfea14f5df9201ca1cc5f09db9fe27b47f47eff66`  
		Last Modified: Tue, 10 Oct 2017 06:39:15 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be1442ac0121cb0e686e9c09b6f05100ed2dd9ceb720febc0c2e4208c575521`  
		Last Modified: Wed, 25 Oct 2017 15:23:46 GMT  
		Size: 114.3 KB (114297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71273930e8a39509653c536dfdd6f8b944eb0e4a7ccc09d0224d47884cf284e8`  
		Last Modified: Wed, 25 Oct 2017 15:32:23 GMT  
		Size: 12.4 MB (12381428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe4959823d43d998cf78814ce9fd3437c21653d83a1ec019a5241495c98f264`  
		Last Modified: Wed, 25 Oct 2017 15:32:12 GMT  
		Size: 1.0 MB (1004169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ab3a471cba067af6410b3025d98654dcbce1f4c60d7a3f19793e281313de5b`  
		Last Modified: Wed, 25 Oct 2017 15:33:38 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `node:argon-onbuild` - linux; ppc64le

```console
$ docker pull node@sha256:c17192f40a1e3df21d12080b30ca3c713a61efac2be9d1230d6dc82213e86c88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249765406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9aae042cda24f2d0d5c07303b1926515ac57a4e968a498e7b3e202c92388e2d`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:00:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:29:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 05:03:57 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 26 Oct 2017 04:12:35 GMT
RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 26 Oct 2017 04:17:19 GMT
ENV NODE_VERSION=4.8.5
# Thu, 26 Oct 2017 04:17:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 26 Oct 2017 04:17:30 GMT
ENV YARN_VERSION=1.2.1
# Thu, 26 Oct 2017 04:17:37 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 26 Oct 2017 04:17:38 GMT
CMD ["node"]
# Thu, 26 Oct 2017 04:17:49 GMT
RUN mkdir -p /usr/src/app
# Thu, 26 Oct 2017 04:17:51 GMT
WORKDIR /usr/src/app
# Thu, 26 Oct 2017 04:17:52 GMT
ONBUILD ARG NODE_ENV
# Thu, 26 Oct 2017 04:17:54 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Thu, 26 Oct 2017 04:17:55 GMT
ONBUILD COPY package.json /usr/src/app/
# Thu, 26 Oct 2017 04:17:56 GMT
ONBUILD RUN npm install && npm cache clean --force
# Thu, 26 Oct 2017 04:17:58 GMT
ONBUILD COPY . /usr/src/app
# Thu, 26 Oct 2017 04:18:01 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe1a37bca48df96195d1cc5d94de50074b535c1ac9ae5c1feb2a7d0daca610e`  
		Last Modified: Tue, 10 Oct 2017 00:55:50 GMT  
		Size: 42.7 MB (42731161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f186539c4e3a11aa6fa3b5f09347f572802d1e2504ad06cb1c669abb21255478`  
		Last Modified: Wed, 11 Oct 2017 04:18:21 GMT  
		Size: 122.7 MB (122734290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e943dad455696b470a64497cc4f992e2e66e14b3049b2938d958ad292bbd39a`  
		Last Modified: Wed, 11 Oct 2017 05:10:28 GMT  
		Size: 4.5 KB (4461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99d881fe5edaea80c07c37e45c99cb1b1a9b74c778a0bd2f6492192824fba1e`  
		Last Modified: Thu, 26 Oct 2017 04:19:50 GMT  
		Size: 114.3 KB (114331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4ad889bd9c091679ae9e8baabfaf35aa08e23664f7873b787bbe28fce07da9`  
		Last Modified: Thu, 26 Oct 2017 04:23:57 GMT  
		Size: 12.2 MB (12166050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26677b9986108b3c4dbfca24db07039354e93c361deeec342da4f1270fa72260`  
		Last Modified: Thu, 26 Oct 2017 04:23:54 GMT  
		Size: 1.0 MB (1004190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d254a9c4f3ae2099d55e54865fd2e314b9d4de344a6a65a2ca34feba948f5e0`  
		Last Modified: Thu, 26 Oct 2017 04:24:23 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
