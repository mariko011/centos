<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `ghost`

-	[`ghost:0.9.0`](#ghost090)
-	[`ghost:0.9`](#ghost09)
-	[`ghost:0`](#ghost0)
-	[`ghost:latest`](#ghostlatest)

## `ghost:0.9.0`

```console
$ docker pull ghost@sha256:7354d6d9ffd553d4f479ffea9909315658fc1dab0f45f7b2f4db90f1525baf71
```

-	Platforms:
	-	linux; amd64

### `ghost:0.9.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108996905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8dadd77e4c905f79d13b3d1eed7e5c9b4e14b445146d922fa665a7e43608246`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 23:42:49 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 29 Jul 2016 23:46:03 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 16 Aug 2016 19:39:13 GMT
ENV NODE_VERSION=4.5.0
# Tue, 16 Aug 2016 19:40:25 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Aug 2016 19:40:27 GMT
CMD ["node"]
# Wed, 17 Aug 2016 17:12:21 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 17 Aug 2016 17:13:01 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 Aug 2016 17:13:02 GMT
ENV GOSU_VERSION=1.7
# Wed, 17 Aug 2016 17:13:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 17 Aug 2016 17:13:08 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 17 Aug 2016 17:13:09 GMT
WORKDIR /usr/src/ghost
# Wed, 17 Aug 2016 17:13:10 GMT
ENV GHOST_VERSION=0.9.0
# Wed, 17 Aug 2016 17:15:32 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Wed, 17 Aug 2016 17:15:34 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 17 Aug 2016 17:15:36 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Wed, 17 Aug 2016 17:15:37 GMT
VOLUME [/var/lib/ghost]
# Wed, 17 Aug 2016 17:15:39 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh
# Wed, 17 Aug 2016 17:15:39 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 17 Aug 2016 17:15:40 GMT
EXPOSE 2368/tcp
# Wed, 17 Aug 2016 17:15:41 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e99d7dcd4fae0ccc58e5f7abc885a0ba385ab1b4276ba4f14cd19fb74603cc`  
		Last Modified: Mon, 01 Aug 2016 16:35:18 GMT  
		Size: 71.8 KB (71850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc48cb2d559f883d8508a6a3186213de37c16a71815404029e0947f19501ecc4`  
		Last Modified: Tue, 16 Aug 2016 19:46:30 GMT  
		Size: 12.3 MB (12272999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f32b09bb7657e2a5e4315017c5420aab8c736cb0ff5b21b8cb4ec5d7649d58`  
		Last Modified: Wed, 17 Aug 2016 17:15:56 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b1491200817ef0fefcbdfc1bd4d8b1a83654eb7f40b34cd15704c8c2bdd352`  
		Last Modified: Wed, 17 Aug 2016 17:15:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd318da8f7eedc16f48daa12c313a0ef3cdf7be93fc5d3a48e4d322199a308`  
		Last Modified: Wed, 17 Aug 2016 17:15:54 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257425f49a60d96a7e23edb87137d368e79b76701baad035dd7d56dbdd75e933`  
		Last Modified: Wed, 17 Aug 2016 17:15:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50491037aaef7cf597e45f3091a36096fb67e30969bd79cbd24322f14bad3386`  
		Last Modified: Wed, 17 Aug 2016 17:16:04 GMT  
		Size: 25.9 MB (25946285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3a659bb796e372dd9089414525735a46bc22adf169c5f47fa875d281dc3f91`  
		Last Modified: Wed, 17 Aug 2016 17:15:53 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73197a909cf22914bd0819d541072ee44770b203b4bc24f19444118340bb1ed7`  
		Last Modified: Wed, 17 Aug 2016 17:15:53 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0.9`

```console
$ docker pull ghost@sha256:7354d6d9ffd553d4f479ffea9909315658fc1dab0f45f7b2f4db90f1525baf71
```

-	Platforms:
	-	linux; amd64

### `ghost:0.9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108996905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8dadd77e4c905f79d13b3d1eed7e5c9b4e14b445146d922fa665a7e43608246`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 23:42:49 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 29 Jul 2016 23:46:03 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 16 Aug 2016 19:39:13 GMT
ENV NODE_VERSION=4.5.0
# Tue, 16 Aug 2016 19:40:25 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Aug 2016 19:40:27 GMT
CMD ["node"]
# Wed, 17 Aug 2016 17:12:21 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 17 Aug 2016 17:13:01 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 Aug 2016 17:13:02 GMT
ENV GOSU_VERSION=1.7
# Wed, 17 Aug 2016 17:13:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 17 Aug 2016 17:13:08 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 17 Aug 2016 17:13:09 GMT
WORKDIR /usr/src/ghost
# Wed, 17 Aug 2016 17:13:10 GMT
ENV GHOST_VERSION=0.9.0
# Wed, 17 Aug 2016 17:15:32 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Wed, 17 Aug 2016 17:15:34 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 17 Aug 2016 17:15:36 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Wed, 17 Aug 2016 17:15:37 GMT
VOLUME [/var/lib/ghost]
# Wed, 17 Aug 2016 17:15:39 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh
# Wed, 17 Aug 2016 17:15:39 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 17 Aug 2016 17:15:40 GMT
EXPOSE 2368/tcp
# Wed, 17 Aug 2016 17:15:41 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e99d7dcd4fae0ccc58e5f7abc885a0ba385ab1b4276ba4f14cd19fb74603cc`  
		Last Modified: Mon, 01 Aug 2016 16:35:18 GMT  
		Size: 71.8 KB (71850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc48cb2d559f883d8508a6a3186213de37c16a71815404029e0947f19501ecc4`  
		Last Modified: Tue, 16 Aug 2016 19:46:30 GMT  
		Size: 12.3 MB (12272999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f32b09bb7657e2a5e4315017c5420aab8c736cb0ff5b21b8cb4ec5d7649d58`  
		Last Modified: Wed, 17 Aug 2016 17:15:56 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b1491200817ef0fefcbdfc1bd4d8b1a83654eb7f40b34cd15704c8c2bdd352`  
		Last Modified: Wed, 17 Aug 2016 17:15:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd318da8f7eedc16f48daa12c313a0ef3cdf7be93fc5d3a48e4d322199a308`  
		Last Modified: Wed, 17 Aug 2016 17:15:54 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257425f49a60d96a7e23edb87137d368e79b76701baad035dd7d56dbdd75e933`  
		Last Modified: Wed, 17 Aug 2016 17:15:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50491037aaef7cf597e45f3091a36096fb67e30969bd79cbd24322f14bad3386`  
		Last Modified: Wed, 17 Aug 2016 17:16:04 GMT  
		Size: 25.9 MB (25946285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3a659bb796e372dd9089414525735a46bc22adf169c5f47fa875d281dc3f91`  
		Last Modified: Wed, 17 Aug 2016 17:15:53 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73197a909cf22914bd0819d541072ee44770b203b4bc24f19444118340bb1ed7`  
		Last Modified: Wed, 17 Aug 2016 17:15:53 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:0`

```console
$ docker pull ghost@sha256:7354d6d9ffd553d4f479ffea9909315658fc1dab0f45f7b2f4db90f1525baf71
```

-	Platforms:
	-	linux; amd64

### `ghost:0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108996905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8dadd77e4c905f79d13b3d1eed7e5c9b4e14b445146d922fa665a7e43608246`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 23:42:49 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 29 Jul 2016 23:46:03 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 16 Aug 2016 19:39:13 GMT
ENV NODE_VERSION=4.5.0
# Tue, 16 Aug 2016 19:40:25 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Aug 2016 19:40:27 GMT
CMD ["node"]
# Wed, 17 Aug 2016 17:12:21 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 17 Aug 2016 17:13:01 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 Aug 2016 17:13:02 GMT
ENV GOSU_VERSION=1.7
# Wed, 17 Aug 2016 17:13:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 17 Aug 2016 17:13:08 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 17 Aug 2016 17:13:09 GMT
WORKDIR /usr/src/ghost
# Wed, 17 Aug 2016 17:13:10 GMT
ENV GHOST_VERSION=0.9.0
# Wed, 17 Aug 2016 17:15:32 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Wed, 17 Aug 2016 17:15:34 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 17 Aug 2016 17:15:36 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Wed, 17 Aug 2016 17:15:37 GMT
VOLUME [/var/lib/ghost]
# Wed, 17 Aug 2016 17:15:39 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh
# Wed, 17 Aug 2016 17:15:39 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 17 Aug 2016 17:15:40 GMT
EXPOSE 2368/tcp
# Wed, 17 Aug 2016 17:15:41 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e99d7dcd4fae0ccc58e5f7abc885a0ba385ab1b4276ba4f14cd19fb74603cc`  
		Last Modified: Mon, 01 Aug 2016 16:35:18 GMT  
		Size: 71.8 KB (71850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc48cb2d559f883d8508a6a3186213de37c16a71815404029e0947f19501ecc4`  
		Last Modified: Tue, 16 Aug 2016 19:46:30 GMT  
		Size: 12.3 MB (12272999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f32b09bb7657e2a5e4315017c5420aab8c736cb0ff5b21b8cb4ec5d7649d58`  
		Last Modified: Wed, 17 Aug 2016 17:15:56 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b1491200817ef0fefcbdfc1bd4d8b1a83654eb7f40b34cd15704c8c2bdd352`  
		Last Modified: Wed, 17 Aug 2016 17:15:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd318da8f7eedc16f48daa12c313a0ef3cdf7be93fc5d3a48e4d322199a308`  
		Last Modified: Wed, 17 Aug 2016 17:15:54 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257425f49a60d96a7e23edb87137d368e79b76701baad035dd7d56dbdd75e933`  
		Last Modified: Wed, 17 Aug 2016 17:15:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50491037aaef7cf597e45f3091a36096fb67e30969bd79cbd24322f14bad3386`  
		Last Modified: Wed, 17 Aug 2016 17:16:04 GMT  
		Size: 25.9 MB (25946285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3a659bb796e372dd9089414525735a46bc22adf169c5f47fa875d281dc3f91`  
		Last Modified: Wed, 17 Aug 2016 17:15:53 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73197a909cf22914bd0819d541072ee44770b203b4bc24f19444118340bb1ed7`  
		Last Modified: Wed, 17 Aug 2016 17:15:53 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ghost:latest`

```console
$ docker pull ghost@sha256:7354d6d9ffd553d4f479ffea9909315658fc1dab0f45f7b2f4db90f1525baf71
```

-	Platforms:
	-	linux; amd64

### `ghost:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108996905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8dadd77e4c905f79d13b3d1eed7e5c9b4e14b445146d922fa665a7e43608246`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["npm","start"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 23:42:49 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 29 Jul 2016 23:46:03 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 16 Aug 2016 19:39:13 GMT
ENV NODE_VERSION=4.5.0
# Tue, 16 Aug 2016 19:40:25 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Aug 2016 19:40:27 GMT
CMD ["node"]
# Wed, 17 Aug 2016 17:12:21 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 17 Aug 2016 17:13:01 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 17 Aug 2016 17:13:02 GMT
ENV GOSU_VERSION=1.7
# Wed, 17 Aug 2016 17:13:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 17 Aug 2016 17:13:08 GMT
ENV GHOST_SOURCE=/usr/src/ghost
# Wed, 17 Aug 2016 17:13:09 GMT
WORKDIR /usr/src/ghost
# Wed, 17 Aug 2016 17:13:10 GMT
ENV GHOST_VERSION=0.9.0
# Wed, 17 Aug 2016 17:15:32 GMT
RUN buildDeps=' 		gcc 		make 		python 		unzip 	' 	&& set -x 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget -O ghost.zip "https://ghost.org/archives/ghost-${GHOST_VERSION}.zip" 	&& unzip ghost.zip 	&& npm install --production 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps 	&& rm ghost.zip 	&& npm cache clean 	&& rm -rf /tmp/npm*
# Wed, 17 Aug 2016 17:15:34 GMT
ENV GHOST_CONTENT=/var/lib/ghost
# Wed, 17 Aug 2016 17:15:36 GMT
RUN mkdir -p "$GHOST_CONTENT" && chown -R user:user "$GHOST_CONTENT"
# Wed, 17 Aug 2016 17:15:37 GMT
VOLUME [/var/lib/ghost]
# Wed, 17 Aug 2016 17:15:39 GMT
COPY file:c0bc882b990efd55f75953224ed07d533c09aeac8158a4698a92e623b1c79ce9 in /entrypoint.sh
# Wed, 17 Aug 2016 17:15:39 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 17 Aug 2016 17:15:40 GMT
EXPOSE 2368/tcp
# Wed, 17 Aug 2016 17:15:41 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e99d7dcd4fae0ccc58e5f7abc885a0ba385ab1b4276ba4f14cd19fb74603cc`  
		Last Modified: Mon, 01 Aug 2016 16:35:18 GMT  
		Size: 71.8 KB (71850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc48cb2d559f883d8508a6a3186213de37c16a71815404029e0947f19501ecc4`  
		Last Modified: Tue, 16 Aug 2016 19:46:30 GMT  
		Size: 12.3 MB (12272999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f32b09bb7657e2a5e4315017c5420aab8c736cb0ff5b21b8cb4ec5d7649d58`  
		Last Modified: Wed, 17 Aug 2016 17:15:56 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b1491200817ef0fefcbdfc1bd4d8b1a83654eb7f40b34cd15704c8c2bdd352`  
		Last Modified: Wed, 17 Aug 2016 17:15:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd318da8f7eedc16f48daa12c313a0ef3cdf7be93fc5d3a48e4d322199a308`  
		Last Modified: Wed, 17 Aug 2016 17:15:54 GMT  
		Size: 807.9 KB (807936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257425f49a60d96a7e23edb87137d368e79b76701baad035dd7d56dbdd75e933`  
		Last Modified: Wed, 17 Aug 2016 17:15:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50491037aaef7cf597e45f3091a36096fb67e30969bd79cbd24322f14bad3386`  
		Last Modified: Wed, 17 Aug 2016 17:16:04 GMT  
		Size: 25.9 MB (25946285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3a659bb796e372dd9089414525735a46bc22adf169c5f47fa875d281dc3f91`  
		Last Modified: Wed, 17 Aug 2016 17:15:53 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73197a909cf22914bd0819d541072ee44770b203b4bc24f19444118340bb1ed7`  
		Last Modified: Wed, 17 Aug 2016 17:15:53 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
