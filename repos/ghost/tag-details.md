<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0.11.4`](#ghost0114)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0.11.4`

```console
$ docker pull ghost@sha256:5ad8243aaa4b8bced8c278cfb9600d07100a87a922e038cda43c1365ea2999fb
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.1 MB (110110640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:066a22d980f483c499a2a6a03eaec1bcaec7bf3a41154f82f35dcce8c324a1bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:33:23 GMT
ENV NODE_VERSION=4.7.3
# Wed, 01 Feb 2017 17:33:32 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:33:32 GMT
CMD ["node"]
# Wed, 01 Feb 2017 17:59:11 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 01 Feb 2017 17:59:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Feb 2017 17:59:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Feb 2017 17:59:16 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 01 Feb 2017 17:59:16 GMT
WORKDIR /usr/src/ghost
# Wed, 01 Feb 2017 17:59:17 GMT
ENV GHOST_VERSION=0.11.4
# Wed, 01 Feb 2017 18:00:08 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Wed, 01 Feb 2017 18:00:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 01 Feb 2017 18:00:10 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 01 Feb 2017 18:00:10 GMT
VOLUME [/var/lib/ghost]
# Wed, 01 Feb 2017 18:00:11 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /entrypoint.sh 
# Wed, 01 Feb 2017 18:00:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Feb 2017 18:00:11 GMT
EXPOSE 2368/tcp
# Wed, 01 Feb 2017 18:00:12 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fff1a933f493b1ab353ba1f52e973e29b9e20629350edd628e309b9adee3a09`  
		Last Modified: Wed, 01 Feb 2017 17:48:48 GMT  
		Size: 12.3 MB (12264659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a738a34f384a119a94d024d2374d2d94154e2e05b5070181ddc9b0eafd1a92b`  
		Last Modified: Wed, 01 Feb 2017 18:00:31 GMT  
		Size: 4.4 KB (4383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75efeaa4346f582e02e4cf07dbdc2afd0640c231ab4f90ae77288944084460ce`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 807.9 KB (807938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608995a13315dae93ece9b6d254bcec13f2147604de012ec58d94a8882a3bbd4`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626b9e773ef69055233934b4ee020b5bb1cac213ca7b102efb489605ec7126ad`  
		Last Modified: Wed, 01 Feb 2017 18:00:38 GMT  
		Size: 27.0 MB (27034587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e967ea17c08c17dca55d89aa2e6430fce64b5a63cf311e9d8bea63195fb3dbe`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9149317fa52fba640dc0a43fea35169bae51784623aa6dfaf49863601372ed69`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:5ad8243aaa4b8bced8c278cfb9600d07100a87a922e038cda43c1365ea2999fb
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.1 MB (110110640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:066a22d980f483c499a2a6a03eaec1bcaec7bf3a41154f82f35dcce8c324a1bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:33:23 GMT
ENV NODE_VERSION=4.7.3
# Wed, 01 Feb 2017 17:33:32 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:33:32 GMT
CMD ["node"]
# Wed, 01 Feb 2017 17:59:11 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 01 Feb 2017 17:59:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Feb 2017 17:59:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Feb 2017 17:59:16 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 01 Feb 2017 17:59:16 GMT
WORKDIR /usr/src/ghost
# Wed, 01 Feb 2017 17:59:17 GMT
ENV GHOST_VERSION=0.11.4
# Wed, 01 Feb 2017 18:00:08 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Wed, 01 Feb 2017 18:00:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 01 Feb 2017 18:00:10 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 01 Feb 2017 18:00:10 GMT
VOLUME [/var/lib/ghost]
# Wed, 01 Feb 2017 18:00:11 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /entrypoint.sh 
# Wed, 01 Feb 2017 18:00:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Feb 2017 18:00:11 GMT
EXPOSE 2368/tcp
# Wed, 01 Feb 2017 18:00:12 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fff1a933f493b1ab353ba1f52e973e29b9e20629350edd628e309b9adee3a09`  
		Last Modified: Wed, 01 Feb 2017 17:48:48 GMT  
		Size: 12.3 MB (12264659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a738a34f384a119a94d024d2374d2d94154e2e05b5070181ddc9b0eafd1a92b`  
		Last Modified: Wed, 01 Feb 2017 18:00:31 GMT  
		Size: 4.4 KB (4383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75efeaa4346f582e02e4cf07dbdc2afd0640c231ab4f90ae77288944084460ce`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 807.9 KB (807938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608995a13315dae93ece9b6d254bcec13f2147604de012ec58d94a8882a3bbd4`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626b9e773ef69055233934b4ee020b5bb1cac213ca7b102efb489605ec7126ad`  
		Last Modified: Wed, 01 Feb 2017 18:00:38 GMT  
		Size: 27.0 MB (27034587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e967ea17c08c17dca55d89aa2e6430fce64b5a63cf311e9d8bea63195fb3dbe`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9149317fa52fba640dc0a43fea35169bae51784623aa6dfaf49863601372ed69`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:5ad8243aaa4b8bced8c278cfb9600d07100a87a922e038cda43c1365ea2999fb
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.1 MB (110110640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:066a22d980f483c499a2a6a03eaec1bcaec7bf3a41154f82f35dcce8c324a1bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:33:23 GMT
ENV NODE_VERSION=4.7.3
# Wed, 01 Feb 2017 17:33:32 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:33:32 GMT
CMD ["node"]
# Wed, 01 Feb 2017 17:59:11 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 01 Feb 2017 17:59:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Feb 2017 17:59:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Feb 2017 17:59:16 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 01 Feb 2017 17:59:16 GMT
WORKDIR /usr/src/ghost
# Wed, 01 Feb 2017 17:59:17 GMT
ENV GHOST_VERSION=0.11.4
# Wed, 01 Feb 2017 18:00:08 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Wed, 01 Feb 2017 18:00:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 01 Feb 2017 18:00:10 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 01 Feb 2017 18:00:10 GMT
VOLUME [/var/lib/ghost]
# Wed, 01 Feb 2017 18:00:11 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /entrypoint.sh 
# Wed, 01 Feb 2017 18:00:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Feb 2017 18:00:11 GMT
EXPOSE 2368/tcp
# Wed, 01 Feb 2017 18:00:12 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fff1a933f493b1ab353ba1f52e973e29b9e20629350edd628e309b9adee3a09`  
		Last Modified: Wed, 01 Feb 2017 17:48:48 GMT  
		Size: 12.3 MB (12264659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a738a34f384a119a94d024d2374d2d94154e2e05b5070181ddc9b0eafd1a92b`  
		Last Modified: Wed, 01 Feb 2017 18:00:31 GMT  
		Size: 4.4 KB (4383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75efeaa4346f582e02e4cf07dbdc2afd0640c231ab4f90ae77288944084460ce`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 807.9 KB (807938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608995a13315dae93ece9b6d254bcec13f2147604de012ec58d94a8882a3bbd4`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626b9e773ef69055233934b4ee020b5bb1cac213ca7b102efb489605ec7126ad`  
		Last Modified: Wed, 01 Feb 2017 18:00:38 GMT  
		Size: 27.0 MB (27034587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e967ea17c08c17dca55d89aa2e6430fce64b5a63cf311e9d8bea63195fb3dbe`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9149317fa52fba640dc0a43fea35169bae51784623aa6dfaf49863601372ed69`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:5ad8243aaa4b8bced8c278cfb9600d07100a87a922e038cda43c1365ea2999fb
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.1 MB (110110640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:066a22d980f483c499a2a6a03eaec1bcaec7bf3a41154f82f35dcce8c324a1bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:40:18 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 17 Jan 2017 18:40:21 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 17 Jan 2017 18:40:22 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 01 Feb 2017 17:33:23 GMT
ENV NODE_VERSION=4.7.3
# Wed, 01 Feb 2017 17:33:32 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Feb 2017 17:33:32 GMT
CMD ["node"]
# Wed, 01 Feb 2017 17:59:11 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 01 Feb 2017 17:59:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Feb 2017 17:59:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Feb 2017 17:59:16 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 01 Feb 2017 17:59:16 GMT
WORKDIR /usr/src/ghost
# Wed, 01 Feb 2017 17:59:17 GMT
ENV GHOST_VERSION=0.11.4
# Wed, 01 Feb 2017 18:00:08 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://github.com/TryGhost/Ghost/releases/download/${GHOST_VERSION}/Ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Wed, 01 Feb 2017 18:00:09 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 01 Feb 2017 18:00:10 GMT
RUN mkdir -p "$GHOST_CONTENT" 	&& chown -R user:user "$GHOST_CONTENT" 	&& ln -s "$GHOST_CONTENT/config.js" "$GHOST_SOURCE/config.js"
# Wed, 01 Feb 2017 18:00:10 GMT
VOLUME [/var/lib/ghost]
# Wed, 01 Feb 2017 18:00:11 GMT
COPY file:9cace68ea99d0317c469464495249094669747893a60585016756f169051a609 in /entrypoint.sh 
# Wed, 01 Feb 2017 18:00:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Feb 2017 18:00:11 GMT
EXPOSE 2368/tcp
# Wed, 01 Feb 2017 18:00:12 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b82ee2770671a783ceea13aa8e9aa8afa8a06918b59e3e3f19d78c962366cc`  
		Last Modified: Wed, 18 Jan 2017 05:32:21 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16843b1a499ad849e8b50ec678d73ae4acd46758b9b3beb7a68dfc553e5d6a5`  
		Last Modified: Wed, 18 Jan 2017 05:32:22 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fff1a933f493b1ab353ba1f52e973e29b9e20629350edd628e309b9adee3a09`  
		Last Modified: Wed, 01 Feb 2017 17:48:48 GMT  
		Size: 12.3 MB (12264659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a738a34f384a119a94d024d2374d2d94154e2e05b5070181ddc9b0eafd1a92b`  
		Last Modified: Wed, 01 Feb 2017 18:00:31 GMT  
		Size: 4.4 KB (4383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75efeaa4346f582e02e4cf07dbdc2afd0640c231ab4f90ae77288944084460ce`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 807.9 KB (807938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608995a13315dae93ece9b6d254bcec13f2147604de012ec58d94a8882a3bbd4`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626b9e773ef69055233934b4ee020b5bb1cac213ca7b102efb489605ec7126ad`  
		Last Modified: Wed, 01 Feb 2017 18:00:38 GMT  
		Size: 27.0 MB (27034587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e967ea17c08c17dca55d89aa2e6430fce64b5a63cf311e9d8bea63195fb3dbe`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9149317fa52fba640dc0a43fea35169bae51784623aa6dfaf49863601372ed69`  
		Last Modified: Wed, 01 Feb 2017 18:00:29 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
