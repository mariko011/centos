<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:2.6.12`](#mongo2612)
-	[`mongo:2.6`](#mongo26)
-	[`mongo:2`](#mongo2)
-	[`mongo:3.0.12`](#mongo3012)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.12-windowsservercore`](#mongo3012-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2.10`](#mongo3210)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.2.10-windowsservercore`](#mongo3210-windowsservercore)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)
-	[`mongo:3.3.15`](#mongo3315)
-	[`mongo:3.3`](#mongo33)
-	[`mongo:3.3.15-windowsservercore`](#mongo3315-windowsservercore)
-	[`mongo:3.3-windowsservercore`](#mongo33-windowsservercore)

## `mongo:2.6.12`

```console
$ docker pull mongo@sha256:2828519e03fc7616a4724c9776d77b8f15a29ecf527d0ffaa7d78583311cf419
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
$ docker pull mongo@sha256:2828519e03fc7616a4724c9776d77b8f15a29ecf527d0ffaa7d78583311cf419
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
$ docker pull mongo@sha256:2828519e03fc7616a4724c9776d77b8f15a29ecf527d0ffaa7d78583311cf419
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
$ docker pull mongo@sha256:1a49acb4dcf2012a3de848d5578ba155a9717b2370766a62fb60fa8f40ccda14
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
$ docker pull mongo@sha256:1a49acb4dcf2012a3de848d5578ba155a9717b2370766a62fb60fa8f40ccda14
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
$ docker pull mongo@sha256:d6c7cdad2123e3f8ea9df0d3bb25c72534cf344a85ed53dfdab5a6525d3c3cb9
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0.12-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 GB (4524540546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8d7be864b96d9596fb272792c493cef4fbb5e83466357a00234256fbff88018`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:27:24 GMT
ENV MONGO_VERSION=3.0.12
# Wed, 12 Oct 2016 19:27:35 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.12-signed.msi
# Wed, 12 Oct 2016 19:27:40 GMT
ENV MONGO_DOWNLOAD_SHA256=be537b5fdc1763bb8640ac6384a44fa787c12499cfa648338c0695c5752de18a
# Wed, 12 Oct 2016 19:30:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:30:29 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:30:34 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:30:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f925e25f58702c8050f9bcfeae7cec9f012f6f49a3ec443a3bfc9e9f3cab012d`  
		Last Modified: Wed, 12 Oct 2016 19:49:24 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db219e773ae40ec840f29ff2d751a9378337701d1539c3f71d96978feee4a9be`  
		Last Modified: Wed, 12 Oct 2016 19:49:21 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19be0e402a62a7617ee07da38be5244584c216459a6a8545e7382d1029f6d0ab`  
		Last Modified: Wed, 12 Oct 2016 19:49:22 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ad67227b80331e3e16280c9dc37e82b713bb5a5feeac2dfdf3ce20978f0001`  
		Last Modified: Wed, 12 Oct 2016 19:50:03 GMT  
		Size: 169.1 MB (169124301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461ec4002f2b822e37e3534a01febcbb29959dd7b4d25b71dd9f05d406d7279f`  
		Last Modified: Wed, 12 Oct 2016 19:49:21 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8270cc8e0cd11d7569f41da073ddb4f6d803a202d9f641802d4c0bff23a0cdb5`  
		Last Modified: Wed, 12 Oct 2016 19:49:18 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a277be8e55e9879041efee927731b35b7f52c4475af1ecb530c00bc5b6960a`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:d6c7cdad2123e3f8ea9df0d3bb25c72534cf344a85ed53dfdab5a6525d3c3cb9
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 GB (4524540546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8d7be864b96d9596fb272792c493cef4fbb5e83466357a00234256fbff88018`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:27:24 GMT
ENV MONGO_VERSION=3.0.12
# Wed, 12 Oct 2016 19:27:35 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.12-signed.msi
# Wed, 12 Oct 2016 19:27:40 GMT
ENV MONGO_DOWNLOAD_SHA256=be537b5fdc1763bb8640ac6384a44fa787c12499cfa648338c0695c5752de18a
# Wed, 12 Oct 2016 19:30:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:30:29 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:30:34 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:30:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f925e25f58702c8050f9bcfeae7cec9f012f6f49a3ec443a3bfc9e9f3cab012d`  
		Last Modified: Wed, 12 Oct 2016 19:49:24 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db219e773ae40ec840f29ff2d751a9378337701d1539c3f71d96978feee4a9be`  
		Last Modified: Wed, 12 Oct 2016 19:49:21 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19be0e402a62a7617ee07da38be5244584c216459a6a8545e7382d1029f6d0ab`  
		Last Modified: Wed, 12 Oct 2016 19:49:22 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ad67227b80331e3e16280c9dc37e82b713bb5a5feeac2dfdf3ce20978f0001`  
		Last Modified: Wed, 12 Oct 2016 19:50:03 GMT  
		Size: 169.1 MB (169124301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461ec4002f2b822e37e3534a01febcbb29959dd7b4d25b71dd9f05d406d7279f`  
		Last Modified: Wed, 12 Oct 2016 19:49:21 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8270cc8e0cd11d7569f41da073ddb4f6d803a202d9f641802d4c0bff23a0cdb5`  
		Last Modified: Wed, 12 Oct 2016 19:49:18 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a277be8e55e9879041efee927731b35b7f52c4475af1ecb530c00bc5b6960a`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.10`

```console
$ docker pull mongo@sha256:a4a3cb330b203710abba23fc2c7f969ab6f9f669ecf23fe251ec6a18d61ab129
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123435777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dfc45693d00ba0cdf3998546e5e01fcbe131e8e7f2d2df82abb66e0c28166d2`
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
# Fri, 30 Sep 2016 23:43:50 GMT
ENV MONGO_VERSION=3.2.10
# Fri, 30 Sep 2016 23:43:51 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 30 Sep 2016 23:44:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 30 Sep 2016 23:44:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 30 Sep 2016 23:44:06 GMT
VOLUME [/data/db /data/configdb]
# Fri, 30 Sep 2016 23:44:07 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Fri, 30 Sep 2016 23:44:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 30 Sep 2016 23:44:08 GMT
EXPOSE 27017/tcp
# Fri, 30 Sep 2016 23:44:08 GMT
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
	-	`sha256:d966b36682c765d936c7c2b38e7563a85662e5eabd6c396a63457ece46615466`  
		Last Modified: Fri, 30 Sep 2016 23:45:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a87dd4f9c276fa55026cc67a94069d484f6d01b2e2875b08f67daa41465e65b`  
		Last Modified: Fri, 30 Sep 2016 23:45:34 GMT  
		Size: 70.7 MB (70724106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771c2dbe3c50cd98b6955041e9d0b18530102c3b1ec238fb7eea1346fd4519c3`  
		Last Modified: Fri, 30 Sep 2016 23:45:08 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bfa4b0645130c9d99d4a95b1654fc29a03021b11a1fdac1eb6da715f4383b4`  
		Last Modified: Fri, 30 Sep 2016 23:45:06 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:a4a3cb330b203710abba23fc2c7f969ab6f9f669ecf23fe251ec6a18d61ab129
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123435777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dfc45693d00ba0cdf3998546e5e01fcbe131e8e7f2d2df82abb66e0c28166d2`
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
# Fri, 30 Sep 2016 23:43:50 GMT
ENV MONGO_VERSION=3.2.10
# Fri, 30 Sep 2016 23:43:51 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 30 Sep 2016 23:44:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 30 Sep 2016 23:44:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 30 Sep 2016 23:44:06 GMT
VOLUME [/data/db /data/configdb]
# Fri, 30 Sep 2016 23:44:07 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Fri, 30 Sep 2016 23:44:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 30 Sep 2016 23:44:08 GMT
EXPOSE 27017/tcp
# Fri, 30 Sep 2016 23:44:08 GMT
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
	-	`sha256:d966b36682c765d936c7c2b38e7563a85662e5eabd6c396a63457ece46615466`  
		Last Modified: Fri, 30 Sep 2016 23:45:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a87dd4f9c276fa55026cc67a94069d484f6d01b2e2875b08f67daa41465e65b`  
		Last Modified: Fri, 30 Sep 2016 23:45:34 GMT  
		Size: 70.7 MB (70724106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771c2dbe3c50cd98b6955041e9d0b18530102c3b1ec238fb7eea1346fd4519c3`  
		Last Modified: Fri, 30 Sep 2016 23:45:08 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bfa4b0645130c9d99d4a95b1654fc29a03021b11a1fdac1eb6da715f4383b4`  
		Last Modified: Fri, 30 Sep 2016 23:45:06 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:a4a3cb330b203710abba23fc2c7f969ab6f9f669ecf23fe251ec6a18d61ab129
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123435777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dfc45693d00ba0cdf3998546e5e01fcbe131e8e7f2d2df82abb66e0c28166d2`
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
# Fri, 30 Sep 2016 23:43:50 GMT
ENV MONGO_VERSION=3.2.10
# Fri, 30 Sep 2016 23:43:51 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 30 Sep 2016 23:44:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 30 Sep 2016 23:44:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 30 Sep 2016 23:44:06 GMT
VOLUME [/data/db /data/configdb]
# Fri, 30 Sep 2016 23:44:07 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Fri, 30 Sep 2016 23:44:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 30 Sep 2016 23:44:08 GMT
EXPOSE 27017/tcp
# Fri, 30 Sep 2016 23:44:08 GMT
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
	-	`sha256:d966b36682c765d936c7c2b38e7563a85662e5eabd6c396a63457ece46615466`  
		Last Modified: Fri, 30 Sep 2016 23:45:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a87dd4f9c276fa55026cc67a94069d484f6d01b2e2875b08f67daa41465e65b`  
		Last Modified: Fri, 30 Sep 2016 23:45:34 GMT  
		Size: 70.7 MB (70724106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771c2dbe3c50cd98b6955041e9d0b18530102c3b1ec238fb7eea1346fd4519c3`  
		Last Modified: Fri, 30 Sep 2016 23:45:08 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bfa4b0645130c9d99d4a95b1654fc29a03021b11a1fdac1eb6da715f4383b4`  
		Last Modified: Fri, 30 Sep 2016 23:45:06 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:a4a3cb330b203710abba23fc2c7f969ab6f9f669ecf23fe251ec6a18d61ab129
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123435777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dfc45693d00ba0cdf3998546e5e01fcbe131e8e7f2d2df82abb66e0c28166d2`
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
# Fri, 30 Sep 2016 23:43:50 GMT
ENV MONGO_VERSION=3.2.10
# Fri, 30 Sep 2016 23:43:51 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 30 Sep 2016 23:44:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 30 Sep 2016 23:44:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 30 Sep 2016 23:44:06 GMT
VOLUME [/data/db /data/configdb]
# Fri, 30 Sep 2016 23:44:07 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Fri, 30 Sep 2016 23:44:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 30 Sep 2016 23:44:08 GMT
EXPOSE 27017/tcp
# Fri, 30 Sep 2016 23:44:08 GMT
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
	-	`sha256:d966b36682c765d936c7c2b38e7563a85662e5eabd6c396a63457ece46615466`  
		Last Modified: Fri, 30 Sep 2016 23:45:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a87dd4f9c276fa55026cc67a94069d484f6d01b2e2875b08f67daa41465e65b`  
		Last Modified: Fri, 30 Sep 2016 23:45:34 GMT  
		Size: 70.7 MB (70724106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771c2dbe3c50cd98b6955041e9d0b18530102c3b1ec238fb7eea1346fd4519c3`  
		Last Modified: Fri, 30 Sep 2016 23:45:08 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bfa4b0645130c9d99d4a95b1654fc29a03021b11a1fdac1eb6da715f4383b4`  
		Last Modified: Fri, 30 Sep 2016 23:45:06 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.10-windowsservercore`

```console
$ docker pull mongo@sha256:30432077f7d93ddd49d8a84ea9f370360a2bb600a210ea8270caa3d19d66d584
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.10-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 GB (4569053773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44af0f461ea14896bd6232ffd32c2cf92c0f86f223e4035bc03552ecf9256ed`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:30:47 GMT
ENV MONGO_VERSION=3.2.10
# Wed, 12 Oct 2016 19:30:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Wed, 12 Oct 2016 19:31:00 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Wed, 12 Oct 2016 19:33:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:34:02 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:34:10 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:34:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a658c98dc0f6f152961d7636994d1f1b7e60a11fe42b7485c24010d81a5d54d3`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0866f2bfeb998c8ea9171faff8d5478d27175e8f397dff664cf5aa6bf950b644`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e603a6450b8542e99e6e5da7ecfa97e1258d43b768ef8351fb93d3c5cfdfb472`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf5e96bb87c2e78cdbc6918ff3086f41e1ebbefc7333ef2b6fca01cfed43f2f`  
		Last Modified: Wed, 12 Oct 2016 19:51:18 GMT  
		Size: 213.6 MB (213637546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ca146e8004a4f978728e5d9ed1f5b104808a4e0e8f2f2eb7eb83fb782831ec`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b56d2a0f0699947171a4dbbd2e506c2549cbeebccf18feb724cc3b4071d685`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623c223b6087b92f47fb85708afa62dd803858e75dd10b7cbf208eb152b81ba3`  
		Last Modified: Wed, 12 Oct 2016 19:50:21 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:30432077f7d93ddd49d8a84ea9f370360a2bb600a210ea8270caa3d19d66d584
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 GB (4569053773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44af0f461ea14896bd6232ffd32c2cf92c0f86f223e4035bc03552ecf9256ed`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:30:47 GMT
ENV MONGO_VERSION=3.2.10
# Wed, 12 Oct 2016 19:30:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Wed, 12 Oct 2016 19:31:00 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Wed, 12 Oct 2016 19:33:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:34:02 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:34:10 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:34:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a658c98dc0f6f152961d7636994d1f1b7e60a11fe42b7485c24010d81a5d54d3`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0866f2bfeb998c8ea9171faff8d5478d27175e8f397dff664cf5aa6bf950b644`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e603a6450b8542e99e6e5da7ecfa97e1258d43b768ef8351fb93d3c5cfdfb472`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf5e96bb87c2e78cdbc6918ff3086f41e1ebbefc7333ef2b6fca01cfed43f2f`  
		Last Modified: Wed, 12 Oct 2016 19:51:18 GMT  
		Size: 213.6 MB (213637546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ca146e8004a4f978728e5d9ed1f5b104808a4e0e8f2f2eb7eb83fb782831ec`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b56d2a0f0699947171a4dbbd2e506c2549cbeebccf18feb724cc3b4071d685`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623c223b6087b92f47fb85708afa62dd803858e75dd10b7cbf208eb152b81ba3`  
		Last Modified: Wed, 12 Oct 2016 19:50:21 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:30432077f7d93ddd49d8a84ea9f370360a2bb600a210ea8270caa3d19d66d584
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 GB (4569053773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44af0f461ea14896bd6232ffd32c2cf92c0f86f223e4035bc03552ecf9256ed`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:30:47 GMT
ENV MONGO_VERSION=3.2.10
# Wed, 12 Oct 2016 19:30:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Wed, 12 Oct 2016 19:31:00 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Wed, 12 Oct 2016 19:33:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:34:02 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:34:10 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:34:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a658c98dc0f6f152961d7636994d1f1b7e60a11fe42b7485c24010d81a5d54d3`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0866f2bfeb998c8ea9171faff8d5478d27175e8f397dff664cf5aa6bf950b644`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e603a6450b8542e99e6e5da7ecfa97e1258d43b768ef8351fb93d3c5cfdfb472`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf5e96bb87c2e78cdbc6918ff3086f41e1ebbefc7333ef2b6fca01cfed43f2f`  
		Last Modified: Wed, 12 Oct 2016 19:51:18 GMT  
		Size: 213.6 MB (213637546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ca146e8004a4f978728e5d9ed1f5b104808a4e0e8f2f2eb7eb83fb782831ec`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b56d2a0f0699947171a4dbbd2e506c2549cbeebccf18feb724cc3b4071d685`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623c223b6087b92f47fb85708afa62dd803858e75dd10b7cbf208eb152b81ba3`  
		Last Modified: Wed, 12 Oct 2016 19:50:21 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:30432077f7d93ddd49d8a84ea9f370360a2bb600a210ea8270caa3d19d66d584
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 GB (4569053773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44af0f461ea14896bd6232ffd32c2cf92c0f86f223e4035bc03552ecf9256ed`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:30:47 GMT
ENV MONGO_VERSION=3.2.10
# Wed, 12 Oct 2016 19:30:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Wed, 12 Oct 2016 19:31:00 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Wed, 12 Oct 2016 19:33:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:34:02 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:34:10 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:34:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a658c98dc0f6f152961d7636994d1f1b7e60a11fe42b7485c24010d81a5d54d3`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0866f2bfeb998c8ea9171faff8d5478d27175e8f397dff664cf5aa6bf950b644`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e603a6450b8542e99e6e5da7ecfa97e1258d43b768ef8351fb93d3c5cfdfb472`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf5e96bb87c2e78cdbc6918ff3086f41e1ebbefc7333ef2b6fca01cfed43f2f`  
		Last Modified: Wed, 12 Oct 2016 19:51:18 GMT  
		Size: 213.6 MB (213637546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ca146e8004a4f978728e5d9ed1f5b104808a4e0e8f2f2eb7eb83fb782831ec`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b56d2a0f0699947171a4dbbd2e506c2549cbeebccf18feb724cc3b4071d685`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623c223b6087b92f47fb85708afa62dd803858e75dd10b7cbf208eb152b81ba3`  
		Last Modified: Wed, 12 Oct 2016 19:50:21 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3.15`

```console
$ docker pull mongo@sha256:919d22a962b1913a2f57cbcd772689b4061cc05a7ccdf32a1900b58462c351d4
```

-	Platforms:
	-	linux; amd64

### `mongo:3.3.15` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150097874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa57b208cc5d1e1cf25e0260c25b480d4377c458ed68db96addb3d8fc71e6942`
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
# Wed, 28 Sep 2016 23:44:30 GMT
ENV MONGO_VERSION=3.3.15
# Wed, 28 Sep 2016 23:44:31 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 28 Sep 2016 23:44:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org-unstable=$MONGO_VERSION 		mongodb-org-unstable-server=$MONGO_VERSION 		mongodb-org-unstable-shell=$MONGO_VERSION 		mongodb-org-unstable-mongos=$MONGO_VERSION 		mongodb-org-unstable-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 28 Sep 2016 23:44:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 28 Sep 2016 23:44:49 GMT
VOLUME [/data/db /data/configdb]
# Wed, 28 Sep 2016 23:44:49 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 28 Sep 2016 23:44:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Sep 2016 23:44:50 GMT
EXPOSE 27017/tcp
# Wed, 28 Sep 2016 23:44:50 GMT
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
	-	`sha256:1a97464fac77929f0eb29e15dba0e61fad0901ac4b70bdf2beefc9a862402a65`  
		Last Modified: Wed, 28 Sep 2016 23:46:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca63fe262a0f66a99911e415fb29a41707069595faac32dd01014257bcf5133`  
		Last Modified: Wed, 28 Sep 2016 23:46:58 GMT  
		Size: 97.4 MB (97387885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77def9dd0fe7cdaafdd94ed3adcac96b01c77557045e33ab13b215ee00f67757`  
		Last Modified: Wed, 28 Sep 2016 23:46:28 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8566b454b3279b5ebd1f40472eb8a86999a9a956bc8def8ee541428821ca03`  
		Last Modified: Wed, 28 Sep 2016 23:46:29 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3`

```console
$ docker pull mongo@sha256:919d22a962b1913a2f57cbcd772689b4061cc05a7ccdf32a1900b58462c351d4
```

-	Platforms:
	-	linux; amd64

### `mongo:3.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150097874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa57b208cc5d1e1cf25e0260c25b480d4377c458ed68db96addb3d8fc71e6942`
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
# Wed, 28 Sep 2016 23:44:30 GMT
ENV MONGO_VERSION=3.3.15
# Wed, 28 Sep 2016 23:44:31 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 28 Sep 2016 23:44:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org-unstable=$MONGO_VERSION 		mongodb-org-unstable-server=$MONGO_VERSION 		mongodb-org-unstable-shell=$MONGO_VERSION 		mongodb-org-unstable-mongos=$MONGO_VERSION 		mongodb-org-unstable-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 28 Sep 2016 23:44:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 28 Sep 2016 23:44:49 GMT
VOLUME [/data/db /data/configdb]
# Wed, 28 Sep 2016 23:44:49 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 28 Sep 2016 23:44:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Sep 2016 23:44:50 GMT
EXPOSE 27017/tcp
# Wed, 28 Sep 2016 23:44:50 GMT
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
	-	`sha256:1a97464fac77929f0eb29e15dba0e61fad0901ac4b70bdf2beefc9a862402a65`  
		Last Modified: Wed, 28 Sep 2016 23:46:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca63fe262a0f66a99911e415fb29a41707069595faac32dd01014257bcf5133`  
		Last Modified: Wed, 28 Sep 2016 23:46:58 GMT  
		Size: 97.4 MB (97387885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77def9dd0fe7cdaafdd94ed3adcac96b01c77557045e33ab13b215ee00f67757`  
		Last Modified: Wed, 28 Sep 2016 23:46:28 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8566b454b3279b5ebd1f40472eb8a86999a9a956bc8def8ee541428821ca03`  
		Last Modified: Wed, 28 Sep 2016 23:46:29 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3.15-windowsservercore`

```console
$ docker pull mongo@sha256:534f6347bfae560aa8036f6fe430fbffb64079f8966df56f22fb9e3c6b252688
```

-	Platforms:
	-	windows; amd64

### `mongo:3.3.15-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667637922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7dcfbf68f82a7da670689e9d7d7e7519fb8ae9e5d7e108b7ad89ce0cbcbf9d9`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:34:32 GMT
ENV MONGO_VERSION=3.3.15
# Wed, 12 Oct 2016 19:34:39 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Wed, 12 Oct 2016 19:34:47 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Wed, 12 Oct 2016 19:40:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:40:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:40:30 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:40:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19757ebf22102a8812eb128ef2736f5881d4df111997b60ef9b4c2cdbfb1a13`  
		Last Modified: Wed, 12 Oct 2016 19:51:44 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccb1ebe767ff47faffd98b614de913a0d93fa05e16823fab759a202a2cd033`  
		Last Modified: Wed, 12 Oct 2016 19:51:43 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac2394515b91479422aa719c6af15ec5c4937a21047362c38f99ed8d06cc107`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968fff81db8e11d3c4a5e5986c59af3e12c6b9ebfe72f89f8d4d67a007c75d89`  
		Last Modified: Wed, 12 Oct 2016 19:53:12 GMT  
		Size: 312.2 MB (312221714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7257f71b3bc49e4d7defa6ac334ff73b52bba4229c945486e174b05852bbd198`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c380f46dbca92825aa958f26a40a5dfef1470afe303672b80493a3b7faa21daa`  
		Last Modified: Wed, 12 Oct 2016 19:51:40 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63bb1fc58295c0c11d39d051f9b645dbe4af4153797267b6133b74dd3e2786b`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3-windowsservercore`

```console
$ docker pull mongo@sha256:534f6347bfae560aa8036f6fe430fbffb64079f8966df56f22fb9e3c6b252688
```

-	Platforms:
	-	windows; amd64

### `mongo:3.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667637922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7dcfbf68f82a7da670689e9d7d7e7519fb8ae9e5d7e108b7ad89ce0cbcbf9d9`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:34:32 GMT
ENV MONGO_VERSION=3.3.15
# Wed, 12 Oct 2016 19:34:39 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Wed, 12 Oct 2016 19:34:47 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Wed, 12 Oct 2016 19:40:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:40:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:40:30 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:40:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19757ebf22102a8812eb128ef2736f5881d4df111997b60ef9b4c2cdbfb1a13`  
		Last Modified: Wed, 12 Oct 2016 19:51:44 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccb1ebe767ff47faffd98b614de913a0d93fa05e16823fab759a202a2cd033`  
		Last Modified: Wed, 12 Oct 2016 19:51:43 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac2394515b91479422aa719c6af15ec5c4937a21047362c38f99ed8d06cc107`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968fff81db8e11d3c4a5e5986c59af3e12c6b9ebfe72f89f8d4d67a007c75d89`  
		Last Modified: Wed, 12 Oct 2016 19:53:12 GMT  
		Size: 312.2 MB (312221714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7257f71b3bc49e4d7defa6ac334ff73b52bba4229c945486e174b05852bbd198`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c380f46dbca92825aa958f26a40a5dfef1470afe303672b80493a3b7faa21daa`  
		Last Modified: Wed, 12 Oct 2016 19:51:40 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63bb1fc58295c0c11d39d051f9b645dbe4af4153797267b6133b74dd3e2786b`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
