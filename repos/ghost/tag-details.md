<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ghost`

-	[`ghost:0.11.2`](#ghost0112)
-	[`ghost:0.11`](#ghost011)
-	[`ghost:0`](#ghost0)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0.11.2`

```console
$ docker pull ghost@sha256:6ab45fc89e579d96fce40974898ecc206f04438636f5f40e6dedd1dd1d3fe199
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126358108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd93e8f06acaa4051059424e87978390b160c8f60bff0c06992fc685c32631f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:33:33 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NODE_VERSION=4.6.1
# Fri, 21 Oct 2016 22:35:22 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 21 Oct 2016 22:35:22 GMT
CMD ["node"]
# Sat, 22 Oct 2016 06:20:31 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 22 Oct 2016 06:20:31 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 06:20:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 22 Oct 2016 06:20:37 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 22 Oct 2016 06:20:38 GMT
WORKDIR /usr/src/ghost
# Sat, 22 Oct 2016 06:20:38 GMT
ENV GHOST_VERSION=0.11.2
# Sat, 22 Oct 2016 06:21:29 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Sat, 22 Oct 2016 06:21:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 22 Oct 2016 06:21:31 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Sat, 22 Oct 2016 06:21:31 GMT
VOLUME [/var/lib/ghost]
# Sat, 22 Oct 2016 06:21:32 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Sat, 22 Oct 2016 06:21:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 06:21:33 GMT
EXPOSE 2368/tcp
# Sat, 22 Oct 2016 06:21:33 GMT
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
	-	`sha256:e1ee3d5412f7bcb119c18827c03974678af5eb8c5e35634439d6ff75c33f66e7`  
		Last Modified: Fri, 21 Oct 2016 22:33:58 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d7d74abfa19d5b5525bb68112a25967a4350bd3ddb828f37e16a23f7b6e8d0`  
		Last Modified: Fri, 21 Oct 2016 22:35:36 GMT  
		Size: 12.2 MB (12245350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271acaec28a4e215576fe4912d682a54e36c2829f0c241e09be106bc5b2dcdf0`  
		Last Modified: Sat, 22 Oct 2016 06:21:46 GMT  
		Size: 4.3 KB (4344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5332f89c7ec0b3307d034521bbeb2f8a6f9cc1d50233cc978e208f6bd3a010`  
		Last Modified: Sat, 22 Oct 2016 06:21:44 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e9567e996479f057c3237129aece72276b4ed2646a3d4a7996bbe47ab21a88`  
		Last Modified: Sat, 22 Oct 2016 06:21:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e39d64bf48478995119b52eb850de464c82d24d1ccc74acc25a04a5975c3d6`  
		Last Modified: Sat, 22 Oct 2016 06:21:52 GMT  
		Size: 43.3 MB (43321270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb33b223623ced5d8c7430fd106d715637e62c9b80c15da12a1fa8d40e930e0`  
		Last Modified: Sat, 22 Oct 2016 06:21:44 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944888491fb0b5315cc3167f74c3ac258a0a2b393789f3e8df411a0094449c2d`  
		Last Modified: Sat, 22 Oct 2016 06:21:43 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.11`

```console
$ docker pull ghost@sha256:6ab45fc89e579d96fce40974898ecc206f04438636f5f40e6dedd1dd1d3fe199
```

-	Platforms:
	-	linux; amd64

### `ghost:0.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126358108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd93e8f06acaa4051059424e87978390b160c8f60bff0c06992fc685c32631f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:33:33 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NODE_VERSION=4.6.1
# Fri, 21 Oct 2016 22:35:22 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 21 Oct 2016 22:35:22 GMT
CMD ["node"]
# Sat, 22 Oct 2016 06:20:31 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 22 Oct 2016 06:20:31 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 06:20:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 22 Oct 2016 06:20:37 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 22 Oct 2016 06:20:38 GMT
WORKDIR /usr/src/ghost
# Sat, 22 Oct 2016 06:20:38 GMT
ENV GHOST_VERSION=0.11.2
# Sat, 22 Oct 2016 06:21:29 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Sat, 22 Oct 2016 06:21:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 22 Oct 2016 06:21:31 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Sat, 22 Oct 2016 06:21:31 GMT
VOLUME [/var/lib/ghost]
# Sat, 22 Oct 2016 06:21:32 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Sat, 22 Oct 2016 06:21:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 06:21:33 GMT
EXPOSE 2368/tcp
# Sat, 22 Oct 2016 06:21:33 GMT
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
	-	`sha256:e1ee3d5412f7bcb119c18827c03974678af5eb8c5e35634439d6ff75c33f66e7`  
		Last Modified: Fri, 21 Oct 2016 22:33:58 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d7d74abfa19d5b5525bb68112a25967a4350bd3ddb828f37e16a23f7b6e8d0`  
		Last Modified: Fri, 21 Oct 2016 22:35:36 GMT  
		Size: 12.2 MB (12245350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271acaec28a4e215576fe4912d682a54e36c2829f0c241e09be106bc5b2dcdf0`  
		Last Modified: Sat, 22 Oct 2016 06:21:46 GMT  
		Size: 4.3 KB (4344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5332f89c7ec0b3307d034521bbeb2f8a6f9cc1d50233cc978e208f6bd3a010`  
		Last Modified: Sat, 22 Oct 2016 06:21:44 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e9567e996479f057c3237129aece72276b4ed2646a3d4a7996bbe47ab21a88`  
		Last Modified: Sat, 22 Oct 2016 06:21:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e39d64bf48478995119b52eb850de464c82d24d1ccc74acc25a04a5975c3d6`  
		Last Modified: Sat, 22 Oct 2016 06:21:52 GMT  
		Size: 43.3 MB (43321270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb33b223623ced5d8c7430fd106d715637e62c9b80c15da12a1fa8d40e930e0`  
		Last Modified: Sat, 22 Oct 2016 06:21:44 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944888491fb0b5315cc3167f74c3ac258a0a2b393789f3e8df411a0094449c2d`  
		Last Modified: Sat, 22 Oct 2016 06:21:43 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:6ab45fc89e579d96fce40974898ecc206f04438636f5f40e6dedd1dd1d3fe199
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126358108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd93e8f06acaa4051059424e87978390b160c8f60bff0c06992fc685c32631f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:33:33 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NODE_VERSION=4.6.1
# Fri, 21 Oct 2016 22:35:22 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 21 Oct 2016 22:35:22 GMT
CMD ["node"]
# Sat, 22 Oct 2016 06:20:31 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 22 Oct 2016 06:20:31 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 06:20:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 22 Oct 2016 06:20:37 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 22 Oct 2016 06:20:38 GMT
WORKDIR /usr/src/ghost
# Sat, 22 Oct 2016 06:20:38 GMT
ENV GHOST_VERSION=0.11.2
# Sat, 22 Oct 2016 06:21:29 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Sat, 22 Oct 2016 06:21:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 22 Oct 2016 06:21:31 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Sat, 22 Oct 2016 06:21:31 GMT
VOLUME [/var/lib/ghost]
# Sat, 22 Oct 2016 06:21:32 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Sat, 22 Oct 2016 06:21:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 06:21:33 GMT
EXPOSE 2368/tcp
# Sat, 22 Oct 2016 06:21:33 GMT
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
	-	`sha256:e1ee3d5412f7bcb119c18827c03974678af5eb8c5e35634439d6ff75c33f66e7`  
		Last Modified: Fri, 21 Oct 2016 22:33:58 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d7d74abfa19d5b5525bb68112a25967a4350bd3ddb828f37e16a23f7b6e8d0`  
		Last Modified: Fri, 21 Oct 2016 22:35:36 GMT  
		Size: 12.2 MB (12245350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271acaec28a4e215576fe4912d682a54e36c2829f0c241e09be106bc5b2dcdf0`  
		Last Modified: Sat, 22 Oct 2016 06:21:46 GMT  
		Size: 4.3 KB (4344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5332f89c7ec0b3307d034521bbeb2f8a6f9cc1d50233cc978e208f6bd3a010`  
		Last Modified: Sat, 22 Oct 2016 06:21:44 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e9567e996479f057c3237129aece72276b4ed2646a3d4a7996bbe47ab21a88`  
		Last Modified: Sat, 22 Oct 2016 06:21:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e39d64bf48478995119b52eb850de464c82d24d1ccc74acc25a04a5975c3d6`  
		Last Modified: Sat, 22 Oct 2016 06:21:52 GMT  
		Size: 43.3 MB (43321270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb33b223623ced5d8c7430fd106d715637e62c9b80c15da12a1fa8d40e930e0`  
		Last Modified: Sat, 22 Oct 2016 06:21:44 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944888491fb0b5315cc3167f74c3ac258a0a2b393789f3e8df411a0094449c2d`  
		Last Modified: Sat, 22 Oct 2016 06:21:43 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:6ab45fc89e579d96fce40974898ecc206f04438636f5f40e6dedd1dd1d3fe199
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126358108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd93e8f06acaa4051059424e87978390b160c8f60bff0c06992fc685c32631f9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:33:33 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 21 Oct 2016 22:35:11 GMT
ENV NODE_VERSION=4.6.1
# Fri, 21 Oct 2016 22:35:22 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 21 Oct 2016 22:35:22 GMT
CMD ["node"]
# Sat, 22 Oct 2016 06:20:31 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 22 Oct 2016 06:20:31 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 06:20:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 22 Oct 2016 06:20:37 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Sat, 22 Oct 2016 06:20:38 GMT
WORKDIR /usr/src/ghost
# Sat, 22 Oct 2016 06:20:38 GMT
ENV GHOST_VERSION=0.11.2
# Sat, 22 Oct 2016 06:21:29 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Sat, 22 Oct 2016 06:21:30 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Sat, 22 Oct 2016 06:21:31 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Sat, 22 Oct 2016 06:21:31 GMT
VOLUME [/var/lib/ghost]
# Sat, 22 Oct 2016 06:21:32 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh 
# Sat, 22 Oct 2016 06:21:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 06:21:33 GMT
EXPOSE 2368/tcp
# Sat, 22 Oct 2016 06:21:33 GMT
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
	-	`sha256:e1ee3d5412f7bcb119c18827c03974678af5eb8c5e35634439d6ff75c33f66e7`  
		Last Modified: Fri, 21 Oct 2016 22:33:58 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d7d74abfa19d5b5525bb68112a25967a4350bd3ddb828f37e16a23f7b6e8d0`  
		Last Modified: Fri, 21 Oct 2016 22:35:36 GMT  
		Size: 12.2 MB (12245350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271acaec28a4e215576fe4912d682a54e36c2829f0c241e09be106bc5b2dcdf0`  
		Last Modified: Sat, 22 Oct 2016 06:21:46 GMT  
		Size: 4.3 KB (4344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5332f89c7ec0b3307d034521bbeb2f8a6f9cc1d50233cc978e208f6bd3a010`  
		Last Modified: Sat, 22 Oct 2016 06:21:44 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e9567e996479f057c3237129aece72276b4ed2646a3d4a7996bbe47ab21a88`  
		Last Modified: Sat, 22 Oct 2016 06:21:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e39d64bf48478995119b52eb850de464c82d24d1ccc74acc25a04a5975c3d6`  
		Last Modified: Sat, 22 Oct 2016 06:21:52 GMT  
		Size: 43.3 MB (43321270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb33b223623ced5d8c7430fd106d715637e62c9b80c15da12a1fa8d40e930e0`  
		Last Modified: Sat, 22 Oct 2016 06:21:44 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944888491fb0b5315cc3167f74c3ac258a0a2b393789f3e8df411a0094449c2d`  
		Last Modified: Sat, 22 Oct 2016 06:21:43 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
