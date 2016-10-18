## `ghost:latest`

```console
$ docker pull ghost@sha256:d375100a63e67658f2b7420c56910d2bcc1ba0f1ae7b769e4a54db07a6c6a763
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126350935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb85182c0431ba6579f3600978543348040d6c427e5231c03dbdbf392f4a7bee`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

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
# Tue, 18 Oct 2016 19:55:18 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 18 Oct 2016 19:55:18 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Oct 2016 19:55:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Oct 2016 19:55:24 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 18 Oct 2016 19:55:24 GMT
WORKDIR /usr/src/ghost
# Tue, 18 Oct 2016 19:55:24 GMT
ENV GHOST_VERSION=0.11.2
# Tue, 18 Oct 2016 19:56:13 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Tue, 18 Oct 2016 19:56:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 18 Oct 2016 19:56:15 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Tue, 18 Oct 2016 19:56:15 GMT
VOLUME [/var/lib/ghost]
# Tue, 18 Oct 2016 19:56:16 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Tue, 18 Oct 2016 19:56:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Oct 2016 19:56:16 GMT
EXPOSE 2368/tcp
# Tue, 18 Oct 2016 19:56:17 GMT
CMD ["npm" "start"]
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
	-	`sha256:793acf2632355590a2b948011eff69ab1e17f36520e13b1ba636a70428603192`  
		Last Modified: Tue, 18 Oct 2016 19:56:30 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d808ff12b088dd60175cac7d79d23e3f93e7e4413086c93520f4d0583dfe6c7e`  
		Last Modified: Tue, 18 Oct 2016 19:56:28 GMT  
		Size: 807.9 KB (807938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f20d9c88fffeda5af923cb7543ebfc5cadb5d67c3be0a20262b159f89b85e4`  
		Last Modified: Tue, 18 Oct 2016 19:56:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5e695b8966ec782172af6264f7eff5037a00f6067bdc3101df703bc3e15904`  
		Last Modified: Tue, 18 Oct 2016 19:56:36 GMT  
		Size: 43.3 MB (43321087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64f6eceb0c30330abe57f5fff2614812a116f71a3e351e9c7ce549fb96dd5a3`  
		Last Modified: Tue, 18 Oct 2016 19:56:26 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f0ab75b11dadbb3fa68ca614e4fc53d5a3e6f7b927593f73ae835c454e9827`  
		Last Modified: Tue, 18 Oct 2016 19:56:27 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
