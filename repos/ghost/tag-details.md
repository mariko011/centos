<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `ghost`

-	[`ghost:0.9.0`](#ghost090)
-	[`ghost:0.9`](#ghost09)
-	[`ghost:0`](#ghost0)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0.9.0`

```console
$ docker pull ghost@sha256:2b725b016bdef5a28a894894c479601e844ecbee03030ee8aa8c7312798d2f33
```

-	Platforms:
	-	linux; amd64

### `ghost:0.9.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108998950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54d8cd73d12e286830f1fab79b9b4304e1e8066ebac2d3bf1714879721edb98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 22:01:06 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 30 Aug 2016 22:02:00 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 30 Aug 2016 22:02:00 GMT
ENV NODE_VERSION=4.5.0
# Tue, 30 Aug 2016 22:02:09 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 30 Aug 2016 22:02:10 GMT
CMD ["node"]
# Tue, 30 Aug 2016 23:19:36 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 30 Aug 2016 23:19:41 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:19:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:19:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 23:19:47 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 30 Aug 2016 23:19:47 GMT
WORKDIR /usr/src/ghost
# Tue, 30 Aug 2016 23:19:48 GMT
ENV GHOST_VERSION=0.9.0
# Tue, 30 Aug 2016 23:20:53 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Tue, 30 Aug 2016 23:20:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 30 Aug 2016 23:20:55 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Tue, 30 Aug 2016 23:20:55 GMT
VOLUME [/var/lib/ghost]
# Tue, 30 Aug 2016 23:20:56 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Tue, 30 Aug 2016 23:20:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:20:56 GMT
EXPOSE 2368/tcp
# Tue, 30 Aug 2016 23:20:56 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8031bea3fa7a9ab51e491ccfebaa75d172cda490602b2101b5cb2c0c8cdea5`  
		Last Modified: Tue, 30 Aug 2016 23:09:38 GMT  
		Size: 71.8 KB (71848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854b52827bb4e83d9198f145e14c5ba239aaa6e75987ec0a019332e0e2b7fae1`  
		Last Modified: Tue, 30 Aug 2016 23:13:28 GMT  
		Size: 12.3 MB (12273177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c2db6ff75a3db50798375c44d712855cbb89b9cf0b82ecd7e23e30c92b9e7c`  
		Last Modified: Tue, 30 Aug 2016 23:21:07 GMT  
		Size: 4.3 KB (4335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0222ef973c1f71bab7dddb61f95c5afd60858487ab1cbad4774992d996c28d9`  
		Last Modified: Tue, 30 Aug 2016 23:21:05 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255ce0ebfd7c8d6a033a0818c78e55d5420f81b298b3dbd53c78bb5102644979`  
		Last Modified: Tue, 30 Aug 2016 23:21:06 GMT  
		Size: 807.9 KB (807937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c8b293b18c10b3e5aff4c7432fa443db485ee2520f4f92650115601842b848`  
		Last Modified: Tue, 30 Aug 2016 23:21:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0fb445a94706cc816458efce95953ca839d278ea983f62112dfa88ec60f74c`  
		Last Modified: Tue, 30 Aug 2016 23:21:13 GMT  
		Size: 25.9 MB (25946215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3245b031c2c724804ecabe07f42278ea72929a2dbcee6db253cf5ddec95f2a`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadee9e577ad124d5993ccf7d2c795f20d29ba23894f7c06ec8108a6af85a3b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.9`

```console
$ docker pull ghost@sha256:2b725b016bdef5a28a894894c479601e844ecbee03030ee8aa8c7312798d2f33
```

-	Platforms:
	-	linux; amd64

### `ghost:0.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108998950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54d8cd73d12e286830f1fab79b9b4304e1e8066ebac2d3bf1714879721edb98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 22:01:06 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 30 Aug 2016 22:02:00 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 30 Aug 2016 22:02:00 GMT
ENV NODE_VERSION=4.5.0
# Tue, 30 Aug 2016 22:02:09 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 30 Aug 2016 22:02:10 GMT
CMD ["node"]
# Tue, 30 Aug 2016 23:19:36 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 30 Aug 2016 23:19:41 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:19:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:19:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 23:19:47 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 30 Aug 2016 23:19:47 GMT
WORKDIR /usr/src/ghost
# Tue, 30 Aug 2016 23:19:48 GMT
ENV GHOST_VERSION=0.9.0
# Tue, 30 Aug 2016 23:20:53 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Tue, 30 Aug 2016 23:20:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 30 Aug 2016 23:20:55 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Tue, 30 Aug 2016 23:20:55 GMT
VOLUME [/var/lib/ghost]
# Tue, 30 Aug 2016 23:20:56 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Tue, 30 Aug 2016 23:20:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:20:56 GMT
EXPOSE 2368/tcp
# Tue, 30 Aug 2016 23:20:56 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8031bea3fa7a9ab51e491ccfebaa75d172cda490602b2101b5cb2c0c8cdea5`  
		Last Modified: Tue, 30 Aug 2016 23:09:38 GMT  
		Size: 71.8 KB (71848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854b52827bb4e83d9198f145e14c5ba239aaa6e75987ec0a019332e0e2b7fae1`  
		Last Modified: Tue, 30 Aug 2016 23:13:28 GMT  
		Size: 12.3 MB (12273177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c2db6ff75a3db50798375c44d712855cbb89b9cf0b82ecd7e23e30c92b9e7c`  
		Last Modified: Tue, 30 Aug 2016 23:21:07 GMT  
		Size: 4.3 KB (4335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0222ef973c1f71bab7dddb61f95c5afd60858487ab1cbad4774992d996c28d9`  
		Last Modified: Tue, 30 Aug 2016 23:21:05 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255ce0ebfd7c8d6a033a0818c78e55d5420f81b298b3dbd53c78bb5102644979`  
		Last Modified: Tue, 30 Aug 2016 23:21:06 GMT  
		Size: 807.9 KB (807937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c8b293b18c10b3e5aff4c7432fa443db485ee2520f4f92650115601842b848`  
		Last Modified: Tue, 30 Aug 2016 23:21:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0fb445a94706cc816458efce95953ca839d278ea983f62112dfa88ec60f74c`  
		Last Modified: Tue, 30 Aug 2016 23:21:13 GMT  
		Size: 25.9 MB (25946215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3245b031c2c724804ecabe07f42278ea72929a2dbcee6db253cf5ddec95f2a`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadee9e577ad124d5993ccf7d2c795f20d29ba23894f7c06ec8108a6af85a3b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:2b725b016bdef5a28a894894c479601e844ecbee03030ee8aa8c7312798d2f33
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108998950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54d8cd73d12e286830f1fab79b9b4304e1e8066ebac2d3bf1714879721edb98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 22:01:06 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 30 Aug 2016 22:02:00 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 30 Aug 2016 22:02:00 GMT
ENV NODE_VERSION=4.5.0
# Tue, 30 Aug 2016 22:02:09 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 30 Aug 2016 22:02:10 GMT
CMD ["node"]
# Tue, 30 Aug 2016 23:19:36 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 30 Aug 2016 23:19:41 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:19:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:19:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 23:19:47 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 30 Aug 2016 23:19:47 GMT
WORKDIR /usr/src/ghost
# Tue, 30 Aug 2016 23:19:48 GMT
ENV GHOST_VERSION=0.9.0
# Tue, 30 Aug 2016 23:20:53 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Tue, 30 Aug 2016 23:20:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 30 Aug 2016 23:20:55 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Tue, 30 Aug 2016 23:20:55 GMT
VOLUME [/var/lib/ghost]
# Tue, 30 Aug 2016 23:20:56 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Tue, 30 Aug 2016 23:20:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:20:56 GMT
EXPOSE 2368/tcp
# Tue, 30 Aug 2016 23:20:56 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8031bea3fa7a9ab51e491ccfebaa75d172cda490602b2101b5cb2c0c8cdea5`  
		Last Modified: Tue, 30 Aug 2016 23:09:38 GMT  
		Size: 71.8 KB (71848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854b52827bb4e83d9198f145e14c5ba239aaa6e75987ec0a019332e0e2b7fae1`  
		Last Modified: Tue, 30 Aug 2016 23:13:28 GMT  
		Size: 12.3 MB (12273177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c2db6ff75a3db50798375c44d712855cbb89b9cf0b82ecd7e23e30c92b9e7c`  
		Last Modified: Tue, 30 Aug 2016 23:21:07 GMT  
		Size: 4.3 KB (4335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0222ef973c1f71bab7dddb61f95c5afd60858487ab1cbad4774992d996c28d9`  
		Last Modified: Tue, 30 Aug 2016 23:21:05 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255ce0ebfd7c8d6a033a0818c78e55d5420f81b298b3dbd53c78bb5102644979`  
		Last Modified: Tue, 30 Aug 2016 23:21:06 GMT  
		Size: 807.9 KB (807937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c8b293b18c10b3e5aff4c7432fa443db485ee2520f4f92650115601842b848`  
		Last Modified: Tue, 30 Aug 2016 23:21:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0fb445a94706cc816458efce95953ca839d278ea983f62112dfa88ec60f74c`  
		Last Modified: Tue, 30 Aug 2016 23:21:13 GMT  
		Size: 25.9 MB (25946215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3245b031c2c724804ecabe07f42278ea72929a2dbcee6db253cf5ddec95f2a`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadee9e577ad124d5993ccf7d2c795f20d29ba23894f7c06ec8108a6af85a3b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:2b725b016bdef5a28a894894c479601e844ecbee03030ee8aa8c7312798d2f33
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108998950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54d8cd73d12e286830f1fab79b9b4304e1e8066ebac2d3bf1714879721edb98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 22:01:06 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 30 Aug 2016 22:02:00 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 30 Aug 2016 22:02:00 GMT
ENV NODE_VERSION=4.5.0
# Tue, 30 Aug 2016 22:02:09 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 30 Aug 2016 22:02:10 GMT
CMD ["node"]
# Tue, 30 Aug 2016 23:19:36 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 30 Aug 2016 23:19:41 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:19:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:19:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 23:19:47 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Tue, 30 Aug 2016 23:19:47 GMT
WORKDIR /usr/src/ghost
# Tue, 30 Aug 2016 23:19:48 GMT
ENV GHOST_VERSION=0.9.0
# Tue, 30 Aug 2016 23:20:53 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Tue, 30 Aug 2016 23:20:54 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Tue, 30 Aug 2016 23:20:55 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Tue, 30 Aug 2016 23:20:55 GMT
VOLUME [/var/lib/ghost]
# Tue, 30 Aug 2016 23:20:56 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Tue, 30 Aug 2016 23:20:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:20:56 GMT
EXPOSE 2368/tcp
# Tue, 30 Aug 2016 23:20:56 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8031bea3fa7a9ab51e491ccfebaa75d172cda490602b2101b5cb2c0c8cdea5`  
		Last Modified: Tue, 30 Aug 2016 23:09:38 GMT  
		Size: 71.8 KB (71848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854b52827bb4e83d9198f145e14c5ba239aaa6e75987ec0a019332e0e2b7fae1`  
		Last Modified: Tue, 30 Aug 2016 23:13:28 GMT  
		Size: 12.3 MB (12273177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c2db6ff75a3db50798375c44d712855cbb89b9cf0b82ecd7e23e30c92b9e7c`  
		Last Modified: Tue, 30 Aug 2016 23:21:07 GMT  
		Size: 4.3 KB (4335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0222ef973c1f71bab7dddb61f95c5afd60858487ab1cbad4774992d996c28d9`  
		Last Modified: Tue, 30 Aug 2016 23:21:05 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255ce0ebfd7c8d6a033a0818c78e55d5420f81b298b3dbd53c78bb5102644979`  
		Last Modified: Tue, 30 Aug 2016 23:21:06 GMT  
		Size: 807.9 KB (807937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c8b293b18c10b3e5aff4c7432fa443db485ee2520f4f92650115601842b848`  
		Last Modified: Tue, 30 Aug 2016 23:21:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0fb445a94706cc816458efce95953ca839d278ea983f62112dfa88ec60f74c`  
		Last Modified: Tue, 30 Aug 2016 23:21:13 GMT  
		Size: 25.9 MB (25946215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3245b031c2c724804ecabe07f42278ea72929a2dbcee6db253cf5ddec95f2a`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadee9e577ad124d5993ccf7d2c795f20d29ba23894f7c06ec8108a6af85a3b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
