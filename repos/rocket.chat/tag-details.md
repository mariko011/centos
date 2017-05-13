<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:0.55.1`](#rocketchat0551)
-	[`rocket.chat:0.55`](#rocketchat055)
-	[`rocket.chat:0`](#rocketchat0)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:0.55.1`

```console
$ docker pull rocket.chat@sha256:0a69d078d4f6a856dde150df659dceb3f81d7d3790907f84e5321cda001834f6
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0.55.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (199968756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55cf927e4ad1cd186d697a193c0ceb9f1c963a6925e1cb5a29e081a0536e242a`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:45:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 10 May 2017 13:45:46 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done
# Wed, 10 May 2017 13:45:46 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 10 May 2017 13:45:47 GMT
ENV NODE_VERSION=4.8.3
# Wed, 10 May 2017 13:46:00 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 10 May 2017 13:46:01 GMT
ENV YARN_VERSION=0.23.4
# Wed, 10 May 2017 13:46:06 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 10 May 2017 13:46:07 GMT
CMD ["node"]
# Wed, 10 May 2017 15:51:28 GMT
MAINTAINER buildmaster@rocket.chat
# Wed, 10 May 2017 15:51:30 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Wed, 10 May 2017 15:51:30 GMT
VOLUME [/app/uploads]
# Wed, 10 May 2017 15:51:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Wed, 10 May 2017 15:51:33 GMT
ENV RC_VERSION=0.55.1
# Wed, 10 May 2017 15:51:34 GMT
WORKDIR /app
# Wed, 10 May 2017 15:52:32 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Wed, 10 May 2017 15:52:34 GMT
USER [rocketchat]
# Wed, 10 May 2017 15:52:35 GMT
WORKDIR /app/bundle
# Wed, 10 May 2017 15:52:36 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Wed, 10 May 2017 15:52:37 GMT
EXPOSE 3000/tcp
# Wed, 10 May 2017 15:52:37 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4b8c9fa331cd6c57e53893f14af4ea47b685786a1144552900e3c47bda5a9b`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31a861b11c6408ac0f77ea0802cbb5bf5024889ed83b82d30c0a4773add657d`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 119.2 KB (119154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9804e730eeb561f017cb2cb0241d3d35ae467dffbb8b12408044678e5da0722d`  
		Last Modified: Sat, 13 May 2017 08:37:06 GMT  
		Size: 12.6 MB (12577882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc316182cf8961dc9ad0c016562be0ced4a6ede35043d0abdd9aa4f7308bcf13`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9e948342321fa568d50a819bdfd15eeb91f4d419075a1ceba649661022a216`  
		Last Modified: Sat, 13 May 2017 18:35:55 GMT  
		Size: 2.1 KB (2146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c8759dbff000419aaec5ae7f64598cb41ae38242ae2d05fab2715557bff3e4`  
		Last Modified: Sat, 13 May 2017 18:35:55 GMT  
		Size: 127.2 KB (127204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3eece6b610147fdd01cfb03f2234c4e3e2e109cec5fec7656b9dab3a6ce404`  
		Last Modified: Sat, 13 May 2017 18:36:54 GMT  
		Size: 114.4 MB (114400225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0.55`

```console
$ docker pull rocket.chat@sha256:0a69d078d4f6a856dde150df659dceb3f81d7d3790907f84e5321cda001834f6
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0.55` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (199968756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55cf927e4ad1cd186d697a193c0ceb9f1c963a6925e1cb5a29e081a0536e242a`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:45:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 10 May 2017 13:45:46 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done
# Wed, 10 May 2017 13:45:46 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 10 May 2017 13:45:47 GMT
ENV NODE_VERSION=4.8.3
# Wed, 10 May 2017 13:46:00 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 10 May 2017 13:46:01 GMT
ENV YARN_VERSION=0.23.4
# Wed, 10 May 2017 13:46:06 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 10 May 2017 13:46:07 GMT
CMD ["node"]
# Wed, 10 May 2017 15:51:28 GMT
MAINTAINER buildmaster@rocket.chat
# Wed, 10 May 2017 15:51:30 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Wed, 10 May 2017 15:51:30 GMT
VOLUME [/app/uploads]
# Wed, 10 May 2017 15:51:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Wed, 10 May 2017 15:51:33 GMT
ENV RC_VERSION=0.55.1
# Wed, 10 May 2017 15:51:34 GMT
WORKDIR /app
# Wed, 10 May 2017 15:52:32 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Wed, 10 May 2017 15:52:34 GMT
USER [rocketchat]
# Wed, 10 May 2017 15:52:35 GMT
WORKDIR /app/bundle
# Wed, 10 May 2017 15:52:36 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Wed, 10 May 2017 15:52:37 GMT
EXPOSE 3000/tcp
# Wed, 10 May 2017 15:52:37 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4b8c9fa331cd6c57e53893f14af4ea47b685786a1144552900e3c47bda5a9b`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31a861b11c6408ac0f77ea0802cbb5bf5024889ed83b82d30c0a4773add657d`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 119.2 KB (119154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9804e730eeb561f017cb2cb0241d3d35ae467dffbb8b12408044678e5da0722d`  
		Last Modified: Sat, 13 May 2017 08:37:06 GMT  
		Size: 12.6 MB (12577882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc316182cf8961dc9ad0c016562be0ced4a6ede35043d0abdd9aa4f7308bcf13`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9e948342321fa568d50a819bdfd15eeb91f4d419075a1ceba649661022a216`  
		Last Modified: Sat, 13 May 2017 18:35:55 GMT  
		Size: 2.1 KB (2146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c8759dbff000419aaec5ae7f64598cb41ae38242ae2d05fab2715557bff3e4`  
		Last Modified: Sat, 13 May 2017 18:35:55 GMT  
		Size: 127.2 KB (127204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3eece6b610147fdd01cfb03f2234c4e3e2e109cec5fec7656b9dab3a6ce404`  
		Last Modified: Sat, 13 May 2017 18:36:54 GMT  
		Size: 114.4 MB (114400225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0`

```console
$ docker pull rocket.chat@sha256:0a69d078d4f6a856dde150df659dceb3f81d7d3790907f84e5321cda001834f6
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (199968756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55cf927e4ad1cd186d697a193c0ceb9f1c963a6925e1cb5a29e081a0536e242a`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:45:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 10 May 2017 13:45:46 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done
# Wed, 10 May 2017 13:45:46 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 10 May 2017 13:45:47 GMT
ENV NODE_VERSION=4.8.3
# Wed, 10 May 2017 13:46:00 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 10 May 2017 13:46:01 GMT
ENV YARN_VERSION=0.23.4
# Wed, 10 May 2017 13:46:06 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 10 May 2017 13:46:07 GMT
CMD ["node"]
# Wed, 10 May 2017 15:51:28 GMT
MAINTAINER buildmaster@rocket.chat
# Wed, 10 May 2017 15:51:30 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Wed, 10 May 2017 15:51:30 GMT
VOLUME [/app/uploads]
# Wed, 10 May 2017 15:51:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Wed, 10 May 2017 15:51:33 GMT
ENV RC_VERSION=0.55.1
# Wed, 10 May 2017 15:51:34 GMT
WORKDIR /app
# Wed, 10 May 2017 15:52:32 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Wed, 10 May 2017 15:52:34 GMT
USER [rocketchat]
# Wed, 10 May 2017 15:52:35 GMT
WORKDIR /app/bundle
# Wed, 10 May 2017 15:52:36 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Wed, 10 May 2017 15:52:37 GMT
EXPOSE 3000/tcp
# Wed, 10 May 2017 15:52:37 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4b8c9fa331cd6c57e53893f14af4ea47b685786a1144552900e3c47bda5a9b`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31a861b11c6408ac0f77ea0802cbb5bf5024889ed83b82d30c0a4773add657d`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 119.2 KB (119154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9804e730eeb561f017cb2cb0241d3d35ae467dffbb8b12408044678e5da0722d`  
		Last Modified: Sat, 13 May 2017 08:37:06 GMT  
		Size: 12.6 MB (12577882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc316182cf8961dc9ad0c016562be0ced4a6ede35043d0abdd9aa4f7308bcf13`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9e948342321fa568d50a819bdfd15eeb91f4d419075a1ceba649661022a216`  
		Last Modified: Sat, 13 May 2017 18:35:55 GMT  
		Size: 2.1 KB (2146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c8759dbff000419aaec5ae7f64598cb41ae38242ae2d05fab2715557bff3e4`  
		Last Modified: Sat, 13 May 2017 18:35:55 GMT  
		Size: 127.2 KB (127204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3eece6b610147fdd01cfb03f2234c4e3e2e109cec5fec7656b9dab3a6ce404`  
		Last Modified: Sat, 13 May 2017 18:36:54 GMT  
		Size: 114.4 MB (114400225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:7dad79516253527935e023b1e2bdcd057c22e06b2fa791ad6431c78151f14952
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199935253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a117a9069a51286144d2ec204910a31315b39ad0ed164f1bf47315cd164a4e`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:33:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 25 Apr 2017 02:33:35 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done
# Tue, 25 Apr 2017 02:33:50 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 03 May 2017 23:19:50 GMT
ENV NODE_VERSION=4.8.3
# Wed, 03 May 2017 23:20:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 03 May 2017 23:20:04 GMT
ENV YARN_VERSION=0.23.4
# Wed, 03 May 2017 23:20:09 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 03 May 2017 23:20:09 GMT
CMD ["node"]
# Thu, 04 May 2017 16:56:27 GMT
MAINTAINER buildmaster@rocket.chat
# Thu, 04 May 2017 16:56:29 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Thu, 04 May 2017 16:56:47 GMT
VOLUME [/app/uploads]
# Thu, 04 May 2017 16:56:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Thu, 04 May 2017 16:57:07 GMT
ENV RC_VERSION=0.55.1
# Thu, 04 May 2017 16:57:08 GMT
WORKDIR /app
# Thu, 04 May 2017 16:57:50 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Thu, 04 May 2017 16:58:16 GMT
USER [rocketchat]
# Thu, 04 May 2017 16:58:34 GMT
WORKDIR /app/bundle
# Thu, 04 May 2017 16:58:35 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Thu, 04 May 2017 16:58:36 GMT
EXPOSE 3000/tcp
# Thu, 04 May 2017 16:58:37 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f444da5fa2cdd81962d27a19802e984466379ab56d042c0040385274725cf4fe`  
		Last Modified: Tue, 25 Apr 2017 19:59:22 GMT  
		Size: 4.4 KB (4366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee8980874ac29ea494537573257a5dfc88599481c4996e4afab446a7945524`  
		Last Modified: Tue, 25 Apr 2017 19:59:23 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0cb06f38d2454b74038083edf990b186d42815b64c42d18d3694aacd30773a`  
		Last Modified: Wed, 03 May 2017 23:39:37 GMT  
		Size: 12.6 MB (12578290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893ed87be4dbc5098553bb0584b308c35869f03590697dd37d2103248c305a46`  
		Last Modified: Wed, 03 May 2017 23:39:35 GMT  
		Size: 886.3 KB (886323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0ef95be6890e7c10069c67c8fdd2d03cad9d3c7847606edbf9205730a25ed9`  
		Last Modified: Thu, 04 May 2017 16:59:17 GMT  
		Size: 2.1 KB (2149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7588700fd0079d690a99917662d279c307ec70a02549bc331b2210ef204bde8`  
		Last Modified: Thu, 04 May 2017 16:59:16 GMT  
		Size: 127.2 KB (127204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4005989c63632fef804257b9671e3a0e79e4960ac86293ed5762e5c780692fe0`  
		Last Modified: Thu, 04 May 2017 16:59:45 GMT  
		Size: 114.4 MB (114401268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
