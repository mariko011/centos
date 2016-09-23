<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:2.6.12`](#mongo2612)
-	[`mongo:2.6`](#mongo26)
-	[`mongo:2`](#mongo2)
-	[`mongo:3.0.12`](#mongo3012)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.12-windowsservercore`](#mongo3012-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2.9`](#mongo329)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.2.9-windowsservercore`](#mongo329-windowsservercore)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)
-	[`mongo:3.3.14`](#mongo3314)
-	[`mongo:3.3`](#mongo33)
-	[`mongo:3.3.14-windowsservercore`](#mongo3314-windowsservercore)
-	[`mongo:3.3-windowsservercore`](#mongo33-windowsservercore)

## `mongo:2.6.12`

```console
$ docker pull mongo@sha256:3dfd5df7b4e2ff0f4e4cf08e9abb141c2f6a759519a94837dfbe287455d63543
```

-	Platforms:
	-	linux; amd64

### `mongo:2.6.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159357684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9764c3ca91b2075669f08d7e8cf2b6ec89680e5eba8f18c7b4e354f73376b732`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:10:10 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 19 Sep 2016 20:10:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates wget 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:10:20 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:10:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:10:27 GMT
ENV MONGO_VERSION=2.6.12
# Mon, 19 Sep 2016 20:10:44 GMT
RUN set -x 	&& wget -O mongo.tgz "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" 	&& wget -O mongo.tgz.sig "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz.sig" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	&& gpg --batch --verify mongo.tgz.sig mongo.tgz 	&& rm -r "$GNUPGHOME" mongo.tgz.sig 	&& tar -xvf mongo.tgz -C /usr/local --strip-components=1 	&& rm mongo.tgz
# Mon, 19 Sep 2016 20:10:45 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 19 Sep 2016 20:10:45 GMT
VOLUME [/data/db /data/configdb]
# Mon, 19 Sep 2016 20:10:46 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Mon, 19 Sep 2016 20:10:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Sep 2016 20:10:46 GMT
EXPOSE 27017/tcp
# Mon, 19 Sep 2016 20:10:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1059da88ab209b74e7152e260e7247aab3a09b9c8bcecf3909c27f7f713fcd7d`  
		Last Modified: Fri, 23 Sep 2016 20:04:52 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5150a146dd51d445a7a30a0bdba2025fdf948a03c4e867f47ba0328d7ae3850`  
		Last Modified: Fri, 23 Sep 2016 20:04:51 GMT  
		Size: 4.9 MB (4927685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44880743818f97e50cfcb67e6f5f3eb13642fa09117f157636eb6212016a89fc`  
		Last Modified: Fri, 23 Sep 2016 20:04:49 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed1bd23bf75b323aebf4353fefe80663fa1ff14c51c74f1ee1ae6640e91459c`  
		Last Modified: Fri, 23 Sep 2016 20:05:26 GMT  
		Size: 116.4 MB (116405365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62696214199670f61d893c9fb550e505f68c444057fd6cc05ff78fba56163bcb`  
		Last Modified: Fri, 23 Sep 2016 20:04:48 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45130e1f54ecb3e80fd952190483438f1f3ef7b7f78c2ddc5bca6e593e39f945`  
		Last Modified: Fri, 23 Sep 2016 20:04:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:2.6`

```console
$ docker pull mongo@sha256:3dfd5df7b4e2ff0f4e4cf08e9abb141c2f6a759519a94837dfbe287455d63543
```

-	Platforms:
	-	linux; amd64

### `mongo:2.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159357684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9764c3ca91b2075669f08d7e8cf2b6ec89680e5eba8f18c7b4e354f73376b732`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:10:10 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 19 Sep 2016 20:10:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates wget 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:10:20 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:10:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:10:27 GMT
ENV MONGO_VERSION=2.6.12
# Mon, 19 Sep 2016 20:10:44 GMT
RUN set -x 	&& wget -O mongo.tgz "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" 	&& wget -O mongo.tgz.sig "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz.sig" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	&& gpg --batch --verify mongo.tgz.sig mongo.tgz 	&& rm -r "$GNUPGHOME" mongo.tgz.sig 	&& tar -xvf mongo.tgz -C /usr/local --strip-components=1 	&& rm mongo.tgz
# Mon, 19 Sep 2016 20:10:45 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 19 Sep 2016 20:10:45 GMT
VOLUME [/data/db /data/configdb]
# Mon, 19 Sep 2016 20:10:46 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Mon, 19 Sep 2016 20:10:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Sep 2016 20:10:46 GMT
EXPOSE 27017/tcp
# Mon, 19 Sep 2016 20:10:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1059da88ab209b74e7152e260e7247aab3a09b9c8bcecf3909c27f7f713fcd7d`  
		Last Modified: Fri, 23 Sep 2016 20:04:52 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5150a146dd51d445a7a30a0bdba2025fdf948a03c4e867f47ba0328d7ae3850`  
		Last Modified: Fri, 23 Sep 2016 20:04:51 GMT  
		Size: 4.9 MB (4927685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44880743818f97e50cfcb67e6f5f3eb13642fa09117f157636eb6212016a89fc`  
		Last Modified: Fri, 23 Sep 2016 20:04:49 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed1bd23bf75b323aebf4353fefe80663fa1ff14c51c74f1ee1ae6640e91459c`  
		Last Modified: Fri, 23 Sep 2016 20:05:26 GMT  
		Size: 116.4 MB (116405365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62696214199670f61d893c9fb550e505f68c444057fd6cc05ff78fba56163bcb`  
		Last Modified: Fri, 23 Sep 2016 20:04:48 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45130e1f54ecb3e80fd952190483438f1f3ef7b7f78c2ddc5bca6e593e39f945`  
		Last Modified: Fri, 23 Sep 2016 20:04:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:2`

```console
$ docker pull mongo@sha256:3dfd5df7b4e2ff0f4e4cf08e9abb141c2f6a759519a94837dfbe287455d63543
```

-	Platforms:
	-	linux; amd64

### `mongo:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159357684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9764c3ca91b2075669f08d7e8cf2b6ec89680e5eba8f18c7b4e354f73376b732`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:10:10 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 19 Sep 2016 20:10:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates wget 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:10:20 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:10:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Sep 2016 20:10:27 GMT
ENV MONGO_VERSION=2.6.12
# Mon, 19 Sep 2016 20:10:44 GMT
RUN set -x 	&& wget -O mongo.tgz "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" 	&& wget -O mongo.tgz.sig "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz.sig" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	&& gpg --batch --verify mongo.tgz.sig mongo.tgz 	&& rm -r "$GNUPGHOME" mongo.tgz.sig 	&& tar -xvf mongo.tgz -C /usr/local --strip-components=1 	&& rm mongo.tgz
# Mon, 19 Sep 2016 20:10:45 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 19 Sep 2016 20:10:45 GMT
VOLUME [/data/db /data/configdb]
# Mon, 19 Sep 2016 20:10:46 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Mon, 19 Sep 2016 20:10:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Sep 2016 20:10:46 GMT
EXPOSE 27017/tcp
# Mon, 19 Sep 2016 20:10:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1059da88ab209b74e7152e260e7247aab3a09b9c8bcecf3909c27f7f713fcd7d`  
		Last Modified: Fri, 23 Sep 2016 20:04:52 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5150a146dd51d445a7a30a0bdba2025fdf948a03c4e867f47ba0328d7ae3850`  
		Last Modified: Fri, 23 Sep 2016 20:04:51 GMT  
		Size: 4.9 MB (4927685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44880743818f97e50cfcb67e6f5f3eb13642fa09117f157636eb6212016a89fc`  
		Last Modified: Fri, 23 Sep 2016 20:04:49 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed1bd23bf75b323aebf4353fefe80663fa1ff14c51c74f1ee1ae6640e91459c`  
		Last Modified: Fri, 23 Sep 2016 20:05:26 GMT  
		Size: 116.4 MB (116405365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62696214199670f61d893c9fb550e505f68c444057fd6cc05ff78fba56163bcb`  
		Last Modified: Fri, 23 Sep 2016 20:04:48 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45130e1f54ecb3e80fd952190483438f1f3ef7b7f78c2ddc5bca6e593e39f945`  
		Last Modified: Fri, 23 Sep 2016 20:04:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.12`

```console
$ docker pull mongo@sha256:92f784487d10e913838bd9920bc5478b8ac7a0c91eec12f448d08e150fbe331a
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97237244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33116c5b6f74ab45a4e693e5d8098ab4590fefcfffe544ecc89e614874140903`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:10:10 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 19 Sep 2016 20:11:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:11:48 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:12:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Sep 2016 20:12:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Mon, 19 Sep 2016 20:12:03 GMT
ENV MONGO_MAJOR=3.0
# Mon, 19 Sep 2016 20:12:03 GMT
ENV MONGO_VERSION=3.0.12
# Mon, 19 Sep 2016 20:12:04 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 19 Sep 2016 20:12:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 19 Sep 2016 20:12:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 19 Sep 2016 20:12:23 GMT
VOLUME [/data/db /data/configdb]
# Mon, 19 Sep 2016 20:12:23 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Mon, 19 Sep 2016 20:12:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Sep 2016 20:12:24 GMT
EXPOSE 27017/tcp
# Mon, 19 Sep 2016 20:12:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1059da88ab209b74e7152e260e7247aab3a09b9c8bcecf3909c27f7f713fcd7d`  
		Last Modified: Fri, 23 Sep 2016 20:04:52 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2806b8dc0473cea2b304d7be5335904342c6c0542a806fc7629b5e986cce61d8`  
		Last Modified: Fri, 23 Sep 2016 20:07:55 GMT  
		Size: 145.7 KB (145725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a0065d12ec0378a48277a4aa0e6b497f2259cb0626f2774cd31764f9dd5e58`  
		Last Modified: Fri, 23 Sep 2016 20:07:55 GMT  
		Size: 1.2 MB (1172999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e05c6df3961444ac4c293feadf9d2bfb4616e63928771c31a91307bf1efba61`  
		Last Modified: Fri, 23 Sep 2016 20:07:52 GMT  
		Size: 29.8 KB (29802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8d0445f5177d8fa15f5e921736ddc13644de860aea02017fe85ad75f5c75de`  
		Last Modified: Fri, 23 Sep 2016 20:07:52 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf28a4767ba8d96faefb834ff1135747996645d96a767c35d755aa5fc9c1d0e9`  
		Last Modified: Fri, 23 Sep 2016 20:08:14 GMT  
		Size: 58.7 MB (58671790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1965320173808203fcbab2d951605bf581cc77658ad632c2aa9af2386930195`  
		Last Modified: Fri, 23 Sep 2016 20:07:53 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5913ff89d15803d6997236b08a1b5bf36e9b6e325e897286ea97ecd19390a55`  
		Last Modified: Fri, 23 Sep 2016 20:07:53 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:92f784487d10e913838bd9920bc5478b8ac7a0c91eec12f448d08e150fbe331a
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97237244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33116c5b6f74ab45a4e693e5d8098ab4590fefcfffe544ecc89e614874140903`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:10:10 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 19 Sep 2016 20:11:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:11:48 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:12:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Sep 2016 20:12:03 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Mon, 19 Sep 2016 20:12:03 GMT
ENV MONGO_MAJOR=3.0
# Mon, 19 Sep 2016 20:12:03 GMT
ENV MONGO_VERSION=3.0.12
# Mon, 19 Sep 2016 20:12:04 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 19 Sep 2016 20:12:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 19 Sep 2016 20:12:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 19 Sep 2016 20:12:23 GMT
VOLUME [/data/db /data/configdb]
# Mon, 19 Sep 2016 20:12:23 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Mon, 19 Sep 2016 20:12:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Sep 2016 20:12:24 GMT
EXPOSE 27017/tcp
# Mon, 19 Sep 2016 20:12:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1059da88ab209b74e7152e260e7247aab3a09b9c8bcecf3909c27f7f713fcd7d`  
		Last Modified: Fri, 23 Sep 2016 20:04:52 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2806b8dc0473cea2b304d7be5335904342c6c0542a806fc7629b5e986cce61d8`  
		Last Modified: Fri, 23 Sep 2016 20:07:55 GMT  
		Size: 145.7 KB (145725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a0065d12ec0378a48277a4aa0e6b497f2259cb0626f2774cd31764f9dd5e58`  
		Last Modified: Fri, 23 Sep 2016 20:07:55 GMT  
		Size: 1.2 MB (1172999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e05c6df3961444ac4c293feadf9d2bfb4616e63928771c31a91307bf1efba61`  
		Last Modified: Fri, 23 Sep 2016 20:07:52 GMT  
		Size: 29.8 KB (29802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8d0445f5177d8fa15f5e921736ddc13644de860aea02017fe85ad75f5c75de`  
		Last Modified: Fri, 23 Sep 2016 20:07:52 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf28a4767ba8d96faefb834ff1135747996645d96a767c35d755aa5fc9c1d0e9`  
		Last Modified: Fri, 23 Sep 2016 20:08:14 GMT  
		Size: 58.7 MB (58671790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1965320173808203fcbab2d951605bf581cc77658ad632c2aa9af2386930195`  
		Last Modified: Fri, 23 Sep 2016 20:07:53 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5913ff89d15803d6997236b08a1b5bf36e9b6e325e897286ea97ecd19390a55`  
		Last Modified: Fri, 23 Sep 2016 20:07:53 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.12-windowsservercore`

```console
$ docker pull mongo@sha256:44911b4b1332083dc87d9f75fd5d64f6777e351b8723226c06607b9751c55a33
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0.12-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 GB (3640038551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ea6bc4351dc2959251d83c26969ffd012b886b347feab2ccd448562ffcdf13`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 17 Aug 2016 20:30:21 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 17 Aug 2016 22:16:07 GMT
ENV MONGO_VERSION=3.0.12
# Wed, 17 Aug 2016 22:16:10 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.12-signed.msi
# Wed, 17 Aug 2016 22:16:14 GMT
ENV MONGO_DOWNLOAD_SHA256=be537b5fdc1763bb8640ac6384a44fa787c12499cfa648338c0695c5752de18a
# Wed, 17 Aug 2016 22:19:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 17 Aug 2016 22:19:46 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 17 Aug 2016 22:19:50 GMT
EXPOSE 27017/tcp
# Wed, 17 Aug 2016 22:19:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe883eff4994fbceb894d01dd7cc6bd7e3ab5903f730c7144ea2e799aa566a5`  
		Last Modified: Thu, 18 Aug 2016 21:19:50 GMT  
		Size: 4.1 MB (4053324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2316cdda03afd712011cec222e72a38e55df1f4defd72d226438fac651aad4`  
		Last Modified: Thu, 18 Aug 2016 21:19:40 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dbf4120a6cfdaddc587c8c4c2ce815361bc37676105af64a9b57e7613e9105`  
		Last Modified: Thu, 18 Aug 2016 21:19:39 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bd238845389709ec257140baed85f626c9162c9c23ce42a421907c9fc634c7`  
		Last Modified: Thu, 18 Aug 2016 21:19:36 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3ae6c6640c010af0f2c71c7ab59463db3fb0a1edfbde75df4f5ffc555c6a36`  
		Last Modified: Thu, 18 Aug 2016 21:20:50 GMT  
		Size: 174.8 MB (174830660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b1242788c3aaed23474f07a7edbcd09a3742947fe97625d6f41c8f498af147`  
		Last Modified: Thu, 18 Aug 2016 21:19:35 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46417da535b06e1d801709c313dea4129fa9ea390ee0c8d38d69ec46dafc9624`  
		Last Modified: Thu, 18 Aug 2016 21:19:36 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:056441d2464b72f4bc8107f1949bd6a730008c716602ed39ce5e24539638e3b5`  
		Last Modified: Thu, 18 Aug 2016 21:19:35 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:44911b4b1332083dc87d9f75fd5d64f6777e351b8723226c06607b9751c55a33
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 GB (3640038551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ea6bc4351dc2959251d83c26969ffd012b886b347feab2ccd448562ffcdf13`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 17 Aug 2016 20:30:21 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 17 Aug 2016 22:16:07 GMT
ENV MONGO_VERSION=3.0.12
# Wed, 17 Aug 2016 22:16:10 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.12-signed.msi
# Wed, 17 Aug 2016 22:16:14 GMT
ENV MONGO_DOWNLOAD_SHA256=be537b5fdc1763bb8640ac6384a44fa787c12499cfa648338c0695c5752de18a
# Wed, 17 Aug 2016 22:19:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 17 Aug 2016 22:19:46 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 17 Aug 2016 22:19:50 GMT
EXPOSE 27017/tcp
# Wed, 17 Aug 2016 22:19:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe883eff4994fbceb894d01dd7cc6bd7e3ab5903f730c7144ea2e799aa566a5`  
		Last Modified: Thu, 18 Aug 2016 21:19:50 GMT  
		Size: 4.1 MB (4053324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2316cdda03afd712011cec222e72a38e55df1f4defd72d226438fac651aad4`  
		Last Modified: Thu, 18 Aug 2016 21:19:40 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dbf4120a6cfdaddc587c8c4c2ce815361bc37676105af64a9b57e7613e9105`  
		Last Modified: Thu, 18 Aug 2016 21:19:39 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bd238845389709ec257140baed85f626c9162c9c23ce42a421907c9fc634c7`  
		Last Modified: Thu, 18 Aug 2016 21:19:36 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3ae6c6640c010af0f2c71c7ab59463db3fb0a1edfbde75df4f5ffc555c6a36`  
		Last Modified: Thu, 18 Aug 2016 21:20:50 GMT  
		Size: 174.8 MB (174830660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b1242788c3aaed23474f07a7edbcd09a3742947fe97625d6f41c8f498af147`  
		Last Modified: Thu, 18 Aug 2016 21:19:35 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46417da535b06e1d801709c313dea4129fa9ea390ee0c8d38d69ec46dafc9624`  
		Last Modified: Thu, 18 Aug 2016 21:19:36 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:056441d2464b72f4bc8107f1949bd6a730008c716602ed39ce5e24539638e3b5`  
		Last Modified: Thu, 18 Aug 2016 21:19:35 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.9`

```console
$ docker pull mongo@sha256:27cfe059af7d5fad5b1a0381e0cf85fa52e3222915adfe96e0d3004bd9851d0b
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126231019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6d2bbc1f992fabadfcd8450b3d000149fc64ddd824bdad17f388776b1053493`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:05:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 23 Sep 2016 20:06:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:06:02 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 20:06:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 20:06:19 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 23 Sep 2016 20:06:21 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Sep 2016 20:06:21 GMT
ENV MONGO_MAJOR=3.2
# Fri, 23 Sep 2016 20:06:22 GMT
ENV MONGO_VERSION=3.2.9
# Fri, 23 Sep 2016 20:06:23 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 23 Sep 2016 20:06:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 23 Sep 2016 20:06:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 23 Sep 2016 20:06:36 GMT
VOLUME [/data/db /data/configdb]
# Fri, 23 Sep 2016 20:06:37 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Fri, 23 Sep 2016 20:06:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 20:06:38 GMT
EXPOSE 27017/tcp
# Fri, 23 Sep 2016 20:06:38 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068577f76f42dee918ef4710b25307b905d6a9862755ac4ccb5d5b262e8f3eb6`  
		Last Modified: Fri, 23 Sep 2016 20:06:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a9ca5f1cfbce73ad508bd74c3792d486f9e1aecd8b322141d24a31c6f1441d`  
		Last Modified: Fri, 23 Sep 2016 20:06:48 GMT  
		Size: 134.2 KB (134192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd64f14877aa3979f5fc39114e197a43b003146e0b9a4ca5644588dd7835f0e`  
		Last Modified: Fri, 23 Sep 2016 20:06:48 GMT  
		Size: 1.2 MB (1217241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd11288b8c62379ff17e992d285f6d48ae4258bf6bf74927fca15633b48d57f4`  
		Last Modified: Fri, 23 Sep 2016 20:06:47 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbacb99d024b8fa76f9148448578fa7a927c8a003ecb7030752b53f2aed344`  
		Last Modified: Fri, 23 Sep 2016 20:06:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f597c343b97b8d8e17ef9745ae9f2e13e7bd78ed054b921dbf409f5d7972c6`  
		Last Modified: Fri, 23 Sep 2016 20:07:10 GMT  
		Size: 73.5 MB (73519351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2293335b21fb0c30ec872af195f61755043ffbb7892f1028dcfd5493f24acbf0`  
		Last Modified: Fri, 23 Sep 2016 20:06:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e650573d37cb56733f31c91f137e380713ccd8e405bfc255ae882dffe00fc0e`  
		Last Modified: Fri, 23 Sep 2016 20:06:46 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:27cfe059af7d5fad5b1a0381e0cf85fa52e3222915adfe96e0d3004bd9851d0b
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126231019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6d2bbc1f992fabadfcd8450b3d000149fc64ddd824bdad17f388776b1053493`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:05:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 23 Sep 2016 20:06:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:06:02 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 20:06:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 20:06:19 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 23 Sep 2016 20:06:21 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Sep 2016 20:06:21 GMT
ENV MONGO_MAJOR=3.2
# Fri, 23 Sep 2016 20:06:22 GMT
ENV MONGO_VERSION=3.2.9
# Fri, 23 Sep 2016 20:06:23 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 23 Sep 2016 20:06:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 23 Sep 2016 20:06:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 23 Sep 2016 20:06:36 GMT
VOLUME [/data/db /data/configdb]
# Fri, 23 Sep 2016 20:06:37 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Fri, 23 Sep 2016 20:06:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 20:06:38 GMT
EXPOSE 27017/tcp
# Fri, 23 Sep 2016 20:06:38 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068577f76f42dee918ef4710b25307b905d6a9862755ac4ccb5d5b262e8f3eb6`  
		Last Modified: Fri, 23 Sep 2016 20:06:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a9ca5f1cfbce73ad508bd74c3792d486f9e1aecd8b322141d24a31c6f1441d`  
		Last Modified: Fri, 23 Sep 2016 20:06:48 GMT  
		Size: 134.2 KB (134192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd64f14877aa3979f5fc39114e197a43b003146e0b9a4ca5644588dd7835f0e`  
		Last Modified: Fri, 23 Sep 2016 20:06:48 GMT  
		Size: 1.2 MB (1217241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd11288b8c62379ff17e992d285f6d48ae4258bf6bf74927fca15633b48d57f4`  
		Last Modified: Fri, 23 Sep 2016 20:06:47 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbacb99d024b8fa76f9148448578fa7a927c8a003ecb7030752b53f2aed344`  
		Last Modified: Fri, 23 Sep 2016 20:06:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f597c343b97b8d8e17ef9745ae9f2e13e7bd78ed054b921dbf409f5d7972c6`  
		Last Modified: Fri, 23 Sep 2016 20:07:10 GMT  
		Size: 73.5 MB (73519351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2293335b21fb0c30ec872af195f61755043ffbb7892f1028dcfd5493f24acbf0`  
		Last Modified: Fri, 23 Sep 2016 20:06:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e650573d37cb56733f31c91f137e380713ccd8e405bfc255ae882dffe00fc0e`  
		Last Modified: Fri, 23 Sep 2016 20:06:46 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:27cfe059af7d5fad5b1a0381e0cf85fa52e3222915adfe96e0d3004bd9851d0b
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126231019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6d2bbc1f992fabadfcd8450b3d000149fc64ddd824bdad17f388776b1053493`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:05:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 23 Sep 2016 20:06:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:06:02 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 20:06:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 20:06:19 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 23 Sep 2016 20:06:21 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Sep 2016 20:06:21 GMT
ENV MONGO_MAJOR=3.2
# Fri, 23 Sep 2016 20:06:22 GMT
ENV MONGO_VERSION=3.2.9
# Fri, 23 Sep 2016 20:06:23 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 23 Sep 2016 20:06:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 23 Sep 2016 20:06:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 23 Sep 2016 20:06:36 GMT
VOLUME [/data/db /data/configdb]
# Fri, 23 Sep 2016 20:06:37 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Fri, 23 Sep 2016 20:06:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 20:06:38 GMT
EXPOSE 27017/tcp
# Fri, 23 Sep 2016 20:06:38 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068577f76f42dee918ef4710b25307b905d6a9862755ac4ccb5d5b262e8f3eb6`  
		Last Modified: Fri, 23 Sep 2016 20:06:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a9ca5f1cfbce73ad508bd74c3792d486f9e1aecd8b322141d24a31c6f1441d`  
		Last Modified: Fri, 23 Sep 2016 20:06:48 GMT  
		Size: 134.2 KB (134192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd64f14877aa3979f5fc39114e197a43b003146e0b9a4ca5644588dd7835f0e`  
		Last Modified: Fri, 23 Sep 2016 20:06:48 GMT  
		Size: 1.2 MB (1217241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd11288b8c62379ff17e992d285f6d48ae4258bf6bf74927fca15633b48d57f4`  
		Last Modified: Fri, 23 Sep 2016 20:06:47 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbacb99d024b8fa76f9148448578fa7a927c8a003ecb7030752b53f2aed344`  
		Last Modified: Fri, 23 Sep 2016 20:06:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f597c343b97b8d8e17ef9745ae9f2e13e7bd78ed054b921dbf409f5d7972c6`  
		Last Modified: Fri, 23 Sep 2016 20:07:10 GMT  
		Size: 73.5 MB (73519351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2293335b21fb0c30ec872af195f61755043ffbb7892f1028dcfd5493f24acbf0`  
		Last Modified: Fri, 23 Sep 2016 20:06:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e650573d37cb56733f31c91f137e380713ccd8e405bfc255ae882dffe00fc0e`  
		Last Modified: Fri, 23 Sep 2016 20:06:46 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:27cfe059af7d5fad5b1a0381e0cf85fa52e3222915adfe96e0d3004bd9851d0b
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126231019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6d2bbc1f992fabadfcd8450b3d000149fc64ddd824bdad17f388776b1053493`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:05:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 23 Sep 2016 20:06:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:06:02 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 20:06:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 20:06:19 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 23 Sep 2016 20:06:21 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Sep 2016 20:06:21 GMT
ENV MONGO_MAJOR=3.2
# Fri, 23 Sep 2016 20:06:22 GMT
ENV MONGO_VERSION=3.2.9
# Fri, 23 Sep 2016 20:06:23 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 23 Sep 2016 20:06:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 23 Sep 2016 20:06:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 23 Sep 2016 20:06:36 GMT
VOLUME [/data/db /data/configdb]
# Fri, 23 Sep 2016 20:06:37 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Fri, 23 Sep 2016 20:06:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 20:06:38 GMT
EXPOSE 27017/tcp
# Fri, 23 Sep 2016 20:06:38 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068577f76f42dee918ef4710b25307b905d6a9862755ac4ccb5d5b262e8f3eb6`  
		Last Modified: Fri, 23 Sep 2016 20:06:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a9ca5f1cfbce73ad508bd74c3792d486f9e1aecd8b322141d24a31c6f1441d`  
		Last Modified: Fri, 23 Sep 2016 20:06:48 GMT  
		Size: 134.2 KB (134192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd64f14877aa3979f5fc39114e197a43b003146e0b9a4ca5644588dd7835f0e`  
		Last Modified: Fri, 23 Sep 2016 20:06:48 GMT  
		Size: 1.2 MB (1217241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd11288b8c62379ff17e992d285f6d48ae4258bf6bf74927fca15633b48d57f4`  
		Last Modified: Fri, 23 Sep 2016 20:06:47 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbacb99d024b8fa76f9148448578fa7a927c8a003ecb7030752b53f2aed344`  
		Last Modified: Fri, 23 Sep 2016 20:06:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f597c343b97b8d8e17ef9745ae9f2e13e7bd78ed054b921dbf409f5d7972c6`  
		Last Modified: Fri, 23 Sep 2016 20:07:10 GMT  
		Size: 73.5 MB (73519351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2293335b21fb0c30ec872af195f61755043ffbb7892f1028dcfd5493f24acbf0`  
		Last Modified: Fri, 23 Sep 2016 20:06:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e650573d37cb56733f31c91f137e380713ccd8e405bfc255ae882dffe00fc0e`  
		Last Modified: Fri, 23 Sep 2016 20:06:46 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.9-windowsservercore`

```console
$ docker pull mongo@sha256:ba519873382a39eb57d5475d0f57f1e31cfd8ee6e7fae1f2657731f6f78dacdf
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.9-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3687848106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fa480a4ce5764d0a054c5809add635c298a88c0611a64d805c2ba4a244ea32`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 17 Aug 2016 20:30:21 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 17 Aug 2016 20:30:24 GMT
ENV MONGO_VERSION=3.2.9
# Wed, 17 Aug 2016 21:15:24 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.9-signed.msi
# Wed, 17 Aug 2016 21:15:28 GMT
ENV MONGO_DOWNLOAD_SHA256=348db5060e5c821acbd170331e806ea0233626837e6ea30e7d0e8dc72cc2e41f
# Wed, 17 Aug 2016 21:27:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 17 Aug 2016 21:28:40 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 17 Aug 2016 21:28:44 GMT
EXPOSE 27017/tcp
# Wed, 17 Aug 2016 21:28:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe883eff4994fbceb894d01dd7cc6bd7e3ab5903f730c7144ea2e799aa566a5`  
		Last Modified: Thu, 18 Aug 2016 21:19:50 GMT  
		Size: 4.1 MB (4053324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140da80509c7a92709f53eced91c049431efd9877f0a3ec600608651449ffefc`  
		Last Modified: Thu, 18 Aug 2016 21:21:12 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf803535633973d91b2a70612d64d2545bda3a54795df846b94f58f3c1e5e95e`  
		Last Modified: Thu, 18 Aug 2016 21:21:11 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a87b405168925e094fff97ade066bd3f5da3a7425c4d8df7fe509d35858e43`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62f4c001bfba45c6fe4826468b87454ecd7f84a9b670417445b9394e9806626`  
		Last Modified: Thu, 18 Aug 2016 21:22:36 GMT  
		Size: 222.6 MB (222640218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7020cbff2876c55c17e3c6e36ff27bfd88ca6c74e62925672dd989e74c6ed80f`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86976dff0634792afec216d7fcf4182b79e112476d20878825be6dd78971f3d2`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34220f3d200659831e75062b7bd59dc734acc3d0abd8c85851054d6e9d49c4d9`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:ba519873382a39eb57d5475d0f57f1e31cfd8ee6e7fae1f2657731f6f78dacdf
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3687848106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fa480a4ce5764d0a054c5809add635c298a88c0611a64d805c2ba4a244ea32`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 17 Aug 2016 20:30:21 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 17 Aug 2016 20:30:24 GMT
ENV MONGO_VERSION=3.2.9
# Wed, 17 Aug 2016 21:15:24 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.9-signed.msi
# Wed, 17 Aug 2016 21:15:28 GMT
ENV MONGO_DOWNLOAD_SHA256=348db5060e5c821acbd170331e806ea0233626837e6ea30e7d0e8dc72cc2e41f
# Wed, 17 Aug 2016 21:27:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 17 Aug 2016 21:28:40 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 17 Aug 2016 21:28:44 GMT
EXPOSE 27017/tcp
# Wed, 17 Aug 2016 21:28:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe883eff4994fbceb894d01dd7cc6bd7e3ab5903f730c7144ea2e799aa566a5`  
		Last Modified: Thu, 18 Aug 2016 21:19:50 GMT  
		Size: 4.1 MB (4053324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140da80509c7a92709f53eced91c049431efd9877f0a3ec600608651449ffefc`  
		Last Modified: Thu, 18 Aug 2016 21:21:12 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf803535633973d91b2a70612d64d2545bda3a54795df846b94f58f3c1e5e95e`  
		Last Modified: Thu, 18 Aug 2016 21:21:11 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a87b405168925e094fff97ade066bd3f5da3a7425c4d8df7fe509d35858e43`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62f4c001bfba45c6fe4826468b87454ecd7f84a9b670417445b9394e9806626`  
		Last Modified: Thu, 18 Aug 2016 21:22:36 GMT  
		Size: 222.6 MB (222640218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7020cbff2876c55c17e3c6e36ff27bfd88ca6c74e62925672dd989e74c6ed80f`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86976dff0634792afec216d7fcf4182b79e112476d20878825be6dd78971f3d2`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34220f3d200659831e75062b7bd59dc734acc3d0abd8c85851054d6e9d49c4d9`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:ba519873382a39eb57d5475d0f57f1e31cfd8ee6e7fae1f2657731f6f78dacdf
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3687848106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fa480a4ce5764d0a054c5809add635c298a88c0611a64d805c2ba4a244ea32`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 17 Aug 2016 20:30:21 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 17 Aug 2016 20:30:24 GMT
ENV MONGO_VERSION=3.2.9
# Wed, 17 Aug 2016 21:15:24 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.9-signed.msi
# Wed, 17 Aug 2016 21:15:28 GMT
ENV MONGO_DOWNLOAD_SHA256=348db5060e5c821acbd170331e806ea0233626837e6ea30e7d0e8dc72cc2e41f
# Wed, 17 Aug 2016 21:27:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 17 Aug 2016 21:28:40 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 17 Aug 2016 21:28:44 GMT
EXPOSE 27017/tcp
# Wed, 17 Aug 2016 21:28:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe883eff4994fbceb894d01dd7cc6bd7e3ab5903f730c7144ea2e799aa566a5`  
		Last Modified: Thu, 18 Aug 2016 21:19:50 GMT  
		Size: 4.1 MB (4053324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140da80509c7a92709f53eced91c049431efd9877f0a3ec600608651449ffefc`  
		Last Modified: Thu, 18 Aug 2016 21:21:12 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf803535633973d91b2a70612d64d2545bda3a54795df846b94f58f3c1e5e95e`  
		Last Modified: Thu, 18 Aug 2016 21:21:11 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a87b405168925e094fff97ade066bd3f5da3a7425c4d8df7fe509d35858e43`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62f4c001bfba45c6fe4826468b87454ecd7f84a9b670417445b9394e9806626`  
		Last Modified: Thu, 18 Aug 2016 21:22:36 GMT  
		Size: 222.6 MB (222640218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7020cbff2876c55c17e3c6e36ff27bfd88ca6c74e62925672dd989e74c6ed80f`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86976dff0634792afec216d7fcf4182b79e112476d20878825be6dd78971f3d2`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34220f3d200659831e75062b7bd59dc734acc3d0abd8c85851054d6e9d49c4d9`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:ba519873382a39eb57d5475d0f57f1e31cfd8ee6e7fae1f2657731f6f78dacdf
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3687848106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fa480a4ce5764d0a054c5809add635c298a88c0611a64d805c2ba4a244ea32`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 17 Aug 2016 20:30:21 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 17 Aug 2016 20:30:24 GMT
ENV MONGO_VERSION=3.2.9
# Wed, 17 Aug 2016 21:15:24 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.9-signed.msi
# Wed, 17 Aug 2016 21:15:28 GMT
ENV MONGO_DOWNLOAD_SHA256=348db5060e5c821acbd170331e806ea0233626837e6ea30e7d0e8dc72cc2e41f
# Wed, 17 Aug 2016 21:27:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 17 Aug 2016 21:28:40 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 17 Aug 2016 21:28:44 GMT
EXPOSE 27017/tcp
# Wed, 17 Aug 2016 21:28:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe883eff4994fbceb894d01dd7cc6bd7e3ab5903f730c7144ea2e799aa566a5`  
		Last Modified: Thu, 18 Aug 2016 21:19:50 GMT  
		Size: 4.1 MB (4053324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140da80509c7a92709f53eced91c049431efd9877f0a3ec600608651449ffefc`  
		Last Modified: Thu, 18 Aug 2016 21:21:12 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf803535633973d91b2a70612d64d2545bda3a54795df846b94f58f3c1e5e95e`  
		Last Modified: Thu, 18 Aug 2016 21:21:11 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a87b405168925e094fff97ade066bd3f5da3a7425c4d8df7fe509d35858e43`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62f4c001bfba45c6fe4826468b87454ecd7f84a9b670417445b9394e9806626`  
		Last Modified: Thu, 18 Aug 2016 21:22:36 GMT  
		Size: 222.6 MB (222640218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7020cbff2876c55c17e3c6e36ff27bfd88ca6c74e62925672dd989e74c6ed80f`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86976dff0634792afec216d7fcf4182b79e112476d20878825be6dd78971f3d2`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34220f3d200659831e75062b7bd59dc734acc3d0abd8c85851054d6e9d49c4d9`  
		Last Modified: Thu, 18 Aug 2016 21:21:08 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3.14`

```console
$ docker pull mongo@sha256:ed17510fc90f456effbeb1e225cd7bb0fd27eaa9451a29fda0461101020c3928
```

-	Platforms:
	-	linux; amd64

### `mongo:3.3.14` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.0 MB (150027162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1583b20077aae948d86b69b5fd9f822cdd0ee7df46436cc4ed3f179aad2e2cb4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:05:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 23 Sep 2016 20:06:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:06:02 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 20:06:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 20:08:35 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 23 Sep 2016 20:08:35 GMT
ENV MONGO_MAJOR=3.3
# Fri, 23 Sep 2016 23:24:51 GMT
ENV MONGO_VERSION=3.3.14
# Fri, 23 Sep 2016 23:24:52 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 23 Sep 2016 23:25:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org-unstable=$MONGO_VERSION 		mongodb-org-unstable-server=$MONGO_VERSION 		mongodb-org-unstable-shell=$MONGO_VERSION 		mongodb-org-unstable-mongos=$MONGO_VERSION 		mongodb-org-unstable-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 23 Sep 2016 23:25:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 23 Sep 2016 23:25:10 GMT
VOLUME [/data/db /data/configdb]
# Fri, 23 Sep 2016 23:25:10 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Fri, 23 Sep 2016 23:25:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 23:25:11 GMT
EXPOSE 27017/tcp
# Fri, 23 Sep 2016 23:25:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068577f76f42dee918ef4710b25307b905d6a9862755ac4ccb5d5b262e8f3eb6`  
		Last Modified: Fri, 23 Sep 2016 20:06:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a9ca5f1cfbce73ad508bd74c3792d486f9e1aecd8b322141d24a31c6f1441d`  
		Last Modified: Fri, 23 Sep 2016 20:06:48 GMT  
		Size: 134.2 KB (134192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd64f14877aa3979f5fc39114e197a43b003146e0b9a4ca5644588dd7835f0e`  
		Last Modified: Fri, 23 Sep 2016 20:06:48 GMT  
		Size: 1.2 MB (1217241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5e7c2e38d000ca500a0efdde3441823a28c192ee7192cb486409a0044ebc9f`  
		Last Modified: Fri, 23 Sep 2016 20:09:11 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ccb7b75d8bf82cbd379ab095d6d954d130fa9ca9e5ed09983df916f87b0217`  
		Last Modified: Fri, 23 Sep 2016 23:26:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a4275652f5d009d55951ff881867759e4bfa12957694304c337734a108c0f7`  
		Last Modified: Fri, 23 Sep 2016 23:27:19 GMT  
		Size: 97.3 MB (97317168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdea92c502ab545f4981b014ada19fec910884d88792bd2bb3f1ebee77077ee6`  
		Last Modified: Fri, 23 Sep 2016 23:26:48 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b602e4f4551cec3fc5d5dc0fbe1817b765713ab83a11437c9dd603500227942`  
		Last Modified: Fri, 23 Sep 2016 23:26:47 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3`

```console
$ docker pull mongo@sha256:ed17510fc90f456effbeb1e225cd7bb0fd27eaa9451a29fda0461101020c3928
```

-	Platforms:
	-	linux; amd64

### `mongo:3.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.0 MB (150027162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1583b20077aae948d86b69b5fd9f822cdd0ee7df46436cc4ed3f179aad2e2cb4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:05:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 23 Sep 2016 20:06:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:06:02 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 20:06:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 20:08:35 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 23 Sep 2016 20:08:35 GMT
ENV MONGO_MAJOR=3.3
# Fri, 23 Sep 2016 23:24:51 GMT
ENV MONGO_VERSION=3.3.14
# Fri, 23 Sep 2016 23:24:52 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 23 Sep 2016 23:25:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org-unstable=$MONGO_VERSION 		mongodb-org-unstable-server=$MONGO_VERSION 		mongodb-org-unstable-shell=$MONGO_VERSION 		mongodb-org-unstable-mongos=$MONGO_VERSION 		mongodb-org-unstable-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 23 Sep 2016 23:25:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 23 Sep 2016 23:25:10 GMT
VOLUME [/data/db /data/configdb]
# Fri, 23 Sep 2016 23:25:10 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Fri, 23 Sep 2016 23:25:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 23:25:11 GMT
EXPOSE 27017/tcp
# Fri, 23 Sep 2016 23:25:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068577f76f42dee918ef4710b25307b905d6a9862755ac4ccb5d5b262e8f3eb6`  
		Last Modified: Fri, 23 Sep 2016 20:06:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a9ca5f1cfbce73ad508bd74c3792d486f9e1aecd8b322141d24a31c6f1441d`  
		Last Modified: Fri, 23 Sep 2016 20:06:48 GMT  
		Size: 134.2 KB (134192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd64f14877aa3979f5fc39114e197a43b003146e0b9a4ca5644588dd7835f0e`  
		Last Modified: Fri, 23 Sep 2016 20:06:48 GMT  
		Size: 1.2 MB (1217241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5e7c2e38d000ca500a0efdde3441823a28c192ee7192cb486409a0044ebc9f`  
		Last Modified: Fri, 23 Sep 2016 20:09:11 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ccb7b75d8bf82cbd379ab095d6d954d130fa9ca9e5ed09983df916f87b0217`  
		Last Modified: Fri, 23 Sep 2016 23:26:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a4275652f5d009d55951ff881867759e4bfa12957694304c337734a108c0f7`  
		Last Modified: Fri, 23 Sep 2016 23:27:19 GMT  
		Size: 97.3 MB (97317168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdea92c502ab545f4981b014ada19fec910884d88792bd2bb3f1ebee77077ee6`  
		Last Modified: Fri, 23 Sep 2016 23:26:48 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b602e4f4551cec3fc5d5dc0fbe1817b765713ab83a11437c9dd603500227942`  
		Last Modified: Fri, 23 Sep 2016 23:26:47 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3.14-windowsservercore`

**does not exist** (yet?)

## `mongo:3.3-windowsservercore`

```console
$ docker pull mongo@sha256:9aa5eb04b0a2482eab295a6705fd733868feff0f53d669cfdc78f8b6b4e327c3
```

-	Platforms:
	-	windows; amd64

### `mongo:3.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3787514182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f0cc93faf26d8211ee3fa5877642eedf0b11c41add05cdf697ca1867963583`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 17 Aug 2016 20:30:21 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 31 Aug 2016 16:16:55 GMT
ENV MONGO_VERSION=3.3.12
# Wed, 31 Aug 2016 16:16:59 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.12-signed.msi
# Wed, 31 Aug 2016 16:17:03 GMT
ENV MONGO_DOWNLOAD_SHA256=1d06487bc1c85bd0bee6e1e8103c990cc19a4455d4dbb09f2527a89a173b3872
# Wed, 31 Aug 2016 16:20:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 31 Aug 2016 16:20:29 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 31 Aug 2016 16:20:33 GMT
EXPOSE 27017/tcp
# Wed, 31 Aug 2016 16:20:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1239394e5a8ab79fbd3b751dc5d98decf5886f14339958fdf5c1f96c89da58a7`  
		Size: 3.5 GB (3461145128 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be0175dbdd12c150c89a273c6ae8a093858f186a1b130670b81917d39cfc62c3`  
		Last Modified: Tue, 16 Aug 2016 16:11:53 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe883eff4994fbceb894d01dd7cc6bd7e3ab5903f730c7144ea2e799aa566a5`  
		Last Modified: Thu, 18 Aug 2016 21:19:50 GMT  
		Size: 4.1 MB (4053324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3c49989aef9af2407efb740d36da08afaa13fed43befd1d7c7ec679aab6693`  
		Last Modified: Wed, 31 Aug 2016 20:33:46 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d49f0d697447b81b19cbfda52ae5d38369436708686915d4b80ead3425a24c3`  
		Last Modified: Wed, 31 Aug 2016 20:33:45 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f14943ea0406bd25eb15b26e4c9e797edb0d557211c00e8ef58bbb8665b881`  
		Last Modified: Wed, 31 Aug 2016 20:33:32 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0333d1baaa86a8dfef09a46e09cbdbe2a245535c296eaaf94299cc23bc4fbd6`  
		Last Modified: Wed, 31 Aug 2016 20:35:22 GMT  
		Size: 322.3 MB (322306287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17680bc4ca912de4a9de850f400762a3144822dfb4c8e3793afed3399553e97b`  
		Last Modified: Wed, 31 Aug 2016 20:33:32 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d873f05b3753dac7509a628695c7872ed9386f29bbca7eed25540632ee81731`  
		Last Modified: Wed, 31 Aug 2016 20:33:33 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f477c9643ddedce6a61bb9c7875efce78b3b3a12fb52a45678865b9906953ca0`  
		Last Modified: Wed, 31 Aug 2016 20:33:32 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
