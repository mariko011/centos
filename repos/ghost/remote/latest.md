## `ghost:latest`

```console
$ docker pull ghost@sha256:e7b317ca8d697be3be293794eda6be8edc38a866c594d312328ab775c75ae00b
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.1 MB (114109556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:533271fcc11131333e36e956882bf3fe2f851a67ae7f1d3019acc44fb76f93bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:45:41 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 31 May 2017 19:46:07 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Wed, 31 May 2017 19:46:26 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 31 May 2017 20:21:38 GMT
ENV NODE_VERSION=4.8.3
# Wed, 31 May 2017 20:21:54 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 31 May 2017 20:22:03 GMT
ENV YARN_VERSION=0.24.4
# Wed, 31 May 2017 20:22:07 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Wed, 31 May 2017 20:22:26 GMT
CMD ["node"]
# Wed, 31 May 2017 21:06:16 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 31 May 2017 21:06:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 May 2017 21:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 May 2017 21:07:02 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 31 May 2017 21:07:03 GMT
WORKDIR /usr/src/ghost
# Wed, 31 May 2017 21:07:04 GMT
ENV GHOST_VERSION=0.11.9
# Wed, 31 May 2017 21:08:12 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 31 May 2017 21:08:21 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 31 May 2017 21:08:23 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 31 May 2017 21:08:23 GMT
VOLUME [/var/lib/ghost]
# Wed, 31 May 2017 21:08:45 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 31 May 2017 21:08:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 31 May 2017 21:09:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 21:09:08 GMT
EXPOSE 2368/tcp
# Wed, 31 May 2017 21:09:09 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4b8c9fa331cd6c57e53893f14af4ea47b685786a1144552900e3c47bda5a9b`  
		Last Modified: Sat, 13 May 2017 08:37:01 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca67a5f4d0dd9789f7adfa11eb1b336f8c87c384e8e3e5927b1ea30a9e82544b`  
		Last Modified: Wed, 31 May 2017 20:32:39 GMT  
		Size: 119.2 KB (119150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78945c4f377af4f4f0460053cad1e09187fc57dcdb944d471856387a271cd33`  
		Last Modified: Wed, 31 May 2017 21:00:09 GMT  
		Size: 12.6 MB (12577897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8ddb0753bd391b12f2913c83fbe210912d06a104e59df10a34db3a34630ca7`  
		Last Modified: Wed, 31 May 2017 21:00:07 GMT  
		Size: 900.6 KB (900597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7994b465c2632353e80abe0ed70bc3de28d295b235e197ae901a6ff9af6e56b7`  
		Last Modified: Wed, 31 May 2017 21:12:34 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de929fa5db3a82f88bbe8e361ef360d2ecea12f931e131dc3b3c9287564d926`  
		Last Modified: Wed, 31 May 2017 21:12:30 GMT  
		Size: 818.8 KB (818818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f371f3123a4a01bca3aadc3d7bc189e6b8f1f9776e2ee69b1d135b098677659`  
		Last Modified: Wed, 31 May 2017 21:12:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5587602388263d11ac4b41ad99468f51668b30855134a13ea73b87f315ffadf9`  
		Last Modified: Wed, 31 May 2017 21:12:37 GMT  
		Size: 27.8 MB (27831773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ce6a3848b808f939a4273661088d10e4fa532f27ddb01ce925b97c820d4e1b`  
		Last Modified: Wed, 31 May 2017 21:12:32 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de618ea84fea19815bd11f94934031418ed9b1a81b9d8cc7cf7ed367ebf3ea67`  
		Last Modified: Wed, 31 May 2017 21:12:30 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b57a1c67c4006a074a2dfc7d686d1accd4d711c3221a4e2354f59c184f3a49f`  
		Last Modified: Wed, 31 May 2017 21:12:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
