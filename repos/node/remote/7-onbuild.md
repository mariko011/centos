## `node:7-onbuild`

```console
$ docker pull node@sha256:f3dcd0c328cbad06fdb44daa706c03a7b647a307ce4200cce5daa25c01203a98
```

-	Platforms:
	-	linux; amd64

### `node:7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258774998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65ca070fcc5d4f7e50f6e934e90fc1081e585e6a3bde5009a9f9979be49ebcfe`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:35 GMT
ENV NODE_VERSION=7.6.0
# Tue, 28 Feb 2017 15:16:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:35:19 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:35:25 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:35:25 GMT
CMD ["node"]
# Wed, 01 Mar 2017 17:35:35 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 17:35:36 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 17:35:36 GMT
ONBUILD ARG NODE_ENV
# Wed, 01 Mar 2017 17:35:36 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Wed, 01 Mar 2017 17:35:37 GMT
ONBUILD COPY package.json /usr/src/app/
# Wed, 01 Mar 2017 17:35:37 GMT
ONBUILD RUN npm install && npm cache clean
# Wed, 01 Mar 2017 17:35:37 GMT
ONBUILD COPY . /usr/src/app
# Wed, 01 Mar 2017 17:35:37 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e88bf53e70fb577b986c95f36ca0b073400576019df758a6874e8dfa25e54a`  
		Last Modified: Wed, 01 Mar 2017 17:37:15 GMT  
		Size: 15.5 MB (15544073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dbf525e46919787aa337638c698a018fd45e90143f6a7cc82afd64e38e07e7`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 864.8 KB (864781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782bbcf07bd33cfc8854c3370e734a1d2a88e62d2cb94f62239a05b4feff328f`  
		Last Modified: Wed, 01 Mar 2017 17:39:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
