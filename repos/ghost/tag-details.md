<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0.11.3`](#ghost0113)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0.11.3`

```console
$ docker pull ghost@sha256:288a2d7376e921f78a9ed7abf3bfd97e79f6ba671c6dab31b96122355f4d7bf4
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126748944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd5d1de8ed143640fcc1156687044c0faef49b8a977c0d8f3a7d294f79e3446`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Nov 2016 19:19:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Nov 2016 19:19:27 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 23 Nov 2016 19:19:27 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 07 Dec 2016 23:20:54 GMT
ENV NODE_VERSION=4.7.0
# Wed, 07 Dec 2016 23:21:04 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 07 Dec 2016 23:21:05 GMT
CMD ["node"]
# Wed, 07 Dec 2016 23:45:39 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 07 Dec 2016 23:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:45:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:45:54 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 07 Dec 2016 23:45:54 GMT
WORKDIR /usr/src/ghost
# Wed, 07 Dec 2016 23:45:55 GMT
ENV GHOST_VERSION=0.11.3
# Thu, 08 Dec 2016 20:13:14 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Thu, 08 Dec 2016 20:13:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 08 Dec 2016 20:13:15 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Thu, 08 Dec 2016 20:13:15 GMT
VOLUME [/var/lib/ghost]
# Thu, 08 Dec 2016 20:13:16 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Thu, 08 Dec 2016 20:13:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2016 20:13:17 GMT
EXPOSE 2368/tcp
# Thu, 08 Dec 2016 20:13:17 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9504bce48c013a648681c7f1255af8ee7ded2363fa98b54b6a4a495d1a6b71`  
		Last Modified: Wed, 23 Nov 2016 19:45:54 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc0ec954a4f4efa5ac9a642053a9821981049da792378ee5cacb854d6968fc`  
		Last Modified: Wed, 23 Nov 2016 19:45:53 GMT  
		Size: 97.2 KB (97213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7501c61ea84b3838e9a4b3e7a5308c4bc46ece2d539dfc59e85d303b2b1fc1`  
		Last Modified: Wed, 07 Dec 2016 23:36:50 GMT  
		Size: 12.3 MB (12261548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1aa9c181327df5d1b58286f84a1cd662057053748c00056aa481bf2ad05bdf`  
		Last Modified: Thu, 08 Dec 2016 20:13:33 GMT  
		Size: 4.4 KB (4388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12659eeea4084d7ee895f3b8c0eb7ca85f48936169c5e5a0e05db3d78a280caa`  
		Last Modified: Thu, 08 Dec 2016 20:13:31 GMT  
		Size: 807.9 KB (807937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798822eff759365e7c334d9221bf5399a4ac7ba53ea92ef69d8357ac6ce04465`  
		Last Modified: Thu, 08 Dec 2016 20:13:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4bdafda9ac74a4595b1249ff0be17b6cfd0ab3bc8a3857146acb35e788104c`  
		Last Modified: Thu, 08 Dec 2016 20:13:41 GMT  
		Size: 43.7 MB (43687307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468d947294db137f350f107b420ee85173668b32182acf0b47616f3b0f7985b2`  
		Last Modified: Thu, 08 Dec 2016 20:13:31 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1253130aa29dfb279ecd55f835c4bdc259ddd9275c09b783f8906f4cd4040046`  
		Last Modified: Thu, 08 Dec 2016 20:13:30 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:288a2d7376e921f78a9ed7abf3bfd97e79f6ba671c6dab31b96122355f4d7bf4
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126748944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd5d1de8ed143640fcc1156687044c0faef49b8a977c0d8f3a7d294f79e3446`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Nov 2016 19:19:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Nov 2016 19:19:27 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 23 Nov 2016 19:19:27 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 07 Dec 2016 23:20:54 GMT
ENV NODE_VERSION=4.7.0
# Wed, 07 Dec 2016 23:21:04 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 07 Dec 2016 23:21:05 GMT
CMD ["node"]
# Wed, 07 Dec 2016 23:45:39 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 07 Dec 2016 23:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:45:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:45:54 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 07 Dec 2016 23:45:54 GMT
WORKDIR /usr/src/ghost
# Wed, 07 Dec 2016 23:45:55 GMT
ENV GHOST_VERSION=0.11.3
# Thu, 08 Dec 2016 20:13:14 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Thu, 08 Dec 2016 20:13:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 08 Dec 2016 20:13:15 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Thu, 08 Dec 2016 20:13:15 GMT
VOLUME [/var/lib/ghost]
# Thu, 08 Dec 2016 20:13:16 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Thu, 08 Dec 2016 20:13:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2016 20:13:17 GMT
EXPOSE 2368/tcp
# Thu, 08 Dec 2016 20:13:17 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9504bce48c013a648681c7f1255af8ee7ded2363fa98b54b6a4a495d1a6b71`  
		Last Modified: Wed, 23 Nov 2016 19:45:54 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc0ec954a4f4efa5ac9a642053a9821981049da792378ee5cacb854d6968fc`  
		Last Modified: Wed, 23 Nov 2016 19:45:53 GMT  
		Size: 97.2 KB (97213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7501c61ea84b3838e9a4b3e7a5308c4bc46ece2d539dfc59e85d303b2b1fc1`  
		Last Modified: Wed, 07 Dec 2016 23:36:50 GMT  
		Size: 12.3 MB (12261548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1aa9c181327df5d1b58286f84a1cd662057053748c00056aa481bf2ad05bdf`  
		Last Modified: Thu, 08 Dec 2016 20:13:33 GMT  
		Size: 4.4 KB (4388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12659eeea4084d7ee895f3b8c0eb7ca85f48936169c5e5a0e05db3d78a280caa`  
		Last Modified: Thu, 08 Dec 2016 20:13:31 GMT  
		Size: 807.9 KB (807937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798822eff759365e7c334d9221bf5399a4ac7ba53ea92ef69d8357ac6ce04465`  
		Last Modified: Thu, 08 Dec 2016 20:13:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4bdafda9ac74a4595b1249ff0be17b6cfd0ab3bc8a3857146acb35e788104c`  
		Last Modified: Thu, 08 Dec 2016 20:13:41 GMT  
		Size: 43.7 MB (43687307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468d947294db137f350f107b420ee85173668b32182acf0b47616f3b0f7985b2`  
		Last Modified: Thu, 08 Dec 2016 20:13:31 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1253130aa29dfb279ecd55f835c4bdc259ddd9275c09b783f8906f4cd4040046`  
		Last Modified: Thu, 08 Dec 2016 20:13:30 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:288a2d7376e921f78a9ed7abf3bfd97e79f6ba671c6dab31b96122355f4d7bf4
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126748944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd5d1de8ed143640fcc1156687044c0faef49b8a977c0d8f3a7d294f79e3446`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Nov 2016 19:19:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Nov 2016 19:19:27 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 23 Nov 2016 19:19:27 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 07 Dec 2016 23:20:54 GMT
ENV NODE_VERSION=4.7.0
# Wed, 07 Dec 2016 23:21:04 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 07 Dec 2016 23:21:05 GMT
CMD ["node"]
# Wed, 07 Dec 2016 23:45:39 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 07 Dec 2016 23:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:45:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:45:54 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 07 Dec 2016 23:45:54 GMT
WORKDIR /usr/src/ghost
# Wed, 07 Dec 2016 23:45:55 GMT
ENV GHOST_VERSION=0.11.3
# Thu, 08 Dec 2016 20:13:14 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Thu, 08 Dec 2016 20:13:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 08 Dec 2016 20:13:15 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Thu, 08 Dec 2016 20:13:15 GMT
VOLUME [/var/lib/ghost]
# Thu, 08 Dec 2016 20:13:16 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Thu, 08 Dec 2016 20:13:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2016 20:13:17 GMT
EXPOSE 2368/tcp
# Thu, 08 Dec 2016 20:13:17 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9504bce48c013a648681c7f1255af8ee7ded2363fa98b54b6a4a495d1a6b71`  
		Last Modified: Wed, 23 Nov 2016 19:45:54 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc0ec954a4f4efa5ac9a642053a9821981049da792378ee5cacb854d6968fc`  
		Last Modified: Wed, 23 Nov 2016 19:45:53 GMT  
		Size: 97.2 KB (97213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7501c61ea84b3838e9a4b3e7a5308c4bc46ece2d539dfc59e85d303b2b1fc1`  
		Last Modified: Wed, 07 Dec 2016 23:36:50 GMT  
		Size: 12.3 MB (12261548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1aa9c181327df5d1b58286f84a1cd662057053748c00056aa481bf2ad05bdf`  
		Last Modified: Thu, 08 Dec 2016 20:13:33 GMT  
		Size: 4.4 KB (4388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12659eeea4084d7ee895f3b8c0eb7ca85f48936169c5e5a0e05db3d78a280caa`  
		Last Modified: Thu, 08 Dec 2016 20:13:31 GMT  
		Size: 807.9 KB (807937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798822eff759365e7c334d9221bf5399a4ac7ba53ea92ef69d8357ac6ce04465`  
		Last Modified: Thu, 08 Dec 2016 20:13:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4bdafda9ac74a4595b1249ff0be17b6cfd0ab3bc8a3857146acb35e788104c`  
		Last Modified: Thu, 08 Dec 2016 20:13:41 GMT  
		Size: 43.7 MB (43687307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468d947294db137f350f107b420ee85173668b32182acf0b47616f3b0f7985b2`  
		Last Modified: Thu, 08 Dec 2016 20:13:31 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1253130aa29dfb279ecd55f835c4bdc259ddd9275c09b783f8906f4cd4040046`  
		Last Modified: Thu, 08 Dec 2016 20:13:30 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:288a2d7376e921f78a9ed7abf3bfd97e79f6ba671c6dab31b96122355f4d7bf4
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126748944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd5d1de8ed143640fcc1156687044c0faef49b8a977c0d8f3a7d294f79e3446`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Nov 2016 19:19:21 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Wed, 23 Nov 2016 19:19:27 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Wed, 23 Nov 2016 19:19:27 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 07 Dec 2016 23:20:54 GMT
ENV NODE_VERSION=4.7.0
# Wed, 07 Dec 2016 23:21:04 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 07 Dec 2016 23:21:05 GMT
CMD ["node"]
# Wed, 07 Dec 2016 23:45:39 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 07 Dec 2016 23:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 07 Dec 2016 23:45:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Dec 2016 23:45:54 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 07 Dec 2016 23:45:54 GMT
WORKDIR /usr/src/ghost
# Wed, 07 Dec 2016 23:45:55 GMT
ENV GHOST_VERSION=0.11.3
# Thu, 08 Dec 2016 20:13:14 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Thu, 08 Dec 2016 20:13:14 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 08 Dec 2016 20:13:15 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Thu, 08 Dec 2016 20:13:15 GMT
VOLUME [/var/lib/ghost]
# Thu, 08 Dec 2016 20:13:16 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Thu, 08 Dec 2016 20:13:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Dec 2016 20:13:17 GMT
EXPOSE 2368/tcp
# Thu, 08 Dec 2016 20:13:17 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9504bce48c013a648681c7f1255af8ee7ded2363fa98b54b6a4a495d1a6b71`  
		Last Modified: Wed, 23 Nov 2016 19:45:54 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdc0ec954a4f4efa5ac9a642053a9821981049da792378ee5cacb854d6968fc`  
		Last Modified: Wed, 23 Nov 2016 19:45:53 GMT  
		Size: 97.2 KB (97213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7501c61ea84b3838e9a4b3e7a5308c4bc46ece2d539dfc59e85d303b2b1fc1`  
		Last Modified: Wed, 07 Dec 2016 23:36:50 GMT  
		Size: 12.3 MB (12261548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1aa9c181327df5d1b58286f84a1cd662057053748c00056aa481bf2ad05bdf`  
		Last Modified: Thu, 08 Dec 2016 20:13:33 GMT  
		Size: 4.4 KB (4388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12659eeea4084d7ee895f3b8c0eb7ca85f48936169c5e5a0e05db3d78a280caa`  
		Last Modified: Thu, 08 Dec 2016 20:13:31 GMT  
		Size: 807.9 KB (807937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798822eff759365e7c334d9221bf5399a4ac7ba53ea92ef69d8357ac6ce04465`  
		Last Modified: Thu, 08 Dec 2016 20:13:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4bdafda9ac74a4595b1249ff0be17b6cfd0ab3bc8a3857146acb35e788104c`  
		Last Modified: Thu, 08 Dec 2016 20:13:41 GMT  
		Size: 43.7 MB (43687307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468d947294db137f350f107b420ee85173668b32182acf0b47616f3b0f7985b2`  
		Last Modified: Thu, 08 Dec 2016 20:13:31 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1253130aa29dfb279ecd55f835c4bdc259ddd9275c09b783f8906f4cd4040046`  
		Last Modified: Thu, 08 Dec 2016 20:13:30 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
