## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:704777170377a2fa0a1fe5b8738f757b3f74d2347b4097f19e5758a03408c542
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 MB (195917024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23da64da7e170df42537f880469e9c005581c3db09a564f1d308025d25435574`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 Nov 2016 21:16:06 GMT
RUN groupadd -r node && useradd -r -g node node
# Thu, 03 Nov 2016 21:16:17 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Thu, 03 Nov 2016 21:16:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 03 Nov 2016 21:17:12 GMT
ENV NODE_VERSION=4.6.1
# Thu, 03 Nov 2016 21:17:20 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 03 Nov 2016 21:17:21 GMT
CMD ["node"]
# Thu, 03 Nov 2016 22:08:08 GMT
MAINTAINER buildmaster@rocket.chat
# Thu, 03 Nov 2016 22:08:09 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Thu, 03 Nov 2016 22:08:10 GMT
VOLUME [/app/uploads]
# Thu, 03 Nov 2016 22:08:12 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Thu, 03 Nov 2016 22:08:12 GMT
ENV RC_VERSION=0.45.0
# Thu, 03 Nov 2016 22:08:12 GMT
WORKDIR /app
# Thu, 03 Nov 2016 22:08:49 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Thu, 03 Nov 2016 22:08:50 GMT
USER [rocketchat]
# Thu, 03 Nov 2016 22:08:51 GMT
WORKDIR /app/bundle
# Thu, 03 Nov 2016 22:08:51 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Thu, 03 Nov 2016 22:08:52 GMT
EXPOSE 3000/tcp
# Thu, 03 Nov 2016 22:08:52 GMT
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
	-	`sha256:5412f5d9f9eb3227f777ffa61fb72f00d7505c9d757a89dc3305c2c059ac75a1`  
		Last Modified: Thu, 03 Nov 2016 21:20:17 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23444aa04998ab9d995bb2faf9a3edf240b5a2d3b81eaa4686b53eb791779e42`  
		Last Modified: Thu, 03 Nov 2016 21:20:17 GMT  
		Size: 97.2 KB (97214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36541417d4a9d7948f2a146841976994bca0c65e79f34a0d6b02490613ef7fe`  
		Last Modified: Thu, 03 Nov 2016 21:28:10 GMT  
		Size: 12.2 MB (12245349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aac834941c271082c29d7bdf2b47ca037d62144a1aa5a7b810be1507d0432ba`  
		Last Modified: Thu, 03 Nov 2016 22:09:05 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2da5a9f7e7625c2b80a47386967cbb6dcf347d7b09e84d5decb7145e446ed9f`  
		Last Modified: Thu, 03 Nov 2016 22:09:04 GMT  
		Size: 94.7 KB (94662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7784ea793ef09f76eb7a377434b3e1478ec75dbcbaa2fe5a8737ad274a3c75e6`  
		Last Modified: Thu, 03 Nov 2016 22:09:38 GMT  
		Size: 113.6 MB (113594412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
