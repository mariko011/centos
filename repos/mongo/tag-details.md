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
$ docker pull mongo@sha256:921e35f83c97f6752ee64e5eae1a473544086d05eb08ae926179af368a30e9e6
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0.12-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 GB (3907491572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a7bd256f1066c8c61967d3e3791813a9bccbeb2dc30fce868bd5b209d2fdfc`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:38:14 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:38:18 GMT
ENV MONGO_VERSION=3.0.12
# Wed, 12 Oct 2016 18:38:22 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.12-signed.msi
# Wed, 12 Oct 2016 18:38:25 GMT
ENV MONGO_DOWNLOAD_SHA256=be537b5fdc1763bb8640ac6384a44fa787c12499cfa648338c0695c5752de18a
# Wed, 12 Oct 2016 18:41:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:41:18 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 18:41:23 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 18:41:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0118231b815019bcc1ea3545851105d5b6705a3e4dce628b30e1167ce474829f`  
		Last Modified: Wed, 12 Oct 2016 19:22:44 GMT  
		Size: 578.0 KB (577984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6826e21f3d7109c79ff55a1e58ebe0e9b61931a425f67c83cce429cb128464`  
		Last Modified: Wed, 12 Oct 2016 19:22:42 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e10cfc1ba7734c3738cc12ed89c5b2df11922e4eddaec1da528b26ec0b074a0`  
		Last Modified: Wed, 12 Oct 2016 19:22:43 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3585263e50c35e7ef01aeaa8e51ac00509ffa659f8b518e122e18f620a5051c3`  
		Last Modified: Wed, 12 Oct 2016 19:22:37 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9cbc103734f917e5f39f0822abfe6feecbf07795f84551c2a455c026169092`  
		Last Modified: Wed, 12 Oct 2016 19:23:12 GMT  
		Size: 169.1 MB (169080750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a0ec2c69bac8a5b33e2859954e8d507f4eb0466c93eaa6e5790ad41948730a`  
		Last Modified: Wed, 12 Oct 2016 19:22:36 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7225ff2d4cd79dcd929723d222c11e478e148e99d4ee522b71f80e17e0cd26`  
		Last Modified: Wed, 12 Oct 2016 19:22:38 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a157e3e33ddbffe13e54d223ac197aaa0532f887b2cd0167ee628f75049861`  
		Last Modified: Wed, 12 Oct 2016 19:22:38 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:921e35f83c97f6752ee64e5eae1a473544086d05eb08ae926179af368a30e9e6
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 GB (3907491572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a7bd256f1066c8c61967d3e3791813a9bccbeb2dc30fce868bd5b209d2fdfc`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:38:14 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:38:18 GMT
ENV MONGO_VERSION=3.0.12
# Wed, 12 Oct 2016 18:38:22 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.12-signed.msi
# Wed, 12 Oct 2016 18:38:25 GMT
ENV MONGO_DOWNLOAD_SHA256=be537b5fdc1763bb8640ac6384a44fa787c12499cfa648338c0695c5752de18a
# Wed, 12 Oct 2016 18:41:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:41:18 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 18:41:23 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 18:41:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0118231b815019bcc1ea3545851105d5b6705a3e4dce628b30e1167ce474829f`  
		Last Modified: Wed, 12 Oct 2016 19:22:44 GMT  
		Size: 578.0 KB (577984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6826e21f3d7109c79ff55a1e58ebe0e9b61931a425f67c83cce429cb128464`  
		Last Modified: Wed, 12 Oct 2016 19:22:42 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e10cfc1ba7734c3738cc12ed89c5b2df11922e4eddaec1da528b26ec0b074a0`  
		Last Modified: Wed, 12 Oct 2016 19:22:43 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3585263e50c35e7ef01aeaa8e51ac00509ffa659f8b518e122e18f620a5051c3`  
		Last Modified: Wed, 12 Oct 2016 19:22:37 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9cbc103734f917e5f39f0822abfe6feecbf07795f84551c2a455c026169092`  
		Last Modified: Wed, 12 Oct 2016 19:23:12 GMT  
		Size: 169.1 MB (169080750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a0ec2c69bac8a5b33e2859954e8d507f4eb0466c93eaa6e5790ad41948730a`  
		Last Modified: Wed, 12 Oct 2016 19:22:36 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7225ff2d4cd79dcd929723d222c11e478e148e99d4ee522b71f80e17e0cd26`  
		Last Modified: Wed, 12 Oct 2016 19:22:38 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a157e3e33ddbffe13e54d223ac197aaa0532f887b2cd0167ee628f75049861`  
		Last Modified: Wed, 12 Oct 2016 19:22:38 GMT  
		Size: 1.2 KB (1212 bytes)  
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
$ docker pull mongo@sha256:65b093715b2aa9dacda43d89a5b5b2e240ba88499760861b4bacff8bc039abe0
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.10-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 GB (3952031058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f962cd0967b15842e1bc6bb7258394a1be69d054926ff5adb9458a2bef6d7d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:38:14 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:41:34 GMT
ENV MONGO_VERSION=3.2.10
# Wed, 12 Oct 2016 18:41:39 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Wed, 12 Oct 2016 18:41:43 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Wed, 12 Oct 2016 18:44:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:44:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 18:44:39 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 18:44:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0118231b815019bcc1ea3545851105d5b6705a3e4dce628b30e1167ce474829f`  
		Last Modified: Wed, 12 Oct 2016 19:22:44 GMT  
		Size: 578.0 KB (577984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24e4ac092b5e7e9044cb0fa6aa19a303c313a09792dfc198965014abc3aee0b`  
		Last Modified: Wed, 12 Oct 2016 19:23:34 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8f05666e6f0771c2dc49992e8c813ad0bcd1d4e0dd959f11f0d22bb11d3091`  
		Last Modified: Wed, 12 Oct 2016 19:23:33 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fc9be3a8e6cfa0af3aca9e552c52eea9e5fe41961b6b69f67f2dcfb21fd682`  
		Last Modified: Wed, 12 Oct 2016 19:23:27 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eba178f664994b73a690a8071b316ff5a694eb37678120fd614c5b92cd705a4`  
		Last Modified: Wed, 12 Oct 2016 19:24:02 GMT  
		Size: 213.6 MB (213620255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a758064268dd982f631ce2f7ac125f849d7d3ccb85ab2cccc90c2850bd2c1688`  
		Last Modified: Wed, 12 Oct 2016 19:23:28 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd369392e1ff3aec30909f5b5904d99b447fd6b4a92b8c46792d659df1fa77e`  
		Last Modified: Wed, 12 Oct 2016 19:23:28 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eae2da3625434fb5d65f495c67f6cba148d52de07976536396a28f809cdba73`  
		Last Modified: Wed, 12 Oct 2016 19:23:27 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:65b093715b2aa9dacda43d89a5b5b2e240ba88499760861b4bacff8bc039abe0
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 GB (3952031058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f962cd0967b15842e1bc6bb7258394a1be69d054926ff5adb9458a2bef6d7d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:38:14 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:41:34 GMT
ENV MONGO_VERSION=3.2.10
# Wed, 12 Oct 2016 18:41:39 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Wed, 12 Oct 2016 18:41:43 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Wed, 12 Oct 2016 18:44:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:44:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 18:44:39 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 18:44:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0118231b815019bcc1ea3545851105d5b6705a3e4dce628b30e1167ce474829f`  
		Last Modified: Wed, 12 Oct 2016 19:22:44 GMT  
		Size: 578.0 KB (577984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24e4ac092b5e7e9044cb0fa6aa19a303c313a09792dfc198965014abc3aee0b`  
		Last Modified: Wed, 12 Oct 2016 19:23:34 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8f05666e6f0771c2dc49992e8c813ad0bcd1d4e0dd959f11f0d22bb11d3091`  
		Last Modified: Wed, 12 Oct 2016 19:23:33 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fc9be3a8e6cfa0af3aca9e552c52eea9e5fe41961b6b69f67f2dcfb21fd682`  
		Last Modified: Wed, 12 Oct 2016 19:23:27 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eba178f664994b73a690a8071b316ff5a694eb37678120fd614c5b92cd705a4`  
		Last Modified: Wed, 12 Oct 2016 19:24:02 GMT  
		Size: 213.6 MB (213620255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a758064268dd982f631ce2f7ac125f849d7d3ccb85ab2cccc90c2850bd2c1688`  
		Last Modified: Wed, 12 Oct 2016 19:23:28 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd369392e1ff3aec30909f5b5904d99b447fd6b4a92b8c46792d659df1fa77e`  
		Last Modified: Wed, 12 Oct 2016 19:23:28 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eae2da3625434fb5d65f495c67f6cba148d52de07976536396a28f809cdba73`  
		Last Modified: Wed, 12 Oct 2016 19:23:27 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:65b093715b2aa9dacda43d89a5b5b2e240ba88499760861b4bacff8bc039abe0
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 GB (3952031058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f962cd0967b15842e1bc6bb7258394a1be69d054926ff5adb9458a2bef6d7d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:38:14 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:41:34 GMT
ENV MONGO_VERSION=3.2.10
# Wed, 12 Oct 2016 18:41:39 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Wed, 12 Oct 2016 18:41:43 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Wed, 12 Oct 2016 18:44:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:44:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 18:44:39 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 18:44:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0118231b815019bcc1ea3545851105d5b6705a3e4dce628b30e1167ce474829f`  
		Last Modified: Wed, 12 Oct 2016 19:22:44 GMT  
		Size: 578.0 KB (577984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24e4ac092b5e7e9044cb0fa6aa19a303c313a09792dfc198965014abc3aee0b`  
		Last Modified: Wed, 12 Oct 2016 19:23:34 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8f05666e6f0771c2dc49992e8c813ad0bcd1d4e0dd959f11f0d22bb11d3091`  
		Last Modified: Wed, 12 Oct 2016 19:23:33 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fc9be3a8e6cfa0af3aca9e552c52eea9e5fe41961b6b69f67f2dcfb21fd682`  
		Last Modified: Wed, 12 Oct 2016 19:23:27 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eba178f664994b73a690a8071b316ff5a694eb37678120fd614c5b92cd705a4`  
		Last Modified: Wed, 12 Oct 2016 19:24:02 GMT  
		Size: 213.6 MB (213620255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a758064268dd982f631ce2f7ac125f849d7d3ccb85ab2cccc90c2850bd2c1688`  
		Last Modified: Wed, 12 Oct 2016 19:23:28 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd369392e1ff3aec30909f5b5904d99b447fd6b4a92b8c46792d659df1fa77e`  
		Last Modified: Wed, 12 Oct 2016 19:23:28 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eae2da3625434fb5d65f495c67f6cba148d52de07976536396a28f809cdba73`  
		Last Modified: Wed, 12 Oct 2016 19:23:27 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:65b093715b2aa9dacda43d89a5b5b2e240ba88499760861b4bacff8bc039abe0
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 GB (3952031058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f962cd0967b15842e1bc6bb7258394a1be69d054926ff5adb9458a2bef6d7d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:38:14 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:41:34 GMT
ENV MONGO_VERSION=3.2.10
# Wed, 12 Oct 2016 18:41:39 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Wed, 12 Oct 2016 18:41:43 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Wed, 12 Oct 2016 18:44:28 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 18:44:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 18:44:39 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 18:44:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0118231b815019bcc1ea3545851105d5b6705a3e4dce628b30e1167ce474829f`  
		Last Modified: Wed, 12 Oct 2016 19:22:44 GMT  
		Size: 578.0 KB (577984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24e4ac092b5e7e9044cb0fa6aa19a303c313a09792dfc198965014abc3aee0b`  
		Last Modified: Wed, 12 Oct 2016 19:23:34 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8f05666e6f0771c2dc49992e8c813ad0bcd1d4e0dd959f11f0d22bb11d3091`  
		Last Modified: Wed, 12 Oct 2016 19:23:33 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fc9be3a8e6cfa0af3aca9e552c52eea9e5fe41961b6b69f67f2dcfb21fd682`  
		Last Modified: Wed, 12 Oct 2016 19:23:27 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eba178f664994b73a690a8071b316ff5a694eb37678120fd614c5b92cd705a4`  
		Last Modified: Wed, 12 Oct 2016 19:24:02 GMT  
		Size: 213.6 MB (213620255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a758064268dd982f631ce2f7ac125f849d7d3ccb85ab2cccc90c2850bd2c1688`  
		Last Modified: Wed, 12 Oct 2016 19:23:28 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd369392e1ff3aec30909f5b5904d99b447fd6b4a92b8c46792d659df1fa77e`  
		Last Modified: Wed, 12 Oct 2016 19:23:28 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eae2da3625434fb5d65f495c67f6cba148d52de07976536396a28f809cdba73`  
		Last Modified: Wed, 12 Oct 2016 19:23:27 GMT  
		Size: 1.2 KB (1207 bytes)  
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
$ docker pull mongo@sha256:35bd2c193274eaec023a4ca89f497e1411df5bc17b46c83ae9c9295a9f0de43e
```

-	Platforms:
	-	windows; amd64

### `mongo:3.3.15-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 GB (4050623732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb31e379b7050b380fd93ea7b7d19f3d764b8a162e55cde2a859e4d9438e797`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:38:14 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:44:50 GMT
ENV MONGO_VERSION=3.3.15
# Wed, 12 Oct 2016 18:44:55 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Wed, 12 Oct 2016 18:45:00 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Wed, 12 Oct 2016 19:22:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:22:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:22:26 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:22:31 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0118231b815019bcc1ea3545851105d5b6705a3e4dce628b30e1167ce474829f`  
		Last Modified: Wed, 12 Oct 2016 19:22:44 GMT  
		Size: 578.0 KB (577984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062a0358c68a5a021dbea6a9a5269bc8f097ad2fffdffd02838467dc82887aa0`  
		Last Modified: Wed, 12 Oct 2016 19:24:31 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fa7cfcf71822f8d3b64ac0222cdd255c8de3e76a177c0ead84a5667830e62c`  
		Last Modified: Wed, 12 Oct 2016 19:24:28 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d53b31480be0af06f9d880d824f77d9fff9541b3a5cc68a33314f7beb763cb`  
		Last Modified: Wed, 12 Oct 2016 19:24:21 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f243fdcdfe2391df49ff3621904d0f97ad591045ba6a73852981ac9c6ca815a9`  
		Last Modified: Wed, 12 Oct 2016 19:24:59 GMT  
		Size: 312.2 MB (312212915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2696e0b1bc798f6f757b9d991af74416666206e51a1fcdde9ff425a9bfa2318`  
		Last Modified: Wed, 12 Oct 2016 19:24:22 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39715545cea284308cd92f37c606a00b554d07f598e37a3851bb9f24fd02087e`  
		Last Modified: Wed, 12 Oct 2016 19:24:21 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eb77b69761c393eba162d4ed837b08935f2fe4f56882e500337203073b5cda`  
		Last Modified: Wed, 12 Oct 2016 19:24:22 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3-windowsservercore`

```console
$ docker pull mongo@sha256:35bd2c193274eaec023a4ca89f497e1411df5bc17b46c83ae9c9295a9f0de43e
```

-	Platforms:
	-	windows; amd64

### `mongo:3.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 GB (4050623732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb31e379b7050b380fd93ea7b7d19f3d764b8a162e55cde2a859e4d9438e797`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 18:24:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 18:38:14 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 18:44:50 GMT
ENV MONGO_VERSION=3.3.15
# Wed, 12 Oct 2016 18:44:55 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Wed, 12 Oct 2016 18:45:00 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Wed, 12 Oct 2016 19:22:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:22:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:22:26 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:22:31 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dca65b8e97a8e964a96f36a73131fe79e057f5dc460fcad71770aee76446a3aa`  
		Last Modified: Wed, 12 Oct 2016 18:39:49 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0118231b815019bcc1ea3545851105d5b6705a3e4dce628b30e1167ce474829f`  
		Last Modified: Wed, 12 Oct 2016 19:22:44 GMT  
		Size: 578.0 KB (577984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062a0358c68a5a021dbea6a9a5269bc8f097ad2fffdffd02838467dc82887aa0`  
		Last Modified: Wed, 12 Oct 2016 19:24:31 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fa7cfcf71822f8d3b64ac0222cdd255c8de3e76a177c0ead84a5667830e62c`  
		Last Modified: Wed, 12 Oct 2016 19:24:28 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d53b31480be0af06f9d880d824f77d9fff9541b3a5cc68a33314f7beb763cb`  
		Last Modified: Wed, 12 Oct 2016 19:24:21 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f243fdcdfe2391df49ff3621904d0f97ad591045ba6a73852981ac9c6ca815a9`  
		Last Modified: Wed, 12 Oct 2016 19:24:59 GMT  
		Size: 312.2 MB (312212915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2696e0b1bc798f6f757b9d991af74416666206e51a1fcdde9ff425a9bfa2318`  
		Last Modified: Wed, 12 Oct 2016 19:24:22 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39715545cea284308cd92f37c606a00b554d07f598e37a3851bb9f24fd02087e`  
		Last Modified: Wed, 12 Oct 2016 19:24:21 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eb77b69761c393eba162d4ed837b08935f2fe4f56882e500337203073b5cda`  
		Last Modified: Wed, 12 Oct 2016 19:24:22 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
