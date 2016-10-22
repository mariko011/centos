<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo-express`

-	[`mongo-express:0.31.5`](#mongo-express0315)
-	[`mongo-express:0.31`](#mongo-express031)
-	[`mongo-express:latest`](#mongo-expresslatest)

## `mongo-express:0.31.5`

```console
$ docker pull mongo-express@sha256:2800b377493bb247cf492a3258fc969fa483fa04ffb11378f5e410e94c2ec738
```

-	Platforms:
	-	linux; amd64

### `mongo-express:0.31.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100382159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513bcee3072016eb0112d2909f3926eb8749c033e0114740be7826e4b6a1b2c7`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:53:33 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 23 Sep 2016 20:54:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 19 Oct 2016 23:36:39 GMT
ENV NODE_VERSION=6.9.1
# Wed, 19 Oct 2016 23:36:50 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 19 Oct 2016 23:36:50 GMT
CMD ["node"]
# Thu, 20 Oct 2016 00:20:48 GMT
ENV TINI_VERSION=0.9.0
# Thu, 20 Oct 2016 00:20:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Oct 2016 00:20:59 GMT
EXPOSE 8081/tcp
# Thu, 20 Oct 2016 00:21:00 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Thu, 20 Oct 2016 00:21:00 GMT
ENV MONGO_EXPRESS=0.31.5
# Thu, 20 Oct 2016 00:21:17 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Thu, 20 Oct 2016 00:21:23 GMT
WORKDIR /node_modules/mongo-express
# Thu, 20 Oct 2016 00:21:24 GMT
RUN cp config.default.js config.js
# Thu, 20 Oct 2016 00:21:25 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cf98377d301224c76357ac0c702e179f8eadeb311ba0bb6e8e96a0f78f088a`  
		Last Modified: Fri, 23 Sep 2016 20:53:50 GMT  
		Size: 88.8 KB (88821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235b5a5e21cc95fcd2bcd0faf2e33b6cbf2581c70fd9fcdf8fb562942cd7fba`  
		Last Modified: Wed, 19 Oct 2016 23:39:16 GMT  
		Size: 14.0 MB (14026616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc9f6c2a9a93204efb76a838fc333a0c69fd693b18b4ab0474ccec9c87f90e6`  
		Last Modified: Thu, 20 Oct 2016 00:21:35 GMT  
		Size: 458.5 KB (458535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ad996b7eb98ef3db4b25e50077fc5ce2e21b099caecb145b73e90a5639c52d`  
		Last Modified: Thu, 20 Oct 2016 00:21:39 GMT  
		Size: 15.9 MB (15922991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73dc2c84f5a446baf5df0a389c250dba92aa534b85192963403282078a70f44`  
		Last Modified: Thu, 20 Oct 2016 00:21:34 GMT  
		Size: 2.6 KB (2575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:0.31`

```console
$ docker pull mongo-express@sha256:33044e7f260ebaaa97853035c010172e6e19bb161c54f42596e4758cc90e07b5
```

-	Platforms:
	-	linux; amd64

### `mongo-express:0.31` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100391028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7056fb103c33d5c1f986d028de14a8374fb7e122f58195e2648d5c33698796e5`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:33:33 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 21 Oct 2016 22:36:14 GMT
ENV NODE_VERSION=6.9.1
# Fri, 21 Oct 2016 22:36:27 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 21 Oct 2016 22:36:27 GMT
CMD ["node"]
# Sat, 22 Oct 2016 07:01:15 GMT
ENV TINI_VERSION=0.9.0
# Sat, 22 Oct 2016 07:01:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:01:25 GMT
EXPOSE 8081/tcp
# Sat, 22 Oct 2016 07:01:26 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Sat, 22 Oct 2016 07:01:26 GMT
ENV MONGO_EXPRESS=0.31.5
# Sat, 22 Oct 2016 07:01:52 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Sat, 22 Oct 2016 07:01:53 GMT
WORKDIR /node_modules/mongo-express
# Sat, 22 Oct 2016 07:01:54 GMT
RUN cp config.default.js config.js
# Sat, 22 Oct 2016 07:01:54 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ee3d5412f7bcb119c18827c03974678af5eb8c5e35634439d6ff75c33f66e7`  
		Last Modified: Fri, 21 Oct 2016 22:33:58 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c073cbf408e747268c223d482d81fd764f153d9ef19f3b65b146b7c638a7459c`  
		Last Modified: Fri, 21 Oct 2016 22:36:42 GMT  
		Size: 14.0 MB (14026594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc77ad63e9ca8e2f4e653f91be99daa3e633f0f0f2c75d70889295f3ee537205`  
		Last Modified: Sat, 22 Oct 2016 07:02:05 GMT  
		Size: 458.5 KB (458510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42748cca1e34da58fca2d52a0e7a67c12fb22b24b59f09e65f3bfefda32d5add`  
		Last Modified: Sat, 22 Oct 2016 07:02:09 GMT  
		Size: 15.9 MB (15924877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179a296d1d20a4f02a432f396a32a5d6fe270147d64c08eaa15e868e990eca3d`  
		Last Modified: Sat, 22 Oct 2016 07:02:05 GMT  
		Size: 2.6 KB (2576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:33044e7f260ebaaa97853035c010172e6e19bb161c54f42596e4758cc90e07b5
```

-	Platforms:
	-	linux; amd64

### `mongo-express:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100391028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7056fb103c33d5c1f986d028de14a8374fb7e122f58195e2648d5c33698796e5`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:33:33 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 21 Oct 2016 22:36:14 GMT
ENV NODE_VERSION=6.9.1
# Fri, 21 Oct 2016 22:36:27 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 21 Oct 2016 22:36:27 GMT
CMD ["node"]
# Sat, 22 Oct 2016 07:01:15 GMT
ENV TINI_VERSION=0.9.0
# Sat, 22 Oct 2016 07:01:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:01:25 GMT
EXPOSE 8081/tcp
# Sat, 22 Oct 2016 07:01:26 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Sat, 22 Oct 2016 07:01:26 GMT
ENV MONGO_EXPRESS=0.31.5
# Sat, 22 Oct 2016 07:01:52 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Sat, 22 Oct 2016 07:01:53 GMT
WORKDIR /node_modules/mongo-express
# Sat, 22 Oct 2016 07:01:54 GMT
RUN cp config.default.js config.js
# Sat, 22 Oct 2016 07:01:54 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ee3d5412f7bcb119c18827c03974678af5eb8c5e35634439d6ff75c33f66e7`  
		Last Modified: Fri, 21 Oct 2016 22:33:58 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c073cbf408e747268c223d482d81fd764f153d9ef19f3b65b146b7c638a7459c`  
		Last Modified: Fri, 21 Oct 2016 22:36:42 GMT  
		Size: 14.0 MB (14026594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc77ad63e9ca8e2f4e653f91be99daa3e633f0f0f2c75d70889295f3ee537205`  
		Last Modified: Sat, 22 Oct 2016 07:02:05 GMT  
		Size: 458.5 KB (458510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42748cca1e34da58fca2d52a0e7a67c12fb22b24b59f09e65f3bfefda32d5add`  
		Last Modified: Sat, 22 Oct 2016 07:02:09 GMT  
		Size: 15.9 MB (15924877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179a296d1d20a4f02a432f396a32a5d6fe270147d64c08eaa15e868e990eca3d`  
		Last Modified: Sat, 22 Oct 2016 07:02:05 GMT  
		Size: 2.6 KB (2576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
