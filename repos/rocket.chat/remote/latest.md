## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:7c6d8ce8e40474018d3baec48ba63da7719f321c27dfda9a7eb99927c5e7be8a
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.0 MB (179994130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0fae435a78e383cc4680c992630cf19983c7a85c68bdd3b75dbcb57f5af5c6`
-	Default Command: `["node","main.js"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:07:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 21 Mar 2017 22:07:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 21 Mar 2017 22:07:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 21 Mar 2017 22:07:48 GMT
ENV NODE_VERSION=4.8.0
# Tue, 21 Mar 2017 22:07:58 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 21 Mar 2017 22:07:59 GMT
ENV YARN_VERSION=0.21.3
# Tue, 21 Mar 2017 22:08:03 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Tue, 21 Mar 2017 22:08:04 GMT
CMD ["node"]
# Wed, 22 Mar 2017 15:25:10 GMT
MAINTAINER buildmaster@rocket.chat
# Wed, 22 Mar 2017 15:25:11 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Wed, 22 Mar 2017 15:25:12 GMT
VOLUME [/app/uploads]
# Wed, 22 Mar 2017 16:52:43 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Thu, 23 Mar 2017 00:08:01 GMT
ENV RC_VERSION=0.54.0
# Thu, 23 Mar 2017 00:08:02 GMT
WORKDIR /app
# Thu, 23 Mar 2017 00:08:59 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Thu, 23 Mar 2017 00:09:02 GMT
USER [rocketchat]
# Thu, 23 Mar 2017 00:09:03 GMT
WORKDIR /app/bundle
# Thu, 23 Mar 2017 00:09:04 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Thu, 23 Mar 2017 00:09:05 GMT
EXPOSE 3000/tcp
# Thu, 23 Mar 2017 00:09:06 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c75255d33f781986e7e2731d7b17bf4675d02f4e956371310df4658cf1b1b2`  
		Last Modified: Thu, 23 Mar 2017 00:09:59 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c53a336689edfea7981ee572b9820f75631f6d36e91ab805e55a08104d0983`  
		Last Modified: Thu, 23 Mar 2017 00:09:59 GMT  
		Size: 124.0 KB (123996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06300e243c7fe7dcf70a49c60be0312662b04c5cf1fcfd8577436d1f22e5b3a5`  
		Last Modified: Thu, 23 Mar 2017 00:10:06 GMT  
		Size: 12.3 MB (12274165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ea47f9397600f09b327f7ef3f221fa780b092f9a2facdd0154c5cdff204966`  
		Last Modified: Thu, 23 Mar 2017 00:09:58 GMT  
		Size: 880.6 KB (880624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3612a0891c830165e9035b34b6ca2179af558df4ef9909717598c865629b24db`  
		Last Modified: Thu, 23 Mar 2017 00:09:57 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0483fafbb6c56f3c7916e8c1349134425df8cc17767fd4feeed36aae28cb9af4`  
		Last Modified: Thu, 23 Mar 2017 00:09:57 GMT  
		Size: 132.1 KB (132112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8a521c26925f3d2e4f2f246180080fd49d0c7ab23646162a9b47c0b6f5ab54`  
		Last Modified: Thu, 23 Mar 2017 00:10:45 GMT  
		Size: 96.5 MB (96531842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
