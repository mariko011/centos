<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo-express`

-	[`mongo-express:0.34.0`](#mongo-express0340)
-	[`mongo-express:0.34`](#mongo-express034)
-	[`mongo-express:latest`](#mongo-expresslatest)

## `mongo-express:0.34.0`

```console
$ docker pull mongo-express@sha256:0a7ba42f61b6325dcb97e866e05ef41e1cd91d24f484c9fb304776fd455c0969
```

-	Platforms:
	-	linux; amd64

### `mongo-express:0.34.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.8 MB (100796710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cecc01914e8b6b1896d77f4ab20067ede98672b6320967a34498a31043e3c1e1`
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
# Wed, 14 Dec 2016 15:28:42 GMT
ENV NODE_VERSION=6.9.2
# Wed, 14 Dec 2016 15:28:53 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Dec 2016 15:28:53 GMT
CMD ["node"]
# Mon, 19 Dec 2016 16:50:03 GMT
ENV TINI_VERSION=0.9.0
# Mon, 19 Dec 2016 16:50:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:50:12 GMT
EXPOSE 8081/tcp
# Mon, 19 Dec 2016 16:50:13 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 28 Dec 2016 20:34:57 GMT
ENV MONGO_EXPRESS=0.34.0
# Wed, 28 Dec 2016 20:35:16 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 28 Dec 2016 20:35:17 GMT
WORKDIR /node_modules/mongo-express
# Wed, 28 Dec 2016 20:35:18 GMT
RUN cp config.default.js config.js
# Wed, 28 Dec 2016 20:35:18 GMT
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
	-	`sha256:5d8cb94390d1c197248e61f730637a308764b2b0003973a5553e1ba5577199a3`  
		Last Modified: Wed, 21 Dec 2016 18:36:10 GMT  
		Size: 14.0 MB (14011782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321d07da7a0716a06f3df0ca121a31809e1ec55526aba8f52056181557b0e4cb`  
		Last Modified: Wed, 21 Dec 2016 20:22:55 GMT  
		Size: 459.2 KB (459155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba714956e8797621a16c2299b4356834a432576e764158b6b171ea1c927ef5d5`  
		Last Modified: Wed, 28 Dec 2016 20:35:38 GMT  
		Size: 16.3 MB (16328437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b200f1023df2c5db60df91efaa6453923aee00ae5159ba4a74a6f76285aa0c73`  
		Last Modified: Wed, 28 Dec 2016 20:35:34 GMT  
		Size: 2.7 KB (2670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:0.34`

```console
$ docker pull mongo-express@sha256:0a7ba42f61b6325dcb97e866e05ef41e1cd91d24f484c9fb304776fd455c0969
```

-	Platforms:
	-	linux; amd64

### `mongo-express:0.34` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.8 MB (100796710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cecc01914e8b6b1896d77f4ab20067ede98672b6320967a34498a31043e3c1e1`
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
# Wed, 14 Dec 2016 15:28:42 GMT
ENV NODE_VERSION=6.9.2
# Wed, 14 Dec 2016 15:28:53 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Dec 2016 15:28:53 GMT
CMD ["node"]
# Mon, 19 Dec 2016 16:50:03 GMT
ENV TINI_VERSION=0.9.0
# Mon, 19 Dec 2016 16:50:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:50:12 GMT
EXPOSE 8081/tcp
# Mon, 19 Dec 2016 16:50:13 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 28 Dec 2016 20:34:57 GMT
ENV MONGO_EXPRESS=0.34.0
# Wed, 28 Dec 2016 20:35:16 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 28 Dec 2016 20:35:17 GMT
WORKDIR /node_modules/mongo-express
# Wed, 28 Dec 2016 20:35:18 GMT
RUN cp config.default.js config.js
# Wed, 28 Dec 2016 20:35:18 GMT
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
	-	`sha256:5d8cb94390d1c197248e61f730637a308764b2b0003973a5553e1ba5577199a3`  
		Last Modified: Wed, 21 Dec 2016 18:36:10 GMT  
		Size: 14.0 MB (14011782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321d07da7a0716a06f3df0ca121a31809e1ec55526aba8f52056181557b0e4cb`  
		Last Modified: Wed, 21 Dec 2016 20:22:55 GMT  
		Size: 459.2 KB (459155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba714956e8797621a16c2299b4356834a432576e764158b6b171ea1c927ef5d5`  
		Last Modified: Wed, 28 Dec 2016 20:35:38 GMT  
		Size: 16.3 MB (16328437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b200f1023df2c5db60df91efaa6453923aee00ae5159ba4a74a6f76285aa0c73`  
		Last Modified: Wed, 28 Dec 2016 20:35:34 GMT  
		Size: 2.7 KB (2670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:0a7ba42f61b6325dcb97e866e05ef41e1cd91d24f484c9fb304776fd455c0969
```

-	Platforms:
	-	linux; amd64

### `mongo-express:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.8 MB (100796710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cecc01914e8b6b1896d77f4ab20067ede98672b6320967a34498a31043e3c1e1`
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
# Wed, 14 Dec 2016 15:28:42 GMT
ENV NODE_VERSION=6.9.2
# Wed, 14 Dec 2016 15:28:53 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Dec 2016 15:28:53 GMT
CMD ["node"]
# Mon, 19 Dec 2016 16:50:03 GMT
ENV TINI_VERSION=0.9.0
# Mon, 19 Dec 2016 16:50:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:50:12 GMT
EXPOSE 8081/tcp
# Mon, 19 Dec 2016 16:50:13 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 28 Dec 2016 20:34:57 GMT
ENV MONGO_EXPRESS=0.34.0
# Wed, 28 Dec 2016 20:35:16 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 28 Dec 2016 20:35:17 GMT
WORKDIR /node_modules/mongo-express
# Wed, 28 Dec 2016 20:35:18 GMT
RUN cp config.default.js config.js
# Wed, 28 Dec 2016 20:35:18 GMT
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
	-	`sha256:5d8cb94390d1c197248e61f730637a308764b2b0003973a5553e1ba5577199a3`  
		Last Modified: Wed, 21 Dec 2016 18:36:10 GMT  
		Size: 14.0 MB (14011782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321d07da7a0716a06f3df0ca121a31809e1ec55526aba8f52056181557b0e4cb`  
		Last Modified: Wed, 21 Dec 2016 20:22:55 GMT  
		Size: 459.2 KB (459155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba714956e8797621a16c2299b4356834a432576e764158b6b171ea1c927ef5d5`  
		Last Modified: Wed, 28 Dec 2016 20:35:38 GMT  
		Size: 16.3 MB (16328437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b200f1023df2c5db60df91efaa6453923aee00ae5159ba4a74a6f76285aa0c73`  
		Last Modified: Wed, 28 Dec 2016 20:35:34 GMT  
		Size: 2.7 KB (2670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
