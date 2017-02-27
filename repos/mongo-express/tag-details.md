<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo-express`

-	[`mongo-express:0.38.0`](#mongo-express0380)
-	[`mongo-express:0.38`](#mongo-express038)
-	[`mongo-express:latest`](#mongo-expresslatest)

## `mongo-express:0.38.0`

**does not exist** (yet?)

## `mongo-express:0.38`

**does not exist** (yet?)

## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:39ea6cc684feb337a10357648dcc2a8c8411f8bf43403105c840519a7478f85f
```

-	Platforms:
	-	linux; amd64

### `mongo-express:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100876920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b7233a44e751baa212a709d1a16550b444bd16667bda933df67c9e506dfc9e`
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
# Tue, 07 Feb 2017 18:47:55 GMT
ENV MONGO_EXPRESS=0.35.0
# Tue, 07 Feb 2017 18:48:14 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Tue, 07 Feb 2017 18:48:15 GMT
WORKDIR /node_modules/mongo-express
# Tue, 07 Feb 2017 18:48:16 GMT
RUN cp config.default.js config.js
# Tue, 07 Feb 2017 18:48:16 GMT
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
	-	`sha256:dd05b4217212527fd256b358968ef8fc141376a4e3a80988fc1c68fa62fb01ad`  
		Last Modified: Tue, 07 Feb 2017 18:48:37 GMT  
		Size: 16.4 MB (16402994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdde6cfc34deb2af61944b1ca46c0e7ee7f5fab341a738215e06db1d8b1c87b`  
		Last Modified: Tue, 07 Feb 2017 18:48:34 GMT  
		Size: 2.7 KB (2715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
