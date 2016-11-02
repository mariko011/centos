<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:0.45.0`](#rocketchat0450)
-	[`rocket.chat:0.45`](#rocketchat045)
-	[`rocket.chat:0`](#rocketchat0)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:0.45.0`

```console
$ docker pull rocket.chat@sha256:3972452bbbb2cef3d09ccb4071889b115901e54a6a9bbba528e17186b8af4aeb
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0.45.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195915446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36d566db0b0cdd4489dfd34de3871e7f599c8990188739e95df7aad9a41c056f`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:33:33 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NODE_VERSION=4.6.1
# Fri, 21 Oct 2016 22:35:22 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 21 Oct 2016 22:35:22 GMT
CMD ["node"]
# Sat, 22 Oct 2016 01:12:44 GMT
MAINTAINER buildmaster@rocket.chat
# Sat, 22 Oct 2016 01:12:45 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Sat, 22 Oct 2016 01:12:46 GMT
VOLUME [/app/uploads]
# Sat, 22 Oct 2016 01:12:47 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 01 Nov 2016 23:40:10 GMT
ENV RC_VERSION=0.45.0
# Tue, 01 Nov 2016 23:40:11 GMT
WORKDIR /app
# Tue, 01 Nov 2016 23:40:52 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Tue, 01 Nov 2016 23:40:54 GMT
USER [rocketchat]
# Tue, 01 Nov 2016 23:40:55 GMT
WORKDIR /app/bundle
# Tue, 01 Nov 2016 23:40:55 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 01 Nov 2016 23:40:56 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 23:40:56 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ee3d5412f7bcb119c18827c03974678af5eb8c5e35634439d6ff75c33f66e7`  
		Last Modified: Fri, 21 Oct 2016 22:33:58 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d7d74abfa19d5b5525bb68112a25967a4350bd3ddb828f37e16a23f7b6e8d0`  
		Last Modified: Fri, 21 Oct 2016 22:35:36 GMT  
		Size: 12.2 MB (12245350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2298887e5cf0be042c897acab1204ca90d5fef11772da427e9b997d63d1645fd`  
		Last Modified: Sat, 22 Oct 2016 01:13:43 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2bbd695376d81642e614a05a1d77d35d02e366d0baef7becf00ea36bda9b70`  
		Last Modified: Sat, 22 Oct 2016 01:13:43 GMT  
		Size: 94.7 KB (94663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527d368ca06ad5230957a1dcf683d27478da1cff70bb5ea17be88c75e5ab01f5`  
		Last Modified: Tue, 01 Nov 2016 23:41:44 GMT  
		Size: 113.6 MB (113594917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0.45`

**does not exist** (yet?)

## `rocket.chat:0`

```console
$ docker pull rocket.chat@sha256:fa5008ec7bf0f547ccebfdf5984ac90cacdd1cfe31926e1e1f5a0925bf72467d
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196421904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1745aff3cc7f458ee6ca3b3c9691d43b186152c5873dbccb3017f4040e8fff74`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:33:33 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NODE_VERSION=4.6.1
# Fri, 21 Oct 2016 22:35:22 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 21 Oct 2016 22:35:22 GMT
CMD ["node"]
# Sat, 22 Oct 2016 01:12:44 GMT
MAINTAINER buildmaster@rocket.chat
# Sat, 22 Oct 2016 01:12:45 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Sat, 22 Oct 2016 01:12:46 GMT
VOLUME [/app/uploads]
# Sat, 22 Oct 2016 01:12:47 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 01 Nov 2016 08:38:48 GMT
ENV RC_VERSION=0.44.0
# Tue, 01 Nov 2016 08:38:48 GMT
WORKDIR /app
# Tue, 01 Nov 2016 08:39:29 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Tue, 01 Nov 2016 08:39:30 GMT
USER [rocketchat]
# Tue, 01 Nov 2016 08:39:31 GMT
WORKDIR /app/bundle
# Tue, 01 Nov 2016 08:39:31 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 01 Nov 2016 08:39:31 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 08:39:32 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ee3d5412f7bcb119c18827c03974678af5eb8c5e35634439d6ff75c33f66e7`  
		Last Modified: Fri, 21 Oct 2016 22:33:58 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d7d74abfa19d5b5525bb68112a25967a4350bd3ddb828f37e16a23f7b6e8d0`  
		Last Modified: Fri, 21 Oct 2016 22:35:36 GMT  
		Size: 12.2 MB (12245350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2298887e5cf0be042c897acab1204ca90d5fef11772da427e9b997d63d1645fd`  
		Last Modified: Sat, 22 Oct 2016 01:13:43 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2bbd695376d81642e614a05a1d77d35d02e366d0baef7becf00ea36bda9b70`  
		Last Modified: Sat, 22 Oct 2016 01:13:43 GMT  
		Size: 94.7 KB (94663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0d94c0fed16eced70b42840d410a83c95ba626e98557daa164be9f09fb10c4`  
		Last Modified: Tue, 01 Nov 2016 08:40:25 GMT  
		Size: 114.1 MB (114101375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:fa5008ec7bf0f547ccebfdf5984ac90cacdd1cfe31926e1e1f5a0925bf72467d
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196421904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1745aff3cc7f458ee6ca3b3c9691d43b186152c5873dbccb3017f4040e8fff74`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:33:33 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NODE_VERSION=4.6.1
# Fri, 21 Oct 2016 22:35:22 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 21 Oct 2016 22:35:22 GMT
CMD ["node"]
# Sat, 22 Oct 2016 01:12:44 GMT
MAINTAINER buildmaster@rocket.chat
# Sat, 22 Oct 2016 01:12:45 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Sat, 22 Oct 2016 01:12:46 GMT
VOLUME [/app/uploads]
# Sat, 22 Oct 2016 01:12:47 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 01 Nov 2016 08:38:48 GMT
ENV RC_VERSION=0.44.0
# Tue, 01 Nov 2016 08:38:48 GMT
WORKDIR /app
# Tue, 01 Nov 2016 08:39:29 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Tue, 01 Nov 2016 08:39:30 GMT
USER [rocketchat]
# Tue, 01 Nov 2016 08:39:31 GMT
WORKDIR /app/bundle
# Tue, 01 Nov 2016 08:39:31 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 01 Nov 2016 08:39:31 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 08:39:32 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ee3d5412f7bcb119c18827c03974678af5eb8c5e35634439d6ff75c33f66e7`  
		Last Modified: Fri, 21 Oct 2016 22:33:58 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d7d74abfa19d5b5525bb68112a25967a4350bd3ddb828f37e16a23f7b6e8d0`  
		Last Modified: Fri, 21 Oct 2016 22:35:36 GMT  
		Size: 12.2 MB (12245350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2298887e5cf0be042c897acab1204ca90d5fef11772da427e9b997d63d1645fd`  
		Last Modified: Sat, 22 Oct 2016 01:13:43 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2bbd695376d81642e614a05a1d77d35d02e366d0baef7becf00ea36bda9b70`  
		Last Modified: Sat, 22 Oct 2016 01:13:43 GMT  
		Size: 94.7 KB (94663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0d94c0fed16eced70b42840d410a83c95ba626e98557daa164be9f09fb10c4`  
		Last Modified: Tue, 01 Nov 2016 08:40:25 GMT  
		Size: 114.1 MB (114101375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
