<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:2.6.12`](#mongo2612)
-	[`mongo:2.6`](#mongo26)
-	[`mongo:2`](#mongo2)
-	[`mongo:3.0.13`](#mongo3013)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.13-windowsservercore`](#mongo3013-windowsservercore)
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
-	[`mongo:3.4.0-rc2`](#mongo340-rc2)
-	[`mongo:3.4.0`](#mongo340)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3.4-rc`](#mongo34-rc)
-	[`mongo:3.4.0-rc2-windowsservercore`](#mongo340-rc2-windowsservercore)
-	[`mongo:3.4.0-windowsservercore`](#mongo340-windowsservercore)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3.4-rc-windowsservercore`](#mongo34-rc-windowsservercore)

## `mongo:2.6.12`

```console
$ docker pull mongo@sha256:08e199598f4f874d14b4f90727dade0384b0fcfe8479355ed2cc5391c46e8ece
```

-	Platforms:
	-	linux; amd64

### `mongo:2.6.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159368564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1999482cb0a523b423e1381b6cb71ba62cd052a4219b8351c3589af7783ef1f6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:41:15 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:41:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates wget 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:41:25 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:41:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 21 Oct 2016 20:41:31 GMT
ENV MONGO_VERSION=2.6.12
# Fri, 21 Oct 2016 20:41:43 GMT
RUN set -x 	&& wget -O mongo.tgz "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" 	&& wget -O mongo.tgz.sig "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz.sig" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	&& gpg --batch --verify mongo.tgz.sig mongo.tgz 	&& rm -r "$GNUPGHOME" mongo.tgz.sig 	&& tar -xvf mongo.tgz -C /usr/local --strip-components=1 	&& rm mongo.tgz
# Fri, 21 Oct 2016 20:41:44 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 21 Oct 2016 20:41:44 GMT
VOLUME [/data/db /data/configdb]
# Fri, 21 Oct 2016 20:41:45 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Fri, 21 Oct 2016 20:41:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 20:41:46 GMT
EXPOSE 27017/tcp
# Fri, 21 Oct 2016 20:41:46 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec8041b61e09fee5719808871902a5331e4d4c75e57c84e82002fbf9bba28ce`  
		Last Modified: Fri, 21 Oct 2016 20:41:59 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70550e83371ae8ebd5aa101e6a1e07f20ac81e6eec5dd278c516b25379b3ce2`  
		Last Modified: Fri, 21 Oct 2016 20:41:58 GMT  
		Size: 4.9 MB (4937967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c64d67d29a538bade8359f355abd110c958aae6d0ae3bab55361af214bab5e`  
		Last Modified: Fri, 21 Oct 2016 20:41:56 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e988d0d363fcd226997f2578d7ba574440497e29731cb3bba6f598ec1b920284`  
		Last Modified: Fri, 21 Oct 2016 20:42:33 GMT  
		Size: 116.4 MB (116405333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3ecc53b679c7d02f7b777b3518a2dc054d8a41540ad15f72b7573a4fda9e08`  
		Last Modified: Fri, 21 Oct 2016 20:41:55 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81ff5ce9209d3dc75f633709849f1474871649ba73e848a256be9f374de08e2`  
		Last Modified: Fri, 21 Oct 2016 20:41:56 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:2.6`

```console
$ docker pull mongo@sha256:08e199598f4f874d14b4f90727dade0384b0fcfe8479355ed2cc5391c46e8ece
```

-	Platforms:
	-	linux; amd64

### `mongo:2.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159368564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1999482cb0a523b423e1381b6cb71ba62cd052a4219b8351c3589af7783ef1f6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:41:15 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:41:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates wget 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:41:25 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:41:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 21 Oct 2016 20:41:31 GMT
ENV MONGO_VERSION=2.6.12
# Fri, 21 Oct 2016 20:41:43 GMT
RUN set -x 	&& wget -O mongo.tgz "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" 	&& wget -O mongo.tgz.sig "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz.sig" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	&& gpg --batch --verify mongo.tgz.sig mongo.tgz 	&& rm -r "$GNUPGHOME" mongo.tgz.sig 	&& tar -xvf mongo.tgz -C /usr/local --strip-components=1 	&& rm mongo.tgz
# Fri, 21 Oct 2016 20:41:44 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 21 Oct 2016 20:41:44 GMT
VOLUME [/data/db /data/configdb]
# Fri, 21 Oct 2016 20:41:45 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Fri, 21 Oct 2016 20:41:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 20:41:46 GMT
EXPOSE 27017/tcp
# Fri, 21 Oct 2016 20:41:46 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec8041b61e09fee5719808871902a5331e4d4c75e57c84e82002fbf9bba28ce`  
		Last Modified: Fri, 21 Oct 2016 20:41:59 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70550e83371ae8ebd5aa101e6a1e07f20ac81e6eec5dd278c516b25379b3ce2`  
		Last Modified: Fri, 21 Oct 2016 20:41:58 GMT  
		Size: 4.9 MB (4937967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c64d67d29a538bade8359f355abd110c958aae6d0ae3bab55361af214bab5e`  
		Last Modified: Fri, 21 Oct 2016 20:41:56 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e988d0d363fcd226997f2578d7ba574440497e29731cb3bba6f598ec1b920284`  
		Last Modified: Fri, 21 Oct 2016 20:42:33 GMT  
		Size: 116.4 MB (116405333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3ecc53b679c7d02f7b777b3518a2dc054d8a41540ad15f72b7573a4fda9e08`  
		Last Modified: Fri, 21 Oct 2016 20:41:55 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81ff5ce9209d3dc75f633709849f1474871649ba73e848a256be9f374de08e2`  
		Last Modified: Fri, 21 Oct 2016 20:41:56 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:2`

```console
$ docker pull mongo@sha256:08e199598f4f874d14b4f90727dade0384b0fcfe8479355ed2cc5391c46e8ece
```

-	Platforms:
	-	linux; amd64

### `mongo:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159368564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1999482cb0a523b423e1381b6cb71ba62cd052a4219b8351c3589af7783ef1f6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:41:15 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:41:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates wget 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:41:25 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:41:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 21 Oct 2016 20:41:31 GMT
ENV MONGO_VERSION=2.6.12
# Fri, 21 Oct 2016 20:41:43 GMT
RUN set -x 	&& wget -O mongo.tgz "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" 	&& wget -O mongo.tgz.sig "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz.sig" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	&& gpg --batch --verify mongo.tgz.sig mongo.tgz 	&& rm -r "$GNUPGHOME" mongo.tgz.sig 	&& tar -xvf mongo.tgz -C /usr/local --strip-components=1 	&& rm mongo.tgz
# Fri, 21 Oct 2016 20:41:44 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 21 Oct 2016 20:41:44 GMT
VOLUME [/data/db /data/configdb]
# Fri, 21 Oct 2016 20:41:45 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Fri, 21 Oct 2016 20:41:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Oct 2016 20:41:46 GMT
EXPOSE 27017/tcp
# Fri, 21 Oct 2016 20:41:46 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec8041b61e09fee5719808871902a5331e4d4c75e57c84e82002fbf9bba28ce`  
		Last Modified: Fri, 21 Oct 2016 20:41:59 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70550e83371ae8ebd5aa101e6a1e07f20ac81e6eec5dd278c516b25379b3ce2`  
		Last Modified: Fri, 21 Oct 2016 20:41:58 GMT  
		Size: 4.9 MB (4937967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c64d67d29a538bade8359f355abd110c958aae6d0ae3bab55361af214bab5e`  
		Last Modified: Fri, 21 Oct 2016 20:41:56 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e988d0d363fcd226997f2578d7ba574440497e29731cb3bba6f598ec1b920284`  
		Last Modified: Fri, 21 Oct 2016 20:42:33 GMT  
		Size: 116.4 MB (116405333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3ecc53b679c7d02f7b777b3518a2dc054d8a41540ad15f72b7573a4fda9e08`  
		Last Modified: Fri, 21 Oct 2016 20:41:55 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81ff5ce9209d3dc75f633709849f1474871649ba73e848a256be9f374de08e2`  
		Last Modified: Fri, 21 Oct 2016 20:41:56 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.13`

```console
$ docker pull mongo@sha256:54fe7cc71a0725ecd2a4d7c39ccf3bb37920e7d1e343b3e0385f6cf1c0eb75d4
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.13` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100851952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8852238ac65c5b9df6d13369581155bc4eb12922a2dc20a611b494ab5532aca9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:41:15 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:45:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:45:17 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:45:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:45:32 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Fri, 21 Oct 2016 20:45:33 GMT
ENV MONGO_MAJOR=3.0
# Tue, 01 Nov 2016 23:30:28 GMT
ENV MONGO_VERSION=3.0.13
# Tue, 01 Nov 2016 23:30:28 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:30:29 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:30:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:30:42 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:30:43 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:30:43 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:30:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:30:44 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:30:45 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec8041b61e09fee5719808871902a5331e4d4c75e57c84e82002fbf9bba28ce`  
		Last Modified: Fri, 21 Oct 2016 20:41:59 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674b51c90aa86ae139ed98b3a40f229eb64aa112bdbbf8007029f02328be1d5c`  
		Last Modified: Fri, 21 Oct 2016 20:46:09 GMT  
		Size: 145.7 KB (145727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617e7bdecca8a73c0cb795dc222feb93ea240bc3a70316a2077471384780f1f1`  
		Last Modified: Fri, 21 Oct 2016 20:46:08 GMT  
		Size: 1.2 MB (1172872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c935362723016806e5029a43a0eb8cc40e90dbd0043958226c2e2da4ea8d316f`  
		Last Modified: Fri, 21 Oct 2016 20:46:05 GMT  
		Size: 29.8 KB (29817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9969bcf65fb05cefd676ab91d856936c1979fae01ec2845f27463010f303e25`  
		Last Modified: Tue, 01 Nov 2016 23:32:46 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b66a96bd7e9f80c63ba922cd45f84e30947627e0de6c64e5f03e077e9f85419`  
		Last Modified: Tue, 01 Nov 2016 23:33:07 GMT  
		Size: 62.3 MB (62285984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeac55458bd8a870da116bfb197c79686d747ea30ebdaaec551e28a15700f6d3`  
		Last Modified: Tue, 01 Nov 2016 23:32:46 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f7ec61700dfb611b6e5a75c503cfba21652e29feab42860b0e5307ac50350b`  
		Last Modified: Tue, 01 Nov 2016 23:32:46 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:54fe7cc71a0725ecd2a4d7c39ccf3bb37920e7d1e343b3e0385f6cf1c0eb75d4
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100851952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8852238ac65c5b9df6d13369581155bc4eb12922a2dc20a611b494ab5532aca9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:41:15 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:45:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:45:17 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:45:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:45:32 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Fri, 21 Oct 2016 20:45:33 GMT
ENV MONGO_MAJOR=3.0
# Tue, 01 Nov 2016 23:30:28 GMT
ENV MONGO_VERSION=3.0.13
# Tue, 01 Nov 2016 23:30:28 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:30:29 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:30:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:30:42 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:30:43 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:30:43 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:30:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:30:44 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:30:45 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec8041b61e09fee5719808871902a5331e4d4c75e57c84e82002fbf9bba28ce`  
		Last Modified: Fri, 21 Oct 2016 20:41:59 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674b51c90aa86ae139ed98b3a40f229eb64aa112bdbbf8007029f02328be1d5c`  
		Last Modified: Fri, 21 Oct 2016 20:46:09 GMT  
		Size: 145.7 KB (145727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617e7bdecca8a73c0cb795dc222feb93ea240bc3a70316a2077471384780f1f1`  
		Last Modified: Fri, 21 Oct 2016 20:46:08 GMT  
		Size: 1.2 MB (1172872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c935362723016806e5029a43a0eb8cc40e90dbd0043958226c2e2da4ea8d316f`  
		Last Modified: Fri, 21 Oct 2016 20:46:05 GMT  
		Size: 29.8 KB (29817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9969bcf65fb05cefd676ab91d856936c1979fae01ec2845f27463010f303e25`  
		Last Modified: Tue, 01 Nov 2016 23:32:46 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b66a96bd7e9f80c63ba922cd45f84e30947627e0de6c64e5f03e077e9f85419`  
		Last Modified: Tue, 01 Nov 2016 23:33:07 GMT  
		Size: 62.3 MB (62285984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeac55458bd8a870da116bfb197c79686d747ea30ebdaaec551e28a15700f6d3`  
		Last Modified: Tue, 01 Nov 2016 23:32:46 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f7ec61700dfb611b6e5a75c503cfba21652e29feab42860b0e5307ac50350b`  
		Last Modified: Tue, 01 Nov 2016 23:32:46 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.13-windowsservercore`

```console
$ docker pull mongo@sha256:174edf238133b3e172fcf3032fea948bf697bc6bf4ad7694c7c0069bfe581e57
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0.13-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 GB (4526303487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6daf0f074defeaf515a904dc8f5bd4f465bf7571713742d943fb24c97024aba2`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Tue, 01 Nov 2016 23:09:56 GMT
ENV MONGO_VERSION=3.0.13
# Tue, 01 Nov 2016 23:10:01 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.13-signed.msi
# Tue, 01 Nov 2016 23:10:07 GMT
ENV MONGO_DOWNLOAD_SHA256=80cd03e75083ab15f94749e9ee3d9b7afb9d9c6d73198305c438c6743a60d7b5
# Tue, 01 Nov 2016 23:13:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 01 Nov 2016 23:13:28 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 01 Nov 2016 23:13:32 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:13:36 GMT
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
	-	`sha256:48588cea4789a34509014aa313e2a2c9ec5202cce56eeb3f9cf2891f2344a3b6`  
		Last Modified: Tue, 01 Nov 2016 23:17:16 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab072de7ad360e8b7914bce57f8a6c39ff993c9f9f20a954cdb5f3d64d2c864e`  
		Last Modified: Tue, 01 Nov 2016 23:17:15 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3086ffddef4af71205dba95b06b6b582868da7c265b8e596287beaa54f8d718`  
		Last Modified: Tue, 01 Nov 2016 23:17:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d051f5a76c4435e50ccf3115703170f2c34a57935c43085767c011166d4cb961`  
		Last Modified: Tue, 01 Nov 2016 23:17:44 GMT  
		Size: 170.9 MB (170887277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec05607e9fe34b99365f271ee3cf8ae8cb6f93503063a3bfd27ae91adc25d8b`  
		Last Modified: Tue, 01 Nov 2016 23:17:11 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118b8228e8fcc05ada962dd1caa3f086a5857a475c82ec5cbd60588617e07665`  
		Last Modified: Tue, 01 Nov 2016 23:17:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5dbb73b4107a721eb7565d7cb07d50e8a0bbd7b87ed10097e44499427350cd9`  
		Last Modified: Tue, 01 Nov 2016 23:17:11 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:174edf238133b3e172fcf3032fea948bf697bc6bf4ad7694c7c0069bfe581e57
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 GB (4526303487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6daf0f074defeaf515a904dc8f5bd4f465bf7571713742d943fb24c97024aba2`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Tue, 01 Nov 2016 23:09:56 GMT
ENV MONGO_VERSION=3.0.13
# Tue, 01 Nov 2016 23:10:01 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.13-signed.msi
# Tue, 01 Nov 2016 23:10:07 GMT
ENV MONGO_DOWNLOAD_SHA256=80cd03e75083ab15f94749e9ee3d9b7afb9d9c6d73198305c438c6743a60d7b5
# Tue, 01 Nov 2016 23:13:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 01 Nov 2016 23:13:28 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 01 Nov 2016 23:13:32 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:13:36 GMT
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
	-	`sha256:48588cea4789a34509014aa313e2a2c9ec5202cce56eeb3f9cf2891f2344a3b6`  
		Last Modified: Tue, 01 Nov 2016 23:17:16 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab072de7ad360e8b7914bce57f8a6c39ff993c9f9f20a954cdb5f3d64d2c864e`  
		Last Modified: Tue, 01 Nov 2016 23:17:15 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3086ffddef4af71205dba95b06b6b582868da7c265b8e596287beaa54f8d718`  
		Last Modified: Tue, 01 Nov 2016 23:17:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d051f5a76c4435e50ccf3115703170f2c34a57935c43085767c011166d4cb961`  
		Last Modified: Tue, 01 Nov 2016 23:17:44 GMT  
		Size: 170.9 MB (170887277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec05607e9fe34b99365f271ee3cf8ae8cb6f93503063a3bfd27ae91adc25d8b`  
		Last Modified: Tue, 01 Nov 2016 23:17:11 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118b8228e8fcc05ada962dd1caa3f086a5857a475c82ec5cbd60588617e07665`  
		Last Modified: Tue, 01 Nov 2016 23:17:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5dbb73b4107a721eb7565d7cb07d50e8a0bbd7b87ed10097e44499427350cd9`  
		Last Modified: Tue, 01 Nov 2016 23:17:11 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.10`

```console
$ docker pull mongo@sha256:89ad0ed6321f48107356db1e11984e56614bdee64c3ad8a05484187f276ff705
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.10` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123434517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135883d5d0b960b498e4c6c2009444b243b322d3fcb8fc4aa0cc741542dd6528`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:43:08 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:43:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:43:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:43:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:43:33 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 21 Oct 2016 20:43:36 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 20:43:36 GMT
ENV MONGO_MAJOR=3.2
# Fri, 21 Oct 2016 20:43:36 GMT
ENV MONGO_VERSION=3.2.10
# Tue, 01 Nov 2016 23:30:45 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:30:47 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:02 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:02 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:03 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:04 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679a27ed88fac3c31379d57fa7074d642c278f5409a07ca962483ee0446fd559`  
		Last Modified: Fri, 21 Oct 2016 20:44:09 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480a2b7cac8990ee07670ed31df6114a2d7a8470bda789fa4476bffcabf89b0a`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 134.2 KB (134190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47cdcec4958f6ba41e40b6dd25acb668ddcf3d800273784609abb52e1fe75c`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 1.2 MB (1217248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9256de55cd57ecdc8598e8a3d5a49249ceb1daf22763654ae7b42dba5fd267b5`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9dc6db2834aebc60ab24d1caa842ad3dcca75d5db313f865e891a21f041a02`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2b45b7a40c8688c64c5c88805666309b0c0cfb363b685c636726f14442b5ad`  
		Last Modified: Tue, 01 Nov 2016 23:34:04 GMT  
		Size: 70.7 MB (70724075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f5d27d1e75a86e99ef0f84d966a4545aa4a2b9c238ca3373c3e93685d6b17a`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51170f94141d1bf285906977778b2ee630bf28c871fb6194b0307808a2b89efc`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:89ad0ed6321f48107356db1e11984e56614bdee64c3ad8a05484187f276ff705
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123434517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135883d5d0b960b498e4c6c2009444b243b322d3fcb8fc4aa0cc741542dd6528`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:43:08 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:43:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:43:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:43:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:43:33 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 21 Oct 2016 20:43:36 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 20:43:36 GMT
ENV MONGO_MAJOR=3.2
# Fri, 21 Oct 2016 20:43:36 GMT
ENV MONGO_VERSION=3.2.10
# Tue, 01 Nov 2016 23:30:45 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:30:47 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:02 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:02 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:03 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:04 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679a27ed88fac3c31379d57fa7074d642c278f5409a07ca962483ee0446fd559`  
		Last Modified: Fri, 21 Oct 2016 20:44:09 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480a2b7cac8990ee07670ed31df6114a2d7a8470bda789fa4476bffcabf89b0a`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 134.2 KB (134190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47cdcec4958f6ba41e40b6dd25acb668ddcf3d800273784609abb52e1fe75c`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 1.2 MB (1217248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9256de55cd57ecdc8598e8a3d5a49249ceb1daf22763654ae7b42dba5fd267b5`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9dc6db2834aebc60ab24d1caa842ad3dcca75d5db313f865e891a21f041a02`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2b45b7a40c8688c64c5c88805666309b0c0cfb363b685c636726f14442b5ad`  
		Last Modified: Tue, 01 Nov 2016 23:34:04 GMT  
		Size: 70.7 MB (70724075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f5d27d1e75a86e99ef0f84d966a4545aa4a2b9c238ca3373c3e93685d6b17a`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51170f94141d1bf285906977778b2ee630bf28c871fb6194b0307808a2b89efc`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:89ad0ed6321f48107356db1e11984e56614bdee64c3ad8a05484187f276ff705
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123434517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135883d5d0b960b498e4c6c2009444b243b322d3fcb8fc4aa0cc741542dd6528`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:43:08 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:43:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:43:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:43:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:43:33 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 21 Oct 2016 20:43:36 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 20:43:36 GMT
ENV MONGO_MAJOR=3.2
# Fri, 21 Oct 2016 20:43:36 GMT
ENV MONGO_VERSION=3.2.10
# Tue, 01 Nov 2016 23:30:45 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:30:47 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:02 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:02 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:03 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:04 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679a27ed88fac3c31379d57fa7074d642c278f5409a07ca962483ee0446fd559`  
		Last Modified: Fri, 21 Oct 2016 20:44:09 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480a2b7cac8990ee07670ed31df6114a2d7a8470bda789fa4476bffcabf89b0a`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 134.2 KB (134190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47cdcec4958f6ba41e40b6dd25acb668ddcf3d800273784609abb52e1fe75c`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 1.2 MB (1217248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9256de55cd57ecdc8598e8a3d5a49249ceb1daf22763654ae7b42dba5fd267b5`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9dc6db2834aebc60ab24d1caa842ad3dcca75d5db313f865e891a21f041a02`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2b45b7a40c8688c64c5c88805666309b0c0cfb363b685c636726f14442b5ad`  
		Last Modified: Tue, 01 Nov 2016 23:34:04 GMT  
		Size: 70.7 MB (70724075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f5d27d1e75a86e99ef0f84d966a4545aa4a2b9c238ca3373c3e93685d6b17a`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51170f94141d1bf285906977778b2ee630bf28c871fb6194b0307808a2b89efc`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:89ad0ed6321f48107356db1e11984e56614bdee64c3ad8a05484187f276ff705
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123434517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135883d5d0b960b498e4c6c2009444b243b322d3fcb8fc4aa0cc741542dd6528`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:43:08 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:43:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:43:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:43:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:43:33 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 21 Oct 2016 20:43:36 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 20:43:36 GMT
ENV MONGO_MAJOR=3.2
# Fri, 21 Oct 2016 20:43:36 GMT
ENV MONGO_VERSION=3.2.10
# Tue, 01 Nov 2016 23:30:45 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:30:47 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:02 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:02 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:03 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:04 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679a27ed88fac3c31379d57fa7074d642c278f5409a07ca962483ee0446fd559`  
		Last Modified: Fri, 21 Oct 2016 20:44:09 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480a2b7cac8990ee07670ed31df6114a2d7a8470bda789fa4476bffcabf89b0a`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 134.2 KB (134190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47cdcec4958f6ba41e40b6dd25acb668ddcf3d800273784609abb52e1fe75c`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 1.2 MB (1217248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9256de55cd57ecdc8598e8a3d5a49249ceb1daf22763654ae7b42dba5fd267b5`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9dc6db2834aebc60ab24d1caa842ad3dcca75d5db313f865e891a21f041a02`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2b45b7a40c8688c64c5c88805666309b0c0cfb363b685c636726f14442b5ad`  
		Last Modified: Tue, 01 Nov 2016 23:34:04 GMT  
		Size: 70.7 MB (70724075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f5d27d1e75a86e99ef0f84d966a4545aa4a2b9c238ca3373c3e93685d6b17a`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51170f94141d1bf285906977778b2ee630bf28c871fb6194b0307808a2b89efc`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 349.0 B  
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
$ docker pull mongo@sha256:562f2d4a1e4de4b0155082c58e5103d8876c7e075a83bfbcbb54cc6d0e3f106e
```

-	Platforms:
	-	linux; amd64

### `mongo:3.3.15` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150096613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497f4cbca776dcdbfc99a6917d812ed9f45b69d12b296cb61fe3f6f597d63d26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:43:08 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:43:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:43:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:43:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:46:45 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 21 Oct 2016 20:46:46 GMT
ENV MONGO_MAJOR=3.3
# Fri, 21 Oct 2016 20:46:46 GMT
ENV MONGO_VERSION=3.3.15
# Tue, 01 Nov 2016 23:31:04 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 01 Nov 2016 23:31:05 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:21 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:22 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:23 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679a27ed88fac3c31379d57fa7074d642c278f5409a07ca962483ee0446fd559`  
		Last Modified: Fri, 21 Oct 2016 20:44:09 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480a2b7cac8990ee07670ed31df6114a2d7a8470bda789fa4476bffcabf89b0a`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 134.2 KB (134190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47cdcec4958f6ba41e40b6dd25acb668ddcf3d800273784609abb52e1fe75c`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 1.2 MB (1217248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cf5c9c07c17af6df6f2a7935aa49e2f595d5b6a201870d14767a8830b8d6c2`  
		Last Modified: Fri, 21 Oct 2016 20:47:16 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cdbb5c09b9665f3b243f2ce8df4dc0b5e43086fca132f120839054cb2a65340`  
		Last Modified: Tue, 01 Nov 2016 23:35:01 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4992dfef29253ceac5ccf80af2a787fec1215e13ce9a0763b20143953d1aad21`  
		Last Modified: Tue, 01 Nov 2016 23:35:29 GMT  
		Size: 97.4 MB (97387853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136b2b50cc6ae998a0500db46a05f176b91040edd4988284f6a66d6aa359e44`  
		Last Modified: Tue, 01 Nov 2016 23:35:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc59f2746c55ae02421270b71b54ba4f78f47d43551386995e49c7b115ceeb59`  
		Last Modified: Tue, 01 Nov 2016 23:35:01 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3`

```console
$ docker pull mongo@sha256:562f2d4a1e4de4b0155082c58e5103d8876c7e075a83bfbcbb54cc6d0e3f106e
```

-	Platforms:
	-	linux; amd64

### `mongo:3.3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150096613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497f4cbca776dcdbfc99a6917d812ed9f45b69d12b296cb61fe3f6f597d63d26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:43:08 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:43:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:43:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:43:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:46:45 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 21 Oct 2016 20:46:46 GMT
ENV MONGO_MAJOR=3.3
# Fri, 21 Oct 2016 20:46:46 GMT
ENV MONGO_VERSION=3.3.15
# Tue, 01 Nov 2016 23:31:04 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 01 Nov 2016 23:31:05 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:21 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:22 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:23 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679a27ed88fac3c31379d57fa7074d642c278f5409a07ca962483ee0446fd559`  
		Last Modified: Fri, 21 Oct 2016 20:44:09 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480a2b7cac8990ee07670ed31df6114a2d7a8470bda789fa4476bffcabf89b0a`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 134.2 KB (134190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47cdcec4958f6ba41e40b6dd25acb668ddcf3d800273784609abb52e1fe75c`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 1.2 MB (1217248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cf5c9c07c17af6df6f2a7935aa49e2f595d5b6a201870d14767a8830b8d6c2`  
		Last Modified: Fri, 21 Oct 2016 20:47:16 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cdbb5c09b9665f3b243f2ce8df4dc0b5e43086fca132f120839054cb2a65340`  
		Last Modified: Tue, 01 Nov 2016 23:35:01 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4992dfef29253ceac5ccf80af2a787fec1215e13ce9a0763b20143953d1aad21`  
		Last Modified: Tue, 01 Nov 2016 23:35:29 GMT  
		Size: 97.4 MB (97387853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136b2b50cc6ae998a0500db46a05f176b91040edd4988284f6a66d6aa359e44`  
		Last Modified: Tue, 01 Nov 2016 23:35:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc59f2746c55ae02421270b71b54ba4f78f47d43551386995e49c7b115ceeb59`  
		Last Modified: Tue, 01 Nov 2016 23:35:01 GMT  
		Size: 349.0 B  
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

## `mongo:3.4.0-rc2`

```console
$ docker pull mongo@sha256:4df9df58bfb36c6e45a8ea8591b43ed3077601cd9aff3fd10096301597d93e73
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.0-rc2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150272618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa99e55d0c49d22924a3566d02b31feeb95a8ee440de1900c6d35700a4e30e44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:43:08 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:43:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:43:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:43:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:46:45 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 01 Nov 2016 23:31:24 GMT
ENV MONGO_MAJOR=testing
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_VERSION=3.4.0~rc2
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:31:26 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:54 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:55 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:56 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:56 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679a27ed88fac3c31379d57fa7074d642c278f5409a07ca962483ee0446fd559`  
		Last Modified: Fri, 21 Oct 2016 20:44:09 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480a2b7cac8990ee07670ed31df6114a2d7a8470bda789fa4476bffcabf89b0a`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 134.2 KB (134190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47cdcec4958f6ba41e40b6dd25acb668ddcf3d800273784609abb52e1fe75c`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 1.2 MB (1217248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cf5c9c07c17af6df6f2a7935aa49e2f595d5b6a201870d14767a8830b8d6c2`  
		Last Modified: Fri, 21 Oct 2016 20:47:16 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8abd5996a60845f0e4ace81f503214dedf6ac356dc9089e05364ac36f8299a2`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf72a3c170d5eca90f46e0da7688b1e49feb5f0f1c3deab099128dd2e429f843`  
		Last Modified: Tue, 01 Nov 2016 23:36:31 GMT  
		Size: 97.6 MB (97563853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f1b778a1b3d859ad78128442a6590ad14b5c9f55534ba4fca0bb4a499a476`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850bf903d1d76e8ae1b00f4e2182342c153e5b34b6e91ce89280afba34f5f3a4`  
		Last Modified: Tue, 01 Nov 2016 23:36:04 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.0`

```console
$ docker pull mongo@sha256:4df9df58bfb36c6e45a8ea8591b43ed3077601cd9aff3fd10096301597d93e73
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150272618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa99e55d0c49d22924a3566d02b31feeb95a8ee440de1900c6d35700a4e30e44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:43:08 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:43:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:43:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:43:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:46:45 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 01 Nov 2016 23:31:24 GMT
ENV MONGO_MAJOR=testing
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_VERSION=3.4.0~rc2
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:31:26 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:54 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:55 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:56 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:56 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679a27ed88fac3c31379d57fa7074d642c278f5409a07ca962483ee0446fd559`  
		Last Modified: Fri, 21 Oct 2016 20:44:09 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480a2b7cac8990ee07670ed31df6114a2d7a8470bda789fa4476bffcabf89b0a`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 134.2 KB (134190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47cdcec4958f6ba41e40b6dd25acb668ddcf3d800273784609abb52e1fe75c`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 1.2 MB (1217248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cf5c9c07c17af6df6f2a7935aa49e2f595d5b6a201870d14767a8830b8d6c2`  
		Last Modified: Fri, 21 Oct 2016 20:47:16 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8abd5996a60845f0e4ace81f503214dedf6ac356dc9089e05364ac36f8299a2`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf72a3c170d5eca90f46e0da7688b1e49feb5f0f1c3deab099128dd2e429f843`  
		Last Modified: Tue, 01 Nov 2016 23:36:31 GMT  
		Size: 97.6 MB (97563853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f1b778a1b3d859ad78128442a6590ad14b5c9f55534ba4fca0bb4a499a476`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850bf903d1d76e8ae1b00f4e2182342c153e5b34b6e91ce89280afba34f5f3a4`  
		Last Modified: Tue, 01 Nov 2016 23:36:04 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:4df9df58bfb36c6e45a8ea8591b43ed3077601cd9aff3fd10096301597d93e73
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150272618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa99e55d0c49d22924a3566d02b31feeb95a8ee440de1900c6d35700a4e30e44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:43:08 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:43:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:43:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:43:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:46:45 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 01 Nov 2016 23:31:24 GMT
ENV MONGO_MAJOR=testing
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_VERSION=3.4.0~rc2
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:31:26 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:54 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:55 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:56 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:56 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679a27ed88fac3c31379d57fa7074d642c278f5409a07ca962483ee0446fd559`  
		Last Modified: Fri, 21 Oct 2016 20:44:09 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480a2b7cac8990ee07670ed31df6114a2d7a8470bda789fa4476bffcabf89b0a`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 134.2 KB (134190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47cdcec4958f6ba41e40b6dd25acb668ddcf3d800273784609abb52e1fe75c`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 1.2 MB (1217248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cf5c9c07c17af6df6f2a7935aa49e2f595d5b6a201870d14767a8830b8d6c2`  
		Last Modified: Fri, 21 Oct 2016 20:47:16 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8abd5996a60845f0e4ace81f503214dedf6ac356dc9089e05364ac36f8299a2`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf72a3c170d5eca90f46e0da7688b1e49feb5f0f1c3deab099128dd2e429f843`  
		Last Modified: Tue, 01 Nov 2016 23:36:31 GMT  
		Size: 97.6 MB (97563853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f1b778a1b3d859ad78128442a6590ad14b5c9f55534ba4fca0bb4a499a476`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850bf903d1d76e8ae1b00f4e2182342c153e5b34b6e91ce89280afba34f5f3a4`  
		Last Modified: Tue, 01 Nov 2016 23:36:04 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-rc`

```console
$ docker pull mongo@sha256:4df9df58bfb36c6e45a8ea8591b43ed3077601cd9aff3fd10096301597d93e73
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4-rc` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150272618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa99e55d0c49d22924a3566d02b31feeb95a8ee440de1900c6d35700a4e30e44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:43:08 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:43:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:43:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:43:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:46:45 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 01 Nov 2016 23:31:24 GMT
ENV MONGO_MAJOR=testing
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_VERSION=3.4.0~rc2
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:31:26 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:54 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:55 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:56 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:56 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679a27ed88fac3c31379d57fa7074d642c278f5409a07ca962483ee0446fd559`  
		Last Modified: Fri, 21 Oct 2016 20:44:09 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480a2b7cac8990ee07670ed31df6114a2d7a8470bda789fa4476bffcabf89b0a`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 134.2 KB (134190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47cdcec4958f6ba41e40b6dd25acb668ddcf3d800273784609abb52e1fe75c`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 1.2 MB (1217248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cf5c9c07c17af6df6f2a7935aa49e2f595d5b6a201870d14767a8830b8d6c2`  
		Last Modified: Fri, 21 Oct 2016 20:47:16 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8abd5996a60845f0e4ace81f503214dedf6ac356dc9089e05364ac36f8299a2`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf72a3c170d5eca90f46e0da7688b1e49feb5f0f1c3deab099128dd2e429f843`  
		Last Modified: Tue, 01 Nov 2016 23:36:31 GMT  
		Size: 97.6 MB (97563853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f1b778a1b3d859ad78128442a6590ad14b5c9f55534ba4fca0bb4a499a476`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850bf903d1d76e8ae1b00f4e2182342c153e5b34b6e91ce89280afba34f5f3a4`  
		Last Modified: Tue, 01 Nov 2016 23:36:04 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.0-rc2-windowsservercore`

```console
$ docker pull mongo@sha256:18f22a79495a48310e7062a25935b6817b6846751cb54aff67daffafd6386b85
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.0-rc2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667446584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7dae06a3232508b678e0f78890be4877d095b097e646c16c0b289b73ecfd31`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Tue, 01 Nov 2016 23:13:42 GMT
ENV MONGO_VERSION=3.4.0-rc2
# Tue, 01 Nov 2016 23:13:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc2-signed.msi
# Tue, 01 Nov 2016 23:13:49 GMT
ENV MONGO_DOWNLOAD_SHA256=f378e3f3e31ebf6529f18a0cf22e33d61bf9ed7d73abf5e54e35d23d7a30c46a
# Tue, 01 Nov 2016 23:16:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 01 Nov 2016 23:16:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 01 Nov 2016 23:16:52 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:16:58 GMT
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
	-	`sha256:50677b6c0c707da22092ea97b2cef8db5848dfb4d8315f3500501665e3ba25a0`  
		Last Modified: Tue, 01 Nov 2016 23:18:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced9b0abc601380c9d88b5a7e180c459159444e1f973d20f45d7646a5218bbb1`  
		Last Modified: Tue, 01 Nov 2016 23:18:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9eaa03b3c6c9e253d8ff751232c3871fbf4de2a93d8b3b19cdc6a4639b2e0`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45a3f74ef7acc9c6392f83c63ba4afaebc13b8926f12793076505062234fc2d`  
		Last Modified: Tue, 01 Nov 2016 23:18:50 GMT  
		Size: 312.0 MB (312030352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623a05fa19025e2d571bdecfbce1d5d3bb4ac7e74af7a5d68389f2c3518654a5`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51dcc0883477d0f5e00226df2c98c02e0a601730c47eda0c2e54ba7cbf83fb`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b278f69de75c7b06ab75446afc949495b3ca9bf81b9d89bf6920c0da9f5a9ca`  
		Last Modified: Tue, 01 Nov 2016 23:18:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.0-windowsservercore`

```console
$ docker pull mongo@sha256:18f22a79495a48310e7062a25935b6817b6846751cb54aff67daffafd6386b85
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667446584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7dae06a3232508b678e0f78890be4877d095b097e646c16c0b289b73ecfd31`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Tue, 01 Nov 2016 23:13:42 GMT
ENV MONGO_VERSION=3.4.0-rc2
# Tue, 01 Nov 2016 23:13:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc2-signed.msi
# Tue, 01 Nov 2016 23:13:49 GMT
ENV MONGO_DOWNLOAD_SHA256=f378e3f3e31ebf6529f18a0cf22e33d61bf9ed7d73abf5e54e35d23d7a30c46a
# Tue, 01 Nov 2016 23:16:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 01 Nov 2016 23:16:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 01 Nov 2016 23:16:52 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:16:58 GMT
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
	-	`sha256:50677b6c0c707da22092ea97b2cef8db5848dfb4d8315f3500501665e3ba25a0`  
		Last Modified: Tue, 01 Nov 2016 23:18:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced9b0abc601380c9d88b5a7e180c459159444e1f973d20f45d7646a5218bbb1`  
		Last Modified: Tue, 01 Nov 2016 23:18:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9eaa03b3c6c9e253d8ff751232c3871fbf4de2a93d8b3b19cdc6a4639b2e0`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45a3f74ef7acc9c6392f83c63ba4afaebc13b8926f12793076505062234fc2d`  
		Last Modified: Tue, 01 Nov 2016 23:18:50 GMT  
		Size: 312.0 MB (312030352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623a05fa19025e2d571bdecfbce1d5d3bb4ac7e74af7a5d68389f2c3518654a5`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51dcc0883477d0f5e00226df2c98c02e0a601730c47eda0c2e54ba7cbf83fb`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b278f69de75c7b06ab75446afc949495b3ca9bf81b9d89bf6920c0da9f5a9ca`  
		Last Modified: Tue, 01 Nov 2016 23:18:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:18f22a79495a48310e7062a25935b6817b6846751cb54aff67daffafd6386b85
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667446584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7dae06a3232508b678e0f78890be4877d095b097e646c16c0b289b73ecfd31`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Tue, 01 Nov 2016 23:13:42 GMT
ENV MONGO_VERSION=3.4.0-rc2
# Tue, 01 Nov 2016 23:13:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc2-signed.msi
# Tue, 01 Nov 2016 23:13:49 GMT
ENV MONGO_DOWNLOAD_SHA256=f378e3f3e31ebf6529f18a0cf22e33d61bf9ed7d73abf5e54e35d23d7a30c46a
# Tue, 01 Nov 2016 23:16:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 01 Nov 2016 23:16:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 01 Nov 2016 23:16:52 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:16:58 GMT
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
	-	`sha256:50677b6c0c707da22092ea97b2cef8db5848dfb4d8315f3500501665e3ba25a0`  
		Last Modified: Tue, 01 Nov 2016 23:18:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced9b0abc601380c9d88b5a7e180c459159444e1f973d20f45d7646a5218bbb1`  
		Last Modified: Tue, 01 Nov 2016 23:18:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9eaa03b3c6c9e253d8ff751232c3871fbf4de2a93d8b3b19cdc6a4639b2e0`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45a3f74ef7acc9c6392f83c63ba4afaebc13b8926f12793076505062234fc2d`  
		Last Modified: Tue, 01 Nov 2016 23:18:50 GMT  
		Size: 312.0 MB (312030352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623a05fa19025e2d571bdecfbce1d5d3bb4ac7e74af7a5d68389f2c3518654a5`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51dcc0883477d0f5e00226df2c98c02e0a601730c47eda0c2e54ba7cbf83fb`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b278f69de75c7b06ab75446afc949495b3ca9bf81b9d89bf6920c0da9f5a9ca`  
		Last Modified: Tue, 01 Nov 2016 23:18:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-rc-windowsservercore`

```console
$ docker pull mongo@sha256:18f22a79495a48310e7062a25935b6817b6846751cb54aff67daffafd6386b85
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-rc-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667446584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7dae06a3232508b678e0f78890be4877d095b097e646c16c0b289b73ecfd31`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Tue, 01 Nov 2016 23:13:42 GMT
ENV MONGO_VERSION=3.4.0-rc2
# Tue, 01 Nov 2016 23:13:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc2-signed.msi
# Tue, 01 Nov 2016 23:13:49 GMT
ENV MONGO_DOWNLOAD_SHA256=f378e3f3e31ebf6529f18a0cf22e33d61bf9ed7d73abf5e54e35d23d7a30c46a
# Tue, 01 Nov 2016 23:16:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 01 Nov 2016 23:16:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 01 Nov 2016 23:16:52 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:16:58 GMT
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
	-	`sha256:50677b6c0c707da22092ea97b2cef8db5848dfb4d8315f3500501665e3ba25a0`  
		Last Modified: Tue, 01 Nov 2016 23:18:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced9b0abc601380c9d88b5a7e180c459159444e1f973d20f45d7646a5218bbb1`  
		Last Modified: Tue, 01 Nov 2016 23:18:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9eaa03b3c6c9e253d8ff751232c3871fbf4de2a93d8b3b19cdc6a4639b2e0`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45a3f74ef7acc9c6392f83c63ba4afaebc13b8926f12793076505062234fc2d`  
		Last Modified: Tue, 01 Nov 2016 23:18:50 GMT  
		Size: 312.0 MB (312030352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623a05fa19025e2d571bdecfbce1d5d3bb4ac7e74af7a5d68389f2c3518654a5`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51dcc0883477d0f5e00226df2c98c02e0a601730c47eda0c2e54ba7cbf83fb`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b278f69de75c7b06ab75446afc949495b3ca9bf81b9d89bf6920c0da9f5a9ca`  
		Last Modified: Tue, 01 Nov 2016 23:18:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
