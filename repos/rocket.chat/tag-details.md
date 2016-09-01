<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:0.38.0`](#rocketchat0380)
-	[`rocket.chat:0.38`](#rocketchat038)
-	[`rocket.chat:0`](#rocketchat0)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:0.38.0`

```console
$ docker pull rocket.chat@sha256:4022908fde67348a96323ec75d78fe10992517f2708675f479080b71791128cf
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0.38.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149032921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d48a548b68aeb8d6397c800ed9acf50d55cc0101b13ef68d4a1fc3463fc2b0`
-	Default Command: `["node","main.js"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 22:01:06 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 30 Aug 2016 22:01:06 GMT
ENV NODE_VERSION=0.10.46
# Tue, 30 Aug 2016 22:01:19 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 30 Aug 2016 22:01:19 GMT
CMD ["node"]
# Tue, 30 Aug 2016 23:22:44 GMT
MAINTAINER buildmaster@rocket.chat
# Tue, 30 Aug 2016 23:22:45 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Tue, 30 Aug 2016 23:22:45 GMT
VOLUME [/app/uploads]
# Tue, 30 Aug 2016 23:22:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Wed, 31 Aug 2016 20:36:41 GMT
ENV RC_VERSION=0.38.0
# Wed, 31 Aug 2016 20:36:41 GMT
WORKDIR /app
# Wed, 31 Aug 2016 20:37:01 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Wed, 31 Aug 2016 20:37:02 GMT
USER [rocketchat]
# Wed, 31 Aug 2016 20:37:03 GMT
WORKDIR /app/bundle
# Wed, 31 Aug 2016 20:37:03 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Wed, 31 Aug 2016 20:37:03 GMT
EXPOSE 3000/tcp
# Wed, 31 Aug 2016 20:37:04 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8031bea3fa7a9ab51e491ccfebaa75d172cda490602b2101b5cb2c0c8cdea5`  
		Last Modified: Tue, 30 Aug 2016 23:09:38 GMT  
		Size: 71.8 KB (71848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2972e96068a8fd0ae94773327d87793fbbe44cb8d6e06957aeb8ca06f487c358`  
		Last Modified: Tue, 30 Aug 2016 23:09:43 GMT  
		Size: 7.1 MB (7102394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3155e81f7d4f375e8cdbc3b20d3c899edda4ddc4426cdd35d7e67ab8220ad54d`  
		Last Modified: Tue, 30 Aug 2016 23:23:17 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4112bc2aef7aff7cd44a1e0610dfbb32bf4daff186a2a42e03c63ca24b5d68e5`  
		Last Modified: Tue, 30 Aug 2016 23:23:17 GMT  
		Size: 69.3 KB (69290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2639324b58d752c39d27e7e09fae9647e5dc6e760b276fae9eee34d5b839cf93`  
		Last Modified: Wed, 31 Aug 2016 20:37:27 GMT  
		Size: 71.9 MB (71892814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0.38`

```console
$ docker pull rocket.chat@sha256:4022908fde67348a96323ec75d78fe10992517f2708675f479080b71791128cf
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0.38` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149032921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d48a548b68aeb8d6397c800ed9acf50d55cc0101b13ef68d4a1fc3463fc2b0`
-	Default Command: `["node","main.js"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 22:01:06 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 30 Aug 2016 22:01:06 GMT
ENV NODE_VERSION=0.10.46
# Tue, 30 Aug 2016 22:01:19 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 30 Aug 2016 22:01:19 GMT
CMD ["node"]
# Tue, 30 Aug 2016 23:22:44 GMT
MAINTAINER buildmaster@rocket.chat
# Tue, 30 Aug 2016 23:22:45 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Tue, 30 Aug 2016 23:22:45 GMT
VOLUME [/app/uploads]
# Tue, 30 Aug 2016 23:22:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Wed, 31 Aug 2016 20:36:41 GMT
ENV RC_VERSION=0.38.0
# Wed, 31 Aug 2016 20:36:41 GMT
WORKDIR /app
# Wed, 31 Aug 2016 20:37:01 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Wed, 31 Aug 2016 20:37:02 GMT
USER [rocketchat]
# Wed, 31 Aug 2016 20:37:03 GMT
WORKDIR /app/bundle
# Wed, 31 Aug 2016 20:37:03 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Wed, 31 Aug 2016 20:37:03 GMT
EXPOSE 3000/tcp
# Wed, 31 Aug 2016 20:37:04 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8031bea3fa7a9ab51e491ccfebaa75d172cda490602b2101b5cb2c0c8cdea5`  
		Last Modified: Tue, 30 Aug 2016 23:09:38 GMT  
		Size: 71.8 KB (71848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2972e96068a8fd0ae94773327d87793fbbe44cb8d6e06957aeb8ca06f487c358`  
		Last Modified: Tue, 30 Aug 2016 23:09:43 GMT  
		Size: 7.1 MB (7102394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3155e81f7d4f375e8cdbc3b20d3c899edda4ddc4426cdd35d7e67ab8220ad54d`  
		Last Modified: Tue, 30 Aug 2016 23:23:17 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4112bc2aef7aff7cd44a1e0610dfbb32bf4daff186a2a42e03c63ca24b5d68e5`  
		Last Modified: Tue, 30 Aug 2016 23:23:17 GMT  
		Size: 69.3 KB (69290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2639324b58d752c39d27e7e09fae9647e5dc6e760b276fae9eee34d5b839cf93`  
		Last Modified: Wed, 31 Aug 2016 20:37:27 GMT  
		Size: 71.9 MB (71892814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0`

```console
$ docker pull rocket.chat@sha256:4022908fde67348a96323ec75d78fe10992517f2708675f479080b71791128cf
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149032921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d48a548b68aeb8d6397c800ed9acf50d55cc0101b13ef68d4a1fc3463fc2b0`
-	Default Command: `["node","main.js"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 22:01:06 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 30 Aug 2016 22:01:06 GMT
ENV NODE_VERSION=0.10.46
# Tue, 30 Aug 2016 22:01:19 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 30 Aug 2016 22:01:19 GMT
CMD ["node"]
# Tue, 30 Aug 2016 23:22:44 GMT
MAINTAINER buildmaster@rocket.chat
# Tue, 30 Aug 2016 23:22:45 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Tue, 30 Aug 2016 23:22:45 GMT
VOLUME [/app/uploads]
# Tue, 30 Aug 2016 23:22:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Wed, 31 Aug 2016 20:36:41 GMT
ENV RC_VERSION=0.38.0
# Wed, 31 Aug 2016 20:36:41 GMT
WORKDIR /app
# Wed, 31 Aug 2016 20:37:01 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Wed, 31 Aug 2016 20:37:02 GMT
USER [rocketchat]
# Wed, 31 Aug 2016 20:37:03 GMT
WORKDIR /app/bundle
# Wed, 31 Aug 2016 20:37:03 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Wed, 31 Aug 2016 20:37:03 GMT
EXPOSE 3000/tcp
# Wed, 31 Aug 2016 20:37:04 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8031bea3fa7a9ab51e491ccfebaa75d172cda490602b2101b5cb2c0c8cdea5`  
		Last Modified: Tue, 30 Aug 2016 23:09:38 GMT  
		Size: 71.8 KB (71848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2972e96068a8fd0ae94773327d87793fbbe44cb8d6e06957aeb8ca06f487c358`  
		Last Modified: Tue, 30 Aug 2016 23:09:43 GMT  
		Size: 7.1 MB (7102394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3155e81f7d4f375e8cdbc3b20d3c899edda4ddc4426cdd35d7e67ab8220ad54d`  
		Last Modified: Tue, 30 Aug 2016 23:23:17 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4112bc2aef7aff7cd44a1e0610dfbb32bf4daff186a2a42e03c63ca24b5d68e5`  
		Last Modified: Tue, 30 Aug 2016 23:23:17 GMT  
		Size: 69.3 KB (69290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2639324b58d752c39d27e7e09fae9647e5dc6e760b276fae9eee34d5b839cf93`  
		Last Modified: Wed, 31 Aug 2016 20:37:27 GMT  
		Size: 71.9 MB (71892814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:4022908fde67348a96323ec75d78fe10992517f2708675f479080b71791128cf
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149032921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d48a548b68aeb8d6397c800ed9acf50d55cc0101b13ef68d4a1fc3463fc2b0`
-	Default Command: `["node","main.js"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 22:01:06 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 30 Aug 2016 22:01:06 GMT
ENV NODE_VERSION=0.10.46
# Tue, 30 Aug 2016 22:01:19 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 30 Aug 2016 22:01:19 GMT
CMD ["node"]
# Tue, 30 Aug 2016 23:22:44 GMT
MAINTAINER buildmaster@rocket.chat
# Tue, 30 Aug 2016 23:22:45 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Tue, 30 Aug 2016 23:22:45 GMT
VOLUME [/app/uploads]
# Tue, 30 Aug 2016 23:22:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Wed, 31 Aug 2016 20:36:41 GMT
ENV RC_VERSION=0.38.0
# Wed, 31 Aug 2016 20:36:41 GMT
WORKDIR /app
# Wed, 31 Aug 2016 20:37:01 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Wed, 31 Aug 2016 20:37:02 GMT
USER [rocketchat]
# Wed, 31 Aug 2016 20:37:03 GMT
WORKDIR /app/bundle
# Wed, 31 Aug 2016 20:37:03 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Wed, 31 Aug 2016 20:37:03 GMT
EXPOSE 3000/tcp
# Wed, 31 Aug 2016 20:37:04 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8031bea3fa7a9ab51e491ccfebaa75d172cda490602b2101b5cb2c0c8cdea5`  
		Last Modified: Tue, 30 Aug 2016 23:09:38 GMT  
		Size: 71.8 KB (71848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2972e96068a8fd0ae94773327d87793fbbe44cb8d6e06957aeb8ca06f487c358`  
		Last Modified: Tue, 30 Aug 2016 23:09:43 GMT  
		Size: 7.1 MB (7102394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3155e81f7d4f375e8cdbc3b20d3c899edda4ddc4426cdd35d7e67ab8220ad54d`  
		Last Modified: Tue, 30 Aug 2016 23:23:17 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4112bc2aef7aff7cd44a1e0610dfbb32bf4daff186a2a42e03c63ca24b5d68e5`  
		Last Modified: Tue, 30 Aug 2016 23:23:17 GMT  
		Size: 69.3 KB (69290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2639324b58d752c39d27e7e09fae9647e5dc6e760b276fae9eee34d5b839cf93`  
		Last Modified: Wed, 31 Aug 2016 20:37:27 GMT  
		Size: 71.9 MB (71892814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
