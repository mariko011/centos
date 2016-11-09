## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:95e4e8227f1d70c18ee6ab6f0525122a65144ca9591faad4bd147f42ea29e02e
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195920839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44b7c6b22ce213584f0c37b8b5cfae3cd1619850187866660d70f7919057987`
-	Default Command: `["node","main.js"]`

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
# Tue, 08 Nov 2016 22:47:23 GMT
ENV NODE_VERSION=4.6.1
# Tue, 08 Nov 2016 22:47:35 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 08 Nov 2016 22:47:35 GMT
CMD ["node"]
# Wed, 09 Nov 2016 01:12:59 GMT
MAINTAINER buildmaster@rocket.chat
# Wed, 09 Nov 2016 01:13:00 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Wed, 09 Nov 2016 01:13:00 GMT
VOLUME [/app/uploads]
# Wed, 09 Nov 2016 01:13:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Wed, 09 Nov 2016 01:13:03 GMT
ENV RC_VERSION=0.45.0
# Wed, 09 Nov 2016 01:13:03 GMT
WORKDIR /app
# Wed, 09 Nov 2016 01:13:39 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Wed, 09 Nov 2016 01:13:41 GMT
USER [rocketchat]
# Wed, 09 Nov 2016 01:13:41 GMT
WORKDIR /app/bundle
# Wed, 09 Nov 2016 01:13:42 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Wed, 09 Nov 2016 01:13:42 GMT
EXPOSE 3000/tcp
# Wed, 09 Nov 2016 01:13:43 GMT
CMD ["node" "main.js"]
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
	-	`sha256:3f138f6fd0ba14a1dc281713e109d6c3d37c52f9f4afd4f18b2e9ae5fdeb530c`  
		Last Modified: Tue, 08 Nov 2016 22:47:52 GMT  
		Size: 12.2 MB (12245637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5049b8cbc36159343d9557a9f82bbed06644683c9f7ff3696b8176015110cfe2`  
		Last Modified: Wed, 09 Nov 2016 01:13:57 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acef185e4afff78858732d741509e1862dd2a7231af2095602ab0df4069d0fd3`  
		Last Modified: Wed, 09 Nov 2016 01:13:56 GMT  
		Size: 94.7 KB (94661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19de77dce9643c5f28fac5264b298ad6627921c13f3e40dec4117680f741b599`  
		Last Modified: Wed, 09 Nov 2016 01:14:27 GMT  
		Size: 113.6 MB (113593738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
