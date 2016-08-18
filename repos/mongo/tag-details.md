<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

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
-	[`mongo:3.3.11`](#mongo3311)
-	[`mongo:3.3`](#mongo33)
-	[`mongo:3.3.11-windowsservercore`](#mongo3311-windowsservercore)
-	[`mongo:3.3-windowsservercore`](#mongo33-windowsservercore)

## `mongo:2.6.12`

```console
$ docker pull mongo@sha256:4e26d509b48abf74cd6d3d89a1ec1d624852da60f5c05e928145cd19321f50c6
```

-	Platforms:
	-	linux; amd64

### `mongo:2.6.12` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159352149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e92c666df23772aa80de154a22a1de44ffbba93d33d3735bf23b03debf094ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:52:19 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 29 Jul 2016 19:52:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates wget 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 19:52:33 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:52:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 29 Jul 2016 19:52:41 GMT
ENV MONGO_VERSION=2.6.12
# Fri, 29 Jul 2016 19:52:57 GMT
RUN set -x 	&& wget -O mongo.tgz "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" 	&& wget -O mongo.tgz.sig "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz.sig" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	&& gpg --batch --verify mongo.tgz.sig mongo.tgz 	&& rm -r "$GNUPGHOME" mongo.tgz.sig 	&& tar -xvf mongo.tgz -C /usr/local --strip-components=1 	&& rm mongo.tgz
# Fri, 29 Jul 2016 19:52:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 29 Jul 2016 19:52:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 29 Jul 2016 19:53:00 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh
# Fri, 29 Jul 2016 19:53:01 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 19:53:02 GMT
EXPOSE 27017/tcp
# Fri, 29 Jul 2016 19:53:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110f95fa9c8ee148f4a90b908b2bbe1e8a163e155c7311d8ec190678a87f307`  
		Last Modified: Fri, 29 Jul 2016 19:53:15 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63abe2d37a2e09b89deb5d99ca9a5403a9d707bad0df88c8348b7ae1bded8d9`  
		Last Modified: Fri, 29 Jul 2016 19:53:15 GMT  
		Size: 4.9 MB (4927037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60b386d958ab11482d18287d1ae0cd1bd6f2b7d5a38792ec93e04d4d55947bb`  
		Last Modified: Fri, 29 Jul 2016 19:53:14 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be77dfa0c2ebf4aedf6813b76186d2c33f6d77336f4f091a6719498d392011fc`  
		Last Modified: Fri, 29 Jul 2016 19:53:51 GMT  
		Size: 116.4 MB (116405353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8644785b4d1005057c69a73f9e03eccc334d4c96b1043c38ee4972ed1f80672`  
		Last Modified: Fri, 29 Jul 2016 19:53:13 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78de9eac80c8593450568a63ccdcaba44de14d8c7491220be82b5a0012ea84d`  
		Last Modified: Fri, 29 Jul 2016 19:53:13 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:2.6`

```console
$ docker pull mongo@sha256:4e26d509b48abf74cd6d3d89a1ec1d624852da60f5c05e928145cd19321f50c6
```

-	Platforms:
	-	linux; amd64

### `mongo:2.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159352149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e92c666df23772aa80de154a22a1de44ffbba93d33d3735bf23b03debf094ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:52:19 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 29 Jul 2016 19:52:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates wget 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 19:52:33 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:52:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 29 Jul 2016 19:52:41 GMT
ENV MONGO_VERSION=2.6.12
# Fri, 29 Jul 2016 19:52:57 GMT
RUN set -x 	&& wget -O mongo.tgz "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" 	&& wget -O mongo.tgz.sig "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz.sig" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	&& gpg --batch --verify mongo.tgz.sig mongo.tgz 	&& rm -r "$GNUPGHOME" mongo.tgz.sig 	&& tar -xvf mongo.tgz -C /usr/local --strip-components=1 	&& rm mongo.tgz
# Fri, 29 Jul 2016 19:52:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 29 Jul 2016 19:52:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 29 Jul 2016 19:53:00 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh
# Fri, 29 Jul 2016 19:53:01 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 19:53:02 GMT
EXPOSE 27017/tcp
# Fri, 29 Jul 2016 19:53:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110f95fa9c8ee148f4a90b908b2bbe1e8a163e155c7311d8ec190678a87f307`  
		Last Modified: Fri, 29 Jul 2016 19:53:15 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63abe2d37a2e09b89deb5d99ca9a5403a9d707bad0df88c8348b7ae1bded8d9`  
		Last Modified: Fri, 29 Jul 2016 19:53:15 GMT  
		Size: 4.9 MB (4927037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60b386d958ab11482d18287d1ae0cd1bd6f2b7d5a38792ec93e04d4d55947bb`  
		Last Modified: Fri, 29 Jul 2016 19:53:14 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be77dfa0c2ebf4aedf6813b76186d2c33f6d77336f4f091a6719498d392011fc`  
		Last Modified: Fri, 29 Jul 2016 19:53:51 GMT  
		Size: 116.4 MB (116405353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8644785b4d1005057c69a73f9e03eccc334d4c96b1043c38ee4972ed1f80672`  
		Last Modified: Fri, 29 Jul 2016 19:53:13 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78de9eac80c8593450568a63ccdcaba44de14d8c7491220be82b5a0012ea84d`  
		Last Modified: Fri, 29 Jul 2016 19:53:13 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:2`

```console
$ docker pull mongo@sha256:4e26d509b48abf74cd6d3d89a1ec1d624852da60f5c05e928145cd19321f50c6
```

-	Platforms:
	-	linux; amd64

### `mongo:2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159352149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e92c666df23772aa80de154a22a1de44ffbba93d33d3735bf23b03debf094ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:52:19 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 29 Jul 2016 19:52:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates wget 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 19:52:33 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:52:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 29 Jul 2016 19:52:41 GMT
ENV MONGO_VERSION=2.6.12
# Fri, 29 Jul 2016 19:52:57 GMT
RUN set -x 	&& wget -O mongo.tgz "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" 	&& wget -O mongo.tgz.sig "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz.sig" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	&& gpg --batch --verify mongo.tgz.sig mongo.tgz 	&& rm -r "$GNUPGHOME" mongo.tgz.sig 	&& tar -xvf mongo.tgz -C /usr/local --strip-components=1 	&& rm mongo.tgz
# Fri, 29 Jul 2016 19:52:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 29 Jul 2016 19:52:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 29 Jul 2016 19:53:00 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh
# Fri, 29 Jul 2016 19:53:01 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 19:53:02 GMT
EXPOSE 27017/tcp
# Fri, 29 Jul 2016 19:53:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110f95fa9c8ee148f4a90b908b2bbe1e8a163e155c7311d8ec190678a87f307`  
		Last Modified: Fri, 29 Jul 2016 19:53:15 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63abe2d37a2e09b89deb5d99ca9a5403a9d707bad0df88c8348b7ae1bded8d9`  
		Last Modified: Fri, 29 Jul 2016 19:53:15 GMT  
		Size: 4.9 MB (4927037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60b386d958ab11482d18287d1ae0cd1bd6f2b7d5a38792ec93e04d4d55947bb`  
		Last Modified: Fri, 29 Jul 2016 19:53:14 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be77dfa0c2ebf4aedf6813b76186d2c33f6d77336f4f091a6719498d392011fc`  
		Last Modified: Fri, 29 Jul 2016 19:53:51 GMT  
		Size: 116.4 MB (116405353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8644785b4d1005057c69a73f9e03eccc334d4c96b1043c38ee4972ed1f80672`  
		Last Modified: Fri, 29 Jul 2016 19:53:13 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78de9eac80c8593450568a63ccdcaba44de14d8c7491220be82b5a0012ea84d`  
		Last Modified: Fri, 29 Jul 2016 19:53:13 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.12`

```console
$ docker pull mongo@sha256:a070df01b223031596e8e9de675b79b66fdfb71492bcc13ec0a8bfd503b6057f
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.12` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97231803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deed66f6ca09a38ab9022874b15bd544c473a9ae4a6a266c86d4af2ba845e20e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:52:19 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 29 Jul 2016 19:54:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 19:54:30 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:54:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:54:52 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Fri, 29 Jul 2016 19:54:52 GMT
ENV MONGO_MAJOR=3.0
# Fri, 29 Jul 2016 19:54:53 GMT
ENV MONGO_VERSION=3.0.12
# Fri, 29 Jul 2016 19:54:55 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 29 Jul 2016 19:55:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 29 Jul 2016 19:55:08 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 29 Jul 2016 19:55:08 GMT
VOLUME [/data/db /data/configdb]
# Fri, 29 Jul 2016 19:55:10 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh
# Fri, 29 Jul 2016 19:55:10 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 19:55:11 GMT
EXPOSE 27017/tcp
# Fri, 29 Jul 2016 19:55:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110f95fa9c8ee148f4a90b908b2bbe1e8a163e155c7311d8ec190678a87f307`  
		Last Modified: Fri, 29 Jul 2016 19:53:15 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cba4a42bc4101f4b7eee14ede2d807f9a99cc88fb10fadd9994d7ba2fb0021a`  
		Last Modified: Fri, 29 Jul 2016 19:55:23 GMT  
		Size: 145.5 KB (145538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6eafd7fba3f09fdcb7a56da844c4a0dc8bc3693dfb0f83b09507b2572d4cfbb`  
		Last Modified: Fri, 29 Jul 2016 19:55:24 GMT  
		Size: 1.2 MB (1172778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3384c986b2ea6f960622a697ff26d21f6419250df2aee86ceaa61d8b80a63f6`  
		Last Modified: Fri, 29 Jul 2016 19:55:20 GMT  
		Size: 29.8 KB (29812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcea3d8efbe2829e7b044b920618a644713f131ed003a133b0ce42c1e0c08593`  
		Last Modified: Fri, 29 Jul 2016 19:55:20 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15078528ec2681a2f46cc4f1d040794626bfc46e825dd8ae3852c63527dea699`  
		Last Modified: Fri, 29 Jul 2016 19:55:40 GMT  
		Size: 58.7 MB (58671622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072a4583de77e60098a76d421e20ae3582248c2df6afe441430745c6437db896`  
		Last Modified: Fri, 29 Jul 2016 19:55:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776cd7ce5bccf64c15258e4a18fff80b0169a03de9730c998e5a1ebb81e6e49`  
		Last Modified: Fri, 29 Jul 2016 19:55:20 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:a070df01b223031596e8e9de675b79b66fdfb71492bcc13ec0a8bfd503b6057f
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97231803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deed66f6ca09a38ab9022874b15bd544c473a9ae4a6a266c86d4af2ba845e20e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:52:19 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 29 Jul 2016 19:54:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 19:54:30 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:54:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:54:52 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Fri, 29 Jul 2016 19:54:52 GMT
ENV MONGO_MAJOR=3.0
# Fri, 29 Jul 2016 19:54:53 GMT
ENV MONGO_VERSION=3.0.12
# Fri, 29 Jul 2016 19:54:55 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 29 Jul 2016 19:55:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 29 Jul 2016 19:55:08 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 29 Jul 2016 19:55:08 GMT
VOLUME [/data/db /data/configdb]
# Fri, 29 Jul 2016 19:55:10 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh
# Fri, 29 Jul 2016 19:55:10 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Fri, 29 Jul 2016 19:55:11 GMT
EXPOSE 27017/tcp
# Fri, 29 Jul 2016 19:55:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110f95fa9c8ee148f4a90b908b2bbe1e8a163e155c7311d8ec190678a87f307`  
		Last Modified: Fri, 29 Jul 2016 19:53:15 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cba4a42bc4101f4b7eee14ede2d807f9a99cc88fb10fadd9994d7ba2fb0021a`  
		Last Modified: Fri, 29 Jul 2016 19:55:23 GMT  
		Size: 145.5 KB (145538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6eafd7fba3f09fdcb7a56da844c4a0dc8bc3693dfb0f83b09507b2572d4cfbb`  
		Last Modified: Fri, 29 Jul 2016 19:55:24 GMT  
		Size: 1.2 MB (1172778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3384c986b2ea6f960622a697ff26d21f6419250df2aee86ceaa61d8b80a63f6`  
		Last Modified: Fri, 29 Jul 2016 19:55:20 GMT  
		Size: 29.8 KB (29812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcea3d8efbe2829e7b044b920618a644713f131ed003a133b0ce42c1e0c08593`  
		Last Modified: Fri, 29 Jul 2016 19:55:20 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15078528ec2681a2f46cc4f1d040794626bfc46e825dd8ae3852c63527dea699`  
		Last Modified: Fri, 29 Jul 2016 19:55:40 GMT  
		Size: 58.7 MB (58671622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072a4583de77e60098a76d421e20ae3582248c2df6afe441430745c6437db896`  
		Last Modified: Fri, 29 Jul 2016 19:55:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776cd7ce5bccf64c15258e4a18fff80b0169a03de9730c998e5a1ebb81e6e49`  
		Last Modified: Fri, 29 Jul 2016 19:55:20 GMT  
		Size: 353.0 B  
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
$ docker pull mongo@sha256:beff97308c36f7af664a1d04eb6ed09be1d14c17427065b2ec4b0de90967bb3f
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112612334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af52553e1c34b3ec48a2e50cf73a1eed1fc6d2fd2b0d3d73d7397c8d6341551f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:52:19 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 29 Jul 2016 19:54:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 19:54:30 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:54:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:55:59 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 29 Jul 2016 19:56:02 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 29 Jul 2016 19:56:03 GMT
ENV MONGO_MAJOR=3.2
# Wed, 17 Aug 2016 19:16:22 GMT
ENV MONGO_VERSION=3.2.9
# Wed, 17 Aug 2016 19:16:24 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 17 Aug 2016 19:16:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 17 Aug 2016 19:16:37 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 17 Aug 2016 19:16:38 GMT
VOLUME [/data/db /data/configdb]
# Wed, 17 Aug 2016 19:16:38 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh
# Wed, 17 Aug 2016 19:16:39 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 17 Aug 2016 19:16:39 GMT
EXPOSE 27017/tcp
# Wed, 17 Aug 2016 19:16:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110f95fa9c8ee148f4a90b908b2bbe1e8a163e155c7311d8ec190678a87f307`  
		Last Modified: Fri, 29 Jul 2016 19:53:15 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cba4a42bc4101f4b7eee14ede2d807f9a99cc88fb10fadd9994d7ba2fb0021a`  
		Last Modified: Fri, 29 Jul 2016 19:55:23 GMT  
		Size: 145.5 KB (145538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6eafd7fba3f09fdcb7a56da844c4a0dc8bc3693dfb0f83b09507b2572d4cfbb`  
		Last Modified: Fri, 29 Jul 2016 19:55:24 GMT  
		Size: 1.2 MB (1172778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703d9d7e0e2126ed3df9eb6b07c611abfafcf2a3d9910f61f15f36a5b5262a5b`  
		Last Modified: Fri, 29 Jul 2016 19:56:33 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18d5bc22c93ef32589c646e7d7f4cee1683f72d436e5f06dd704d854b63203`  
		Last Modified: Wed, 17 Aug 2016 19:17:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3fcba178e3b66662adaf5641bc7b615ac9534228a260fae8b1a24c2eb752f0`  
		Last Modified: Wed, 17 Aug 2016 19:18:15 GMT  
		Size: 74.1 MB (74078855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b9b5488049892673e1c311839f707e49a0e9a5a3aea79b8ba9209515f06ea2`  
		Last Modified: Wed, 17 Aug 2016 19:17:50 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f37d58ab4c59231ec24878dd3e179ae2c75f234b84a818466b5e00c1596bb8`  
		Last Modified: Wed, 17 Aug 2016 19:17:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:beff97308c36f7af664a1d04eb6ed09be1d14c17427065b2ec4b0de90967bb3f
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112612334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af52553e1c34b3ec48a2e50cf73a1eed1fc6d2fd2b0d3d73d7397c8d6341551f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:52:19 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 29 Jul 2016 19:54:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 19:54:30 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:54:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:55:59 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 29 Jul 2016 19:56:02 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 29 Jul 2016 19:56:03 GMT
ENV MONGO_MAJOR=3.2
# Wed, 17 Aug 2016 19:16:22 GMT
ENV MONGO_VERSION=3.2.9
# Wed, 17 Aug 2016 19:16:24 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 17 Aug 2016 19:16:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 17 Aug 2016 19:16:37 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 17 Aug 2016 19:16:38 GMT
VOLUME [/data/db /data/configdb]
# Wed, 17 Aug 2016 19:16:38 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh
# Wed, 17 Aug 2016 19:16:39 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 17 Aug 2016 19:16:39 GMT
EXPOSE 27017/tcp
# Wed, 17 Aug 2016 19:16:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110f95fa9c8ee148f4a90b908b2bbe1e8a163e155c7311d8ec190678a87f307`  
		Last Modified: Fri, 29 Jul 2016 19:53:15 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cba4a42bc4101f4b7eee14ede2d807f9a99cc88fb10fadd9994d7ba2fb0021a`  
		Last Modified: Fri, 29 Jul 2016 19:55:23 GMT  
		Size: 145.5 KB (145538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6eafd7fba3f09fdcb7a56da844c4a0dc8bc3693dfb0f83b09507b2572d4cfbb`  
		Last Modified: Fri, 29 Jul 2016 19:55:24 GMT  
		Size: 1.2 MB (1172778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703d9d7e0e2126ed3df9eb6b07c611abfafcf2a3d9910f61f15f36a5b5262a5b`  
		Last Modified: Fri, 29 Jul 2016 19:56:33 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18d5bc22c93ef32589c646e7d7f4cee1683f72d436e5f06dd704d854b63203`  
		Last Modified: Wed, 17 Aug 2016 19:17:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3fcba178e3b66662adaf5641bc7b615ac9534228a260fae8b1a24c2eb752f0`  
		Last Modified: Wed, 17 Aug 2016 19:18:15 GMT  
		Size: 74.1 MB (74078855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b9b5488049892673e1c311839f707e49a0e9a5a3aea79b8ba9209515f06ea2`  
		Last Modified: Wed, 17 Aug 2016 19:17:50 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f37d58ab4c59231ec24878dd3e179ae2c75f234b84a818466b5e00c1596bb8`  
		Last Modified: Wed, 17 Aug 2016 19:17:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:beff97308c36f7af664a1d04eb6ed09be1d14c17427065b2ec4b0de90967bb3f
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112612334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af52553e1c34b3ec48a2e50cf73a1eed1fc6d2fd2b0d3d73d7397c8d6341551f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:52:19 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 29 Jul 2016 19:54:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 19:54:30 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:54:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:55:59 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 29 Jul 2016 19:56:02 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 29 Jul 2016 19:56:03 GMT
ENV MONGO_MAJOR=3.2
# Wed, 17 Aug 2016 19:16:22 GMT
ENV MONGO_VERSION=3.2.9
# Wed, 17 Aug 2016 19:16:24 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 17 Aug 2016 19:16:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 17 Aug 2016 19:16:37 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 17 Aug 2016 19:16:38 GMT
VOLUME [/data/db /data/configdb]
# Wed, 17 Aug 2016 19:16:38 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh
# Wed, 17 Aug 2016 19:16:39 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 17 Aug 2016 19:16:39 GMT
EXPOSE 27017/tcp
# Wed, 17 Aug 2016 19:16:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110f95fa9c8ee148f4a90b908b2bbe1e8a163e155c7311d8ec190678a87f307`  
		Last Modified: Fri, 29 Jul 2016 19:53:15 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cba4a42bc4101f4b7eee14ede2d807f9a99cc88fb10fadd9994d7ba2fb0021a`  
		Last Modified: Fri, 29 Jul 2016 19:55:23 GMT  
		Size: 145.5 KB (145538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6eafd7fba3f09fdcb7a56da844c4a0dc8bc3693dfb0f83b09507b2572d4cfbb`  
		Last Modified: Fri, 29 Jul 2016 19:55:24 GMT  
		Size: 1.2 MB (1172778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703d9d7e0e2126ed3df9eb6b07c611abfafcf2a3d9910f61f15f36a5b5262a5b`  
		Last Modified: Fri, 29 Jul 2016 19:56:33 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18d5bc22c93ef32589c646e7d7f4cee1683f72d436e5f06dd704d854b63203`  
		Last Modified: Wed, 17 Aug 2016 19:17:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3fcba178e3b66662adaf5641bc7b615ac9534228a260fae8b1a24c2eb752f0`  
		Last Modified: Wed, 17 Aug 2016 19:18:15 GMT  
		Size: 74.1 MB (74078855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b9b5488049892673e1c311839f707e49a0e9a5a3aea79b8ba9209515f06ea2`  
		Last Modified: Wed, 17 Aug 2016 19:17:50 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f37d58ab4c59231ec24878dd3e179ae2c75f234b84a818466b5e00c1596bb8`  
		Last Modified: Wed, 17 Aug 2016 19:17:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:beff97308c36f7af664a1d04eb6ed09be1d14c17427065b2ec4b0de90967bb3f
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112612334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af52553e1c34b3ec48a2e50cf73a1eed1fc6d2fd2b0d3d73d7397c8d6341551f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:52:19 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 29 Jul 2016 19:54:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 19:54:30 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 19:54:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 19:55:59 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 29 Jul 2016 19:56:02 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 29 Jul 2016 19:56:03 GMT
ENV MONGO_MAJOR=3.2
# Wed, 17 Aug 2016 19:16:22 GMT
ENV MONGO_VERSION=3.2.9
# Wed, 17 Aug 2016 19:16:24 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 17 Aug 2016 19:16:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 17 Aug 2016 19:16:37 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 17 Aug 2016 19:16:38 GMT
VOLUME [/data/db /data/configdb]
# Wed, 17 Aug 2016 19:16:38 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh
# Wed, 17 Aug 2016 19:16:39 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Wed, 17 Aug 2016 19:16:39 GMT
EXPOSE 27017/tcp
# Wed, 17 Aug 2016 19:16:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110f95fa9c8ee148f4a90b908b2bbe1e8a163e155c7311d8ec190678a87f307`  
		Last Modified: Fri, 29 Jul 2016 19:53:15 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cba4a42bc4101f4b7eee14ede2d807f9a99cc88fb10fadd9994d7ba2fb0021a`  
		Last Modified: Fri, 29 Jul 2016 19:55:23 GMT  
		Size: 145.5 KB (145538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6eafd7fba3f09fdcb7a56da844c4a0dc8bc3693dfb0f83b09507b2572d4cfbb`  
		Last Modified: Fri, 29 Jul 2016 19:55:24 GMT  
		Size: 1.2 MB (1172778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703d9d7e0e2126ed3df9eb6b07c611abfafcf2a3d9910f61f15f36a5b5262a5b`  
		Last Modified: Fri, 29 Jul 2016 19:56:33 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c18d5bc22c93ef32589c646e7d7f4cee1683f72d436e5f06dd704d854b63203`  
		Last Modified: Wed, 17 Aug 2016 19:17:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3fcba178e3b66662adaf5641bc7b615ac9534228a260fae8b1a24c2eb752f0`  
		Last Modified: Wed, 17 Aug 2016 19:18:15 GMT  
		Size: 74.1 MB (74078855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b9b5488049892673e1c311839f707e49a0e9a5a3aea79b8ba9209515f06ea2`  
		Last Modified: Wed, 17 Aug 2016 19:17:50 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f37d58ab4c59231ec24878dd3e179ae2c75f234b84a818466b5e00c1596bb8`  
		Last Modified: Wed, 17 Aug 2016 19:17:50 GMT  
		Size: 349.0 B  
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

## `mongo:3.3.11`

```console
$ docker pull mongo@sha256:95d63cfa52f476b196e004ea54108bb876e76825426c2d489610796eb315d68b
```

-	Platforms:
	-	linux; amd64

### `mongo:3.3.11` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.9 MB (152880742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d969a5eca592559b9ab5f35a4b8fc2984fabe99fae6e34e5fa37809705bffa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:57:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 29 Jul 2016 19:58:30 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 19:58:31 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 20:00:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 20:00:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 29 Jul 2016 20:00:24 GMT
ENV MONGO_MAJOR=3.3
# Tue, 16 Aug 2016 00:24:14 GMT
ENV MONGO_VERSION=3.3.11
# Tue, 16 Aug 2016 00:24:16 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 16 Aug 2016 00:25:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org-unstable=$MONGO_VERSION 		mongodb-org-unstable-server=$MONGO_VERSION 		mongodb-org-unstable-shell=$MONGO_VERSION 		mongodb-org-unstable-mongos=$MONGO_VERSION 		mongodb-org-unstable-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 16 Aug 2016 00:25:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 16 Aug 2016 00:25:29 GMT
VOLUME [/data/db /data/configdb]
# Tue, 16 Aug 2016 00:25:31 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh
# Tue, 16 Aug 2016 00:25:32 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 00:25:34 GMT
EXPOSE 27017/tcp
# Tue, 16 Aug 2016 00:25:35 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ccbb2e7a6639f4836cc449fddefe1d7e93d038febddecba87adbd50fe13e8`  
		Last Modified: Fri, 29 Jul 2016 20:02:05 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e1236315cf9079a0cd6a3b51ae23fe240c9248ad8bb0a08b5ee7323e06ef46`  
		Last Modified: Fri, 29 Jul 2016 20:02:05 GMT  
		Size: 134.4 KB (134376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a65768c956413d248e40333fe115ef3bfad2dd1e7fb0e438be9ef6227020d3`  
		Last Modified: Fri, 29 Jul 2016 20:02:05 GMT  
		Size: 1.2 MB (1217478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7b6aa39259bd5ca9e2eca445b0ce303fd6fdfb1352f8fe4b6b381a5502195d`  
		Last Modified: Fri, 29 Jul 2016 20:02:01 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7b0bedb2b243fbef6f817afce4297e440a6b4ed09c2b97faf2d97b612b3abe`  
		Last Modified: Tue, 16 Aug 2016 00:27:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7bf9ec8540a93325365255af67f853e2e35246971505082bfe7ad0da37125e`  
		Last Modified: Tue, 16 Aug 2016 00:27:59 GMT  
		Size: 100.2 MB (100159084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6309ee1b659df07de59d6c71eea8dd93ba1d1ba8fed8756dd8dcefb75af11886`  
		Last Modified: Tue, 16 Aug 2016 00:27:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce80fdeca717c17ac014e27f32e267c13d10036edfb5f1d5078631807d5e8cc1`  
		Last Modified: Tue, 16 Aug 2016 00:27:28 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3`

```console
$ docker pull mongo@sha256:95d63cfa52f476b196e004ea54108bb876e76825426c2d489610796eb315d68b
```

-	Platforms:
	-	linux; amd64

### `mongo:3.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.9 MB (152880742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d969a5eca592559b9ab5f35a4b8fc2984fabe99fae6e34e5fa37809705bffa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Fri, 29 Jul 2016 19:57:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 29 Jul 2016 19:58:30 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 19:58:31 GMT
ENV GOSU_VERSION=1.7
# Fri, 29 Jul 2016 20:00:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 29 Jul 2016 20:00:23 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 29 Jul 2016 20:00:24 GMT
ENV MONGO_MAJOR=3.3
# Tue, 16 Aug 2016 00:24:14 GMT
ENV MONGO_VERSION=3.3.11
# Tue, 16 Aug 2016 00:24:16 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 16 Aug 2016 00:25:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org-unstable=$MONGO_VERSION 		mongodb-org-unstable-server=$MONGO_VERSION 		mongodb-org-unstable-shell=$MONGO_VERSION 		mongodb-org-unstable-mongos=$MONGO_VERSION 		mongodb-org-unstable-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 16 Aug 2016 00:25:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 16 Aug 2016 00:25:29 GMT
VOLUME [/data/db /data/configdb]
# Tue, 16 Aug 2016 00:25:31 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh
# Tue, 16 Aug 2016 00:25:32 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 00:25:34 GMT
EXPOSE 27017/tcp
# Tue, 16 Aug 2016 00:25:35 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ccbb2e7a6639f4836cc449fddefe1d7e93d038febddecba87adbd50fe13e8`  
		Last Modified: Fri, 29 Jul 2016 20:02:05 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e1236315cf9079a0cd6a3b51ae23fe240c9248ad8bb0a08b5ee7323e06ef46`  
		Last Modified: Fri, 29 Jul 2016 20:02:05 GMT  
		Size: 134.4 KB (134376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a65768c956413d248e40333fe115ef3bfad2dd1e7fb0e438be9ef6227020d3`  
		Last Modified: Fri, 29 Jul 2016 20:02:05 GMT  
		Size: 1.2 MB (1217478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7b6aa39259bd5ca9e2eca445b0ce303fd6fdfb1352f8fe4b6b381a5502195d`  
		Last Modified: Fri, 29 Jul 2016 20:02:01 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7b0bedb2b243fbef6f817afce4297e440a6b4ed09c2b97faf2d97b612b3abe`  
		Last Modified: Tue, 16 Aug 2016 00:27:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7bf9ec8540a93325365255af67f853e2e35246971505082bfe7ad0da37125e`  
		Last Modified: Tue, 16 Aug 2016 00:27:59 GMT  
		Size: 100.2 MB (100159084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6309ee1b659df07de59d6c71eea8dd93ba1d1ba8fed8756dd8dcefb75af11886`  
		Last Modified: Tue, 16 Aug 2016 00:27:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce80fdeca717c17ac014e27f32e267c13d10036edfb5f1d5078631807d5e8cc1`  
		Last Modified: Tue, 16 Aug 2016 00:27:28 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3.11-windowsservercore`

```console
$ docker pull mongo@sha256:0bade270d4a9704c71580a0527e264928fb7afc0db0f1007388b18b55519bc7b
```

-	Platforms:
	-	windows; amd64

### `mongo:3.3.11-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3793603654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88bbe22e515db91141d9984701c66d40a3a133c4b91cb299a032a6d92039310b`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 17 Aug 2016 20:30:21 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 17 Aug 2016 22:16:39 GMT
ENV MONGO_VERSION=3.3.11
# Wed, 17 Aug 2016 22:16:50 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.11-signed.msi
# Wed, 17 Aug 2016 22:17:19 GMT
ENV MONGO_DOWNLOAD_SHA256=cea09e54b6540bfd4f6c55a058f81d96a543557eb023289cad36d577424bd079
# Wed, 17 Aug 2016 22:22:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 17 Aug 2016 22:22:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 17 Aug 2016 22:22:26 GMT
EXPOSE 27017/tcp
# Wed, 17 Aug 2016 22:22:29 GMT
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
	-	`sha256:3d768733f545203f7654131870f54e268d5c6d47a55e61c3a05a3bf76bedaed1`  
		Last Modified: Thu, 18 Aug 2016 21:23:03 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a431787fb500f6e46498deb6bc95437acb053a60a4d71b89dbaee30bfe32ea56`  
		Last Modified: Thu, 18 Aug 2016 21:23:03 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a5f0966cb831bc7d3df78f5d77117f7f7efce1c2af6fb2647fcf8887779437`  
		Last Modified: Thu, 18 Aug 2016 21:23:01 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c193529328724b2aaa35451e718bf996e6e4d4a162b8bec016119a6f8248d723`  
		Last Modified: Thu, 18 Aug 2016 21:25:19 GMT  
		Size: 328.4 MB (328395771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9074caf4c240939e606dc17880aa4c30183caeaaf49e1031580d0eba42a79783`  
		Last Modified: Thu, 18 Aug 2016 21:23:01 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f62fee337b6463a6155f663e611326007446abfc7374c4ba3f2c60236178b0`  
		Last Modified: Thu, 18 Aug 2016 21:23:00 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fd3a2ca87ad03ad924a5c334768fbbb6e14051b70e5236d50a729def9d57`  
		Last Modified: Thu, 18 Aug 2016 21:23:01 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3-windowsservercore`

```console
$ docker pull mongo@sha256:0bade270d4a9704c71580a0527e264928fb7afc0db0f1007388b18b55519bc7b
```

-	Platforms:
	-	windows; amd64

### `mongo:3.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.0
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 GB (3793603654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88bbe22e515db91141d9984701c66d40a3a133c4b91cb299a032a6d92039310b`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 12 Aug 2016 17:01:50 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 17 Aug 2016 20:30:21 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 17 Aug 2016 22:16:39 GMT
ENV MONGO_VERSION=3.3.11
# Wed, 17 Aug 2016 22:16:50 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.11-signed.msi
# Wed, 17 Aug 2016 22:17:19 GMT
ENV MONGO_DOWNLOAD_SHA256=cea09e54b6540bfd4f6c55a058f81d96a543557eb023289cad36d577424bd079
# Wed, 17 Aug 2016 22:22:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 17 Aug 2016 22:22:21 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 17 Aug 2016 22:22:26 GMT
EXPOSE 27017/tcp
# Wed, 17 Aug 2016 22:22:29 GMT
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
	-	`sha256:3d768733f545203f7654131870f54e268d5c6d47a55e61c3a05a3bf76bedaed1`  
		Last Modified: Thu, 18 Aug 2016 21:23:03 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a431787fb500f6e46498deb6bc95437acb053a60a4d71b89dbaee30bfe32ea56`  
		Last Modified: Thu, 18 Aug 2016 21:23:03 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a5f0966cb831bc7d3df78f5d77117f7f7efce1c2af6fb2647fcf8887779437`  
		Last Modified: Thu, 18 Aug 2016 21:23:01 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c193529328724b2aaa35451e718bf996e6e4d4a162b8bec016119a6f8248d723`  
		Last Modified: Thu, 18 Aug 2016 21:25:19 GMT  
		Size: 328.4 MB (328395771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9074caf4c240939e606dc17880aa4c30183caeaaf49e1031580d0eba42a79783`  
		Last Modified: Thu, 18 Aug 2016 21:23:01 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f62fee337b6463a6155f663e611326007446abfc7374c4ba3f2c60236178b0`  
		Last Modified: Thu, 18 Aug 2016 21:23:00 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fd3a2ca87ad03ad924a5c334768fbbb6e14051b70e5236d50a729def9d57`  
		Last Modified: Thu, 18 Aug 2016 21:23:01 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
