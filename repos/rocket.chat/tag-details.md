<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:0.37.1`](#rocketchat0371)
-	[`rocket.chat:0.37`](#rocketchat037)
-	[`rocket.chat:0`](#rocketchat0)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:0.37.1`

**does not exist** (yet?)

## `rocket.chat:0.37`

```console
$ docker pull rocket.chat@sha256:08e3e8e84faf076ab547e7f74d25408c1ae61da58f71f8f32ade949c7f5d74cc
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0.37` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148934645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db898f116fcb06e11d9e3edd192640e5a12183a31d945286f69e940044ca091`
-	Default Command: `["node","main.js"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 23:42:49 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 29 Jul 2016 23:42:50 GMT
ENV NODE_VERSION=0.10.46
# Fri, 29 Jul 2016 23:44:06 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Jul 2016 23:44:06 GMT
CMD ["node"]
# Mon, 01 Aug 2016 23:41:04 GMT
MAINTAINER buildmaster@rocket.chat
# Mon, 01 Aug 2016 23:41:06 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Mon, 01 Aug 2016 23:41:07 GMT
VOLUME [/app/uploads]
# Mon, 01 Aug 2016 23:41:09 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 16 Aug 2016 00:28:23 GMT
ENV RC_VERSION=0.37.0
# Tue, 16 Aug 2016 00:28:24 GMT
WORKDIR /app
# Tue, 16 Aug 2016 00:29:08 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Tue, 16 Aug 2016 00:29:10 GMT
USER [rocketchat]
# Tue, 16 Aug 2016 00:29:11 GMT
WORKDIR /app/bundle
# Tue, 16 Aug 2016 00:29:12 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 16 Aug 2016 00:29:13 GMT
EXPOSE 3000/tcp
# Tue, 16 Aug 2016 00:29:14 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e99d7dcd4fae0ccc58e5f7abc885a0ba385ab1b4276ba4f14cd19fb74603cc`  
		Last Modified: Mon, 01 Aug 2016 16:35:18 GMT  
		Size: 71.8 KB (71850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23afe470a300de9a429bf820da7a925bac8180e42860a3447871695a9ec7370f`  
		Last Modified: Mon, 01 Aug 2016 19:36:02 GMT  
		Size: 7.1 MB (7102246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdbbbfbd72edafd20e4623b2edded16c78c1147e2f758ac32c5f62b691674e`  
		Last Modified: Mon, 01 Aug 2016 23:41:54 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0b9bd3588e3c745b6146fc09a7e0f80fd7777478a10a51c9ee7c5c0e550600`  
		Last Modified: Mon, 01 Aug 2016 23:41:55 GMT  
		Size: 69.3 KB (69283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df53f4912912cf171a7f39286dffc29d2be3baa4101e7555ea6bfa67f70e6366`  
		Last Modified: Tue, 16 Aug 2016 00:29:44 GMT  
		Size: 71.8 MB (71796631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:0`

```console
$ docker pull rocket.chat@sha256:08e3e8e84faf076ab547e7f74d25408c1ae61da58f71f8f32ade949c7f5d74cc
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148934645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db898f116fcb06e11d9e3edd192640e5a12183a31d945286f69e940044ca091`
-	Default Command: `["node","main.js"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 23:42:49 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 29 Jul 2016 23:42:50 GMT
ENV NODE_VERSION=0.10.46
# Fri, 29 Jul 2016 23:44:06 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Jul 2016 23:44:06 GMT
CMD ["node"]
# Mon, 01 Aug 2016 23:41:04 GMT
MAINTAINER buildmaster@rocket.chat
# Mon, 01 Aug 2016 23:41:06 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Mon, 01 Aug 2016 23:41:07 GMT
VOLUME [/app/uploads]
# Mon, 01 Aug 2016 23:41:09 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 16 Aug 2016 00:28:23 GMT
ENV RC_VERSION=0.37.0
# Tue, 16 Aug 2016 00:28:24 GMT
WORKDIR /app
# Tue, 16 Aug 2016 00:29:08 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Tue, 16 Aug 2016 00:29:10 GMT
USER [rocketchat]
# Tue, 16 Aug 2016 00:29:11 GMT
WORKDIR /app/bundle
# Tue, 16 Aug 2016 00:29:12 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 16 Aug 2016 00:29:13 GMT
EXPOSE 3000/tcp
# Tue, 16 Aug 2016 00:29:14 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e99d7dcd4fae0ccc58e5f7abc885a0ba385ab1b4276ba4f14cd19fb74603cc`  
		Last Modified: Mon, 01 Aug 2016 16:35:18 GMT  
		Size: 71.8 KB (71850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23afe470a300de9a429bf820da7a925bac8180e42860a3447871695a9ec7370f`  
		Last Modified: Mon, 01 Aug 2016 19:36:02 GMT  
		Size: 7.1 MB (7102246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdbbbfbd72edafd20e4623b2edded16c78c1147e2f758ac32c5f62b691674e`  
		Last Modified: Mon, 01 Aug 2016 23:41:54 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0b9bd3588e3c745b6146fc09a7e0f80fd7777478a10a51c9ee7c5c0e550600`  
		Last Modified: Mon, 01 Aug 2016 23:41:55 GMT  
		Size: 69.3 KB (69283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df53f4912912cf171a7f39286dffc29d2be3baa4101e7555ea6bfa67f70e6366`  
		Last Modified: Tue, 16 Aug 2016 00:29:44 GMT  
		Size: 71.8 MB (71796631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:08e3e8e84faf076ab547e7f74d25408c1ae61da58f71f8f32ade949c7f5d74cc
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148934645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db898f116fcb06e11d9e3edd192640e5a12183a31d945286f69e940044ca091`
-	Default Command: `["node","main.js"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 23:42:49 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 29 Jul 2016 23:42:50 GMT
ENV NODE_VERSION=0.10.46
# Fri, 29 Jul 2016 23:44:06 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Jul 2016 23:44:06 GMT
CMD ["node"]
# Mon, 01 Aug 2016 23:41:04 GMT
MAINTAINER buildmaster@rocket.chat
# Mon, 01 Aug 2016 23:41:06 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Mon, 01 Aug 2016 23:41:07 GMT
VOLUME [/app/uploads]
# Mon, 01 Aug 2016 23:41:09 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 16 Aug 2016 00:28:23 GMT
ENV RC_VERSION=0.37.0
# Tue, 16 Aug 2016 00:28:24 GMT
WORKDIR /app
# Tue, 16 Aug 2016 00:29:08 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Tue, 16 Aug 2016 00:29:10 GMT
USER [rocketchat]
# Tue, 16 Aug 2016 00:29:11 GMT
WORKDIR /app/bundle
# Tue, 16 Aug 2016 00:29:12 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 16 Aug 2016 00:29:13 GMT
EXPOSE 3000/tcp
# Tue, 16 Aug 2016 00:29:14 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e99d7dcd4fae0ccc58e5f7abc885a0ba385ab1b4276ba4f14cd19fb74603cc`  
		Last Modified: Mon, 01 Aug 2016 16:35:18 GMT  
		Size: 71.8 KB (71850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23afe470a300de9a429bf820da7a925bac8180e42860a3447871695a9ec7370f`  
		Last Modified: Mon, 01 Aug 2016 19:36:02 GMT  
		Size: 7.1 MB (7102246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdbbbfbd72edafd20e4623b2edded16c78c1147e2f758ac32c5f62b691674e`  
		Last Modified: Mon, 01 Aug 2016 23:41:54 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0b9bd3588e3c745b6146fc09a7e0f80fd7777478a10a51c9ee7c5c0e550600`  
		Last Modified: Mon, 01 Aug 2016 23:41:55 GMT  
		Size: 69.3 KB (69283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df53f4912912cf171a7f39286dffc29d2be3baa4101e7555ea6bfa67f70e6366`  
		Last Modified: Tue, 16 Aug 2016 00:29:44 GMT  
		Size: 71.8 MB (71796631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
