<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:0.49.1`](#rocketchat0491)
-	[`rocket.chat:0.49`](#rocketchat049)
-	[`rocket.chat:0`](#rocketchat0)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:0.49.1`

```console
$ docker pull rocket.chat@sha256:ff192544fcab9e4d874a6816a4c2937c5fa957260467718cb3d2a80be8cb3d2f
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0.49.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168207992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:369c075cd1f1ce9c12177516005f95fdbcd1c64893463e3a89fd29d7a3610794`
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
# Fri, 06 Jan 2017 21:17:42 GMT
ENV NODE_VERSION=4.7.2
# Fri, 06 Jan 2017 21:17:52 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 06 Jan 2017 21:17:52 GMT
CMD ["node"]
# Fri, 06 Jan 2017 22:11:37 GMT
MAINTAINER buildmaster@rocket.chat
# Fri, 06 Jan 2017 22:11:38 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Fri, 06 Jan 2017 22:11:39 GMT
VOLUME [/app/uploads]
# Fri, 06 Jan 2017 22:11:40 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Mon, 16 Jan 2017 20:55:11 GMT
ENV RC_VERSION=0.49.1
# Mon, 16 Jan 2017 20:55:12 GMT
WORKDIR /app
# Mon, 16 Jan 2017 20:55:45 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Mon, 16 Jan 2017 20:55:51 GMT
USER [rocketchat]
# Mon, 16 Jan 2017 20:55:51 GMT
WORKDIR /app/bundle
# Mon, 16 Jan 2017 20:56:03 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Mon, 16 Jan 2017 20:56:04 GMT
EXPOSE 3000/tcp
# Mon, 16 Jan 2017 20:56:04 GMT
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
	-	`sha256:9da416001f492a68a092ca1670905ebabbe859fc007f87bcc1b59c603d574756`  
		Last Modified: Fri, 06 Jan 2017 21:31:12 GMT  
		Size: 12.3 MB (12262472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1e70c1cfc89816c0a6990f9fc8224198f7ff773644ad50d99b203a514df049`  
		Last Modified: Fri, 06 Jan 2017 22:12:29 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64726ae4dcd4f56d426585e5be0cb85de43223ed089787ffdbe2b6fc4cb7775`  
		Last Modified: Fri, 06 Jan 2017 22:12:29 GMT  
		Size: 94.7 KB (94662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac509e927a5d1f2acbaca2108b936ed25f277682a79f9d94e0733a0927d9fad9`  
		Last Modified: Mon, 16 Jan 2017 20:56:55 GMT  
		Size: 85.9 MB (85854101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0.49`

```console
$ docker pull rocket.chat@sha256:ff192544fcab9e4d874a6816a4c2937c5fa957260467718cb3d2a80be8cb3d2f
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0.49` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168207992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:369c075cd1f1ce9c12177516005f95fdbcd1c64893463e3a89fd29d7a3610794`
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
# Fri, 06 Jan 2017 21:17:42 GMT
ENV NODE_VERSION=4.7.2
# Fri, 06 Jan 2017 21:17:52 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 06 Jan 2017 21:17:52 GMT
CMD ["node"]
# Fri, 06 Jan 2017 22:11:37 GMT
MAINTAINER buildmaster@rocket.chat
# Fri, 06 Jan 2017 22:11:38 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Fri, 06 Jan 2017 22:11:39 GMT
VOLUME [/app/uploads]
# Fri, 06 Jan 2017 22:11:40 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Mon, 16 Jan 2017 20:55:11 GMT
ENV RC_VERSION=0.49.1
# Mon, 16 Jan 2017 20:55:12 GMT
WORKDIR /app
# Mon, 16 Jan 2017 20:55:45 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Mon, 16 Jan 2017 20:55:51 GMT
USER [rocketchat]
# Mon, 16 Jan 2017 20:55:51 GMT
WORKDIR /app/bundle
# Mon, 16 Jan 2017 20:56:03 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Mon, 16 Jan 2017 20:56:04 GMT
EXPOSE 3000/tcp
# Mon, 16 Jan 2017 20:56:04 GMT
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
	-	`sha256:9da416001f492a68a092ca1670905ebabbe859fc007f87bcc1b59c603d574756`  
		Last Modified: Fri, 06 Jan 2017 21:31:12 GMT  
		Size: 12.3 MB (12262472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1e70c1cfc89816c0a6990f9fc8224198f7ff773644ad50d99b203a514df049`  
		Last Modified: Fri, 06 Jan 2017 22:12:29 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64726ae4dcd4f56d426585e5be0cb85de43223ed089787ffdbe2b6fc4cb7775`  
		Last Modified: Fri, 06 Jan 2017 22:12:29 GMT  
		Size: 94.7 KB (94662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac509e927a5d1f2acbaca2108b936ed25f277682a79f9d94e0733a0927d9fad9`  
		Last Modified: Mon, 16 Jan 2017 20:56:55 GMT  
		Size: 85.9 MB (85854101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0`

```console
$ docker pull rocket.chat@sha256:ff192544fcab9e4d874a6816a4c2937c5fa957260467718cb3d2a80be8cb3d2f
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168207992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:369c075cd1f1ce9c12177516005f95fdbcd1c64893463e3a89fd29d7a3610794`
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
# Fri, 06 Jan 2017 21:17:42 GMT
ENV NODE_VERSION=4.7.2
# Fri, 06 Jan 2017 21:17:52 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 06 Jan 2017 21:17:52 GMT
CMD ["node"]
# Fri, 06 Jan 2017 22:11:37 GMT
MAINTAINER buildmaster@rocket.chat
# Fri, 06 Jan 2017 22:11:38 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Fri, 06 Jan 2017 22:11:39 GMT
VOLUME [/app/uploads]
# Fri, 06 Jan 2017 22:11:40 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Mon, 16 Jan 2017 20:55:11 GMT
ENV RC_VERSION=0.49.1
# Mon, 16 Jan 2017 20:55:12 GMT
WORKDIR /app
# Mon, 16 Jan 2017 20:55:45 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Mon, 16 Jan 2017 20:55:51 GMT
USER [rocketchat]
# Mon, 16 Jan 2017 20:55:51 GMT
WORKDIR /app/bundle
# Mon, 16 Jan 2017 20:56:03 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Mon, 16 Jan 2017 20:56:04 GMT
EXPOSE 3000/tcp
# Mon, 16 Jan 2017 20:56:04 GMT
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
	-	`sha256:9da416001f492a68a092ca1670905ebabbe859fc007f87bcc1b59c603d574756`  
		Last Modified: Fri, 06 Jan 2017 21:31:12 GMT  
		Size: 12.3 MB (12262472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1e70c1cfc89816c0a6990f9fc8224198f7ff773644ad50d99b203a514df049`  
		Last Modified: Fri, 06 Jan 2017 22:12:29 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64726ae4dcd4f56d426585e5be0cb85de43223ed089787ffdbe2b6fc4cb7775`  
		Last Modified: Fri, 06 Jan 2017 22:12:29 GMT  
		Size: 94.7 KB (94662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac509e927a5d1f2acbaca2108b936ed25f277682a79f9d94e0733a0927d9fad9`  
		Last Modified: Mon, 16 Jan 2017 20:56:55 GMT  
		Size: 85.9 MB (85854101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:ff192544fcab9e4d874a6816a4c2937c5fa957260467718cb3d2a80be8cb3d2f
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168207992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:369c075cd1f1ce9c12177516005f95fdbcd1c64893463e3a89fd29d7a3610794`
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
# Fri, 06 Jan 2017 21:17:42 GMT
ENV NODE_VERSION=4.7.2
# Fri, 06 Jan 2017 21:17:52 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 06 Jan 2017 21:17:52 GMT
CMD ["node"]
# Fri, 06 Jan 2017 22:11:37 GMT
MAINTAINER buildmaster@rocket.chat
# Fri, 06 Jan 2017 22:11:38 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Fri, 06 Jan 2017 22:11:39 GMT
VOLUME [/app/uploads]
# Fri, 06 Jan 2017 22:11:40 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Mon, 16 Jan 2017 20:55:11 GMT
ENV RC_VERSION=0.49.1
# Mon, 16 Jan 2017 20:55:12 GMT
WORKDIR /app
# Mon, 16 Jan 2017 20:55:45 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Mon, 16 Jan 2017 20:55:51 GMT
USER [rocketchat]
# Mon, 16 Jan 2017 20:55:51 GMT
WORKDIR /app/bundle
# Mon, 16 Jan 2017 20:56:03 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Mon, 16 Jan 2017 20:56:04 GMT
EXPOSE 3000/tcp
# Mon, 16 Jan 2017 20:56:04 GMT
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
	-	`sha256:9da416001f492a68a092ca1670905ebabbe859fc007f87bcc1b59c603d574756`  
		Last Modified: Fri, 06 Jan 2017 21:31:12 GMT  
		Size: 12.3 MB (12262472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1e70c1cfc89816c0a6990f9fc8224198f7ff773644ad50d99b203a514df049`  
		Last Modified: Fri, 06 Jan 2017 22:12:29 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64726ae4dcd4f56d426585e5be0cb85de43223ed089787ffdbe2b6fc4cb7775`  
		Last Modified: Fri, 06 Jan 2017 22:12:29 GMT  
		Size: 94.7 KB (94662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac509e927a5d1f2acbaca2108b936ed25f277682a79f9d94e0733a0927d9fad9`  
		Last Modified: Mon, 16 Jan 2017 20:56:55 GMT  
		Size: 85.9 MB (85854101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
