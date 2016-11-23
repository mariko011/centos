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
$ docker pull mongo-express@sha256:db8be02a839ac9de44b241d6f71d34a87305421670a1de902b8ed7ad4f0743b1
```

-	Platforms:
	-	linux; amd64

### `mongo-express:0.32` - linux; amd64

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

## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:db8be02a839ac9de44b241d6f71d34a87305421670a1de902b8ed7ad4f0743b1
```

-	Platforms:
	-	linux; amd64

### `mongo-express:latest` - linux; amd64

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
