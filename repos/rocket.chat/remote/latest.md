## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:0969018ff00045dce1219c5c26ec2b848b769fde92f45800f9b804cf5c4ebf63
```

-	Platforms:
	-	linux; amd64

### `rocket.chat:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.6 MB (157573221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3207ca60527696c88655dd337e38694377e834a65db2d78aaf627800045479d8`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:53:33 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 23 Sep 2016 20:54:54 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 18 Oct 2016 19:27:53 GMT
ENV NODE_VERSION=4.6.1
# Tue, 18 Oct 2016 19:28:02 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 18 Oct 2016 19:28:03 GMT
CMD ["node"]
# Tue, 18 Oct 2016 19:57:19 GMT
MAINTAINER buildmaster@rocket.chat
# Tue, 18 Oct 2016 19:57:20 GMT
RUN groupadd -r rocketchat &&  useradd -r -g rocketchat rocketchat
# Tue, 18 Oct 2016 19:57:21 GMT
VOLUME [/app/uploads]
# Tue, 18 Oct 2016 19:57:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104
# Tue, 18 Oct 2016 19:57:23 GMT
ENV RC_VERSION=0.42.0
# Tue, 18 Oct 2016 19:57:23 GMT
WORKDIR /app
# Tue, 18 Oct 2016 19:58:04 GMT
RUN curl -fSL "https://rocket.chat/releases/${RC_VERSION}/download" -o rocket.chat.tgz &&  curl -fSL "https://rocket.chat/releases/${RC_VERSION}/asc" -o rocket.chat.tgz.asc &&  gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz &&  tar zxvf rocket.chat.tgz &&  rm rocket.chat.tgz rocket.chat.tgz.asc &&  cd bundle/programs/server &&  npm install
# Tue, 18 Oct 2016 19:58:09 GMT
USER [rocketchat]
# Tue, 18 Oct 2016 19:58:13 GMT
WORKDIR /app/bundle
# Tue, 18 Oct 2016 19:58:14 GMT
ENV MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000 Accounts_AvatarStorePath=/app/uploads
# Tue, 18 Oct 2016 19:58:14 GMT
EXPOSE 3000/tcp
# Tue, 18 Oct 2016 19:58:14 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cf98377d301224c76357ac0c702e179f8eadeb311ba0bb6e8e96a0f78f088a`  
		Last Modified: Fri, 23 Sep 2016 20:53:50 GMT  
		Size: 88.8 KB (88821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d117da553faa38deb4118dbe089b2510427c630594ecd2935604114b27b31d7b`  
		Last Modified: Tue, 18 Oct 2016 19:34:57 GMT  
		Size: 12.2 MB (12245382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0da58fc93bf6b48bb5c9877f7be94319ff3e2f8e8753ad149b0fbe39f100a59`  
		Last Modified: Tue, 18 Oct 2016 19:58:23 GMT  
		Size: 2.1 KB (2053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b966a19e5d8d336e2f79dd317b5b3515c313a540852f6e2b1efb3b0341325ac1`  
		Last Modified: Tue, 18 Oct 2016 19:58:24 GMT  
		Size: 86.2 KB (86244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e048adf1cc161a51fa172de4236765e5d322cc8de24325cf5a5ab2aa1892c973`  
		Last Modified: Tue, 18 Oct 2016 19:58:46 GMT  
		Size: 75.3 MB (75268100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
