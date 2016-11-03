<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0.11.2`](#ghost0112)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0.11.2`

```console
$ docker pull ghost@sha256:d27f84d8a363a648ef88db15095308c0e58d787ac9d1ff43f51de80036f786bd
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126360022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c099a2a082d276711dcf2174f9dfc78f5920ef3b4cb2f656510b3c111bd06499`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 Nov 2016 21:16:06 GMT
RUN groupadd -r node && useradd -r -g node node
# Thu, 03 Nov 2016 21:16:17 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Thu, 03 Nov 2016 21:16:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 03 Nov 2016 21:17:12 GMT
ENV NODE_VERSION=4.6.1
# Thu, 03 Nov 2016 21:17:20 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 03 Nov 2016 21:17:21 GMT
CMD ["node"]
# Thu, 03 Nov 2016 22:04:38 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 03 Nov 2016 22:04:39 GMT
ENV GOSU_VERSION=1.7
# Thu, 03 Nov 2016 22:04:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 Nov 2016 22:04:44 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 03 Nov 2016 22:04:44 GMT
WORKDIR /usr/src/ghost
# Thu, 03 Nov 2016 22:04:44 GMT
ENV GHOST_VERSION=0.11.2
# Thu, 03 Nov 2016 22:05:33 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Thu, 03 Nov 2016 22:05:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 03 Nov 2016 22:05:34 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Thu, 03 Nov 2016 22:05:34 GMT
VOLUME [/var/lib/ghost]
# Thu, 03 Nov 2016 22:05:35 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Thu, 03 Nov 2016 22:05:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2016 22:05:35 GMT
EXPOSE 2368/tcp
# Thu, 03 Nov 2016 22:05:36 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5412f5d9f9eb3227f777ffa61fb72f00d7505c9d757a89dc3305c2c059ac75a1`  
		Last Modified: Thu, 03 Nov 2016 21:20:17 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23444aa04998ab9d995bb2faf9a3edf240b5a2d3b81eaa4686b53eb791779e42`  
		Last Modified: Thu, 03 Nov 2016 21:20:17 GMT  
		Size: 97.2 KB (97214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36541417d4a9d7948f2a146841976994bca0c65e79f34a0d6b02490613ef7fe`  
		Last Modified: Thu, 03 Nov 2016 21:28:10 GMT  
		Size: 12.2 MB (12245349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a786fc198551f93f15c9e780b9ef9c37169bb28b7bbedcf3dd99a0d243caa0`  
		Last Modified: Thu, 03 Nov 2016 22:05:51 GMT  
		Size: 4.4 KB (4388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db5f6cfa9a8567bad56a87eb615f8f42510d8d4f6648b6d85f3deef1d5c14bb`  
		Last Modified: Thu, 03 Nov 2016 22:05:47 GMT  
		Size: 807.9 KB (807937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0294ff59bd0931aa2e6bd50a2de335e1638f4a91dae986b9f85c6b8bcee7e314`  
		Last Modified: Thu, 03 Nov 2016 22:05:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147677f5310e6beebcabdca7bbeed873108933bb5ef1702241b85dcffd60ecc0`  
		Last Modified: Thu, 03 Nov 2016 22:05:57 GMT  
		Size: 43.3 MB (43321091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12546a485facc2d3844e2f0011b919b43e44921be4935bd11d3b00d91244bbb`  
		Last Modified: Thu, 03 Nov 2016 22:05:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c95ef461cd5572040ccb92d750f873af0868752f3773d3ba0c810f32f47dd3`  
		Last Modified: Thu, 03 Nov 2016 22:05:47 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:d27f84d8a363a648ef88db15095308c0e58d787ac9d1ff43f51de80036f786bd
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126360022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c099a2a082d276711dcf2174f9dfc78f5920ef3b4cb2f656510b3c111bd06499`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 Nov 2016 21:16:06 GMT
RUN groupadd -r node && useradd -r -g node node
# Thu, 03 Nov 2016 21:16:17 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Thu, 03 Nov 2016 21:16:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 03 Nov 2016 21:17:12 GMT
ENV NODE_VERSION=4.6.1
# Thu, 03 Nov 2016 21:17:20 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 03 Nov 2016 21:17:21 GMT
CMD ["node"]
# Thu, 03 Nov 2016 22:04:38 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 03 Nov 2016 22:04:39 GMT
ENV GOSU_VERSION=1.7
# Thu, 03 Nov 2016 22:04:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 Nov 2016 22:04:44 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 03 Nov 2016 22:04:44 GMT
WORKDIR /usr/src/ghost
# Thu, 03 Nov 2016 22:04:44 GMT
ENV GHOST_VERSION=0.11.2
# Thu, 03 Nov 2016 22:05:33 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Thu, 03 Nov 2016 22:05:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 03 Nov 2016 22:05:34 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Thu, 03 Nov 2016 22:05:34 GMT
VOLUME [/var/lib/ghost]
# Thu, 03 Nov 2016 22:05:35 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Thu, 03 Nov 2016 22:05:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2016 22:05:35 GMT
EXPOSE 2368/tcp
# Thu, 03 Nov 2016 22:05:36 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5412f5d9f9eb3227f777ffa61fb72f00d7505c9d757a89dc3305c2c059ac75a1`  
		Last Modified: Thu, 03 Nov 2016 21:20:17 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23444aa04998ab9d995bb2faf9a3edf240b5a2d3b81eaa4686b53eb791779e42`  
		Last Modified: Thu, 03 Nov 2016 21:20:17 GMT  
		Size: 97.2 KB (97214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36541417d4a9d7948f2a146841976994bca0c65e79f34a0d6b02490613ef7fe`  
		Last Modified: Thu, 03 Nov 2016 21:28:10 GMT  
		Size: 12.2 MB (12245349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a786fc198551f93f15c9e780b9ef9c37169bb28b7bbedcf3dd99a0d243caa0`  
		Last Modified: Thu, 03 Nov 2016 22:05:51 GMT  
		Size: 4.4 KB (4388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db5f6cfa9a8567bad56a87eb615f8f42510d8d4f6648b6d85f3deef1d5c14bb`  
		Last Modified: Thu, 03 Nov 2016 22:05:47 GMT  
		Size: 807.9 KB (807937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0294ff59bd0931aa2e6bd50a2de335e1638f4a91dae986b9f85c6b8bcee7e314`  
		Last Modified: Thu, 03 Nov 2016 22:05:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147677f5310e6beebcabdca7bbeed873108933bb5ef1702241b85dcffd60ecc0`  
		Last Modified: Thu, 03 Nov 2016 22:05:57 GMT  
		Size: 43.3 MB (43321091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12546a485facc2d3844e2f0011b919b43e44921be4935bd11d3b00d91244bbb`  
		Last Modified: Thu, 03 Nov 2016 22:05:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c95ef461cd5572040ccb92d750f873af0868752f3773d3ba0c810f32f47dd3`  
		Last Modified: Thu, 03 Nov 2016 22:05:47 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:d27f84d8a363a648ef88db15095308c0e58d787ac9d1ff43f51de80036f786bd
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126360022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c099a2a082d276711dcf2174f9dfc78f5920ef3b4cb2f656510b3c111bd06499`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 Nov 2016 21:16:06 GMT
RUN groupadd -r node && useradd -r -g node node
# Thu, 03 Nov 2016 21:16:17 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Thu, 03 Nov 2016 21:16:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 03 Nov 2016 21:17:12 GMT
ENV NODE_VERSION=4.6.1
# Thu, 03 Nov 2016 21:17:20 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 03 Nov 2016 21:17:21 GMT
CMD ["node"]
# Thu, 03 Nov 2016 22:04:38 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 03 Nov 2016 22:04:39 GMT
ENV GOSU_VERSION=1.7
# Thu, 03 Nov 2016 22:04:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 Nov 2016 22:04:44 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 03 Nov 2016 22:04:44 GMT
WORKDIR /usr/src/ghost
# Thu, 03 Nov 2016 22:04:44 GMT
ENV GHOST_VERSION=0.11.2
# Thu, 03 Nov 2016 22:05:33 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Thu, 03 Nov 2016 22:05:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 03 Nov 2016 22:05:34 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Thu, 03 Nov 2016 22:05:34 GMT
VOLUME [/var/lib/ghost]
# Thu, 03 Nov 2016 22:05:35 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Thu, 03 Nov 2016 22:05:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2016 22:05:35 GMT
EXPOSE 2368/tcp
# Thu, 03 Nov 2016 22:05:36 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5412f5d9f9eb3227f777ffa61fb72f00d7505c9d757a89dc3305c2c059ac75a1`  
		Last Modified: Thu, 03 Nov 2016 21:20:17 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23444aa04998ab9d995bb2faf9a3edf240b5a2d3b81eaa4686b53eb791779e42`  
		Last Modified: Thu, 03 Nov 2016 21:20:17 GMT  
		Size: 97.2 KB (97214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36541417d4a9d7948f2a146841976994bca0c65e79f34a0d6b02490613ef7fe`  
		Last Modified: Thu, 03 Nov 2016 21:28:10 GMT  
		Size: 12.2 MB (12245349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a786fc198551f93f15c9e780b9ef9c37169bb28b7bbedcf3dd99a0d243caa0`  
		Last Modified: Thu, 03 Nov 2016 22:05:51 GMT  
		Size: 4.4 KB (4388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db5f6cfa9a8567bad56a87eb615f8f42510d8d4f6648b6d85f3deef1d5c14bb`  
		Last Modified: Thu, 03 Nov 2016 22:05:47 GMT  
		Size: 807.9 KB (807937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0294ff59bd0931aa2e6bd50a2de335e1638f4a91dae986b9f85c6b8bcee7e314`  
		Last Modified: Thu, 03 Nov 2016 22:05:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147677f5310e6beebcabdca7bbeed873108933bb5ef1702241b85dcffd60ecc0`  
		Last Modified: Thu, 03 Nov 2016 22:05:57 GMT  
		Size: 43.3 MB (43321091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12546a485facc2d3844e2f0011b919b43e44921be4935bd11d3b00d91244bbb`  
		Last Modified: Thu, 03 Nov 2016 22:05:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c95ef461cd5572040ccb92d750f873af0868752f3773d3ba0c810f32f47dd3`  
		Last Modified: Thu, 03 Nov 2016 22:05:47 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:d27f84d8a363a648ef88db15095308c0e58d787ac9d1ff43f51de80036f786bd
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126360022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c099a2a082d276711dcf2174f9dfc78f5920ef3b4cb2f656510b3c111bd06499`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 Nov 2016 21:16:06 GMT
RUN groupadd -r node && useradd -r -g node node
# Thu, 03 Nov 2016 21:16:17 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Thu, 03 Nov 2016 21:16:18 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 03 Nov 2016 21:17:12 GMT
ENV NODE_VERSION=4.6.1
# Thu, 03 Nov 2016 21:17:20 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 03 Nov 2016 21:17:21 GMT
CMD ["node"]
# Thu, 03 Nov 2016 22:04:38 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 03 Nov 2016 22:04:39 GMT
ENV GOSU_VERSION=1.7
# Thu, 03 Nov 2016 22:04:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 Nov 2016 22:04:44 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 03 Nov 2016 22:04:44 GMT
WORKDIR /usr/src/ghost
# Thu, 03 Nov 2016 22:04:44 GMT
ENV GHOST_VERSION=0.11.2
# Thu, 03 Nov 2016 22:05:33 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Thu, 03 Nov 2016 22:05:33 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 03 Nov 2016 22:05:34 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Thu, 03 Nov 2016 22:05:34 GMT
VOLUME [/var/lib/ghost]
# Thu, 03 Nov 2016 22:05:35 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Thu, 03 Nov 2016 22:05:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Nov 2016 22:05:35 GMT
EXPOSE 2368/tcp
# Thu, 03 Nov 2016 22:05:36 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5412f5d9f9eb3227f777ffa61fb72f00d7505c9d757a89dc3305c2c059ac75a1`  
		Last Modified: Thu, 03 Nov 2016 21:20:17 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23444aa04998ab9d995bb2faf9a3edf240b5a2d3b81eaa4686b53eb791779e42`  
		Last Modified: Thu, 03 Nov 2016 21:20:17 GMT  
		Size: 97.2 KB (97214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36541417d4a9d7948f2a146841976994bca0c65e79f34a0d6b02490613ef7fe`  
		Last Modified: Thu, 03 Nov 2016 21:28:10 GMT  
		Size: 12.2 MB (12245349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a786fc198551f93f15c9e780b9ef9c37169bb28b7bbedcf3dd99a0d243caa0`  
		Last Modified: Thu, 03 Nov 2016 22:05:51 GMT  
		Size: 4.4 KB (4388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db5f6cfa9a8567bad56a87eb615f8f42510d8d4f6648b6d85f3deef1d5c14bb`  
		Last Modified: Thu, 03 Nov 2016 22:05:47 GMT  
		Size: 807.9 KB (807937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0294ff59bd0931aa2e6bd50a2de335e1638f4a91dae986b9f85c6b8bcee7e314`  
		Last Modified: Thu, 03 Nov 2016 22:05:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147677f5310e6beebcabdca7bbeed873108933bb5ef1702241b85dcffd60ecc0`  
		Last Modified: Thu, 03 Nov 2016 22:05:57 GMT  
		Size: 43.3 MB (43321091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12546a485facc2d3844e2f0011b919b43e44921be4935bd11d3b00d91244bbb`  
		Last Modified: Thu, 03 Nov 2016 22:05:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c95ef461cd5572040ccb92d750f873af0868752f3773d3ba0c810f32f47dd3`  
		Last Modified: Thu, 03 Nov 2016 22:05:47 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
