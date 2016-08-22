<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `mongo-express`

-	[`mongo-express:0.31.0`](#mongo-express0310)
-	[`mongo-express:0.31`](#mongo-express031)
-	[`mongo-express:latest`](#mongo-expresslatest)

## `mongo-express:0.31.0`

```console
$ docker pull mongo-express@sha256:519777fee9d8bee299f038d715a655aebb33d4daabfe2b955fda4f3ae3139d6a
```

-	Platforms:
	-	linux; amd64

### `mongo-express:0.31.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99038153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb9c3744754899e720493052442a25fbace8c37ad1553ba70504ee8f4c7de57`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 23:42:49 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 29 Jul 2016 23:46:03 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 29 Jul 2016 23:47:33 GMT
ENV NODE_VERSION=5.12.0
# Fri, 29 Jul 2016 23:48:47 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Jul 2016 23:48:47 GMT
CMD ["node"]
# Mon, 22 Aug 2016 16:41:47 GMT
ENV TINI_VERSION=0.9.0
# Mon, 22 Aug 2016 16:42:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 22 Aug 2016 16:42:59 GMT
EXPOSE 8081/tcp
# Mon, 22 Aug 2016 16:43:00 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Mon, 22 Aug 2016 16:43:01 GMT
ENV MONGO_EXPRESS=0.31.0
# Mon, 22 Aug 2016 16:43:24 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Mon, 22 Aug 2016 16:43:25 GMT
WORKDIR /node_modules/mongo-express
# Mon, 22 Aug 2016 16:43:27 GMT
RUN cp config.default.js config.js
# Mon, 22 Aug 2016 16:43:28 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e99d7dcd4fae0ccc58e5f7abc885a0ba385ab1b4276ba4f14cd19fb74603cc`  
		Last Modified: Mon, 01 Aug 2016 16:35:18 GMT  
		Size: 71.8 KB (71850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396567732620c821971c42b83ccef157aede2d8eec3ada323e09eea8a887a585`  
		Last Modified: Mon, 01 Aug 2016 19:43:58 GMT  
		Size: 12.4 MB (12404775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66507fd43d00092547db2d16d3df907d20e194accaac07c01e4680e0fc15993e`  
		Last Modified: Mon, 22 Aug 2016 16:43:40 GMT  
		Size: 459.0 KB (459013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc5a75ddf5174c5b200ef24e6819b92a54208ebe1592347843913a273e1f14e`  
		Last Modified: Mon, 22 Aug 2016 16:43:45 GMT  
		Size: 16.2 MB (16207346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3eed8f1260d4a8044d636ee39318bf5aa548129824fe20f602fa536ff26331`  
		Last Modified: Mon, 22 Aug 2016 16:43:40 GMT  
		Size: 2.6 KB (2580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:0.31`

```console
$ docker pull mongo-express@sha256:519777fee9d8bee299f038d715a655aebb33d4daabfe2b955fda4f3ae3139d6a
```

-	Platforms:
	-	linux; amd64

### `mongo-express:0.31` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99038153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb9c3744754899e720493052442a25fbace8c37ad1553ba70504ee8f4c7de57`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 23:42:49 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 29 Jul 2016 23:46:03 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 29 Jul 2016 23:47:33 GMT
ENV NODE_VERSION=5.12.0
# Fri, 29 Jul 2016 23:48:47 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Jul 2016 23:48:47 GMT
CMD ["node"]
# Mon, 22 Aug 2016 16:41:47 GMT
ENV TINI_VERSION=0.9.0
# Mon, 22 Aug 2016 16:42:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 22 Aug 2016 16:42:59 GMT
EXPOSE 8081/tcp
# Mon, 22 Aug 2016 16:43:00 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Mon, 22 Aug 2016 16:43:01 GMT
ENV MONGO_EXPRESS=0.31.0
# Mon, 22 Aug 2016 16:43:24 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Mon, 22 Aug 2016 16:43:25 GMT
WORKDIR /node_modules/mongo-express
# Mon, 22 Aug 2016 16:43:27 GMT
RUN cp config.default.js config.js
# Mon, 22 Aug 2016 16:43:28 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e99d7dcd4fae0ccc58e5f7abc885a0ba385ab1b4276ba4f14cd19fb74603cc`  
		Last Modified: Mon, 01 Aug 2016 16:35:18 GMT  
		Size: 71.8 KB (71850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396567732620c821971c42b83ccef157aede2d8eec3ada323e09eea8a887a585`  
		Last Modified: Mon, 01 Aug 2016 19:43:58 GMT  
		Size: 12.4 MB (12404775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66507fd43d00092547db2d16d3df907d20e194accaac07c01e4680e0fc15993e`  
		Last Modified: Mon, 22 Aug 2016 16:43:40 GMT  
		Size: 459.0 KB (459013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc5a75ddf5174c5b200ef24e6819b92a54208ebe1592347843913a273e1f14e`  
		Last Modified: Mon, 22 Aug 2016 16:43:45 GMT  
		Size: 16.2 MB (16207346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3eed8f1260d4a8044d636ee39318bf5aa548129824fe20f602fa536ff26331`  
		Last Modified: Mon, 22 Aug 2016 16:43:40 GMT  
		Size: 2.6 KB (2580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:519777fee9d8bee299f038d715a655aebb33d4daabfe2b955fda4f3ae3139d6a
```

-	Platforms:
	-	linux; amd64

### `mongo-express:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99038153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb9c3744754899e720493052442a25fbace8c37ad1553ba70504ee8f4c7de57`
-	Default Command: `["tini","--","node","app"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 23:42:49 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 29 Jul 2016 23:46:03 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 29 Jul 2016 23:47:33 GMT
ENV NODE_VERSION=5.12.0
# Fri, 29 Jul 2016 23:48:47 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Jul 2016 23:48:47 GMT
CMD ["node"]
# Mon, 22 Aug 2016 16:41:47 GMT
ENV TINI_VERSION=0.9.0
# Mon, 22 Aug 2016 16:42:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 22 Aug 2016 16:42:59 GMT
EXPOSE 8081/tcp
# Mon, 22 Aug 2016 16:43:00 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Mon, 22 Aug 2016 16:43:01 GMT
ENV MONGO_EXPRESS=0.31.0
# Mon, 22 Aug 2016 16:43:24 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Mon, 22 Aug 2016 16:43:25 GMT
WORKDIR /node_modules/mongo-express
# Mon, 22 Aug 2016 16:43:27 GMT
RUN cp config.default.js config.js
# Mon, 22 Aug 2016 16:43:28 GMT
CMD ["tini" "--" "node" "app"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e99d7dcd4fae0ccc58e5f7abc885a0ba385ab1b4276ba4f14cd19fb74603cc`  
		Last Modified: Mon, 01 Aug 2016 16:35:18 GMT  
		Size: 71.8 KB (71850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396567732620c821971c42b83ccef157aede2d8eec3ada323e09eea8a887a585`  
		Last Modified: Mon, 01 Aug 2016 19:43:58 GMT  
		Size: 12.4 MB (12404775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66507fd43d00092547db2d16d3df907d20e194accaac07c01e4680e0fc15993e`  
		Last Modified: Mon, 22 Aug 2016 16:43:40 GMT  
		Size: 459.0 KB (459013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc5a75ddf5174c5b200ef24e6819b92a54208ebe1592347843913a273e1f14e`  
		Last Modified: Mon, 22 Aug 2016 16:43:45 GMT  
		Size: 16.2 MB (16207346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3eed8f1260d4a8044d636ee39318bf5aa548129824fe20f602fa536ff26331`  
		Last Modified: Mon, 22 Aug 2016 16:43:40 GMT  
		Size: 2.6 KB (2580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
