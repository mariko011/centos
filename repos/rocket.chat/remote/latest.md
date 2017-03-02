## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:7e98dd6c9da84ae9e5b66b30e98738ddd2f95130466a0979dbb557f77c38d022
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172543229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17713bb11338db88ef86067cebcb6c65f7e781833c8fbd3033b3f7eb9431592`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:15:57 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:36 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:40 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:40 GMT
CMD ["node"]
# Wed, 01 Mar 2017 18:01:40 GMT
MAINTAINER buildmaster@rocket.chat
# Wed, 01 Mar 2017 18:01:42 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Wed, 01 Mar 2017 18:01:42 GMT
VOLUME [/app/uploads]
# Wed, 01 Mar 2017 18:01:44 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Thu, 02 Mar 2017 21:18:44 GMT
ENV RC_VERSION=0.53.0
# Thu, 02 Mar 2017 21:18:44 GMT
WORKDIR /app
# Thu, 02 Mar 2017 21:19:13 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Thu, 02 Mar 2017 21:19:15 GMT
USER [rocketchat]
# Thu, 02 Mar 2017 21:19:15 GMT
WORKDIR /app/bundle
# Thu, 02 Mar 2017 21:19:16 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Thu, 02 Mar 2017 21:19:16 GMT
EXPOSE 3000/tcp
# Thu, 02 Mar 2017 21:19:17 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdac388e8eaf675a81ab5c17547c78da8f5683d0bdde314018bc12e4117717b`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d7bf5eae4b4f2a47e163351b332b447e7553f6fdad1aa942cf4f009babbef7`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bf59480dfaf997cf6e3cba6cf88b6c970abe08ef0414942d1e5234ff81a095`  
		Last Modified: Wed, 01 Mar 2017 17:54:26 GMT  
		Size: 12.3 MB (12274043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f29fdb690c501584018c910284b79516166b445d02be7baf42bfcafcc46d3`  
		Last Modified: Wed, 01 Mar 2017 17:54:20 GMT  
		Size: 864.8 KB (864781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7f5b0083b42be9846bb6eabf4e5d2cdfb5ec14388a6390c4c2c0c6880598a0`  
		Last Modified: Wed, 01 Mar 2017 18:02:54 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1490221fc4c0c01a65d1e591bb4f0fca5260225760fa034fe58a0802cd60095d`  
		Last Modified: Wed, 01 Mar 2017 18:02:55 GMT  
		Size: 116.2 KB (116240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da1198b6dedfee74416282a1fc27e221461bb26088e8982d15b833a7dad967b`  
		Last Modified: Thu, 02 Mar 2017 21:20:00 GMT  
		Size: 89.3 MB (89274198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
