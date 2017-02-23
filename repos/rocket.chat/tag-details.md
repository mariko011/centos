<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:0.52.0`](#rocketchat0520)
-	[`rocket.chat:0.52`](#rocketchat052)
-	[`rocket.chat:0`](#rocketchat0)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:0.52.0`

```console
$ docker pull rocket.chat@sha256:a88e8c6c86f6bb083ac621cca958807201c8af9d4633fe5eb2e9137248f847e4
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0.52.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169075804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73c156c192d842c000c2c5dda5a95c65833dc8f0db4e7a2b38378d62d4eb5e4c`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 22 Feb 2017 19:59:12 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 22 Feb 2017 19:59:13 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 22 Feb 2017 20:18:49 GMT
ENV NODE_VERSION=4.8.0
# Wed, 22 Feb 2017 20:18:58 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 22 Feb 2017 20:18:58 GMT
CMD ["node"]
# Thu, 23 Feb 2017 01:03:57 GMT
MAINTAINER buildmaster@rocket.chat
# Thu, 23 Feb 2017 01:03:58 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Thu, 23 Feb 2017 01:03:59 GMT
VOLUME [/app/uploads]
# Thu, 23 Feb 2017 01:04:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Thu, 23 Feb 2017 01:04:01 GMT
ENV RC_VERSION=0.52.0
# Thu, 23 Feb 2017 01:04:01 GMT
WORKDIR /app
# Thu, 23 Feb 2017 01:04:28 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Thu, 23 Feb 2017 01:04:29 GMT
USER [rocketchat]
# Thu, 23 Feb 2017 01:04:30 GMT
WORKDIR /app/bundle
# Thu, 23 Feb 2017 01:04:31 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Thu, 23 Feb 2017 01:04:31 GMT
EXPOSE 3000/tcp
# Thu, 23 Feb 2017 01:04:32 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d64b1895c869d76883afd94c3b46f6f66adcdd5af45814e7d256b517bd78f7a`  
		Last Modified: Wed, 22 Feb 2017 20:23:02 GMT  
		Size: 108.2 KB (108168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c9403ecd249065dbc7ab291291766c91024cd9570e703db5b02e2e4b2a93d9`  
		Last Modified: Wed, 22 Feb 2017 20:35:05 GMT  
		Size: 12.3 MB (12273852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0543256d7003a165f478070f8ae3fbd161e5cbd04bb33edf47c34c5d73407c`  
		Last Modified: Thu, 23 Feb 2017 01:04:51 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6471da4eb85b49fe0bb7a45f18b80f0330468916b9ce63620b9e76693f3998a0`  
		Last Modified: Thu, 23 Feb 2017 01:04:51 GMT  
		Size: 105.6 KB (105590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9418f150977f4b12edd4bd5df4214408337880cda5791752105d730cab899bba`  
		Last Modified: Thu, 23 Feb 2017 01:05:14 GMT  
		Size: 86.7 MB (86685107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0.52`

```console
$ docker pull rocket.chat@sha256:a88e8c6c86f6bb083ac621cca958807201c8af9d4633fe5eb2e9137248f847e4
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0.52` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169075804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73c156c192d842c000c2c5dda5a95c65833dc8f0db4e7a2b38378d62d4eb5e4c`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 22 Feb 2017 19:59:12 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 22 Feb 2017 19:59:13 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 22 Feb 2017 20:18:49 GMT
ENV NODE_VERSION=4.8.0
# Wed, 22 Feb 2017 20:18:58 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 22 Feb 2017 20:18:58 GMT
CMD ["node"]
# Thu, 23 Feb 2017 01:03:57 GMT
MAINTAINER buildmaster@rocket.chat
# Thu, 23 Feb 2017 01:03:58 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Thu, 23 Feb 2017 01:03:59 GMT
VOLUME [/app/uploads]
# Thu, 23 Feb 2017 01:04:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Thu, 23 Feb 2017 01:04:01 GMT
ENV RC_VERSION=0.52.0
# Thu, 23 Feb 2017 01:04:01 GMT
WORKDIR /app
# Thu, 23 Feb 2017 01:04:28 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Thu, 23 Feb 2017 01:04:29 GMT
USER [rocketchat]
# Thu, 23 Feb 2017 01:04:30 GMT
WORKDIR /app/bundle
# Thu, 23 Feb 2017 01:04:31 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Thu, 23 Feb 2017 01:04:31 GMT
EXPOSE 3000/tcp
# Thu, 23 Feb 2017 01:04:32 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d64b1895c869d76883afd94c3b46f6f66adcdd5af45814e7d256b517bd78f7a`  
		Last Modified: Wed, 22 Feb 2017 20:23:02 GMT  
		Size: 108.2 KB (108168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c9403ecd249065dbc7ab291291766c91024cd9570e703db5b02e2e4b2a93d9`  
		Last Modified: Wed, 22 Feb 2017 20:35:05 GMT  
		Size: 12.3 MB (12273852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0543256d7003a165f478070f8ae3fbd161e5cbd04bb33edf47c34c5d73407c`  
		Last Modified: Thu, 23 Feb 2017 01:04:51 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6471da4eb85b49fe0bb7a45f18b80f0330468916b9ce63620b9e76693f3998a0`  
		Last Modified: Thu, 23 Feb 2017 01:04:51 GMT  
		Size: 105.6 KB (105590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9418f150977f4b12edd4bd5df4214408337880cda5791752105d730cab899bba`  
		Last Modified: Thu, 23 Feb 2017 01:05:14 GMT  
		Size: 86.7 MB (86685107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0`

```console
$ docker pull rocket.chat@sha256:a88e8c6c86f6bb083ac621cca958807201c8af9d4633fe5eb2e9137248f847e4
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169075804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73c156c192d842c000c2c5dda5a95c65833dc8f0db4e7a2b38378d62d4eb5e4c`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 22 Feb 2017 19:59:12 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 22 Feb 2017 19:59:13 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 22 Feb 2017 20:18:49 GMT
ENV NODE_VERSION=4.8.0
# Wed, 22 Feb 2017 20:18:58 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 22 Feb 2017 20:18:58 GMT
CMD ["node"]
# Thu, 23 Feb 2017 01:03:57 GMT
MAINTAINER buildmaster@rocket.chat
# Thu, 23 Feb 2017 01:03:58 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Thu, 23 Feb 2017 01:03:59 GMT
VOLUME [/app/uploads]
# Thu, 23 Feb 2017 01:04:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Thu, 23 Feb 2017 01:04:01 GMT
ENV RC_VERSION=0.52.0
# Thu, 23 Feb 2017 01:04:01 GMT
WORKDIR /app
# Thu, 23 Feb 2017 01:04:28 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Thu, 23 Feb 2017 01:04:29 GMT
USER [rocketchat]
# Thu, 23 Feb 2017 01:04:30 GMT
WORKDIR /app/bundle
# Thu, 23 Feb 2017 01:04:31 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Thu, 23 Feb 2017 01:04:31 GMT
EXPOSE 3000/tcp
# Thu, 23 Feb 2017 01:04:32 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d64b1895c869d76883afd94c3b46f6f66adcdd5af45814e7d256b517bd78f7a`  
		Last Modified: Wed, 22 Feb 2017 20:23:02 GMT  
		Size: 108.2 KB (108168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c9403ecd249065dbc7ab291291766c91024cd9570e703db5b02e2e4b2a93d9`  
		Last Modified: Wed, 22 Feb 2017 20:35:05 GMT  
		Size: 12.3 MB (12273852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0543256d7003a165f478070f8ae3fbd161e5cbd04bb33edf47c34c5d73407c`  
		Last Modified: Thu, 23 Feb 2017 01:04:51 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6471da4eb85b49fe0bb7a45f18b80f0330468916b9ce63620b9e76693f3998a0`  
		Last Modified: Thu, 23 Feb 2017 01:04:51 GMT  
		Size: 105.6 KB (105590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9418f150977f4b12edd4bd5df4214408337880cda5791752105d730cab899bba`  
		Last Modified: Thu, 23 Feb 2017 01:05:14 GMT  
		Size: 86.7 MB (86685107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:a88e8c6c86f6bb083ac621cca958807201c8af9d4633fe5eb2e9137248f847e4
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169075804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73c156c192d842c000c2c5dda5a95c65833dc8f0db4e7a2b38378d62d4eb5e4c`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 22 Feb 2017 19:59:12 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 22 Feb 2017 19:59:13 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 22 Feb 2017 20:18:49 GMT
ENV NODE_VERSION=4.8.0
# Wed, 22 Feb 2017 20:18:58 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 22 Feb 2017 20:18:58 GMT
CMD ["node"]
# Thu, 23 Feb 2017 01:03:57 GMT
MAINTAINER buildmaster@rocket.chat
# Thu, 23 Feb 2017 01:03:58 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Thu, 23 Feb 2017 01:03:59 GMT
VOLUME [/app/uploads]
# Thu, 23 Feb 2017 01:04:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Thu, 23 Feb 2017 01:04:01 GMT
ENV RC_VERSION=0.52.0
# Thu, 23 Feb 2017 01:04:01 GMT
WORKDIR /app
# Thu, 23 Feb 2017 01:04:28 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Thu, 23 Feb 2017 01:04:29 GMT
USER [rocketchat]
# Thu, 23 Feb 2017 01:04:30 GMT
WORKDIR /app/bundle
# Thu, 23 Feb 2017 01:04:31 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Thu, 23 Feb 2017 01:04:31 GMT
EXPOSE 3000/tcp
# Thu, 23 Feb 2017 01:04:32 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d64b1895c869d76883afd94c3b46f6f66adcdd5af45814e7d256b517bd78f7a`  
		Last Modified: Wed, 22 Feb 2017 20:23:02 GMT  
		Size: 108.2 KB (108168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c9403ecd249065dbc7ab291291766c91024cd9570e703db5b02e2e4b2a93d9`  
		Last Modified: Wed, 22 Feb 2017 20:35:05 GMT  
		Size: 12.3 MB (12273852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0543256d7003a165f478070f8ae3fbd161e5cbd04bb33edf47c34c5d73407c`  
		Last Modified: Thu, 23 Feb 2017 01:04:51 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6471da4eb85b49fe0bb7a45f18b80f0330468916b9ce63620b9e76693f3998a0`  
		Last Modified: Thu, 23 Feb 2017 01:04:51 GMT  
		Size: 105.6 KB (105590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9418f150977f4b12edd4bd5df4214408337880cda5791752105d730cab899bba`  
		Last Modified: Thu, 23 Feb 2017 01:05:14 GMT  
		Size: 86.7 MB (86685107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
