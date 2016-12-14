<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:0.48.1`](#rocketchat0481)
-	[`rocket.chat:0.48`](#rocketchat048)
-	[`rocket.chat:0`](#rocketchat0)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:0.48.1`

```console
$ docker pull rocket.chat@sha256:e41583f65fd489126c3eda342d531d4a28caec4d1761274bd90f390278b850cd
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0.48.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166883615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f79118c7318e30e455844fc2583aa4fe06688ab48cd1dbeb4c11216e157e2664`
-	Default Command: `["node","main.js"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:02:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Dec 2016 15:28:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Dec 2016 15:28:28 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 14 Dec 2016 15:28:55 GMT
ENV NODE_VERSION=4.7.0
# Wed, 14 Dec 2016 15:29:06 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 14 Dec 2016 15:29:07 GMT
CMD ["node"]
# Wed, 14 Dec 2016 18:54:05 GMT
MAINTAINER buildmaster@rocket.chat
# Wed, 14 Dec 2016 18:54:06 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Wed, 14 Dec 2016 18:54:07 GMT
VOLUME [/app/uploads]
# Wed, 14 Dec 2016 18:54:09 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Wed, 14 Dec 2016 18:54:09 GMT
ENV RC_VERSION=0.48.1
# Wed, 14 Dec 2016 18:54:10 GMT
WORKDIR /app
# Wed, 14 Dec 2016 18:54:46 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Wed, 14 Dec 2016 18:54:48 GMT
USER [rocketchat]
# Wed, 14 Dec 2016 18:54:48 GMT
WORKDIR /app/bundle
# Wed, 14 Dec 2016 18:54:49 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Wed, 14 Dec 2016 18:54:49 GMT
EXPOSE 3000/tcp
# Wed, 14 Dec 2016 18:54:50 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a469a332cde81108f34a34ec0a910eaca6b83667e9048229a8ef71417c6e69d3`  
		Last Modified: Wed, 14 Dec 2016 18:55:09 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5227756fd9b1cbcbbcd730a278784652d44640734d0a44b69c8da663756df34`  
		Last Modified: Wed, 14 Dec 2016 18:55:05 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d65ceeb93d259826fc7520cc48dde6df7b3ebad55d1b9fb299b184936e84f9`  
		Last Modified: Wed, 14 Dec 2016 18:55:15 GMT  
		Size: 12.3 MB (12261580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b668d87b28f1ac8486b5d1af90d1dc31c9bbb67e13207ca5c9fefd0d9963268`  
		Last Modified: Wed, 14 Dec 2016 18:55:06 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f84e5714c535f751c04e95e668efd0cb4394fea6282d95d4f5926bee8fc2d36`  
		Last Modified: Wed, 14 Dec 2016 18:55:05 GMT  
		Size: 94.7 KB (94665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f135c5ef1e9d2909bbc5083e046e8219ac1352f51247c946c8e3f31fbc801249`  
		Last Modified: Wed, 14 Dec 2016 18:55:31 GMT  
		Size: 84.5 MB (84530611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0.48`

**does not exist** (yet?)

## `rocket.chat:0`

```console
$ docker pull rocket.chat@sha256:e9cfee2b72f1bf4258bb1d0911447019a662af38713a88f761709eec3dda8da8
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164052243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7235d05706d8ad04fb46b2b62b8886002f294761da84e9f222f66c76761d1feb`
-	Default Command: `["node","main.js"]`

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
# Wed, 07 Dec 2016 23:20:54 GMT
ENV NODE_VERSION=4.7.0
# Wed, 07 Dec 2016 23:21:04 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 07 Dec 2016 23:21:05 GMT
CMD ["node"]
# Wed, 07 Dec 2016 23:58:04 GMT
MAINTAINER buildmaster@rocket.chat
# Wed, 07 Dec 2016 23:58:05 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Wed, 07 Dec 2016 23:58:06 GMT
VOLUME [/app/uploads]
# Wed, 07 Dec 2016 23:58:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Wed, 07 Dec 2016 23:58:08 GMT
ENV RC_VERSION=0.47.0
# Wed, 07 Dec 2016 23:58:08 GMT
WORKDIR /app
# Wed, 07 Dec 2016 23:58:39 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Wed, 07 Dec 2016 23:58:41 GMT
USER [rocketchat]
# Wed, 07 Dec 2016 23:58:42 GMT
WORKDIR /app/bundle
# Wed, 07 Dec 2016 23:58:42 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Wed, 07 Dec 2016 23:58:43 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:58:43 GMT
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
	-	`sha256:cd9504bce48c013a648681c7f1255af8ee7ded2363fa98b54b6a4a495d1a6b71`  
		Last Modified: Wed, 23 Nov 2016 19:45:54 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc0ec954a4f4efa5ac9a642053a9821981049da792378ee5cacb854d6968fc`  
		Last Modified: Wed, 23 Nov 2016 19:45:53 GMT  
		Size: 97.2 KB (97213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7501c61ea84b3838e9a4b3e7a5308c4bc46ece2d539dfc59e85d303b2b1fc1`  
		Last Modified: Wed, 07 Dec 2016 23:36:50 GMT  
		Size: 12.3 MB (12261548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a5fdebe0ab10d6356d9d64ad68f858117a2a0e9540af4db088589d112c5777`  
		Last Modified: Wed, 07 Dec 2016 23:58:57 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233e5794ddb3c8cf31c0287d9c2b052c587ff17bbafd8853c8ead3e47bdd9f3`  
		Last Modified: Wed, 07 Dec 2016 23:58:57 GMT  
		Size: 94.7 KB (94663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292551a43c94514a309ce0c332c1ae6df05c7de54571d03f000e05cd4ffdc512`  
		Last Modified: Wed, 07 Dec 2016 23:59:21 GMT  
		Size: 81.7 MB (81706919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:e9cfee2b72f1bf4258bb1d0911447019a662af38713a88f761709eec3dda8da8
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164052243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7235d05706d8ad04fb46b2b62b8886002f294761da84e9f222f66c76761d1feb`
-	Default Command: `["node","main.js"]`

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
# Wed, 07 Dec 2016 23:20:54 GMT
ENV NODE_VERSION=4.7.0
# Wed, 07 Dec 2016 23:21:04 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 07 Dec 2016 23:21:05 GMT
CMD ["node"]
# Wed, 07 Dec 2016 23:58:04 GMT
MAINTAINER buildmaster@rocket.chat
# Wed, 07 Dec 2016 23:58:05 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Wed, 07 Dec 2016 23:58:06 GMT
VOLUME [/app/uploads]
# Wed, 07 Dec 2016 23:58:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Wed, 07 Dec 2016 23:58:08 GMT
ENV RC_VERSION=0.47.0
# Wed, 07 Dec 2016 23:58:08 GMT
WORKDIR /app
# Wed, 07 Dec 2016 23:58:39 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Wed, 07 Dec 2016 23:58:41 GMT
USER [rocketchat]
# Wed, 07 Dec 2016 23:58:42 GMT
WORKDIR /app/bundle
# Wed, 07 Dec 2016 23:58:42 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Wed, 07 Dec 2016 23:58:43 GMT
EXPOSE 3000/tcp
# Wed, 07 Dec 2016 23:58:43 GMT
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
	-	`sha256:cd9504bce48c013a648681c7f1255af8ee7ded2363fa98b54b6a4a495d1a6b71`  
		Last Modified: Wed, 23 Nov 2016 19:45:54 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc0ec954a4f4efa5ac9a642053a9821981049da792378ee5cacb854d6968fc`  
		Last Modified: Wed, 23 Nov 2016 19:45:53 GMT  
		Size: 97.2 KB (97213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7501c61ea84b3838e9a4b3e7a5308c4bc46ece2d539dfc59e85d303b2b1fc1`  
		Last Modified: Wed, 07 Dec 2016 23:36:50 GMT  
		Size: 12.3 MB (12261548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a5fdebe0ab10d6356d9d64ad68f858117a2a0e9540af4db088589d112c5777`  
		Last Modified: Wed, 07 Dec 2016 23:58:57 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233e5794ddb3c8cf31c0287d9c2b052c587ff17bbafd8853c8ead3e47bdd9f3`  
		Last Modified: Wed, 07 Dec 2016 23:58:57 GMT  
		Size: 94.7 KB (94663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292551a43c94514a309ce0c332c1ae6df05c7de54571d03f000e05cd4ffdc512`  
		Last Modified: Wed, 07 Dec 2016 23:59:21 GMT  
		Size: 81.7 MB (81706919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
