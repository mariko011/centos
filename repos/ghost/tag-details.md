<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0.11.10`](#ghost01110)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:latest`](#ghostlatest)
-	[`ghost:0.11.10-alpine`](#ghost01110-alpine)
-	[`ghost:0.11-alpine`](#ghost011-alpine)
-	[`ghost:0-alpine`](#ghost0-alpine)
-	[`ghost:alpine`](#ghostalpine)

## `ghost:0.11.10`

```console
$ docker pull ghost@sha256:b81a40605878dcf8c94fc82b0a1971f8cdbe98f168fcf777db1025cc14a0692a
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111939447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1baf19c1eab0ed790745dd857e8746ac3c43afe12dd00be59770e03d3aa74a51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Jul 2017 04:20:40 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Sat, 08 Jul 2017 04:23:56 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Sat, 08 Jul 2017 04:23:57 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 11 Jul 2017 23:27:37 GMT
ENV NODE_VERSION=4.8.4
# Tue, 11 Jul 2017 23:27:49 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 11 Jul 2017 23:27:50 GMT
ENV YARN_VERSION=0.24.4
# Tue, 11 Jul 2017 23:27:53 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Tue, 11 Jul 2017 23:27:54 GMT
CMD ["node"]
# Wed, 12 Jul 2017 16:26:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 12 Jul 2017 16:26:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 12 Jul 2017 16:26:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 12 Jul 2017 16:26:29 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 12 Jul 2017 16:26:30 GMT
WORKDIR /usr/src/ghost
# Wed, 12 Jul 2017 16:26:30 GMT
ENV GHOST_VERSION=0.11.10
# Wed, 12 Jul 2017 16:27:27 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Wed, 12 Jul 2017 16:27:28 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 12 Jul 2017 16:27:29 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 12 Jul 2017 16:27:29 GMT
VOLUME [/var/lib/ghost]
# Wed, 12 Jul 2017 16:27:30 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Wed, 12 Jul 2017 16:27:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 12 Jul 2017 16:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Jul 2017 16:27:32 GMT
EXPOSE 2368/tcp
# Wed, 12 Jul 2017 16:27:32 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2405c8e05a47440060907f35b13c15d3346452f19cf1db17c659568eb3391e90`  
		Last Modified: Mon, 10 Jul 2017 18:16:29 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8eeeb57a2cd360c68be9ca1a01878bf2be388153a1874b87c2dd1a19a0ae79d`  
		Last Modified: Mon, 10 Jul 2017 18:16:26 GMT  
		Size: 119.2 KB (119157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fdfa03cee406af9161ee7783cfd9d9e09c6495280dba0f99032350d0e7d9aa`  
		Last Modified: Tue, 11 Jul 2017 23:43:12 GMT  
		Size: 12.4 MB (12420659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35934788e1f4f8661ea49c2b728356a69498ec68f4ded86f3ef3ae7779c9fa1`  
		Last Modified: Tue, 11 Jul 2017 23:43:05 GMT  
		Size: 900.6 KB (900598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53631e092f4995595c9f4fbc9068a604d6e5036c11ed1a09890c21ed4a522645`  
		Last Modified: Wed, 12 Jul 2017 16:28:45 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb86d85d9355bd4e57e6d1d6e73a0e987fa2d044f9da7f69d634cbcc4026bea`  
		Last Modified: Wed, 12 Jul 2017 16:28:44 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595649c1af8fb2bc6f465da953db62b2316e837bb398003be9247c300cc06669`  
		Last Modified: Wed, 12 Jul 2017 16:28:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c3d46fc17992e921958c1011710c175473d65651a0dfa9d476886782bb8d83`  
		Last Modified: Wed, 12 Jul 2017 16:28:49 GMT  
		Size: 25.8 MB (25791174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b587489121b12d74174d77de2c5fe73807e63daf7ab4da2d244603fc074014`  
		Last Modified: Wed, 12 Jul 2017 16:28:43 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7eb1d58892cfcd28c220c16d01e3ae910951ca2e3a7e00ea7d6c2d75ac831e`  
		Last Modified: Wed, 12 Jul 2017 16:28:43 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0e00f95807eb6ac464343e0a37b5d17c235e6395906cfc7b3bd21c4576d68f`  
		Last Modified: Wed, 12 Jul 2017 16:28:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:7693584cf95b7eda0ef7c623072d4666a322097377fe3f2a753f77af3e04891e
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112091019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73792478deb5019be5ddf13a203fe3941c82c398b6f861dbac90c404afefebd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:59:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 23 Jun 2017 00:59:18 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 23 Jun 2017 00:59:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 23 Jun 2017 01:06:50 GMT
ENV NODE_VERSION=4.8.3
# Fri, 23 Jun 2017 01:07:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 23 Jun 2017 01:07:05 GMT
ENV YARN_VERSION=0.24.4
# Fri, 23 Jun 2017 01:07:09 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 23 Jun 2017 01:07:10 GMT
CMD ["node"]
# Fri, 23 Jun 2017 14:51:21 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 23 Jun 2017 14:51:21 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 14:51:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 14:51:28 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 23 Jun 2017 14:51:29 GMT
WORKDIR /usr/src/ghost
# Fri, 23 Jun 2017 14:51:30 GMT
ENV GHOST_VERSION=0.11.10
# Fri, 23 Jun 2017 14:52:28 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 23 Jun 2017 14:52:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 23 Jun 2017 14:52:31 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 23 Jun 2017 14:52:32 GMT
VOLUME [/var/lib/ghost]
# Fri, 23 Jun 2017 14:52:34 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 23 Jun 2017 14:52:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 14:52:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 14:52:37 GMT
EXPOSE 2368/tcp
# Fri, 23 Jun 2017 14:52:38 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe38782ba6f17ba90e104826d2017f1fd86b7873f12c4632c9ea52cbcd88e1b`  
		Last Modified: Sat, 24 Jun 2017 15:13:02 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0a1d2307e1b2182bc4238e3223c1b03059a05af2a1ebf73db6d30349e490d1`  
		Last Modified: Sat, 24 Jun 2017 15:13:02 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d328af0cf3b02f233627fe3215495194d40f1f711b5131a5a8e294711677312`  
		Last Modified: Sat, 24 Jun 2017 15:32:35 GMT  
		Size: 12.6 MB (12572594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c973e3df1e1c910e347cd076a91deeb978c8be9e0ca32d56ef2c80289d1506e8`  
		Last Modified: Sat, 24 Jun 2017 15:32:29 GMT  
		Size: 900.6 KB (900593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fc6d232172a98868d73bb5a6bd57567faf415b790f412077cb6f32aa0bbeaa`  
		Last Modified: Sun, 25 Jun 2017 09:06:18 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0520b515eb5820e94203faef40ef03b8cb7516fc628aa4b76b2a0f59377d7985`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 818.8 KB (818817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b726f9ed6cd83dc600e6b42f5537c8d4f721fea0704cb7a8147e2de1183dacd`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fda82f37b5914f87efbc7256b571c9d9b293a23d47bb17f954fd2d74f22de2e`  
		Last Modified: Sun, 25 Jun 2017 09:06:32 GMT  
		Size: 25.8 MB (25790819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ab1733de1d1aad85a647fbc679dace7e98feb67c8d526a52644bce5438346a`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0546f3f16cad2f4d5629ce7931cde1f27fdd39a056f52292db1364845ea9516`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eb3c84687c34ba65f6e737b5d3e7793047d0524742e2ea5e71695c49333e44`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:7693584cf95b7eda0ef7c623072d4666a322097377fe3f2a753f77af3e04891e
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112091019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73792478deb5019be5ddf13a203fe3941c82c398b6f861dbac90c404afefebd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:59:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 23 Jun 2017 00:59:18 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 23 Jun 2017 00:59:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 23 Jun 2017 01:06:50 GMT
ENV NODE_VERSION=4.8.3
# Fri, 23 Jun 2017 01:07:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 23 Jun 2017 01:07:05 GMT
ENV YARN_VERSION=0.24.4
# Fri, 23 Jun 2017 01:07:09 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 23 Jun 2017 01:07:10 GMT
CMD ["node"]
# Fri, 23 Jun 2017 14:51:21 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 23 Jun 2017 14:51:21 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 14:51:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 14:51:28 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 23 Jun 2017 14:51:29 GMT
WORKDIR /usr/src/ghost
# Fri, 23 Jun 2017 14:51:30 GMT
ENV GHOST_VERSION=0.11.10
# Fri, 23 Jun 2017 14:52:28 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 23 Jun 2017 14:52:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 23 Jun 2017 14:52:31 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 23 Jun 2017 14:52:32 GMT
VOLUME [/var/lib/ghost]
# Fri, 23 Jun 2017 14:52:34 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 23 Jun 2017 14:52:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 14:52:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 14:52:37 GMT
EXPOSE 2368/tcp
# Fri, 23 Jun 2017 14:52:38 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe38782ba6f17ba90e104826d2017f1fd86b7873f12c4632c9ea52cbcd88e1b`  
		Last Modified: Sat, 24 Jun 2017 15:13:02 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0a1d2307e1b2182bc4238e3223c1b03059a05af2a1ebf73db6d30349e490d1`  
		Last Modified: Sat, 24 Jun 2017 15:13:02 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d328af0cf3b02f233627fe3215495194d40f1f711b5131a5a8e294711677312`  
		Last Modified: Sat, 24 Jun 2017 15:32:35 GMT  
		Size: 12.6 MB (12572594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c973e3df1e1c910e347cd076a91deeb978c8be9e0ca32d56ef2c80289d1506e8`  
		Last Modified: Sat, 24 Jun 2017 15:32:29 GMT  
		Size: 900.6 KB (900593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fc6d232172a98868d73bb5a6bd57567faf415b790f412077cb6f32aa0bbeaa`  
		Last Modified: Sun, 25 Jun 2017 09:06:18 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0520b515eb5820e94203faef40ef03b8cb7516fc628aa4b76b2a0f59377d7985`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 818.8 KB (818817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b726f9ed6cd83dc600e6b42f5537c8d4f721fea0704cb7a8147e2de1183dacd`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fda82f37b5914f87efbc7256b571c9d9b293a23d47bb17f954fd2d74f22de2e`  
		Last Modified: Sun, 25 Jun 2017 09:06:32 GMT  
		Size: 25.8 MB (25790819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ab1733de1d1aad85a647fbc679dace7e98feb67c8d526a52644bce5438346a`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0546f3f16cad2f4d5629ce7931cde1f27fdd39a056f52292db1364845ea9516`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eb3c84687c34ba65f6e737b5d3e7793047d0524742e2ea5e71695c49333e44`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:7693584cf95b7eda0ef7c623072d4666a322097377fe3f2a753f77af3e04891e
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112091019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73792478deb5019be5ddf13a203fe3941c82c398b6f861dbac90c404afefebd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:59:13 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 23 Jun 2017 00:59:18 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done
# Fri, 23 Jun 2017 00:59:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 23 Jun 2017 01:06:50 GMT
ENV NODE_VERSION=4.8.3
# Fri, 23 Jun 2017 01:07:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 23 Jun 2017 01:07:05 GMT
ENV YARN_VERSION=0.24.4
# Fri, 23 Jun 2017 01:07:09 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
# Fri, 23 Jun 2017 01:07:10 GMT
CMD ["node"]
# Fri, 23 Jun 2017 14:51:21 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 23 Jun 2017 14:51:21 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 14:51:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 14:51:28 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 23 Jun 2017 14:51:29 GMT
WORKDIR /usr/src/ghost
# Fri, 23 Jun 2017 14:51:30 GMT
ENV GHOST_VERSION=0.11.10
# Fri, 23 Jun 2017 14:52:28 GMT
RUN set -ex; 		buildDeps=' 		gcc 		make 		python 		unzip 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apt-get purge -y --auto-remove $buildDeps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Fri, 23 Jun 2017 14:52:29 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 23 Jun 2017 14:52:31 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 23 Jun 2017 14:52:32 GMT
VOLUME [/var/lib/ghost]
# Fri, 23 Jun 2017 14:52:34 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /usr/local/bin/ 
# Fri, 23 Jun 2017 14:52:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 14:52:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 14:52:37 GMT
EXPOSE 2368/tcp
# Fri, 23 Jun 2017 14:52:38 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe38782ba6f17ba90e104826d2017f1fd86b7873f12c4632c9ea52cbcd88e1b`  
		Last Modified: Sat, 24 Jun 2017 15:13:02 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0a1d2307e1b2182bc4238e3223c1b03059a05af2a1ebf73db6d30349e490d1`  
		Last Modified: Sat, 24 Jun 2017 15:13:02 GMT  
		Size: 119.2 KB (119152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d328af0cf3b02f233627fe3215495194d40f1f711b5131a5a8e294711677312`  
		Last Modified: Sat, 24 Jun 2017 15:32:35 GMT  
		Size: 12.6 MB (12572594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c973e3df1e1c910e347cd076a91deeb978c8be9e0ca32d56ef2c80289d1506e8`  
		Last Modified: Sat, 24 Jun 2017 15:32:29 GMT  
		Size: 900.6 KB (900593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fc6d232172a98868d73bb5a6bd57567faf415b790f412077cb6f32aa0bbeaa`  
		Last Modified: Sun, 25 Jun 2017 09:06:18 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0520b515eb5820e94203faef40ef03b8cb7516fc628aa4b76b2a0f59377d7985`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 818.8 KB (818817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b726f9ed6cd83dc600e6b42f5537c8d4f721fea0704cb7a8147e2de1183dacd`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fda82f37b5914f87efbc7256b571c9d9b293a23d47bb17f954fd2d74f22de2e`  
		Last Modified: Sun, 25 Jun 2017 09:06:32 GMT  
		Size: 25.8 MB (25790819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ab1733de1d1aad85a647fbc679dace7e98feb67c8d526a52644bce5438346a`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0546f3f16cad2f4d5629ce7931cde1f27fdd39a056f52292db1364845ea9516`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eb3c84687c34ba65f6e737b5d3e7793047d0524742e2ea5e71695c49333e44`  
		Last Modified: Sun, 25 Jun 2017 09:06:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11.10-alpine`

```console
$ docker pull ghost@sha256:106ead0455c65819d56976ee5d115a12bedc64d881f574957d3ee03452f43f17
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.10-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41103925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:342115a9d68416af9ed96975aa93e1532fb59ee47e3f512edeaa487882288aa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 28 Jun 2017 18:32:44 GMT
ENV NODE_VERSION=4.8.3
# Wed, 28 Jun 2017 18:40:03 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Jun 2017 18:40:04 GMT
ENV YARN_VERSION=0.24.4
# Wed, 28 Jun 2017 18:40:14 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Jun 2017 18:40:15 GMT
CMD ["node"]
# Thu, 29 Jun 2017 02:21:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 29 Jun 2017 02:21:45 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 29 Jun 2017 02:21:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 29 Jun 2017 02:21:47 GMT
WORKDIR /usr/src/ghost
# Thu, 29 Jun 2017 02:21:48 GMT
ENV GHOST_VERSION=0.11.10
# Thu, 29 Jun 2017 02:22:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 29 Jun 2017 02:22:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 29 Jun 2017 02:22:35 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 29 Jun 2017 02:22:36 GMT
VOLUME [/var/lib/ghost]
# Thu, 29 Jun 2017 02:22:37 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 29 Jun 2017 02:22:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:22:39 GMT
EXPOSE 2368/tcp
# Thu, 29 Jun 2017 02:22:40 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ece4a1bcad921e8c542eff85f4f6d92760f2f2c82e14088cf8814efcdd299e`  
		Last Modified: Thu, 29 Jun 2017 22:19:04 GMT  
		Size: 10.7 MB (10688815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30c19b1fe749f1a43c80f221ef6c9e8636bf3548b1ccc610c960908f73fb801`  
		Last Modified: Thu, 29 Jun 2017 22:19:00 GMT  
		Size: 907.9 KB (907937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a57c03b5b4c461ceb49f96d19f0f5c9abeec454456f90e055b2e7f499caee73`  
		Last Modified: Fri, 30 Jun 2017 16:10:24 GMT  
		Size: 8.3 KB (8322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203fe89245772ae9afc9f443387b936f8ae5b0788f51460cbd8c9b20b5947e9b`  
		Last Modified: Fri, 30 Jun 2017 16:10:26 GMT  
		Size: 1.3 MB (1340415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6dd5dba2e3149eb21872e2ec5725d616ddfc54250df6e60dc04613034a6c90`  
		Last Modified: Fri, 30 Jun 2017 16:10:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ad44a9085eb11061e78215a8bad8f06c8fb2bfb8d063ae94a91a4c933c1b90`  
		Last Modified: Fri, 30 Jun 2017 16:10:43 GMT  
		Size: 25.8 MB (25772488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf956b074212184c2cc2603b0145863e55b8b06019615afd8fe526e94f327cb`  
		Last Modified: Fri, 30 Jun 2017 16:10:25 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801af31cd2e7d0c46f7b5c8e8053d78b41771da27a0eab559343e9d43259b7c2`  
		Last Modified: Fri, 30 Jun 2017 16:10:24 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11-alpine`

```console
$ docker pull ghost@sha256:106ead0455c65819d56976ee5d115a12bedc64d881f574957d3ee03452f43f17
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41103925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:342115a9d68416af9ed96975aa93e1532fb59ee47e3f512edeaa487882288aa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 28 Jun 2017 18:32:44 GMT
ENV NODE_VERSION=4.8.3
# Wed, 28 Jun 2017 18:40:03 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Jun 2017 18:40:04 GMT
ENV YARN_VERSION=0.24.4
# Wed, 28 Jun 2017 18:40:14 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Jun 2017 18:40:15 GMT
CMD ["node"]
# Thu, 29 Jun 2017 02:21:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 29 Jun 2017 02:21:45 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 29 Jun 2017 02:21:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 29 Jun 2017 02:21:47 GMT
WORKDIR /usr/src/ghost
# Thu, 29 Jun 2017 02:21:48 GMT
ENV GHOST_VERSION=0.11.10
# Thu, 29 Jun 2017 02:22:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 29 Jun 2017 02:22:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 29 Jun 2017 02:22:35 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 29 Jun 2017 02:22:36 GMT
VOLUME [/var/lib/ghost]
# Thu, 29 Jun 2017 02:22:37 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 29 Jun 2017 02:22:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:22:39 GMT
EXPOSE 2368/tcp
# Thu, 29 Jun 2017 02:22:40 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ece4a1bcad921e8c542eff85f4f6d92760f2f2c82e14088cf8814efcdd299e`  
		Last Modified: Thu, 29 Jun 2017 22:19:04 GMT  
		Size: 10.7 MB (10688815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30c19b1fe749f1a43c80f221ef6c9e8636bf3548b1ccc610c960908f73fb801`  
		Last Modified: Thu, 29 Jun 2017 22:19:00 GMT  
		Size: 907.9 KB (907937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a57c03b5b4c461ceb49f96d19f0f5c9abeec454456f90e055b2e7f499caee73`  
		Last Modified: Fri, 30 Jun 2017 16:10:24 GMT  
		Size: 8.3 KB (8322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203fe89245772ae9afc9f443387b936f8ae5b0788f51460cbd8c9b20b5947e9b`  
		Last Modified: Fri, 30 Jun 2017 16:10:26 GMT  
		Size: 1.3 MB (1340415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6dd5dba2e3149eb21872e2ec5725d616ddfc54250df6e60dc04613034a6c90`  
		Last Modified: Fri, 30 Jun 2017 16:10:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ad44a9085eb11061e78215a8bad8f06c8fb2bfb8d063ae94a91a4c933c1b90`  
		Last Modified: Fri, 30 Jun 2017 16:10:43 GMT  
		Size: 25.8 MB (25772488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf956b074212184c2cc2603b0145863e55b8b06019615afd8fe526e94f327cb`  
		Last Modified: Fri, 30 Jun 2017 16:10:25 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801af31cd2e7d0c46f7b5c8e8053d78b41771da27a0eab559343e9d43259b7c2`  
		Last Modified: Fri, 30 Jun 2017 16:10:24 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0-alpine`

```console
$ docker pull ghost@sha256:106ead0455c65819d56976ee5d115a12bedc64d881f574957d3ee03452f43f17
```

-	Platforms:
	-	linux; amd64

### `ghost:0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41103925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:342115a9d68416af9ed96975aa93e1532fb59ee47e3f512edeaa487882288aa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 28 Jun 2017 18:32:44 GMT
ENV NODE_VERSION=4.8.3
# Wed, 28 Jun 2017 18:40:03 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Jun 2017 18:40:04 GMT
ENV YARN_VERSION=0.24.4
# Wed, 28 Jun 2017 18:40:14 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Jun 2017 18:40:15 GMT
CMD ["node"]
# Thu, 29 Jun 2017 02:21:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 29 Jun 2017 02:21:45 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 29 Jun 2017 02:21:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 29 Jun 2017 02:21:47 GMT
WORKDIR /usr/src/ghost
# Thu, 29 Jun 2017 02:21:48 GMT
ENV GHOST_VERSION=0.11.10
# Thu, 29 Jun 2017 02:22:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 29 Jun 2017 02:22:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 29 Jun 2017 02:22:35 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 29 Jun 2017 02:22:36 GMT
VOLUME [/var/lib/ghost]
# Thu, 29 Jun 2017 02:22:37 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 29 Jun 2017 02:22:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:22:39 GMT
EXPOSE 2368/tcp
# Thu, 29 Jun 2017 02:22:40 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ece4a1bcad921e8c542eff85f4f6d92760f2f2c82e14088cf8814efcdd299e`  
		Last Modified: Thu, 29 Jun 2017 22:19:04 GMT  
		Size: 10.7 MB (10688815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30c19b1fe749f1a43c80f221ef6c9e8636bf3548b1ccc610c960908f73fb801`  
		Last Modified: Thu, 29 Jun 2017 22:19:00 GMT  
		Size: 907.9 KB (907937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a57c03b5b4c461ceb49f96d19f0f5c9abeec454456f90e055b2e7f499caee73`  
		Last Modified: Fri, 30 Jun 2017 16:10:24 GMT  
		Size: 8.3 KB (8322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203fe89245772ae9afc9f443387b936f8ae5b0788f51460cbd8c9b20b5947e9b`  
		Last Modified: Fri, 30 Jun 2017 16:10:26 GMT  
		Size: 1.3 MB (1340415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6dd5dba2e3149eb21872e2ec5725d616ddfc54250df6e60dc04613034a6c90`  
		Last Modified: Fri, 30 Jun 2017 16:10:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ad44a9085eb11061e78215a8bad8f06c8fb2bfb8d063ae94a91a4c933c1b90`  
		Last Modified: Fri, 30 Jun 2017 16:10:43 GMT  
		Size: 25.8 MB (25772488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf956b074212184c2cc2603b0145863e55b8b06019615afd8fe526e94f327cb`  
		Last Modified: Fri, 30 Jun 2017 16:10:25 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801af31cd2e7d0c46f7b5c8e8053d78b41771da27a0eab559343e9d43259b7c2`  
		Last Modified: Fri, 30 Jun 2017 16:10:24 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:alpine`

```console
$ docker pull ghost@sha256:106ead0455c65819d56976ee5d115a12bedc64d881f574957d3ee03452f43f17
```

-	Platforms:
	-	linux; amd64

### `ghost:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.1 MB (41103925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:342115a9d68416af9ed96975aa93e1532fb59ee47e3f512edeaa487882288aa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 18:32:43 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 28 Jun 2017 18:32:44 GMT
ENV NODE_VERSION=4.8.3
# Wed, 28 Jun 2017 18:40:03 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 28 Jun 2017 18:40:04 GMT
ENV YARN_VERSION=0.24.4
# Wed, 28 Jun 2017 18:40:14 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys "$key" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$key" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ;   done   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Wed, 28 Jun 2017 18:40:15 GMT
CMD ["node"]
# Thu, 29 Jun 2017 02:21:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 29 Jun 2017 02:21:45 GMT
RUN apk add --no-cache 		bash 		tar
# Thu, 29 Jun 2017 02:21:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 29 Jun 2017 02:21:47 GMT
WORKDIR /usr/src/ghost
# Thu, 29 Jun 2017 02:21:48 GMT
ENV GHOST_VERSION=0.11.10
# Thu, 29 Jun 2017 02:22:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		make 		openssl 		python 		unzip 	; 		wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip"; 	unzip ghost.zip; 		npm install --production; 		apk del .build-deps; 		rm ghost.zip; 	npm cache clean; 	rm -rf /tmp/npm*
# Thu, 29 Jun 2017 02:22:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 29 Jun 2017 02:22:35 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R node:node "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Thu, 29 Jun 2017 02:22:36 GMT
VOLUME [/var/lib/ghost]
# Thu, 29 Jun 2017 02:22:37 GMT
COPY file:2cb0a64ef22301242537372657c5d88304b43153f351a7f2d0d61e05c3dfb29a in /usr/local/bin/ 
# Thu, 29 Jun 2017 02:22:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:22:39 GMT
EXPOSE 2368/tcp
# Thu, 29 Jun 2017 02:22:40 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ece4a1bcad921e8c542eff85f4f6d92760f2f2c82e14088cf8814efcdd299e`  
		Last Modified: Thu, 29 Jun 2017 22:19:04 GMT  
		Size: 10.7 MB (10688815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30c19b1fe749f1a43c80f221ef6c9e8636bf3548b1ccc610c960908f73fb801`  
		Last Modified: Thu, 29 Jun 2017 22:19:00 GMT  
		Size: 907.9 KB (907937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a57c03b5b4c461ceb49f96d19f0f5c9abeec454456f90e055b2e7f499caee73`  
		Last Modified: Fri, 30 Jun 2017 16:10:24 GMT  
		Size: 8.3 KB (8322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203fe89245772ae9afc9f443387b936f8ae5b0788f51460cbd8c9b20b5947e9b`  
		Last Modified: Fri, 30 Jun 2017 16:10:26 GMT  
		Size: 1.3 MB (1340415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6dd5dba2e3149eb21872e2ec5725d616ddfc54250df6e60dc04613034a6c90`  
		Last Modified: Fri, 30 Jun 2017 16:10:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ad44a9085eb11061e78215a8bad8f06c8fb2bfb8d063ae94a91a4c933c1b90`  
		Last Modified: Fri, 30 Jun 2017 16:10:43 GMT  
		Size: 25.8 MB (25772488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf956b074212184c2cc2603b0145863e55b8b06019615afd8fe526e94f327cb`  
		Last Modified: Fri, 30 Jun 2017 16:10:25 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801af31cd2e7d0c46f7b5c8e8053d78b41771da27a0eab559343e9d43259b7c2`  
		Last Modified: Fri, 30 Jun 2017 16:10:24 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
