<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:0`](#rocketchat0)
-	[`rocket.chat:0.59`](#rocketchat059)
-	[`rocket.chat:0.59.6`](#rocketchat0596)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:0`

```console
$ docker pull rocket.chat@sha256:6c1839e57fdd978234b0eb5ae4ee9573bd9fa0d8c91059ca67062ce6bcad4783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rocket.chat:0` - linux; amd64

```console
$ docker pull rocket.chat@sha256:a0205d39450904f2dac805968f245f2bdfb41f955edd4be64d0d2daef1497e9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190370052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df388e492e06b15c70752f642fb12580b884bd969f51c7ac6001f59736d558f4`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:26:27 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 10 Oct 2017 06:26:32 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 06:26:32 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 06:32:17 GMT
ENV NODE_VERSION=4.8.4
# Tue, 10 Oct 2017 06:32:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 06:32:53 GMT
ENV YARN_VERSION=0.24.4
# Tue, 10 Oct 2017 06:32:58 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 06:32:58 GMT
CMD ["node"]
# Tue, 10 Oct 2017 12:16:49 GMT
MAINTAINER buildmaster@rocket.chat
# Tue, 10 Oct 2017 12:16:50 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Tue, 10 Oct 2017 12:16:50 GMT
VOLUME [/app/uploads]
# Tue, 10 Oct 2017 12:16:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 10 Oct 2017 12:16:53 GMT
ENV RC_VERSION=0.58.4
# Tue, 10 Oct 2017 12:16:53 GMT
WORKDIR /app
# Tue, 10 Oct 2017 12:17:23 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Tue, 10 Oct 2017 12:17:25 GMT
USER [rocketchat]
# Tue, 10 Oct 2017 12:17:25 GMT
WORKDIR /app/bundle
# Tue, 10 Oct 2017 12:17:25 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 10 Oct 2017 12:17:25 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:17:26 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fbf5f3bc23d89f238ec624c3c0acb96f413e135ec2296a036d2501b3949c08`  
		Last Modified: Tue, 10 Oct 2017 06:45:37 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fc4577de57bb2401c7e13159631c574e1faf5347a57337df0c62432cbce62d`  
		Last Modified: Tue, 10 Oct 2017 06:45:36 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6e4e22dea8c8db8b5a8a021ce8e9885776276e7f5162037c5b219c3eb4d91b`  
		Last Modified: Tue, 10 Oct 2017 07:17:32 GMT  
		Size: 12.7 MB (12684285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833affcfc6e6f80ef0ddd5d44990e40681536f27165fcf2ddc161c96bcb972a7`  
		Last Modified: Tue, 10 Oct 2017 07:17:28 GMT  
		Size: 902.4 KB (902357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2970eaf0aec7f86ebc75e6ecca18aede907fc86310085807855fa2099df5d2c3`  
		Last Modified: Tue, 10 Oct 2017 12:17:40 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5538b36d7c4bd126e66dd381acd03c2bcbb2d6880db300d5768a5b9fd4cd5e1a`  
		Last Modified: Tue, 10 Oct 2017 12:17:40 GMT  
		Size: 130.5 KB (130519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef1d6d1d6de4cf6004dad4b13e4472a8015f40682a11712a6187e4c8ed53b5d`  
		Last Modified: Tue, 10 Oct 2017 12:18:04 GMT  
		Size: 104.7 MB (104668103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0.59`

**does not exist** (yet?)

## `rocket.chat:0.59.6`

**does not exist** (yet?)

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:6c1839e57fdd978234b0eb5ae4ee9573bd9fa0d8c91059ca67062ce6bcad4783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

```console
$ docker pull rocket.chat@sha256:a0205d39450904f2dac805968f245f2bdfb41f955edd4be64d0d2daef1497e9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190370052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df388e492e06b15c70752f642fb12580b884bd969f51c7ac6001f59736d558f4`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 06:26:27 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 10 Oct 2017 06:26:32 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Tue, 10 Oct 2017 06:26:32 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 10 Oct 2017 06:32:17 GMT
ENV NODE_VERSION=4.8.4
# Tue, 10 Oct 2017 06:32:52 GMT
RUN buildDeps='xz-utils'     && ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64';;       ppc64el) ARCH='ppc64le';;       s390x) ARCH='s390x';;       arm64) ARCH='arm64';;       armhf) ARCH='armv7l';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 10 Oct 2017 06:32:53 GMT
ENV YARN_VERSION=0.24.4
# Tue, 10 Oct 2017 06:32:58 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 10 Oct 2017 06:32:58 GMT
CMD ["node"]
# Tue, 10 Oct 2017 12:16:49 GMT
MAINTAINER buildmaster@rocket.chat
# Tue, 10 Oct 2017 12:16:50 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat &&  mkdir -p /app/uploads &&  chown rocketchat.rocketchat /app/uploads
# Tue, 10 Oct 2017 12:16:50 GMT
VOLUME [/app/uploads]
# Tue, 10 Oct 2017 12:16:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 10 Oct 2017 12:16:53 GMT
ENV RC_VERSION=0.58.4
# Tue, 10 Oct 2017 12:16:53 GMT
WORKDIR /app
# Tue, 10 Oct 2017 12:17:23 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Tue, 10 Oct 2017 12:17:25 GMT
USER [rocketchat]
# Tue, 10 Oct 2017 12:17:25 GMT
WORKDIR /app/bundle
# Tue, 10 Oct 2017 12:17:25 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 10 Oct 2017 12:17:25 GMT
EXPOSE 3000/tcp
# Tue, 10 Oct 2017 12:17:26 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fbf5f3bc23d89f238ec624c3c0acb96f413e135ec2296a036d2501b3949c08`  
		Last Modified: Tue, 10 Oct 2017 06:45:37 GMT  
		Size: 4.4 KB (4405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fc4577de57bb2401c7e13159631c574e1faf5347a57337df0c62432cbce62d`  
		Last Modified: Tue, 10 Oct 2017 06:45:36 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6e4e22dea8c8db8b5a8a021ce8e9885776276e7f5162037c5b219c3eb4d91b`  
		Last Modified: Tue, 10 Oct 2017 07:17:32 GMT  
		Size: 12.7 MB (12684285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833affcfc6e6f80ef0ddd5d44990e40681536f27165fcf2ddc161c96bcb972a7`  
		Last Modified: Tue, 10 Oct 2017 07:17:28 GMT  
		Size: 902.4 KB (902357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2970eaf0aec7f86ebc75e6ecca18aede907fc86310085807855fa2099df5d2c3`  
		Last Modified: Tue, 10 Oct 2017 12:17:40 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5538b36d7c4bd126e66dd381acd03c2bcbb2d6880db300d5768a5b9fd4cd5e1a`  
		Last Modified: Tue, 10 Oct 2017 12:17:40 GMT  
		Size: 130.5 KB (130519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef1d6d1d6de4cf6004dad4b13e4472a8015f40682a11712a6187e4c8ed53b5d`  
		Last Modified: Tue, 10 Oct 2017 12:18:04 GMT  
		Size: 104.7 MB (104668103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
