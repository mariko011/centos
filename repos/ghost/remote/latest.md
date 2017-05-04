## `ghost:latest`

```console
$ docker pull ghost@sha256:b2896c003d56ff5e1b70e0fbb801c4f7a07e5bd31c5e2e5689fe45fb76de11eb
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (114001504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457297ceb67dae2964cdb5df9460b9df728c02fa7e16772bffde5a2f0dc70395`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 02:33:32 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 25 Apr 2017 02:33:35 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done
# Tue, 25 Apr 2017 02:33:50 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 03 May 2017 23:19:50 GMT
ENV NODE_VERSION=4.8.3
# Wed, 03 May 2017 23:20:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 03 May 2017 23:20:04 GMT
ENV YARN_VERSION=0.23.4
# Wed, 03 May 2017 23:20:09 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 03 May 2017 23:20:09 GMT
CMD ["node"]
# Thu, 04 May 2017 16:46:46 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 04 May 2017 16:46:46 GMT
ENV GOSU_VERSION=1.7
# Thu, 04 May 2017 16:46:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 04 May 2017 16:46:53 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 04 May 2017 16:46:54 GMT
WORKDIR /usr/src/ghost
# Thu, 04 May 2017 16:46:54 GMT
ENV GHOST_VERSION=0.11.8
# Thu, 04 May 2017 16:48:18 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 04 May 2017 16:48:19 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 04 May 2017 16:48:21 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 04 May 2017 16:48:22 GMT
VOLUME [/var/lib/ghost]
# Thu, 04 May 2017 16:48:23 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Thu, 04 May 2017 16:48:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 04 May 2017 16:48:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 May 2017 16:48:26 GMT
EXPOSE 2368/tcp
# Thu, 04 May 2017 16:48:26 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f444da5fa2cdd81962d27a19802e984466379ab56d042c0040385274725cf4fe`  
		Last Modified: Tue, 25 Apr 2017 19:59:22 GMT  
		Size: 4.4 KB (4366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee8980874ac29ea494537573257a5dfc88599481c4996e4afab446a7945524`  
		Last Modified: Tue, 25 Apr 2017 19:59:23 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0cb06f38d2454b74038083edf990b186d42815b64c42d18d3694aacd30773a`  
		Last Modified: Wed, 03 May 2017 23:39:37 GMT  
		Size: 12.6 MB (12578290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893ed87be4dbc5098553bb0584b308c35869f03590697dd37d2103248c305a46`  
		Last Modified: Wed, 03 May 2017 23:39:35 GMT  
		Size: 886.3 KB (886323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f837b601e575578b1aeabc91e4718a3802c0456c24bdaba74c1df567dca67a16`  
		Last Modified: Thu, 04 May 2017 16:51:34 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb284334aeab8ea68f4f308639b7c31974c5cb0977bfd895b20fd70160e3713`  
		Last Modified: Thu, 04 May 2017 16:51:34 GMT  
		Size: 818.8 KB (818819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c3a951abe55d93ce66efa89d7f485e908cc087edf45b1662a53b84752621f2`  
		Last Modified: Thu, 04 May 2017 16:51:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3dd4967c636313ed252afceab2703f0b73c3c4d0e1117b8655ac64f5418e9c`  
		Last Modified: Thu, 04 May 2017 16:51:41 GMT  
		Size: 27.8 MB (27772557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a93e829bbb9feef560fd14e0c46a29052c6ac0d441d3808229a621078e1ad1`  
		Last Modified: Thu, 04 May 2017 16:51:34 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec5b642ce85de76ebaebe9127f311b2b233c223eb140a12cb3d96f746bc8410`  
		Last Modified: Thu, 04 May 2017 16:51:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473f5e853af3c17a6c680a066ffec1f1d4a23da1ae7de0c4c776e99b968ff9fb`  
		Last Modified: Thu, 04 May 2017 16:51:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
