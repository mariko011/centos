<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0.11.0`](#ghost0110)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0.11.0`

```console
$ docker pull ghost@sha256:199e389ff890974f5f49905763bccbe0a4b7fda76ffd3cddebcbc3961228b8fa
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133040792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7db0ce7e752ef209a79d6c7b107bca50fabcafb6dd0e9c8b55610443982da8`
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
# Fri, 23 Sep 2016 20:54:54 GMT
ENV NODE_VERSION=4.5.0
# Fri, 23 Sep 2016 20:55:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 23 Sep 2016 20:55:04 GMT
CMD ["node"]
# Sat, 24 Sep 2016 03:41:30 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 24 Sep 2016 03:41:30 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 03:41:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 03:41:37 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 24 Sep 2016 03:41:37 GMT
WORKDIR /usr/src/ghost
# Sat, 24 Sep 2016 03:41:38 GMT
ENV GHOST_VERSION=0.11.0
# Sat, 24 Sep 2016 03:42:37 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Sat, 24 Sep 2016 03:42:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 24 Sep 2016 03:42:38 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Sat, 24 Sep 2016 03:42:39 GMT
VOLUME [/var/lib/ghost]
# Sat, 24 Sep 2016 03:42:39 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Sat, 24 Sep 2016 03:42:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 24 Sep 2016 03:42:40 GMT
EXPOSE 2368/tcp
# Sat, 24 Sep 2016 03:42:41 GMT
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
	-	`sha256:09b76fbb6cf5a1661e37c97b93c568c5a180b0adaa5f222eed83e66b876c6d23`  
		Last Modified: Fri, 23 Sep 2016 20:55:16 GMT  
		Size: 12.3 MB (12272898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c0bb8c82a1ad6eb24147cc08bd116dd1fa68affbb6e2c5fc733afc3d29994b`  
		Last Modified: Sat, 24 Sep 2016 03:42:52 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54138afc5c77a276dd39c7810485b873114448bfd37099d18c4300b3ef4acfbf`  
		Last Modified: Sat, 24 Sep 2016 03:42:50 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392ea22c7c8d38d6b53679573533a52e73520751de327309920e05ecf0ef332c`  
		Last Modified: Sat, 24 Sep 2016 03:42:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12556abb095374ca0394c951eeba784df258760f723eded6d6f80592bd2bf742`  
		Last Modified: Sat, 24 Sep 2016 03:43:02 GMT  
		Size: 50.0 MB (49983439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae12b30437cef3835941bcfe4bb437bd6cd555385a17b9623ef830e4ab2bace5`  
		Last Modified: Sat, 24 Sep 2016 03:42:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71b407af2b73bb1b6d21b90049eaf6874b8d031e43431badc54fc9ca97a3d7c`  
		Last Modified: Sat, 24 Sep 2016 03:42:50 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:199e389ff890974f5f49905763bccbe0a4b7fda76ffd3cddebcbc3961228b8fa
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133040792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7db0ce7e752ef209a79d6c7b107bca50fabcafb6dd0e9c8b55610443982da8`
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
# Fri, 23 Sep 2016 20:54:54 GMT
ENV NODE_VERSION=4.5.0
# Fri, 23 Sep 2016 20:55:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 23 Sep 2016 20:55:04 GMT
CMD ["node"]
# Sat, 24 Sep 2016 03:41:30 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 24 Sep 2016 03:41:30 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 03:41:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 03:41:37 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 24 Sep 2016 03:41:37 GMT
WORKDIR /usr/src/ghost
# Sat, 24 Sep 2016 03:41:38 GMT
ENV GHOST_VERSION=0.11.0
# Sat, 24 Sep 2016 03:42:37 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Sat, 24 Sep 2016 03:42:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 24 Sep 2016 03:42:38 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Sat, 24 Sep 2016 03:42:39 GMT
VOLUME [/var/lib/ghost]
# Sat, 24 Sep 2016 03:42:39 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Sat, 24 Sep 2016 03:42:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 24 Sep 2016 03:42:40 GMT
EXPOSE 2368/tcp
# Sat, 24 Sep 2016 03:42:41 GMT
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
	-	`sha256:09b76fbb6cf5a1661e37c97b93c568c5a180b0adaa5f222eed83e66b876c6d23`  
		Last Modified: Fri, 23 Sep 2016 20:55:16 GMT  
		Size: 12.3 MB (12272898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c0bb8c82a1ad6eb24147cc08bd116dd1fa68affbb6e2c5fc733afc3d29994b`  
		Last Modified: Sat, 24 Sep 2016 03:42:52 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54138afc5c77a276dd39c7810485b873114448bfd37099d18c4300b3ef4acfbf`  
		Last Modified: Sat, 24 Sep 2016 03:42:50 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392ea22c7c8d38d6b53679573533a52e73520751de327309920e05ecf0ef332c`  
		Last Modified: Sat, 24 Sep 2016 03:42:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12556abb095374ca0394c951eeba784df258760f723eded6d6f80592bd2bf742`  
		Last Modified: Sat, 24 Sep 2016 03:43:02 GMT  
		Size: 50.0 MB (49983439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae12b30437cef3835941bcfe4bb437bd6cd555385a17b9623ef830e4ab2bace5`  
		Last Modified: Sat, 24 Sep 2016 03:42:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71b407af2b73bb1b6d21b90049eaf6874b8d031e43431badc54fc9ca97a3d7c`  
		Last Modified: Sat, 24 Sep 2016 03:42:50 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:199e389ff890974f5f49905763bccbe0a4b7fda76ffd3cddebcbc3961228b8fa
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133040792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7db0ce7e752ef209a79d6c7b107bca50fabcafb6dd0e9c8b55610443982da8`
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
# Fri, 23 Sep 2016 20:54:54 GMT
ENV NODE_VERSION=4.5.0
# Fri, 23 Sep 2016 20:55:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 23 Sep 2016 20:55:04 GMT
CMD ["node"]
# Sat, 24 Sep 2016 03:41:30 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 24 Sep 2016 03:41:30 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 03:41:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 03:41:37 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 24 Sep 2016 03:41:37 GMT
WORKDIR /usr/src/ghost
# Sat, 24 Sep 2016 03:41:38 GMT
ENV GHOST_VERSION=0.11.0
# Sat, 24 Sep 2016 03:42:37 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Sat, 24 Sep 2016 03:42:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 24 Sep 2016 03:42:38 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Sat, 24 Sep 2016 03:42:39 GMT
VOLUME [/var/lib/ghost]
# Sat, 24 Sep 2016 03:42:39 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Sat, 24 Sep 2016 03:42:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 24 Sep 2016 03:42:40 GMT
EXPOSE 2368/tcp
# Sat, 24 Sep 2016 03:42:41 GMT
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
	-	`sha256:09b76fbb6cf5a1661e37c97b93c568c5a180b0adaa5f222eed83e66b876c6d23`  
		Last Modified: Fri, 23 Sep 2016 20:55:16 GMT  
		Size: 12.3 MB (12272898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c0bb8c82a1ad6eb24147cc08bd116dd1fa68affbb6e2c5fc733afc3d29994b`  
		Last Modified: Sat, 24 Sep 2016 03:42:52 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54138afc5c77a276dd39c7810485b873114448bfd37099d18c4300b3ef4acfbf`  
		Last Modified: Sat, 24 Sep 2016 03:42:50 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392ea22c7c8d38d6b53679573533a52e73520751de327309920e05ecf0ef332c`  
		Last Modified: Sat, 24 Sep 2016 03:42:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12556abb095374ca0394c951eeba784df258760f723eded6d6f80592bd2bf742`  
		Last Modified: Sat, 24 Sep 2016 03:43:02 GMT  
		Size: 50.0 MB (49983439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae12b30437cef3835941bcfe4bb437bd6cd555385a17b9623ef830e4ab2bace5`  
		Last Modified: Sat, 24 Sep 2016 03:42:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71b407af2b73bb1b6d21b90049eaf6874b8d031e43431badc54fc9ca97a3d7c`  
		Last Modified: Sat, 24 Sep 2016 03:42:50 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:199e389ff890974f5f49905763bccbe0a4b7fda76ffd3cddebcbc3961228b8fa
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133040792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7db0ce7e752ef209a79d6c7b107bca50fabcafb6dd0e9c8b55610443982da8`
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
# Fri, 23 Sep 2016 20:54:54 GMT
ENV NODE_VERSION=4.5.0
# Fri, 23 Sep 2016 20:55:03 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 23 Sep 2016 20:55:04 GMT
CMD ["node"]
# Sat, 24 Sep 2016 03:41:30 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 24 Sep 2016 03:41:30 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 03:41:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 03:41:37 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 24 Sep 2016 03:41:37 GMT
WORKDIR /usr/src/ghost
# Sat, 24 Sep 2016 03:41:38 GMT
ENV GHOST_VERSION=0.11.0
# Sat, 24 Sep 2016 03:42:37 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Sat, 24 Sep 2016 03:42:38 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 24 Sep 2016 03:42:38 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Sat, 24 Sep 2016 03:42:39 GMT
VOLUME [/var/lib/ghost]
# Sat, 24 Sep 2016 03:42:39 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Sat, 24 Sep 2016 03:42:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 24 Sep 2016 03:42:40 GMT
EXPOSE 2368/tcp
# Sat, 24 Sep 2016 03:42:41 GMT
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
	-	`sha256:09b76fbb6cf5a1661e37c97b93c568c5a180b0adaa5f222eed83e66b876c6d23`  
		Last Modified: Fri, 23 Sep 2016 20:55:16 GMT  
		Size: 12.3 MB (12272898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c0bb8c82a1ad6eb24147cc08bd116dd1fa68affbb6e2c5fc733afc3d29994b`  
		Last Modified: Sat, 24 Sep 2016 03:42:52 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54138afc5c77a276dd39c7810485b873114448bfd37099d18c4300b3ef4acfbf`  
		Last Modified: Sat, 24 Sep 2016 03:42:50 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392ea22c7c8d38d6b53679573533a52e73520751de327309920e05ecf0ef332c`  
		Last Modified: Sat, 24 Sep 2016 03:42:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12556abb095374ca0394c951eeba784df258760f723eded6d6f80592bd2bf742`  
		Last Modified: Sat, 24 Sep 2016 03:43:02 GMT  
		Size: 50.0 MB (49983439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae12b30437cef3835941bcfe4bb437bd6cd555385a17b9623ef830e4ab2bace5`  
		Last Modified: Sat, 24 Sep 2016 03:42:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71b407af2b73bb1b6d21b90049eaf6874b8d031e43431badc54fc9ca97a3d7c`  
		Last Modified: Sat, 24 Sep 2016 03:42:50 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
