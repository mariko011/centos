<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo-express`

-	[`mongo-express:0.32.0`](#mongo-express0320)
-	[`mongo-express:0.32`](#mongo-express032)
-	[`mongo-express:latest`](#mongo-expresslatest)

## `mongo-express:0.32.0`

```console
$ docker pull mongo-express@sha256:db8be02a839ac9de44b241d6f71d34a87305421670a1de902b8ed7ad4f0743b1
```

-	Platforms:
	-	linux; amd64

### `mongo-express:0.32.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.8 MB (100777041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93096479ad8c90e887cdf02957e34fd7072e7838ea0e0ad43890839d6cbe2477`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Nov 2016 19:19:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Nov 2016 19:19:27 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 23 Nov 2016 19:19:27 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 23 Nov 2016 19:31:34 GMT
ENV NODE_VERSION=6.9.1
# Wed, 23 Nov 2016 19:31:46 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Nov 2016 19:31:46 GMT
CMD ["node"]
# Wed, 23 Nov 2016 20:12:19 GMT
ENV TINI_VERSION=0.9.0
# Wed, 23 Nov 2016 20:12:32 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Nov 2016 20:12:32 GMT
EXPOSE 8081/tcp
# Wed, 23 Nov 2016 20:12:33 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 23 Nov 2016 20:12:33 GMT
ENV MONGO_EXPRESS=0.32.0
# Wed, 23 Nov 2016 20:12:57 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 23 Nov 2016 20:12:58 GMT
WORKDIR /node_modules/mongo-express
# Wed, 23 Nov 2016 20:12:59 GMT
RUN cp config.default.js config.js
# Wed, 23 Nov 2016 20:12:59 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9504bce48c013a648681c7f1255af8ee7ded2363fa98b54b6a4a495d1a6b71`  
		Last Modified: Wed, 23 Nov 2016 19:45:54 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc0ec954a4f4efa5ac9a642053a9821981049da792378ee5cacb854d6968fc`  
		Last Modified: Wed, 23 Nov 2016 19:45:53 GMT  
		Size: 97.2 KB (97213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798d792fa2d2cc4ebfb9bfbd23270e83e412aaa6127234bc9b10177160f41648`  
		Last Modified: Wed, 23 Nov 2016 19:51:33 GMT  
		Size: 14.0 MB (14026915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69932713c2a3f4258b52e35a6964b5efa329df18019f150c7c4ac5bdbd408d9d`  
		Last Modified: Wed, 23 Nov 2016 20:13:15 GMT  
		Size: 458.7 KB (458662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2844df4a72d2a9c381b50be6b751e498c0007befe10d592e054db03303dd1876`  
		Last Modified: Wed, 23 Nov 2016 20:13:19 GMT  
		Size: 16.3 MB (16301767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7decaebc066672644701953eee7347578fbcfcaf4a48cf0dd1cc61901aae093`  
		Last Modified: Wed, 23 Nov 2016 20:13:15 GMT  
		Size: 2.7 KB (2673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:0.32`

```console
$ docker pull mongo-express@sha256:90aea74cfa081c96c6f9e7ec2106a44fe9f263506431ba61214b0300da5146b9
```

-	Platforms:
	-	linux; amd64

### `mongo-express:0.32` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100748987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da46f2017e76d3d145ed7c9b0a7965579f8b7558697deeacf1071865c8766b52`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:45:04 GMT
RUN groupadd -r node && useradd -r -g node node
# Tue, 08 Nov 2016 22:45:17 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 08 Nov 2016 22:47:23 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 08 Nov 2016 22:48:45 GMT
ENV NODE_VERSION=6.9.1
# Tue, 08 Nov 2016 22:48:58 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 08 Nov 2016 22:48:59 GMT
CMD ["node"]
# Thu, 10 Nov 2016 02:56:00 GMT
ENV TINI_VERSION=0.9.0
# Thu, 10 Nov 2016 02:57:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 02:57:12 GMT
EXPOSE 8081/tcp
# Thu, 10 Nov 2016 02:57:13 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Mon, 14 Nov 2016 17:40:26 GMT
ENV MONGO_EXPRESS=0.32.0
# Mon, 14 Nov 2016 17:40:51 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Mon, 14 Nov 2016 17:40:52 GMT
WORKDIR /node_modules/mongo-express
# Mon, 14 Nov 2016 17:40:53 GMT
RUN cp config.default.js config.js
# Mon, 14 Nov 2016 17:40:53 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60721b40a88024b354485a2aab8916faa195b40c4fdba227e92f60c609f01156`  
		Last Modified: Tue, 08 Nov 2016 22:45:51 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3739ddf6315c5e18b3e9b8b61629bf3ce0a4f5c41e495a001023d86a46ef0d52`  
		Last Modified: Tue, 08 Nov 2016 22:45:52 GMT  
		Size: 97.2 KB (97211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdc29c362d658c7dbf12dbca6954521d3a1b7316b275f937e7a931bbed6b68e`  
		Last Modified: Tue, 08 Nov 2016 22:49:15 GMT  
		Size: 14.0 MB (14026918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9394182520875d6600951373e6c2c050b8cce0d7b39cc7eaae00878d93650032`  
		Last Modified: Thu, 10 Nov 2016 02:57:56 GMT  
		Size: 458.6 KB (458638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3b0da3783067cb710d4013d240035001485d1eff824207f2664b94960720d0`  
		Last Modified: Mon, 14 Nov 2016 17:41:10 GMT  
		Size: 16.3 MB (16276040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6ea549c45a24af923b746df541c900a18add4653314e015f0ec662e6ee85c1`  
		Last Modified: Mon, 14 Nov 2016 17:41:06 GMT  
		Size: 2.7 KB (2673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:b4a6f4ab6e701adb1a334885f1371eba5d57f55b0ba9514dd60ffb515c5724dc
```

-	Platforms:
	-	linux; amd64

### `mongo-express:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100382022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cab42a9e93fa139a7e12787adc724727ff8392431e54b93594ae27c12c87283`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:45:04 GMT
RUN groupadd -r node && useradd -r -g node node
# Tue, 08 Nov 2016 22:45:17 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 08 Nov 2016 22:47:23 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 08 Nov 2016 22:48:45 GMT
ENV NODE_VERSION=6.9.1
# Tue, 08 Nov 2016 22:48:58 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 08 Nov 2016 22:48:59 GMT
CMD ["node"]
# Thu, 10 Nov 2016 02:56:00 GMT
ENV TINI_VERSION=0.9.0
# Thu, 10 Nov 2016 02:57:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 02:57:12 GMT
EXPOSE 8081/tcp
# Thu, 10 Nov 2016 02:57:13 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Thu, 10 Nov 2016 02:57:13 GMT
ENV MONGO_EXPRESS=0.31.5
# Thu, 10 Nov 2016 02:57:38 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Thu, 10 Nov 2016 02:57:41 GMT
WORKDIR /node_modules/mongo-express
# Thu, 10 Nov 2016 02:57:42 GMT
RUN cp config.default.js config.js
# Thu, 10 Nov 2016 02:57:42 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60721b40a88024b354485a2aab8916faa195b40c4fdba227e92f60c609f01156`  
		Last Modified: Tue, 08 Nov 2016 22:45:51 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3739ddf6315c5e18b3e9b8b61629bf3ce0a4f5c41e495a001023d86a46ef0d52`  
		Last Modified: Tue, 08 Nov 2016 22:45:52 GMT  
		Size: 97.2 KB (97211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdc29c362d658c7dbf12dbca6954521d3a1b7316b275f937e7a931bbed6b68e`  
		Last Modified: Tue, 08 Nov 2016 22:49:15 GMT  
		Size: 14.0 MB (14026918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9394182520875d6600951373e6c2c050b8cce0d7b39cc7eaae00878d93650032`  
		Last Modified: Thu, 10 Nov 2016 02:57:56 GMT  
		Size: 458.6 KB (458638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2481d28bea46af41858980353c7dbaeb8ffc1033a5a0cd624a061b6ff51c565`  
		Last Modified: Thu, 10 Nov 2016 02:58:00 GMT  
		Size: 15.9 MB (15909175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d198e222e24c3f192f095f3efaaa25ae20d1ef56d7531d41399124f5dc84960f`  
		Last Modified: Thu, 10 Nov 2016 02:57:54 GMT  
		Size: 2.6 KB (2573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
