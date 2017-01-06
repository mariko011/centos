<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0.11.3`](#ghost0113)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0.11.3`

```console
$ docker pull ghost@sha256:e41c5e69bd01a1fd787b9e75eb62c20ae13783c490f69bb064a33d993a11e46c
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126757537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f4cb73c7546eb78886fe222ce96054ffa4a655fbf4f79a856199cfd0787916d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:02:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Dec 2016 15:28:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Dec 2016 15:28:28 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 06 Jan 2017 21:17:42 GMT
ENV NODE_VERSION=4.7.2
# Fri, 06 Jan 2017 21:17:52 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 06 Jan 2017 21:17:52 GMT
CMD ["node"]
# Fri, 06 Jan 2017 22:08:06 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 06 Jan 2017 22:08:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 22:08:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 22:08:11 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 06 Jan 2017 22:08:11 GMT
WORKDIR /usr/src/ghost
# Fri, 06 Jan 2017 22:08:12 GMT
ENV GHOST_VERSION=0.11.3
# Fri, 06 Jan 2017 22:09:02 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Fri, 06 Jan 2017 22:09:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 06 Jan 2017 22:09:04 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 06 Jan 2017 22:09:04 GMT
VOLUME [/var/lib/ghost]
# Fri, 06 Jan 2017 22:09:05 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /entrypoint.sh 
# Fri, 06 Jan 2017 22:09:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jan 2017 22:09:06 GMT
EXPOSE 2368/tcp
# Fri, 06 Jan 2017 22:09:06 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a469a332cde81108f34a34ec0a910eaca6b83667e9048229a8ef71417c6e69d3`  
		Last Modified: Wed, 14 Dec 2016 18:55:09 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5227756fd9b1cbcbbcd730a278784652d44640734d0a44b69c8da663756df34`  
		Last Modified: Wed, 14 Dec 2016 18:55:05 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da416001f492a68a092ca1670905ebabbe859fc007f87bcc1b59c603d574756`  
		Last Modified: Fri, 06 Jan 2017 21:31:12 GMT  
		Size: 12.3 MB (12262472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cd0f7427cfdc0c2cc7630b406cedeeed8d32dd330dd41e8a2cdbe69a4116ca`  
		Last Modified: Fri, 06 Jan 2017 22:09:25 GMT  
		Size: 4.4 KB (4383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e18cbb2a31b37d1ec3cfbe07dae116291171d4a9f5debc6baafee7a67c5e72`  
		Last Modified: Fri, 06 Jan 2017 22:09:23 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbc22d1bd03aa30253b19f80566b74d81b62549c9f1465157986fe460f266c0`  
		Last Modified: Fri, 06 Jan 2017 22:09:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6ffa0c6eee8f0aa80e6b71a121d5bbf9ee8e84ac238170e6038aca1ed8411b`  
		Last Modified: Fri, 06 Jan 2017 22:09:32 GMT  
		Size: 43.7 MB (43687215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb39c70bda11fff6f548078e7cf8c1c77f0f3aa7c6896cd20e87b6db703beef`  
		Last Modified: Fri, 06 Jan 2017 22:09:22 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b492e34dddbd2214e8bf7bd7a050efd304f7168d66e5318d4c973b48c52db688`  
		Last Modified: Fri, 06 Jan 2017 22:09:24 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:e41c5e69bd01a1fd787b9e75eb62c20ae13783c490f69bb064a33d993a11e46c
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126757537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f4cb73c7546eb78886fe222ce96054ffa4a655fbf4f79a856199cfd0787916d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:02:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Dec 2016 15:28:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Dec 2016 15:28:28 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 06 Jan 2017 21:17:42 GMT
ENV NODE_VERSION=4.7.2
# Fri, 06 Jan 2017 21:17:52 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 06 Jan 2017 21:17:52 GMT
CMD ["node"]
# Fri, 06 Jan 2017 22:08:06 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 06 Jan 2017 22:08:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 22:08:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 22:08:11 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 06 Jan 2017 22:08:11 GMT
WORKDIR /usr/src/ghost
# Fri, 06 Jan 2017 22:08:12 GMT
ENV GHOST_VERSION=0.11.3
# Fri, 06 Jan 2017 22:09:02 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Fri, 06 Jan 2017 22:09:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 06 Jan 2017 22:09:04 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 06 Jan 2017 22:09:04 GMT
VOLUME [/var/lib/ghost]
# Fri, 06 Jan 2017 22:09:05 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /entrypoint.sh 
# Fri, 06 Jan 2017 22:09:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jan 2017 22:09:06 GMT
EXPOSE 2368/tcp
# Fri, 06 Jan 2017 22:09:06 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a469a332cde81108f34a34ec0a910eaca6b83667e9048229a8ef71417c6e69d3`  
		Last Modified: Wed, 14 Dec 2016 18:55:09 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5227756fd9b1cbcbbcd730a278784652d44640734d0a44b69c8da663756df34`  
		Last Modified: Wed, 14 Dec 2016 18:55:05 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da416001f492a68a092ca1670905ebabbe859fc007f87bcc1b59c603d574756`  
		Last Modified: Fri, 06 Jan 2017 21:31:12 GMT  
		Size: 12.3 MB (12262472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cd0f7427cfdc0c2cc7630b406cedeeed8d32dd330dd41e8a2cdbe69a4116ca`  
		Last Modified: Fri, 06 Jan 2017 22:09:25 GMT  
		Size: 4.4 KB (4383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e18cbb2a31b37d1ec3cfbe07dae116291171d4a9f5debc6baafee7a67c5e72`  
		Last Modified: Fri, 06 Jan 2017 22:09:23 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbc22d1bd03aa30253b19f80566b74d81b62549c9f1465157986fe460f266c0`  
		Last Modified: Fri, 06 Jan 2017 22:09:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6ffa0c6eee8f0aa80e6b71a121d5bbf9ee8e84ac238170e6038aca1ed8411b`  
		Last Modified: Fri, 06 Jan 2017 22:09:32 GMT  
		Size: 43.7 MB (43687215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb39c70bda11fff6f548078e7cf8c1c77f0f3aa7c6896cd20e87b6db703beef`  
		Last Modified: Fri, 06 Jan 2017 22:09:22 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b492e34dddbd2214e8bf7bd7a050efd304f7168d66e5318d4c973b48c52db688`  
		Last Modified: Fri, 06 Jan 2017 22:09:24 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:e41c5e69bd01a1fd787b9e75eb62c20ae13783c490f69bb064a33d993a11e46c
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126757537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f4cb73c7546eb78886fe222ce96054ffa4a655fbf4f79a856199cfd0787916d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:02:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Dec 2016 15:28:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Dec 2016 15:28:28 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 06 Jan 2017 21:17:42 GMT
ENV NODE_VERSION=4.7.2
# Fri, 06 Jan 2017 21:17:52 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 06 Jan 2017 21:17:52 GMT
CMD ["node"]
# Fri, 06 Jan 2017 22:08:06 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 06 Jan 2017 22:08:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 22:08:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 22:08:11 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 06 Jan 2017 22:08:11 GMT
WORKDIR /usr/src/ghost
# Fri, 06 Jan 2017 22:08:12 GMT
ENV GHOST_VERSION=0.11.3
# Fri, 06 Jan 2017 22:09:02 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Fri, 06 Jan 2017 22:09:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 06 Jan 2017 22:09:04 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 06 Jan 2017 22:09:04 GMT
VOLUME [/var/lib/ghost]
# Fri, 06 Jan 2017 22:09:05 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /entrypoint.sh 
# Fri, 06 Jan 2017 22:09:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jan 2017 22:09:06 GMT
EXPOSE 2368/tcp
# Fri, 06 Jan 2017 22:09:06 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a469a332cde81108f34a34ec0a910eaca6b83667e9048229a8ef71417c6e69d3`  
		Last Modified: Wed, 14 Dec 2016 18:55:09 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5227756fd9b1cbcbbcd730a278784652d44640734d0a44b69c8da663756df34`  
		Last Modified: Wed, 14 Dec 2016 18:55:05 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da416001f492a68a092ca1670905ebabbe859fc007f87bcc1b59c603d574756`  
		Last Modified: Fri, 06 Jan 2017 21:31:12 GMT  
		Size: 12.3 MB (12262472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cd0f7427cfdc0c2cc7630b406cedeeed8d32dd330dd41e8a2cdbe69a4116ca`  
		Last Modified: Fri, 06 Jan 2017 22:09:25 GMT  
		Size: 4.4 KB (4383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e18cbb2a31b37d1ec3cfbe07dae116291171d4a9f5debc6baafee7a67c5e72`  
		Last Modified: Fri, 06 Jan 2017 22:09:23 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbc22d1bd03aa30253b19f80566b74d81b62549c9f1465157986fe460f266c0`  
		Last Modified: Fri, 06 Jan 2017 22:09:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6ffa0c6eee8f0aa80e6b71a121d5bbf9ee8e84ac238170e6038aca1ed8411b`  
		Last Modified: Fri, 06 Jan 2017 22:09:32 GMT  
		Size: 43.7 MB (43687215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb39c70bda11fff6f548078e7cf8c1c77f0f3aa7c6896cd20e87b6db703beef`  
		Last Modified: Fri, 06 Jan 2017 22:09:22 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b492e34dddbd2214e8bf7bd7a050efd304f7168d66e5318d4c973b48c52db688`  
		Last Modified: Fri, 06 Jan 2017 22:09:24 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:e41c5e69bd01a1fd787b9e75eb62c20ae13783c490f69bb064a33d993a11e46c
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126757537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f4cb73c7546eb78886fe222ce96054ffa4a655fbf4f79a856199cfd0787916d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:02:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 14 Dec 2016 15:28:28 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 14 Dec 2016 15:28:28 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 06 Jan 2017 21:17:42 GMT
ENV NODE_VERSION=4.7.2
# Fri, 06 Jan 2017 21:17:52 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 06 Jan 2017 21:17:52 GMT
CMD ["node"]
# Fri, 06 Jan 2017 22:08:06 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 06 Jan 2017 22:08:06 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 22:08:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 22:08:11 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Fri, 06 Jan 2017 22:08:11 GMT
WORKDIR /usr/src/ghost
# Fri, 06 Jan 2017 22:08:12 GMT
ENV GHOST_VERSION=0.11.3
# Fri, 06 Jan 2017 22:09:02 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Fri, 06 Jan 2017 22:09:03 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Fri, 06 Jan 2017 22:09:04 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Fri, 06 Jan 2017 22:09:04 GMT
VOLUME [/var/lib/ghost]
# Fri, 06 Jan 2017 22:09:05 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /entrypoint.sh 
# Fri, 06 Jan 2017 22:09:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jan 2017 22:09:06 GMT
EXPOSE 2368/tcp
# Fri, 06 Jan 2017 22:09:06 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a469a332cde81108f34a34ec0a910eaca6b83667e9048229a8ef71417c6e69d3`  
		Last Modified: Wed, 14 Dec 2016 18:55:09 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5227756fd9b1cbcbbcd730a278784652d44640734d0a44b69c8da663756df34`  
		Last Modified: Wed, 14 Dec 2016 18:55:05 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da416001f492a68a092ca1670905ebabbe859fc007f87bcc1b59c603d574756`  
		Last Modified: Fri, 06 Jan 2017 21:31:12 GMT  
		Size: 12.3 MB (12262472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cd0f7427cfdc0c2cc7630b406cedeeed8d32dd330dd41e8a2cdbe69a4116ca`  
		Last Modified: Fri, 06 Jan 2017 22:09:25 GMT  
		Size: 4.4 KB (4383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e18cbb2a31b37d1ec3cfbe07dae116291171d4a9f5debc6baafee7a67c5e72`  
		Last Modified: Fri, 06 Jan 2017 22:09:23 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbc22d1bd03aa30253b19f80566b74d81b62549c9f1465157986fe460f266c0`  
		Last Modified: Fri, 06 Jan 2017 22:09:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6ffa0c6eee8f0aa80e6b71a121d5bbf9ee8e84ac238170e6038aca1ed8411b`  
		Last Modified: Fri, 06 Jan 2017 22:09:32 GMT  
		Size: 43.7 MB (43687215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb39c70bda11fff6f548078e7cf8c1c77f0f3aa7c6896cd20e87b6db703beef`  
		Last Modified: Fri, 06 Jan 2017 22:09:22 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b492e34dddbd2214e8bf7bd7a050efd304f7168d66e5318d4c973b48c52db688`  
		Last Modified: Fri, 06 Jan 2017 22:09:24 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
