<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo-express`

-	[`mongo-express:0.34.0`](#mongo-express0340)
-	[`mongo-express:0.34`](#mongo-express034)
-	[`mongo-express:latest`](#mongo-expresslatest)

## `mongo-express:0.34.0`

```console
$ docker pull mongo-express@sha256:250da464c722afe099861b29f61d4f49abd234435ab7ff6936d3c687c17400e6
```

-	Platforms:
	-	linux; amd64

### `mongo-express:0.34.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100854958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e84c7cfc85c8301b9e60dbfe1092791f2f3c83322d3a71d9834c24d1b0fe31`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:25:55 GMT
ENV NODE_VERSION=6.9.5
# Wed, 01 Feb 2017 17:26:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:26:04 GMT
CMD ["node"]
# Wed, 01 Feb 2017 18:01:29 GMT
ENV TINI_VERSION=0.9.0
# Wed, 01 Feb 2017 18:01:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Feb 2017 18:01:38 GMT
EXPOSE 8081/tcp
# Wed, 01 Feb 2017 18:01:38 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 01 Feb 2017 18:01:38 GMT
ENV MONGO_EXPRESS=0.34.0
# Wed, 01 Feb 2017 18:01:56 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 01 Feb 2017 18:01:56 GMT
WORKDIR /node_modules/mongo-express
# Wed, 01 Feb 2017 18:01:58 GMT
RUN cp config.default.js config.js
# Wed, 01 Feb 2017 18:01:58 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942a1cc8cbe652f022aeb3fe261121476655e14f10f89ed733bebacc3895d80b`  
		Last Modified: Wed, 01 Feb 2017 17:43:06 GMT  
		Size: 14.0 MB (14014118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc679b885e682f0938e9239265af6d4c485a4d9e3ba756b99016eec84f3bdff6`  
		Last Modified: Wed, 01 Feb 2017 18:02:16 GMT  
		Size: 458.9 KB (458885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d613aa18650f1fa6b3639a21482b718322085688d3f21301f207f9fbee20268`  
		Last Modified: Wed, 01 Feb 2017 18:02:20 GMT  
		Size: 16.4 MB (16381076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4bdd7ee06a10460618f1baadc5998a87b444a0a5208e1732528dd52cf290df`  
		Last Modified: Wed, 01 Feb 2017 18:02:16 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:0.34`

```console
$ docker pull mongo-express@sha256:250da464c722afe099861b29f61d4f49abd234435ab7ff6936d3c687c17400e6
```

-	Platforms:
	-	linux; amd64

### `mongo-express:0.34` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100854958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e84c7cfc85c8301b9e60dbfe1092791f2f3c83322d3a71d9834c24d1b0fe31`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:25:55 GMT
ENV NODE_VERSION=6.9.5
# Wed, 01 Feb 2017 17:26:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:26:04 GMT
CMD ["node"]
# Wed, 01 Feb 2017 18:01:29 GMT
ENV TINI_VERSION=0.9.0
# Wed, 01 Feb 2017 18:01:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Feb 2017 18:01:38 GMT
EXPOSE 8081/tcp
# Wed, 01 Feb 2017 18:01:38 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 01 Feb 2017 18:01:38 GMT
ENV MONGO_EXPRESS=0.34.0
# Wed, 01 Feb 2017 18:01:56 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 01 Feb 2017 18:01:56 GMT
WORKDIR /node_modules/mongo-express
# Wed, 01 Feb 2017 18:01:58 GMT
RUN cp config.default.js config.js
# Wed, 01 Feb 2017 18:01:58 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942a1cc8cbe652f022aeb3fe261121476655e14f10f89ed733bebacc3895d80b`  
		Last Modified: Wed, 01 Feb 2017 17:43:06 GMT  
		Size: 14.0 MB (14014118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc679b885e682f0938e9239265af6d4c485a4d9e3ba756b99016eec84f3bdff6`  
		Last Modified: Wed, 01 Feb 2017 18:02:16 GMT  
		Size: 458.9 KB (458885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d613aa18650f1fa6b3639a21482b718322085688d3f21301f207f9fbee20268`  
		Last Modified: Wed, 01 Feb 2017 18:02:20 GMT  
		Size: 16.4 MB (16381076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4bdd7ee06a10460618f1baadc5998a87b444a0a5208e1732528dd52cf290df`  
		Last Modified: Wed, 01 Feb 2017 18:02:16 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:250da464c722afe099861b29f61d4f49abd234435ab7ff6936d3c687c17400e6
```

-	Platforms:
	-	linux; amd64

### `mongo-express:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100854958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e84c7cfc85c8301b9e60dbfe1092791f2f3c83322d3a71d9834c24d1b0fe31`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:25:55 GMT
ENV NODE_VERSION=6.9.5
# Wed, 01 Feb 2017 17:26:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:26:04 GMT
CMD ["node"]
# Wed, 01 Feb 2017 18:01:29 GMT
ENV TINI_VERSION=0.9.0
# Wed, 01 Feb 2017 18:01:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Feb 2017 18:01:38 GMT
EXPOSE 8081/tcp
# Wed, 01 Feb 2017 18:01:38 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 01 Feb 2017 18:01:38 GMT
ENV MONGO_EXPRESS=0.34.0
# Wed, 01 Feb 2017 18:01:56 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 01 Feb 2017 18:01:56 GMT
WORKDIR /node_modules/mongo-express
# Wed, 01 Feb 2017 18:01:58 GMT
RUN cp config.default.js config.js
# Wed, 01 Feb 2017 18:01:58 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942a1cc8cbe652f022aeb3fe261121476655e14f10f89ed733bebacc3895d80b`  
		Last Modified: Wed, 01 Feb 2017 17:43:06 GMT  
		Size: 14.0 MB (14014118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc679b885e682f0938e9239265af6d4c485a4d9e3ba756b99016eec84f3bdff6`  
		Last Modified: Wed, 01 Feb 2017 18:02:16 GMT  
		Size: 458.9 KB (458885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d613aa18650f1fa6b3639a21482b718322085688d3f21301f207f9fbee20268`  
		Last Modified: Wed, 01 Feb 2017 18:02:20 GMT  
		Size: 16.4 MB (16381076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4bdd7ee06a10460618f1baadc5998a87b444a0a5208e1732528dd52cf290df`  
		Last Modified: Wed, 01 Feb 2017 18:02:16 GMT  
		Size: 2.7 KB (2671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
