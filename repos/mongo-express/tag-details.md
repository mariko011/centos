<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo-express`

-	[`mongo-express:0.34.0`](#mongo-express0340)
-	[`mongo-express:0.34`](#mongo-express034)
-	[`mongo-express:latest`](#mongo-expresslatest)

## `mongo-express:0.34.0`

```console
$ docker pull mongo-express@sha256:83146ef785d00f8f2cd6e380238a2cd769bcf8ac60c4a248dfe395c45d5f1fc0
```

-	Platforms:
	-	linux; amd64

### `mongo-express:0.34.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.8 MB (100802052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:381a5be0c0227b153ab44aefaf1a4ac04c46581fc2544dd02d84213fd1f37386`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:02:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Dec 2016 15:28:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Dec 2016 15:28:28 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 05 Jan 2017 00:24:15 GMT
ENV NODE_VERSION=6.9.3
# Thu, 05 Jan 2017 00:24:25 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 05 Jan 2017 00:24:28 GMT
CMD ["node"]
# Thu, 05 Jan 2017 18:44:31 GMT
ENV TINI_VERSION=0.9.0
# Thu, 05 Jan 2017 18:44:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Jan 2017 18:44:41 GMT
EXPOSE 8081/tcp
# Thu, 05 Jan 2017 18:44:41 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Thu, 05 Jan 2017 18:44:42 GMT
ENV MONGO_EXPRESS=0.34.0
# Thu, 05 Jan 2017 18:44:57 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Thu, 05 Jan 2017 18:44:58 GMT
WORKDIR /node_modules/mongo-express
# Thu, 05 Jan 2017 18:44:59 GMT
RUN cp config.default.js config.js
# Thu, 05 Jan 2017 18:44:59 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a469a332cde81108f34a34ec0a910eaca6b83667e9048229a8ef71417c6e69d3`  
		Last Modified: Wed, 14 Dec 2016 18:55:09 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5227756fd9b1cbcbbcd730a278784652d44640734d0a44b69c8da663756df34`  
		Last Modified: Wed, 14 Dec 2016 18:55:05 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d412e797d1559c5006b398da2f0248b84fa9ccc4c90bb241db755f15e137105b`  
		Last Modified: Thu, 05 Jan 2017 00:49:17 GMT  
		Size: 14.0 MB (14012515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460a65cdee3dda9cdf849002ad3f5336269bababf7657da83b6ce5021208e0c3`  
		Last Modified: Thu, 05 Jan 2017 18:45:15 GMT  
		Size: 459.1 KB (459119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e30ed67a5583116f6ae2c3fe533ad45ab3a9c248fc5233e51c55f15040eeb6`  
		Last Modified: Thu, 05 Jan 2017 18:45:19 GMT  
		Size: 16.3 MB (16333079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855ccae44c51c201795eb8ef60d179fdb2a60b06c872f229ff19f278cb5add2f`  
		Last Modified: Thu, 05 Jan 2017 18:45:15 GMT  
		Size: 2.7 KB (2673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:0.34`

```console
$ docker pull mongo-express@sha256:83146ef785d00f8f2cd6e380238a2cd769bcf8ac60c4a248dfe395c45d5f1fc0
```

-	Platforms:
	-	linux; amd64

### `mongo-express:0.34` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.8 MB (100802052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:381a5be0c0227b153ab44aefaf1a4ac04c46581fc2544dd02d84213fd1f37386`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:02:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Dec 2016 15:28:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Dec 2016 15:28:28 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 05 Jan 2017 00:24:15 GMT
ENV NODE_VERSION=6.9.3
# Thu, 05 Jan 2017 00:24:25 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 05 Jan 2017 00:24:28 GMT
CMD ["node"]
# Thu, 05 Jan 2017 18:44:31 GMT
ENV TINI_VERSION=0.9.0
# Thu, 05 Jan 2017 18:44:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Jan 2017 18:44:41 GMT
EXPOSE 8081/tcp
# Thu, 05 Jan 2017 18:44:41 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Thu, 05 Jan 2017 18:44:42 GMT
ENV MONGO_EXPRESS=0.34.0
# Thu, 05 Jan 2017 18:44:57 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Thu, 05 Jan 2017 18:44:58 GMT
WORKDIR /node_modules/mongo-express
# Thu, 05 Jan 2017 18:44:59 GMT
RUN cp config.default.js config.js
# Thu, 05 Jan 2017 18:44:59 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a469a332cde81108f34a34ec0a910eaca6b83667e9048229a8ef71417c6e69d3`  
		Last Modified: Wed, 14 Dec 2016 18:55:09 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5227756fd9b1cbcbbcd730a278784652d44640734d0a44b69c8da663756df34`  
		Last Modified: Wed, 14 Dec 2016 18:55:05 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d412e797d1559c5006b398da2f0248b84fa9ccc4c90bb241db755f15e137105b`  
		Last Modified: Thu, 05 Jan 2017 00:49:17 GMT  
		Size: 14.0 MB (14012515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460a65cdee3dda9cdf849002ad3f5336269bababf7657da83b6ce5021208e0c3`  
		Last Modified: Thu, 05 Jan 2017 18:45:15 GMT  
		Size: 459.1 KB (459119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e30ed67a5583116f6ae2c3fe533ad45ab3a9c248fc5233e51c55f15040eeb6`  
		Last Modified: Thu, 05 Jan 2017 18:45:19 GMT  
		Size: 16.3 MB (16333079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855ccae44c51c201795eb8ef60d179fdb2a60b06c872f229ff19f278cb5add2f`  
		Last Modified: Thu, 05 Jan 2017 18:45:15 GMT  
		Size: 2.7 KB (2673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:83146ef785d00f8f2cd6e380238a2cd769bcf8ac60c4a248dfe395c45d5f1fc0
```

-	Platforms:
	-	linux; amd64

### `mongo-express:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.8 MB (100802052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:381a5be0c0227b153ab44aefaf1a4ac04c46581fc2544dd02d84213fd1f37386`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:02:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Dec 2016 15:28:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Dec 2016 15:28:28 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 05 Jan 2017 00:24:15 GMT
ENV NODE_VERSION=6.9.3
# Thu, 05 Jan 2017 00:24:25 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 05 Jan 2017 00:24:28 GMT
CMD ["node"]
# Thu, 05 Jan 2017 18:44:31 GMT
ENV TINI_VERSION=0.9.0
# Thu, 05 Jan 2017 18:44:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Jan 2017 18:44:41 GMT
EXPOSE 8081/tcp
# Thu, 05 Jan 2017 18:44:41 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Thu, 05 Jan 2017 18:44:42 GMT
ENV MONGO_EXPRESS=0.34.0
# Thu, 05 Jan 2017 18:44:57 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Thu, 05 Jan 2017 18:44:58 GMT
WORKDIR /node_modules/mongo-express
# Thu, 05 Jan 2017 18:44:59 GMT
RUN cp config.default.js config.js
# Thu, 05 Jan 2017 18:44:59 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a469a332cde81108f34a34ec0a910eaca6b83667e9048229a8ef71417c6e69d3`  
		Last Modified: Wed, 14 Dec 2016 18:55:09 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5227756fd9b1cbcbbcd730a278784652d44640734d0a44b69c8da663756df34`  
		Last Modified: Wed, 14 Dec 2016 18:55:05 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d412e797d1559c5006b398da2f0248b84fa9ccc4c90bb241db755f15e137105b`  
		Last Modified: Thu, 05 Jan 2017 00:49:17 GMT  
		Size: 14.0 MB (14012515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460a65cdee3dda9cdf849002ad3f5336269bababf7657da83b6ce5021208e0c3`  
		Last Modified: Thu, 05 Jan 2017 18:45:15 GMT  
		Size: 459.1 KB (459119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e30ed67a5583116f6ae2c3fe533ad45ab3a9c248fc5233e51c55f15040eeb6`  
		Last Modified: Thu, 05 Jan 2017 18:45:19 GMT  
		Size: 16.3 MB (16333079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855ccae44c51c201795eb8ef60d179fdb2a60b06c872f229ff19f278cb5add2f`  
		Last Modified: Thu, 05 Jan 2017 18:45:15 GMT  
		Size: 2.7 KB (2673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
