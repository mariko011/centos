## `ghost:latest`

```console
$ docker pull ghost@sha256:c7de340d3f5c712fd4ae01d377edccd862ff33d212c9bc2c5fcebb23a6a7b7f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `ghost:latest` - linux; amd64

```console
$ docker pull ghost@sha256:4e734c7eb11cb742921d1818c8cc850b2f44febea8145299f763c1323187594a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.2 MB (216212211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9566d96b18e258ff47033c2c2e22b9d841cfd817a23e34b55843b37b8c274bf2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 20:23:45 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 13 Sep 2017 20:23:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 13 Sep 2017 20:23:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 13 Sep 2017 20:38:03 GMT
ENV NODE_VERSION=6.11.3
# Wed, 13 Sep 2017 20:38:26 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 13 Sep 2017 20:38:26 GMT
ENV YARN_VERSION=0.27.5
# Wed, 13 Sep 2017 20:38:30 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 13 Sep 2017 20:38:30 GMT
CMD ["node"]
# Wed, 13 Sep 2017 21:10:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Sep 2017 21:10:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 13 Sep 2017 21:10:35 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Wed, 13 Sep 2017 21:10:35 GMT
ENV NODE_ENV=production
# Wed, 13 Sep 2017 21:10:35 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Tue, 26 Sep 2017 00:35:52 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 00:36:31 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 00:36:31 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 00:36:32 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 00:37:09 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 00:37:10 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 00:37:10 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 00:37:10 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 26 Sep 2017 00:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:37:11 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 00:37:11 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e2ecbdc66945a5816aa0d37501c34fe6ae76d1664a47cd366604f68a557052`  
		Last Modified: Wed, 13 Sep 2017 20:49:04 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba36da051a26db65f69c7538041ed3bf4d545ba973e1763029ba67ea44b99ef`  
		Last Modified: Wed, 13 Sep 2017 20:49:04 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83260829fd758c7ed96bf6b66af7a83c16afb34bd20fea7c30627caa474c19e0`  
		Last Modified: Wed, 13 Sep 2017 20:51:45 GMT  
		Size: 14.7 MB (14718405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7459ed23b0dbcdf1adf35d3c09d1104dfce1711690a871cb7fea376fdeea9176`  
		Last Modified: Wed, 13 Sep 2017 20:51:40 GMT  
		Size: 938.5 KB (938460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed248cbe68e68af79ca31d36052e903e9bce24bac602f71d2d8ee4a9bc3676a1`  
		Last Modified: Wed, 13 Sep 2017 21:17:36 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6db3e32b4ddc7bb09406ffc620a3fabb614d687b136e9074c6248ea49c0ef2`  
		Last Modified: Tue, 26 Sep 2017 00:45:00 GMT  
		Size: 34.5 MB (34479526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ac68b3a5bb14ccd127f965583e7bdee8c9bff5420163aa6a91f73b2e9476f2`  
		Last Modified: Tue, 26 Sep 2017 00:45:22 GMT  
		Size: 93.6 MB (93591754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a43571d9ddecd21aeb04611479db6ab9d96871895770c491d8057739f603f4`  
		Last Modified: Tue, 26 Sep 2017 00:44:23 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ghost:latest` - linux; ppc64le

```console
$ docker pull ghost@sha256:826b01c7597f15b0b511072cf8a25b2bf44c7816c70de6c0baea85ead8f036a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205293501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5eb848eed08fa9fedf35128a5b18e5185740d4784a128456fa058a0ea8659e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","current\/index.js"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:03:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 23:10:48 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Thu, 14 Sep 2017 23:11:08 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Thu, 14 Sep 2017 23:11:12 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 14 Sep 2017 23:15:42 GMT
ENV NODE_VERSION=6.11.3
# Thu, 14 Sep 2017 23:16:32 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 14 Sep 2017 23:16:41 GMT
ENV YARN_VERSION=0.27.5
# Thu, 14 Sep 2017 23:16:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Thu, 14 Sep 2017 23:16:50 GMT
CMD ["node"]
# Fri, 15 Sep 2017 02:22:38 GMT
ENV GOSU_VERSION=1.10
# Fri, 15 Sep 2017 02:22:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 15 Sep 2017 02:22:48 GMT
ENV NPM_CONFIG_LOGLEVEL=warn
# Fri, 15 Sep 2017 02:22:52 GMT
ENV NODE_ENV=production
# Fri, 15 Sep 2017 02:22:54 GMT
ENV GHOST_CLI_VERSION=1.1.1
# Tue, 26 Sep 2017 01:26:22 GMT
ENV GHOST_VERSION=1.9.0
# Tue, 26 Sep 2017 01:27:15 GMT
RUN npm install -g "ghost-cli@$GHOST_CLI_VERSION" knex-migrator@latest
# Tue, 26 Sep 2017 01:27:19 GMT
ENV GHOST_INSTALL=/var/lib/ghost
# Tue, 26 Sep 2017 01:27:22 GMT
ENV GHOST_CONTENT=/var/lib/ghost/content
# Tue, 26 Sep 2017 01:28:30 GMT
RUN set -ex; 	mkdir -p "$GHOST_INSTALL"; 	chown node:node "$GHOST_INSTALL"; 		gosu node ghost install "$GHOST_VERSION" --db sqlite3 --no-prompt --no-stack --no-setup --dir "$GHOST_INSTALL"; 		cd "$GHOST_INSTALL"; 	gosu node ghost config --ip 0.0.0.0 --port 2368 --no-prompt --db sqlite3 --url http://localhost:2368 --dbpath "$GHOST_CONTENT/data/ghost.db"; 	gosu node ghost config paths.contentPath "$GHOST_CONTENT"; 		mv "$GHOST_CONTENT" "$GHOST_INSTALL/content.orig"; 	mkdir -p "$GHOST_CONTENT"; 	chown node:node "$GHOST_CONTENT"
# Tue, 26 Sep 2017 01:28:34 GMT
WORKDIR /var/lib/ghost
# Tue, 26 Sep 2017 01:28:36 GMT
VOLUME [/var/lib/ghost/content]
# Tue, 26 Sep 2017 01:28:39 GMT
COPY file:ef6da72f41bc8f60c42fab63c9c2ffdee82253c6dd2110e3d50866e5445df15e in /usr/local/bin 
# Tue, 26 Sep 2017 01:28:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:28:44 GMT
EXPOSE 2368/tcp
# Tue, 26 Sep 2017 01:28:47 GMT
CMD ["node" "current/index.js"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48596af2c38701f94440e222bf8f3d4b2da85e2982c97ae15186eba523249e0b`  
		Last Modified: Thu, 14 Sep 2017 22:21:02 GMT  
		Size: 19.2 MB (19199596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1dc276f5b0bc12cddaf889657d8ed9d7ec3e6add07506308ea49dc52bb6eff`  
		Last Modified: Thu, 14 Sep 2017 23:22:38 GMT  
		Size: 4.4 KB (4444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb57f53562fb9db3e40e7ee479f5526f635b724a0632d9a4d3da2500a44c491d`  
		Last Modified: Thu, 14 Sep 2017 23:22:39 GMT  
		Size: 119.2 KB (119184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f255065ee2535a6b44019881cc1954c1a7f665f6b0c530c618663be94e4a23`  
		Last Modified: Thu, 14 Sep 2017 23:26:37 GMT  
		Size: 14.5 MB (14475182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68be6ded470a2cf42b2ccda178f212a25198e102a4e3249456140252fa22f054`  
		Last Modified: Thu, 14 Sep 2017 23:26:32 GMT  
		Size: 940.2 KB (940157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1d6527d8ade34c5efd2bd98f7a049a917ff22859c6eaaed4046a2df232d91b`  
		Last Modified: Fri, 15 Sep 2017 02:32:57 GMT  
		Size: 469.9 KB (469852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d0bc621476346c9dcc2b69a9943e230904ad4696a589c5722079b600def5c5`  
		Last Modified: Tue, 26 Sep 2017 01:29:19 GMT  
		Size: 29.3 MB (29265976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c75fb175437dbf5d65202c9ab1c806eb1bc81a516a42d11af304d6bf8be7ae1`  
		Last Modified: Tue, 26 Sep 2017 01:29:36 GMT  
		Size: 89.0 MB (89008967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e924d15af08e49753d5025b7d443324c4142bf1b9c2305933a9eea39188e88af`  
		Last Modified: Tue, 26 Sep 2017 01:29:10 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
