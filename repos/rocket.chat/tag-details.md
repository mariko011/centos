<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:0.54.2`](#rocketchat0542)
-	[`rocket.chat:0.54`](#rocketchat054)
-	[`rocket.chat:0`](#rocketchat0)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:0.54.2`

```console
$ docker pull rocket.chat@sha256:f41823a89451cd83f9856585ec8776dd311921908b3133cacddd380733271872
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0.54.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.1 MB (180082643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d3894523285ff4800fbc40bc448e58a18cc183a8b3176a90b3b86a8dd1f2942`
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
# Wed, 22 Mar 2017 23:53:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 22 Mar 2017 23:53:45 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 04 Apr 2017 20:00:45 GMT
ENV NODE_VERSION=4.8.2
# Tue, 04 Apr 2017 20:00:53 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Apr 2017 20:00:54 GMT
ENV YARN_VERSION=0.21.3
# Tue, 04 Apr 2017 20:01:00 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Tue, 04 Apr 2017 20:01:00 GMT
CMD ["node"]
# Tue, 04 Apr 2017 21:31:29 GMT
MAINTAINER buildmaster@rocket.chat
# Tue, 04 Apr 2017 21:31:30 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Tue, 04 Apr 2017 21:31:30 GMT
VOLUME [/app/uploads]
# Tue, 04 Apr 2017 21:31:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 04 Apr 2017 21:31:32 GMT
ENV RC_VERSION=0.54.2
# Tue, 04 Apr 2017 21:31:33 GMT
WORKDIR /app
# Tue, 04 Apr 2017 21:32:02 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Tue, 04 Apr 2017 21:32:04 GMT
USER [rocketchat]
# Tue, 04 Apr 2017 21:32:05 GMT
WORKDIR /app/bundle
# Tue, 04 Apr 2017 21:32:05 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 04 Apr 2017 21:32:06 GMT
EXPOSE 3000/tcp
# Tue, 04 Apr 2017 21:32:07 GMT
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
	-	`sha256:2ab9991517f0812d77cbf980badfb70ae7fc1d2c7386fcd6237d55f9f39b8897`  
		Last Modified: Thu, 23 Mar 2017 00:35:52 GMT  
		Size: 119.1 KB (119060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83acf8b419031ee153c07d54c435cb82bd6e34baae27cd69ee8b8ab4cbfd73e1`  
		Last Modified: Tue, 04 Apr 2017 20:31:39 GMT  
		Size: 12.3 MB (12252044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f13155eab3c0c512e4ee6130a1993ec308f0b2ae4826a056be41c6580171b3e`  
		Last Modified: Tue, 04 Apr 2017 20:31:34 GMT  
		Size: 875.4 KB (875441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b8d82f2f33adc440a3b2f70706015fde4326bad0757b66635fdeba33b9cb56`  
		Last Modified: Tue, 04 Apr 2017 21:32:30 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78b18aa0f6046723b76c75b670d47bda3f4907546ca4c13420388c19cb3ec4b`  
		Last Modified: Tue, 04 Apr 2017 21:32:29 GMT  
		Size: 127.2 KB (127212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352f12562794523ce1a87a177fd38e2b704dde74b8469e6616e1c3d650e2bcc9`  
		Last Modified: Tue, 04 Apr 2017 21:32:56 GMT  
		Size: 96.7 MB (96657460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0.54`

```console
$ docker pull rocket.chat@sha256:f41823a89451cd83f9856585ec8776dd311921908b3133cacddd380733271872
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0.54` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.1 MB (180082643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d3894523285ff4800fbc40bc448e58a18cc183a8b3176a90b3b86a8dd1f2942`
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
# Wed, 22 Mar 2017 23:53:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 22 Mar 2017 23:53:45 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 04 Apr 2017 20:00:45 GMT
ENV NODE_VERSION=4.8.2
# Tue, 04 Apr 2017 20:00:53 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Apr 2017 20:00:54 GMT
ENV YARN_VERSION=0.21.3
# Tue, 04 Apr 2017 20:01:00 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Tue, 04 Apr 2017 20:01:00 GMT
CMD ["node"]
# Tue, 04 Apr 2017 21:31:29 GMT
MAINTAINER buildmaster@rocket.chat
# Tue, 04 Apr 2017 21:31:30 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Tue, 04 Apr 2017 21:31:30 GMT
VOLUME [/app/uploads]
# Tue, 04 Apr 2017 21:31:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 04 Apr 2017 21:31:32 GMT
ENV RC_VERSION=0.54.2
# Tue, 04 Apr 2017 21:31:33 GMT
WORKDIR /app
# Tue, 04 Apr 2017 21:32:02 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Tue, 04 Apr 2017 21:32:04 GMT
USER [rocketchat]
# Tue, 04 Apr 2017 21:32:05 GMT
WORKDIR /app/bundle
# Tue, 04 Apr 2017 21:32:05 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 04 Apr 2017 21:32:06 GMT
EXPOSE 3000/tcp
# Tue, 04 Apr 2017 21:32:07 GMT
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
	-	`sha256:2ab9991517f0812d77cbf980badfb70ae7fc1d2c7386fcd6237d55f9f39b8897`  
		Last Modified: Thu, 23 Mar 2017 00:35:52 GMT  
		Size: 119.1 KB (119060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83acf8b419031ee153c07d54c435cb82bd6e34baae27cd69ee8b8ab4cbfd73e1`  
		Last Modified: Tue, 04 Apr 2017 20:31:39 GMT  
		Size: 12.3 MB (12252044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f13155eab3c0c512e4ee6130a1993ec308f0b2ae4826a056be41c6580171b3e`  
		Last Modified: Tue, 04 Apr 2017 20:31:34 GMT  
		Size: 875.4 KB (875441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b8d82f2f33adc440a3b2f70706015fde4326bad0757b66635fdeba33b9cb56`  
		Last Modified: Tue, 04 Apr 2017 21:32:30 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78b18aa0f6046723b76c75b670d47bda3f4907546ca4c13420388c19cb3ec4b`  
		Last Modified: Tue, 04 Apr 2017 21:32:29 GMT  
		Size: 127.2 KB (127212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352f12562794523ce1a87a177fd38e2b704dde74b8469e6616e1c3d650e2bcc9`  
		Last Modified: Tue, 04 Apr 2017 21:32:56 GMT  
		Size: 96.7 MB (96657460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0`

```console
$ docker pull rocket.chat@sha256:f41823a89451cd83f9856585ec8776dd311921908b3133cacddd380733271872
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.1 MB (180082643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d3894523285ff4800fbc40bc448e58a18cc183a8b3176a90b3b86a8dd1f2942`
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
# Wed, 22 Mar 2017 23:53:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 22 Mar 2017 23:53:45 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 04 Apr 2017 20:00:45 GMT
ENV NODE_VERSION=4.8.2
# Tue, 04 Apr 2017 20:00:53 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 04 Apr 2017 20:00:54 GMT
ENV YARN_VERSION=0.21.3
# Tue, 04 Apr 2017 20:01:00 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Tue, 04 Apr 2017 20:01:00 GMT
CMD ["node"]
# Tue, 04 Apr 2017 21:31:29 GMT
MAINTAINER buildmaster@rocket.chat
# Tue, 04 Apr 2017 21:31:30 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Tue, 04 Apr 2017 21:31:30 GMT
VOLUME [/app/uploads]
# Tue, 04 Apr 2017 21:31:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 04 Apr 2017 21:31:32 GMT
ENV RC_VERSION=0.54.2
# Tue, 04 Apr 2017 21:31:33 GMT
WORKDIR /app
# Tue, 04 Apr 2017 21:32:02 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Tue, 04 Apr 2017 21:32:04 GMT
USER [rocketchat]
# Tue, 04 Apr 2017 21:32:05 GMT
WORKDIR /app/bundle
# Tue, 04 Apr 2017 21:32:05 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 04 Apr 2017 21:32:06 GMT
EXPOSE 3000/tcp
# Tue, 04 Apr 2017 21:32:07 GMT
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
	-	`sha256:2ab9991517f0812d77cbf980badfb70ae7fc1d2c7386fcd6237d55f9f39b8897`  
		Last Modified: Thu, 23 Mar 2017 00:35:52 GMT  
		Size: 119.1 KB (119060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83acf8b419031ee153c07d54c435cb82bd6e34baae27cd69ee8b8ab4cbfd73e1`  
		Last Modified: Tue, 04 Apr 2017 20:31:39 GMT  
		Size: 12.3 MB (12252044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f13155eab3c0c512e4ee6130a1993ec308f0b2ae4826a056be41c6580171b3e`  
		Last Modified: Tue, 04 Apr 2017 20:31:34 GMT  
		Size: 875.4 KB (875441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b8d82f2f33adc440a3b2f70706015fde4326bad0757b66635fdeba33b9cb56`  
		Last Modified: Tue, 04 Apr 2017 21:32:30 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78b18aa0f6046723b76c75b670d47bda3f4907546ca4c13420388c19cb3ec4b`  
		Last Modified: Tue, 04 Apr 2017 21:32:29 GMT  
		Size: 127.2 KB (127212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352f12562794523ce1a87a177fd38e2b704dde74b8469e6616e1c3d650e2bcc9`  
		Last Modified: Tue, 04 Apr 2017 21:32:56 GMT  
		Size: 96.7 MB (96657460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:cf1a9b92c1da4e7d2c91c8ace43ec92c19b2237159ae5cedbfdae441eb6b5389
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.1 MB (180076487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d0f9fb7bcc2dac6deceab44fb100cbaa34a99e9e48c92ab9036eeaa1fbe35b2`
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
# Wed, 22 Mar 2017 23:53:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 22 Mar 2017 23:53:45 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 23 Mar 2017 00:28:34 GMT
ENV NODE_VERSION=4.8.1
# Thu, 23 Mar 2017 00:28:46 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 23 Mar 2017 00:28:46 GMT
ENV YARN_VERSION=0.21.3
# Thu, 23 Mar 2017 00:28:51 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Thu, 23 Mar 2017 00:28:51 GMT
CMD ["node"]
# Thu, 23 Mar 2017 02:18:17 GMT
MAINTAINER buildmaster@rocket.chat
# Thu, 30 Mar 2017 21:14:23 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Thu, 30 Mar 2017 21:14:24 GMT
VOLUME [/app/uploads]
# Thu, 30 Mar 2017 21:14:26 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Thu, 30 Mar 2017 21:14:26 GMT
ENV RC_VERSION=0.54.2
# Thu, 30 Mar 2017 21:14:27 GMT
WORKDIR /app
# Thu, 30 Mar 2017 21:15:01 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Thu, 30 Mar 2017 21:15:20 GMT
USER [rocketchat]
# Thu, 30 Mar 2017 21:15:38 GMT
WORKDIR /app/bundle
# Thu, 30 Mar 2017 21:15:39 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Thu, 30 Mar 2017 21:15:39 GMT
EXPOSE 3000/tcp
# Thu, 30 Mar 2017 21:15:57 GMT
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
	-	`sha256:2ab9991517f0812d77cbf980badfb70ae7fc1d2c7386fcd6237d55f9f39b8897`  
		Last Modified: Thu, 23 Mar 2017 00:35:52 GMT  
		Size: 119.1 KB (119060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d0bbc00fae7c4785fe022064450877586372eb2f1fc5658c84476457ef8c7e`  
		Last Modified: Thu, 23 Mar 2017 00:57:46 GMT  
		Size: 12.2 MB (12246199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984285df6d9ce05e8d5edd2c888482cfddf92ffd1d161a861b65f4d844bc5bd5`  
		Last Modified: Thu, 23 Mar 2017 00:57:41 GMT  
		Size: 875.4 KB (875449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774824d867c31d945dc516f25738099e221693138954e3e8a566d125ca2c5182`  
		Last Modified: Thu, 30 Mar 2017 21:16:18 GMT  
		Size: 2.1 KB (2124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6ad109dd3e0dc33909ad679ed9e2ec3ce000555bee7d23803e195416e79864`  
		Last Modified: Thu, 30 Mar 2017 21:16:19 GMT  
		Size: 127.2 KB (127211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5399e8d45cd9f8b84cf16cfc360f3457677be56b3ae5b6f93383362b9fd54a`  
		Last Modified: Thu, 30 Mar 2017 21:16:51 GMT  
		Size: 96.7 MB (96657144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
