## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:a3f17a963e59c370a05211722a38ee7648912631bfa629d88aab0f7cfa62e3f8
```

-	Platforms:
	-	linux; amd64

### `mongo-express:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.8 MB (100775331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490cc1174ada88892182ce2dc6a29804c2a9cb71746e4870d1f90b3f4b2a0ff1`
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
# Tue, 06 Dec 2016 23:20:40 GMT
ENV NODE_VERSION=6.9.2
# Tue, 06 Dec 2016 23:20:50 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 06 Dec 2016 23:20:51 GMT
CMD ["node"]
# Wed, 07 Dec 2016 23:55:56 GMT
ENV TINI_VERSION=0.9.0
# Wed, 07 Dec 2016 23:56:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y ca-certificates curl 		--no-install-recommends 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini" -o /usr/local/bin/tini 	&& curl -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini.asc" -o /usr/local/bin/tini.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h 	&& apt-get purge --auto-remove -y ca-certificates curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Dec 2016 23:56:11 GMT
EXPOSE 8081/tcp
# Wed, 07 Dec 2016 23:56:11 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Wed, 07 Dec 2016 23:56:12 GMT
ENV MONGO_EXPRESS=0.32.0
# Wed, 07 Dec 2016 23:56:40 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Wed, 07 Dec 2016 23:56:40 GMT
WORKDIR /node_modules/mongo-express
# Wed, 07 Dec 2016 23:56:41 GMT
RUN cp config.default.js config.js
# Wed, 07 Dec 2016 23:56:42 GMT
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
	-	`sha256:18f50630b6d525929ddb1ec9230627765d775f6b147b6ac97ec200283cbabb82`  
		Last Modified: Tue, 06 Dec 2016 23:35:27 GMT  
		Size: 14.0 MB (14011707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e477cd7eb3e7d81a227a0533b09f34fe9fec0be843ef5430816391bf43a4db`  
		Last Modified: Wed, 07 Dec 2016 23:57:05 GMT  
		Size: 458.6 KB (458628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d1a3f7d9f3a7db398cf334f274a9b24157e3840d0a2cdca7b4be482c65d952`  
		Last Modified: Wed, 07 Dec 2016 23:57:13 GMT  
		Size: 16.3 MB (16315299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71d50de06b3fa44d682c86ba2eb63ea8768e8d9bad3f02be49369325221f5d5`  
		Last Modified: Wed, 07 Dec 2016 23:57:05 GMT  
		Size: 2.7 KB (2673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
