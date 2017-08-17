## `ghost:latest`

```console
$ docker pull ghost@sha256:b6edfa1b6836d9005e46bea63de6f72d8fedc0b93a38b7ec7a8e6d547527f343
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 MB (283378755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b59a4a8aca6cbecad4ddf61f8c9f358d946269a409a93796bc735700d710c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 07:40:46 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 26 Jul 2017 07:40:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 26 Jul 2017 07:40:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 01 Aug 2017 21:06:02 GMT
ENV NODE_VERSION=6.11.2
# Tue, 15 Aug 2017 19:04:25 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 15 Aug 2017 19:04:26 GMT
ENV YARN_VERSION=0.27.5
# Tue, 15 Aug 2017 19:04:29 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 15 Aug 2017 19:04:29 GMT
CMD ["node"]
# Wed, 16 Aug 2017 00:28:08 GMT
ENV GOSU_VERSION=1.7
# Wed, 16 Aug 2017 00:28:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 16 Aug 2017 00:28:12 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 16 Aug 2017 00:28:12 GMT
ENV NODE_ENV=production
# Thu, 17 Aug 2017 17:53:13 GMT
ENV GHOST_CLI_VERSION=1.1.0
# Thu, 17 Aug 2017 17:53:13 GMT
ENV GHOST_VERSION=1.6.1
# Thu, 17 Aug 2017 17:53:53 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Thu, 17 Aug 2017 17:53:54 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Thu, 17 Aug 2017 17:53:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Thu, 17 Aug 2017 17:54:58 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Thu, 17 Aug 2017 17:54:59 GMT
WORKDIR /var/lib/ghost
# Thu, 17 Aug 2017 17:55:00 GMT
VOLUME [/var/lib/ghost/content]
# Thu, 17 Aug 2017 17:55:00 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Thu, 17 Aug 2017 17:55:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 17:55:01 GMT
EXPOSE 2368/tcp
# Thu, 17 Aug 2017 17:55:01 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad85906adb69a3519dd7a01124b9d27a735cf16cd633dd736ecc3590e2e4e6c8`  
		Last Modified: Wed, 26 Jul 2017 07:45:47 GMT  
		Size: 4.4 KB (4369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caae50f774bacbe812a884f8936c4a3a13044f461169f33fc77af28d99ca2a9`  
		Last Modified: Wed, 26 Jul 2017 07:45:46 GMT  
		Size: 119.1 KB (119148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f7f9c8836d0eec4c5fa9a60bef0ef8dd360e2bd7f14c778a2a1d7964e0aa75`  
		Last Modified: Tue, 15 Aug 2017 19:11:11 GMT  
		Size: 14.3 MB (14271621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5040e49a7979dec9ed0cac5e03f28007a01c0205eb46fbd117b37928b41913fc`  
		Last Modified: Tue, 15 Aug 2017 19:11:10 GMT  
		Size: 938.3 KB (938336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f328c13cd3bdfb22e105e444eb7bd9776b89acc1ca17b2c960717603102bbf`  
		Last Modified: Wed, 16 Aug 2017 00:35:00 GMT  
		Size: 818.8 KB (818816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef35b5420eb4dd4d2ca50ce266b92effacc374c0b09348a0d7b348e2edb98e3c`  
		Last Modified: Thu, 17 Aug 2017 18:12:15 GMT  
		Size: 86.7 MB (86697526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258cd33823dfdade7a1b4c086d5179eed0e5b3fe83f2146d58b86eb659713ac8`  
		Last Modified: Thu, 17 Aug 2017 18:12:48 GMT  
		Size: 108.7 MB (108659425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f211896458fd8fc824578776e78f3a908cdbfc44d99d8b3d67d7503d881baee0`  
		Last Modified: Thu, 17 Aug 2017 18:11:30 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
