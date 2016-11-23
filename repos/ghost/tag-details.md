<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0.11.3`](#ghost0113)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0.11.3`

```console
$ docker pull ghost@sha256:3b8711037753de2227f129d094972ce7f21bd3566a2d332fca5ba3c68624582f
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126735608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d592e47338f88720c7584a5364f2fbccb6cfb9c031b9475453c9af47e081edc2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:45:04 GMT
RUN groupadd -r node && useradd -r -g node node
# Tue, 08 Nov 2016 22:45:17 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 08 Nov 2016 22:47:23 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 10 Nov 2016 02:21:40 GMT
ENV NODE_VERSION=4.6.2
# Thu, 10 Nov 2016 02:21:49 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 10 Nov 2016 02:21:49 GMT
CMD ["node"]
# Thu, 10 Nov 2016 02:53:11 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 10 Nov 2016 02:53:19 GMT
ENV GOSU_VERSION=1.7
# Thu, 10 Nov 2016 02:53:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 10 Nov 2016 02:53:35 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 10 Nov 2016 02:53:43 GMT
WORKDIR /usr/src/ghost
# Thu, 10 Nov 2016 02:53:44 GMT
ENV GHOST_VERSION=0.11.3
# Thu, 10 Nov 2016 02:54:40 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Thu, 10 Nov 2016 02:54:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 10 Nov 2016 02:54:42 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Thu, 10 Nov 2016 02:54:42 GMT
VOLUME [/var/lib/ghost]
# Thu, 10 Nov 2016 02:54:43 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Thu, 10 Nov 2016 02:54:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Nov 2016 02:54:44 GMT
EXPOSE 2368/tcp
# Thu, 10 Nov 2016 02:54:44 GMT
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
	-	`sha256:60721b40a88024b354485a2aab8916faa195b40c4fdba227e92f60c609f01156`  
		Last Modified: Tue, 08 Nov 2016 22:45:51 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3739ddf6315c5e18b3e9b8b61629bf3ce0a4f5c41e495a001023d86a46ef0d52`  
		Last Modified: Tue, 08 Nov 2016 22:45:52 GMT  
		Size: 97.2 KB (97211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635046ae112f09579446feb482ed56dab57c3099ef5f8287ed038b0d1ad9fdc5`  
		Last Modified: Thu, 10 Nov 2016 02:32:44 GMT  
		Size: 12.3 MB (12250713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3498ff9589816f9d842ac6ad88a303b45a44c19883440dfd01afa64bacb5ce`  
		Last Modified: Thu, 10 Nov 2016 02:54:59 GMT  
		Size: 4.4 KB (4385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3b67de1a499c3a09796009fce337b680c9b13b80be8eaa2379842cd1284bc2`  
		Last Modified: Thu, 10 Nov 2016 02:54:58 GMT  
		Size: 807.9 KB (807937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6400a1f140de8bac7942a17c2bcf280a2cbc88be476e9b2a2c91e9629ed8949f`  
		Last Modified: Thu, 10 Nov 2016 02:54:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79aa976df704fc6070db8ccba1723e1dae24ce2c3a193484e6ee403c748c7610`  
		Last Modified: Thu, 10 Nov 2016 02:55:07 GMT  
		Size: 43.7 MB (43687118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c4216ae7b11f848c2e481085569f6c2db8d658bcde9e8d0601e17012c629e5`  
		Last Modified: Thu, 10 Nov 2016 02:54:57 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c19c158015f267d9cbac74c172faae3312bb19283fe2db7ef728b7db1dd786`  
		Last Modified: Thu, 10 Nov 2016 02:54:57 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:25c6e1b7963a651a9ec5af7b1d271aef4e393660aac53112664a71a38cd54875
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126738250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:709795b4afb7ae6a6d779d8ec4fd3ebcbd24f19b59013c24c1530ffc97857e85`
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
# Wed, 23 Nov 2016 19:39:33 GMT
ENV NODE_VERSION=4.6.2
# Wed, 23 Nov 2016 19:39:45 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Nov 2016 19:39:45 GMT
CMD ["node"]
# Wed, 23 Nov 2016 20:09:41 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 23 Nov 2016 20:09:41 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Nov 2016 20:09:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Nov 2016 20:09:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 23 Nov 2016 20:09:47 GMT
WORKDIR /usr/src/ghost
# Wed, 23 Nov 2016 20:09:47 GMT
ENV GHOST_VERSION=0.11.3
# Wed, 23 Nov 2016 20:10:53 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Wed, 23 Nov 2016 20:10:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 23 Nov 2016 20:10:54 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Wed, 23 Nov 2016 20:10:55 GMT
VOLUME [/var/lib/ghost]
# Wed, 23 Nov 2016 20:10:55 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Wed, 23 Nov 2016 20:10:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Nov 2016 20:10:56 GMT
EXPOSE 2368/tcp
# Wed, 23 Nov 2016 20:10:56 GMT
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
	-	`sha256:ba54c209b2da99d14473c2783e0808c7555bdd0d6d137f127d57a2af9b4705b2`  
		Last Modified: Wed, 23 Nov 2016 19:57:01 GMT  
		Size: 12.3 MB (12250714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc61ca4d8ce2c5bbe4234d3c32225f98bbf62e90e1b8ad6ca7730da38e641cb`  
		Last Modified: Wed, 23 Nov 2016 20:11:13 GMT  
		Size: 4.4 KB (4385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a166b53ae9b2554a17e1dcb1024d78e7d6a69d9cfbfd6041fd548372ee2dbbb`  
		Last Modified: Wed, 23 Nov 2016 20:11:11 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0db22360b896fbd361b1a79e89e16401e1e56d8b165516813a8d863ca01251c`  
		Last Modified: Wed, 23 Nov 2016 20:11:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe3a49a7197cdfa0229f7989ed8c2708cab0117082926977a139b34bd7ef963`  
		Last Modified: Wed, 23 Nov 2016 20:11:23 GMT  
		Size: 43.7 MB (43687451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba96c5135551eaf7e2938f945570cd3a5cf46d35a0df0434082807e4c1be1c0`  
		Last Modified: Wed, 23 Nov 2016 20:11:11 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71897a81e8fce7e8a78e25f3ce5a2ccbf26a9601acb26dfdd867d3b1e9e7c585`  
		Last Modified: Wed, 23 Nov 2016 20:11:10 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:3b8711037753de2227f129d094972ce7f21bd3566a2d332fca5ba3c68624582f
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126735608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d592e47338f88720c7584a5364f2fbccb6cfb9c031b9475453c9af47e081edc2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:45:04 GMT
RUN groupadd -r node && useradd -r -g node node
# Tue, 08 Nov 2016 22:45:17 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 08 Nov 2016 22:47:23 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Thu, 10 Nov 2016 02:21:40 GMT
ENV NODE_VERSION=4.6.2
# Thu, 10 Nov 2016 02:21:49 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 10 Nov 2016 02:21:49 GMT
CMD ["node"]
# Thu, 10 Nov 2016 02:53:11 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 10 Nov 2016 02:53:19 GMT
ENV GOSU_VERSION=1.7
# Thu, 10 Nov 2016 02:53:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 10 Nov 2016 02:53:35 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Thu, 10 Nov 2016 02:53:43 GMT
WORKDIR /usr/src/ghost
# Thu, 10 Nov 2016 02:53:44 GMT
ENV GHOST_VERSION=0.11.3
# Thu, 10 Nov 2016 02:54:40 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Thu, 10 Nov 2016 02:54:41 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Thu, 10 Nov 2016 02:54:42 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Thu, 10 Nov 2016 02:54:42 GMT
VOLUME [/var/lib/ghost]
# Thu, 10 Nov 2016 02:54:43 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Thu, 10 Nov 2016 02:54:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Nov 2016 02:54:44 GMT
EXPOSE 2368/tcp
# Thu, 10 Nov 2016 02:54:44 GMT
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
	-	`sha256:60721b40a88024b354485a2aab8916faa195b40c4fdba227e92f60c609f01156`  
		Last Modified: Tue, 08 Nov 2016 22:45:51 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3739ddf6315c5e18b3e9b8b61629bf3ce0a4f5c41e495a001023d86a46ef0d52`  
		Last Modified: Tue, 08 Nov 2016 22:45:52 GMT  
		Size: 97.2 KB (97211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635046ae112f09579446feb482ed56dab57c3099ef5f8287ed038b0d1ad9fdc5`  
		Last Modified: Thu, 10 Nov 2016 02:32:44 GMT  
		Size: 12.3 MB (12250713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3498ff9589816f9d842ac6ad88a303b45a44c19883440dfd01afa64bacb5ce`  
		Last Modified: Thu, 10 Nov 2016 02:54:59 GMT  
		Size: 4.4 KB (4385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3b67de1a499c3a09796009fce337b680c9b13b80be8eaa2379842cd1284bc2`  
		Last Modified: Thu, 10 Nov 2016 02:54:58 GMT  
		Size: 807.9 KB (807937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6400a1f140de8bac7942a17c2bcf280a2cbc88be476e9b2a2c91e9629ed8949f`  
		Last Modified: Thu, 10 Nov 2016 02:54:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79aa976df704fc6070db8ccba1723e1dae24ce2c3a193484e6ee403c748c7610`  
		Last Modified: Thu, 10 Nov 2016 02:55:07 GMT  
		Size: 43.7 MB (43687118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c4216ae7b11f848c2e481085569f6c2db8d658bcde9e8d0601e17012c629e5`  
		Last Modified: Thu, 10 Nov 2016 02:54:57 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c19c158015f267d9cbac74c172faae3312bb19283fe2db7ef728b7db1dd786`  
		Last Modified: Thu, 10 Nov 2016 02:54:57 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:25c6e1b7963a651a9ec5af7b1d271aef4e393660aac53112664a71a38cd54875
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126738250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:709795b4afb7ae6a6d779d8ec4fd3ebcbd24f19b59013c24c1530ffc97857e85`
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
# Wed, 23 Nov 2016 19:39:33 GMT
ENV NODE_VERSION=4.6.2
# Wed, 23 Nov 2016 19:39:45 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 23 Nov 2016 19:39:45 GMT
CMD ["node"]
# Wed, 23 Nov 2016 20:09:41 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 23 Nov 2016 20:09:41 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Nov 2016 20:09:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 23 Nov 2016 20:09:46 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 23 Nov 2016 20:09:47 GMT
WORKDIR /usr/src/ghost
# Wed, 23 Nov 2016 20:09:47 GMT
ENV GHOST_VERSION=0.11.3
# Wed, 23 Nov 2016 20:10:53 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Wed, 23 Nov 2016 20:10:53 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 23 Nov 2016 20:10:54 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Wed, 23 Nov 2016 20:10:55 GMT
VOLUME [/var/lib/ghost]
# Wed, 23 Nov 2016 20:10:55 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Wed, 23 Nov 2016 20:10:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Nov 2016 20:10:56 GMT
EXPOSE 2368/tcp
# Wed, 23 Nov 2016 20:10:56 GMT
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
	-	`sha256:ba54c209b2da99d14473c2783e0808c7555bdd0d6d137f127d57a2af9b4705b2`  
		Last Modified: Wed, 23 Nov 2016 19:57:01 GMT  
		Size: 12.3 MB (12250714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc61ca4d8ce2c5bbe4234d3c32225f98bbf62e90e1b8ad6ca7730da38e641cb`  
		Last Modified: Wed, 23 Nov 2016 20:11:13 GMT  
		Size: 4.4 KB (4385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a166b53ae9b2554a17e1dcb1024d78e7d6a69d9cfbfd6041fd548372ee2dbbb`  
		Last Modified: Wed, 23 Nov 2016 20:11:11 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0db22360b896fbd361b1a79e89e16401e1e56d8b165516813a8d863ca01251c`  
		Last Modified: Wed, 23 Nov 2016 20:11:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe3a49a7197cdfa0229f7989ed8c2708cab0117082926977a139b34bd7ef963`  
		Last Modified: Wed, 23 Nov 2016 20:11:23 GMT  
		Size: 43.7 MB (43687451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba96c5135551eaf7e2938f945570cd3a5cf46d35a0df0434082807e4c1be1c0`  
		Last Modified: Wed, 23 Nov 2016 20:11:11 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71897a81e8fce7e8a78e25f3ce5a2ccbf26a9601acb26dfdd867d3b1e9e7c585`  
		Last Modified: Wed, 23 Nov 2016 20:11:10 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
