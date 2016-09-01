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
-	[`mongo:3.3.12`](#mongo3312)
-	[`mongo:3.3`](#mongo33)
-	[`mongo:3.3.12-windowsservercore`](#mongo3312-windowsservercore)
-	[`mongo:3.3-windowsservercore`](#mongo33-windowsservercore)

## `mongo:2.6.12`

```console
$ docker pull mongo@sha256:ecbfb66a2904b0217417d08df7cc84cafcb9c17ac57aad7d3723ebd4eecdbe3a
```

-	Platforms:
	-	linux; amd64

### `mongo:2.6.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159357905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13f877c9486a266b0f95acfd22d00c2cb29fa195b021a427cedcb8b24a91dd29`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:26:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 30 Aug 2016 23:26:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates wget 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:26:59 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:27:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 23:27:06 GMT
ENV MONGO_VERSION=2.6.12
# Tue, 30 Aug 2016 23:27:17 GMT
RUN set -x 	&& wget -O mongo.tgz "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" 	&& wget -O mongo.tgz.sig "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz.sig" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	&& gpg --batch --verify mongo.tgz.sig mongo.tgz 	&& rm -r "$GNUPGHOME" mongo.tgz.sig 	&& tar -xvf mongo.tgz -C /usr/local --strip-components=1 	&& rm mongo.tgz
# Tue, 30 Aug 2016 23:27:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 30 Aug 2016 23:27:18 GMT
VOLUME [/data/db /data/configdb]
# Tue, 30 Aug 2016 23:27:18 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 30 Aug 2016 23:27:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:27:19 GMT
EXPOSE 27017/tcp
# Tue, 30 Aug 2016 23:27:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba95eb02831f261af62739eb2a82854ebc21e62144635cc5f6d49d168623fb64`  
		Last Modified: Wed, 31 Aug 2016 17:41:33 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dc8636c4de8efc82164ebe4221f7b3bef9436b5f0136b9ee13afa7a19da389`  
		Last Modified: Wed, 31 Aug 2016 17:41:33 GMT  
		Size: 4.9 MB (4927869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ba40c46d70c996a0137406e454377398501377074a483c2f1e2297f8209410`  
		Last Modified: Wed, 31 Aug 2016 17:41:31 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b7d37cc7a7939018fd345db43d81c9dfd1c1ce2c660c6428539298cac5c75c`  
		Last Modified: Wed, 31 Aug 2016 17:42:26 GMT  
		Size: 116.4 MB (116405332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc4041cef2923076503f40f376117abc4ad716ce54086092bf2cee6b03a5076`  
		Last Modified: Wed, 31 Aug 2016 17:41:30 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb494f83a39272b131850540f007ded394dffd99e2f94b937581a8d49429245`  
		Last Modified: Wed, 31 Aug 2016 17:41:30 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:2.6`

```console
$ docker pull mongo@sha256:ecbfb66a2904b0217417d08df7cc84cafcb9c17ac57aad7d3723ebd4eecdbe3a
```

-	Platforms:
	-	linux; amd64

### `mongo:2.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159357905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13f877c9486a266b0f95acfd22d00c2cb29fa195b021a427cedcb8b24a91dd29`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:26:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 30 Aug 2016 23:26:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates wget 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:26:59 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:27:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 23:27:06 GMT
ENV MONGO_VERSION=2.6.12
# Tue, 30 Aug 2016 23:27:17 GMT
RUN set -x 	&& wget -O mongo.tgz "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" 	&& wget -O mongo.tgz.sig "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz.sig" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	&& gpg --batch --verify mongo.tgz.sig mongo.tgz 	&& rm -r "$GNUPGHOME" mongo.tgz.sig 	&& tar -xvf mongo.tgz -C /usr/local --strip-components=1 	&& rm mongo.tgz
# Tue, 30 Aug 2016 23:27:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 30 Aug 2016 23:27:18 GMT
VOLUME [/data/db /data/configdb]
# Tue, 30 Aug 2016 23:27:18 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 30 Aug 2016 23:27:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:27:19 GMT
EXPOSE 27017/tcp
# Tue, 30 Aug 2016 23:27:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba95eb02831f261af62739eb2a82854ebc21e62144635cc5f6d49d168623fb64`  
		Last Modified: Wed, 31 Aug 2016 17:41:33 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dc8636c4de8efc82164ebe4221f7b3bef9436b5f0136b9ee13afa7a19da389`  
		Last Modified: Wed, 31 Aug 2016 17:41:33 GMT  
		Size: 4.9 MB (4927869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ba40c46d70c996a0137406e454377398501377074a483c2f1e2297f8209410`  
		Last Modified: Wed, 31 Aug 2016 17:41:31 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b7d37cc7a7939018fd345db43d81c9dfd1c1ce2c660c6428539298cac5c75c`  
		Last Modified: Wed, 31 Aug 2016 17:42:26 GMT  
		Size: 116.4 MB (116405332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc4041cef2923076503f40f376117abc4ad716ce54086092bf2cee6b03a5076`  
		Last Modified: Wed, 31 Aug 2016 17:41:30 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb494f83a39272b131850540f007ded394dffd99e2f94b937581a8d49429245`  
		Last Modified: Wed, 31 Aug 2016 17:41:30 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:2`

```console
$ docker pull mongo@sha256:ecbfb66a2904b0217417d08df7cc84cafcb9c17ac57aad7d3723ebd4eecdbe3a
```

-	Platforms:
	-	linux; amd64

### `mongo:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159357905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13f877c9486a266b0f95acfd22d00c2cb29fa195b021a427cedcb8b24a91dd29`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:26:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 30 Aug 2016 23:26:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates wget 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:26:59 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:27:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Aug 2016 23:27:06 GMT
ENV MONGO_VERSION=2.6.12
# Tue, 30 Aug 2016 23:27:17 GMT
RUN set -x 	&& wget -O mongo.tgz "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" 	&& wget -O mongo.tgz.sig "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz.sig" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	&& gpg --batch --verify mongo.tgz.sig mongo.tgz 	&& rm -r "$GNUPGHOME" mongo.tgz.sig 	&& tar -xvf mongo.tgz -C /usr/local --strip-components=1 	&& rm mongo.tgz
# Tue, 30 Aug 2016 23:27:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 30 Aug 2016 23:27:18 GMT
VOLUME [/data/db /data/configdb]
# Tue, 30 Aug 2016 23:27:18 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 30 Aug 2016 23:27:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:27:19 GMT
EXPOSE 27017/tcp
# Tue, 30 Aug 2016 23:27:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba95eb02831f261af62739eb2a82854ebc21e62144635cc5f6d49d168623fb64`  
		Last Modified: Wed, 31 Aug 2016 17:41:33 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dc8636c4de8efc82164ebe4221f7b3bef9436b5f0136b9ee13afa7a19da389`  
		Last Modified: Wed, 31 Aug 2016 17:41:33 GMT  
		Size: 4.9 MB (4927869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ba40c46d70c996a0137406e454377398501377074a483c2f1e2297f8209410`  
		Last Modified: Wed, 31 Aug 2016 17:41:31 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b7d37cc7a7939018fd345db43d81c9dfd1c1ce2c660c6428539298cac5c75c`  
		Last Modified: Wed, 31 Aug 2016 17:42:26 GMT  
		Size: 116.4 MB (116405332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc4041cef2923076503f40f376117abc4ad716ce54086092bf2cee6b03a5076`  
		Last Modified: Wed, 31 Aug 2016 17:41:30 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb494f83a39272b131850540f007ded394dffd99e2f94b937581a8d49429245`  
		Last Modified: Wed, 31 Aug 2016 17:41:30 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.12`

```console
$ docker pull mongo@sha256:b33e7552ed8fc21d63a8431f49e8fa00cef1a84feb37c0d73e1f811dd5b3d756
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97237371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5174f961feb118a2c923634dff7fa576b39a05e46384cfd652921a8fdfbeecef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:26:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 30 Aug 2016 23:27:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:27:25 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:27:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 23:27:43 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 30 Aug 2016 23:27:43 GMT
ENV MONGO_MAJOR=3.0
# Tue, 30 Aug 2016 23:27:43 GMT
ENV MONGO_VERSION=3.0.12
# Tue, 30 Aug 2016 23:27:44 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 30 Aug 2016 23:27:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 30 Aug 2016 23:27:56 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 30 Aug 2016 23:27:57 GMT
VOLUME [/data/db /data/configdb]
# Tue, 30 Aug 2016 23:27:57 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 30 Aug 2016 23:27:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:27:57 GMT
EXPOSE 27017/tcp
# Tue, 30 Aug 2016 23:27:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba95eb02831f261af62739eb2a82854ebc21e62144635cc5f6d49d168623fb64`  
		Last Modified: Wed, 31 Aug 2016 17:41:33 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67152bf1bcce52833093c6978f36aa1f3907a3e7c7c809c8fb16aad534897fa8`  
		Last Modified: Wed, 31 Aug 2016 17:43:00 GMT  
		Size: 145.8 KB (145750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc289b3460b99acc2d7a04e48bd06cf997fd790a9954487319b965d64cd58ad1`  
		Last Modified: Wed, 31 Aug 2016 17:43:00 GMT  
		Size: 1.2 MB (1172973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d645c06bab22d75e10411d2847d5b3702325ce2119ec09476cca4fd35de93607`  
		Last Modified: Wed, 31 Aug 2016 17:42:57 GMT  
		Size: 29.8 KB (29814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b789d24006b974be222a9d8fb3da90812f3b481317f19498bd893c81805f3f`  
		Last Modified: Wed, 31 Aug 2016 17:42:57 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c373a63c74dcb17a4ab356a5360f3f5b6e590afeb941aae50d099061780d5502`  
		Last Modified: Wed, 31 Aug 2016 17:43:32 GMT  
		Size: 58.7 MB (58671837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f405a71e930b7392f62a6e7d963cf501d541ca065608048a73b6b7764851c8`  
		Last Modified: Wed, 31 Aug 2016 17:42:57 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db14561337548c873adbaaa7b8b6814ebb4ce5b27c1ed67d3c7db9921855c715`  
		Last Modified: Wed, 31 Aug 2016 17:42:57 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:b33e7552ed8fc21d63a8431f49e8fa00cef1a84feb37c0d73e1f811dd5b3d756
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97237371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5174f961feb118a2c923634dff7fa576b39a05e46384cfd652921a8fdfbeecef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:26:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 30 Aug 2016 23:27:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:27:25 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:27:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 23:27:43 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 30 Aug 2016 23:27:43 GMT
ENV MONGO_MAJOR=3.0
# Tue, 30 Aug 2016 23:27:43 GMT
ENV MONGO_VERSION=3.0.12
# Tue, 30 Aug 2016 23:27:44 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 30 Aug 2016 23:27:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 30 Aug 2016 23:27:56 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 30 Aug 2016 23:27:57 GMT
VOLUME [/data/db /data/configdb]
# Tue, 30 Aug 2016 23:27:57 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 30 Aug 2016 23:27:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Aug 2016 23:27:57 GMT
EXPOSE 27017/tcp
# Tue, 30 Aug 2016 23:27:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba95eb02831f261af62739eb2a82854ebc21e62144635cc5f6d49d168623fb64`  
		Last Modified: Wed, 31 Aug 2016 17:41:33 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67152bf1bcce52833093c6978f36aa1f3907a3e7c7c809c8fb16aad534897fa8`  
		Last Modified: Wed, 31 Aug 2016 17:43:00 GMT  
		Size: 145.8 KB (145750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc289b3460b99acc2d7a04e48bd06cf997fd790a9954487319b965d64cd58ad1`  
		Last Modified: Wed, 31 Aug 2016 17:43:00 GMT  
		Size: 1.2 MB (1172973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d645c06bab22d75e10411d2847d5b3702325ce2119ec09476cca4fd35de93607`  
		Last Modified: Wed, 31 Aug 2016 17:42:57 GMT  
		Size: 29.8 KB (29814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b789d24006b974be222a9d8fb3da90812f3b481317f19498bd893c81805f3f`  
		Last Modified: Wed, 31 Aug 2016 17:42:57 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c373a63c74dcb17a4ab356a5360f3f5b6e590afeb941aae50d099061780d5502`  
		Last Modified: Wed, 31 Aug 2016 17:43:32 GMT  
		Size: 58.7 MB (58671837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f405a71e930b7392f62a6e7d963cf501d541ca065608048a73b6b7764851c8`  
		Last Modified: Wed, 31 Aug 2016 17:42:57 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db14561337548c873adbaaa7b8b6814ebb4ce5b27c1ed67d3c7db9921855c715`  
		Last Modified: Wed, 31 Aug 2016 17:42:57 GMT  
		Size: 349.0 B  
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
$ docker pull mongo@sha256:8ff7bd4acdb123e3922a7fae7f73efa35fba35af33fad0de946ea31370a23cc4
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126244619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b8b08dca4d307feb5b560650be81d8e5cba8e9849dbf6a21df41b48dcf340c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:28:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 30 Aug 2016 23:28:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:28:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:28:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 17:40:27 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 31 Aug 2016 17:40:29 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Aug 2016 17:40:30 GMT
ENV MONGO_MAJOR=3.2
# Wed, 31 Aug 2016 17:40:30 GMT
ENV MONGO_VERSION=3.2.9
# Wed, 31 Aug 2016 17:40:31 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 31 Aug 2016 17:40:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 31 Aug 2016 17:40:55 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 31 Aug 2016 17:40:56 GMT
VOLUME [/data/db /data/configdb]
# Wed, 31 Aug 2016 17:40:56 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 31 Aug 2016 17:40:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 17:40:57 GMT
EXPOSE 27017/tcp
# Wed, 31 Aug 2016 17:40:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5947be99d359c4a05aa401e4a3bb8ade993af042f5a8a56a35afef44561ea12d`  
		Last Modified: Wed, 31 Aug 2016 17:43:59 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a4577c6007ca21e66ba21579d7f412bc58a5d7501808fb6e4e70e492774a4f`  
		Last Modified: Wed, 31 Aug 2016 17:43:58 GMT  
		Size: 134.5 KB (134535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb97586a2008734a873a81153699f1dd0aaabf98b1d4495751fc76e97ddad27`  
		Last Modified: Wed, 31 Aug 2016 17:43:59 GMT  
		Size: 1.2 MB (1217557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11260d069a3f6a83c36d45ac0e38468e0b5f2f1c85a3f66230d0b7567ad8433`  
		Last Modified: Wed, 31 Aug 2016 17:43:55 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf102d35e390ff52cb97d2a08b9ab575698ebddba99d8da59582eddeb4bd7d3c`  
		Last Modified: Wed, 31 Aug 2016 17:43:57 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4964f6a9bfa56132437e606eaf013b4fca05bfb81e8bd81528979169195adc6`  
		Last Modified: Wed, 31 Aug 2016 17:44:40 GMT  
		Size: 73.5 MB (73519390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b392ba3e8bfab56c6afc052175cd28bc2d8b9a93474a0066b80a168290ca7f4`  
		Last Modified: Wed, 31 Aug 2016 17:43:55 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c023b73abe56e8bea6bf8f66f563beec1326db94213b00102c93a799c042b5c8`  
		Last Modified: Wed, 31 Aug 2016 17:43:56 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:8ff7bd4acdb123e3922a7fae7f73efa35fba35af33fad0de946ea31370a23cc4
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126244619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b8b08dca4d307feb5b560650be81d8e5cba8e9849dbf6a21df41b48dcf340c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:28:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 30 Aug 2016 23:28:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:28:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:28:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 17:40:27 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 31 Aug 2016 17:40:29 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Aug 2016 17:40:30 GMT
ENV MONGO_MAJOR=3.2
# Wed, 31 Aug 2016 17:40:30 GMT
ENV MONGO_VERSION=3.2.9
# Wed, 31 Aug 2016 17:40:31 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 31 Aug 2016 17:40:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 31 Aug 2016 17:40:55 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 31 Aug 2016 17:40:56 GMT
VOLUME [/data/db /data/configdb]
# Wed, 31 Aug 2016 17:40:56 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 31 Aug 2016 17:40:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 17:40:57 GMT
EXPOSE 27017/tcp
# Wed, 31 Aug 2016 17:40:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5947be99d359c4a05aa401e4a3bb8ade993af042f5a8a56a35afef44561ea12d`  
		Last Modified: Wed, 31 Aug 2016 17:43:59 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a4577c6007ca21e66ba21579d7f412bc58a5d7501808fb6e4e70e492774a4f`  
		Last Modified: Wed, 31 Aug 2016 17:43:58 GMT  
		Size: 134.5 KB (134535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb97586a2008734a873a81153699f1dd0aaabf98b1d4495751fc76e97ddad27`  
		Last Modified: Wed, 31 Aug 2016 17:43:59 GMT  
		Size: 1.2 MB (1217557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11260d069a3f6a83c36d45ac0e38468e0b5f2f1c85a3f66230d0b7567ad8433`  
		Last Modified: Wed, 31 Aug 2016 17:43:55 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf102d35e390ff52cb97d2a08b9ab575698ebddba99d8da59582eddeb4bd7d3c`  
		Last Modified: Wed, 31 Aug 2016 17:43:57 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4964f6a9bfa56132437e606eaf013b4fca05bfb81e8bd81528979169195adc6`  
		Last Modified: Wed, 31 Aug 2016 17:44:40 GMT  
		Size: 73.5 MB (73519390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b392ba3e8bfab56c6afc052175cd28bc2d8b9a93474a0066b80a168290ca7f4`  
		Last Modified: Wed, 31 Aug 2016 17:43:55 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c023b73abe56e8bea6bf8f66f563beec1326db94213b00102c93a799c042b5c8`  
		Last Modified: Wed, 31 Aug 2016 17:43:56 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:8ff7bd4acdb123e3922a7fae7f73efa35fba35af33fad0de946ea31370a23cc4
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126244619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b8b08dca4d307feb5b560650be81d8e5cba8e9849dbf6a21df41b48dcf340c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:28:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 30 Aug 2016 23:28:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:28:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:28:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 17:40:27 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 31 Aug 2016 17:40:29 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Aug 2016 17:40:30 GMT
ENV MONGO_MAJOR=3.2
# Wed, 31 Aug 2016 17:40:30 GMT
ENV MONGO_VERSION=3.2.9
# Wed, 31 Aug 2016 17:40:31 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 31 Aug 2016 17:40:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 31 Aug 2016 17:40:55 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 31 Aug 2016 17:40:56 GMT
VOLUME [/data/db /data/configdb]
# Wed, 31 Aug 2016 17:40:56 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 31 Aug 2016 17:40:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 17:40:57 GMT
EXPOSE 27017/tcp
# Wed, 31 Aug 2016 17:40:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5947be99d359c4a05aa401e4a3bb8ade993af042f5a8a56a35afef44561ea12d`  
		Last Modified: Wed, 31 Aug 2016 17:43:59 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a4577c6007ca21e66ba21579d7f412bc58a5d7501808fb6e4e70e492774a4f`  
		Last Modified: Wed, 31 Aug 2016 17:43:58 GMT  
		Size: 134.5 KB (134535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb97586a2008734a873a81153699f1dd0aaabf98b1d4495751fc76e97ddad27`  
		Last Modified: Wed, 31 Aug 2016 17:43:59 GMT  
		Size: 1.2 MB (1217557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11260d069a3f6a83c36d45ac0e38468e0b5f2f1c85a3f66230d0b7567ad8433`  
		Last Modified: Wed, 31 Aug 2016 17:43:55 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf102d35e390ff52cb97d2a08b9ab575698ebddba99d8da59582eddeb4bd7d3c`  
		Last Modified: Wed, 31 Aug 2016 17:43:57 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4964f6a9bfa56132437e606eaf013b4fca05bfb81e8bd81528979169195adc6`  
		Last Modified: Wed, 31 Aug 2016 17:44:40 GMT  
		Size: 73.5 MB (73519390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b392ba3e8bfab56c6afc052175cd28bc2d8b9a93474a0066b80a168290ca7f4`  
		Last Modified: Wed, 31 Aug 2016 17:43:55 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c023b73abe56e8bea6bf8f66f563beec1326db94213b00102c93a799c042b5c8`  
		Last Modified: Wed, 31 Aug 2016 17:43:56 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:8ff7bd4acdb123e3922a7fae7f73efa35fba35af33fad0de946ea31370a23cc4
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126244619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b8b08dca4d307feb5b560650be81d8e5cba8e9849dbf6a21df41b48dcf340c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:28:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 30 Aug 2016 23:28:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:28:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:28:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 17:40:27 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 31 Aug 2016 17:40:29 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Aug 2016 17:40:30 GMT
ENV MONGO_MAJOR=3.2
# Wed, 31 Aug 2016 17:40:30 GMT
ENV MONGO_VERSION=3.2.9
# Wed, 31 Aug 2016 17:40:31 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 31 Aug 2016 17:40:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 31 Aug 2016 17:40:55 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 31 Aug 2016 17:40:56 GMT
VOLUME [/data/db /data/configdb]
# Wed, 31 Aug 2016 17:40:56 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 31 Aug 2016 17:40:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 17:40:57 GMT
EXPOSE 27017/tcp
# Wed, 31 Aug 2016 17:40:57 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5947be99d359c4a05aa401e4a3bb8ade993af042f5a8a56a35afef44561ea12d`  
		Last Modified: Wed, 31 Aug 2016 17:43:59 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a4577c6007ca21e66ba21579d7f412bc58a5d7501808fb6e4e70e492774a4f`  
		Last Modified: Wed, 31 Aug 2016 17:43:58 GMT  
		Size: 134.5 KB (134535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb97586a2008734a873a81153699f1dd0aaabf98b1d4495751fc76e97ddad27`  
		Last Modified: Wed, 31 Aug 2016 17:43:59 GMT  
		Size: 1.2 MB (1217557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11260d069a3f6a83c36d45ac0e38468e0b5f2f1c85a3f66230d0b7567ad8433`  
		Last Modified: Wed, 31 Aug 2016 17:43:55 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf102d35e390ff52cb97d2a08b9ab575698ebddba99d8da59582eddeb4bd7d3c`  
		Last Modified: Wed, 31 Aug 2016 17:43:57 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4964f6a9bfa56132437e606eaf013b4fca05bfb81e8bd81528979169195adc6`  
		Last Modified: Wed, 31 Aug 2016 17:44:40 GMT  
		Size: 73.5 MB (73519390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b392ba3e8bfab56c6afc052175cd28bc2d8b9a93474a0066b80a168290ca7f4`  
		Last Modified: Wed, 31 Aug 2016 17:43:55 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c023b73abe56e8bea6bf8f66f563beec1326db94213b00102c93a799c042b5c8`  
		Last Modified: Wed, 31 Aug 2016 17:43:56 GMT  
		Size: 351.0 B  
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

## `mongo:3.3.12`

```console
$ docker pull mongo@sha256:6cdbbad6be58293d9b6f83c819545fccb61c5934603d5465220b78714204b9c2
```

-	Platforms:
	-	linux; amd64

### `mongo:3.3.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149028028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f407cd5518ca06ed74eacb39415fbe8a79ce69a307cf8f41aa197bffbf4bd0f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:28:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 30 Aug 2016 23:28:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:28:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:28:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 23:28:40 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 30 Aug 2016 23:28:40 GMT
ENV MONGO_MAJOR=3.3
# Wed, 31 Aug 2016 17:40:58 GMT
ENV MONGO_VERSION=3.3.12
# Wed, 31 Aug 2016 17:41:01 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 31 Aug 2016 17:41:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org-unstable=$MONGO_VERSION 		mongodb-org-unstable-server=$MONGO_VERSION 		mongodb-org-unstable-shell=$MONGO_VERSION 		mongodb-org-unstable-mongos=$MONGO_VERSION 		mongodb-org-unstable-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 31 Aug 2016 17:41:23 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 31 Aug 2016 17:41:23 GMT
VOLUME [/data/db /data/configdb]
# Wed, 31 Aug 2016 17:41:24 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 31 Aug 2016 17:41:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 17:41:24 GMT
EXPOSE 27017/tcp
# Wed, 31 Aug 2016 17:41:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5947be99d359c4a05aa401e4a3bb8ade993af042f5a8a56a35afef44561ea12d`  
		Last Modified: Wed, 31 Aug 2016 17:43:59 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a4577c6007ca21e66ba21579d7f412bc58a5d7501808fb6e4e70e492774a4f`  
		Last Modified: Wed, 31 Aug 2016 17:43:58 GMT  
		Size: 134.5 KB (134535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb97586a2008734a873a81153699f1dd0aaabf98b1d4495751fc76e97ddad27`  
		Last Modified: Wed, 31 Aug 2016 17:43:59 GMT  
		Size: 1.2 MB (1217557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fcc9b0245bbceec6e964a5aa6d0c205ae2c4f549a398790bf9ca548cf61d96`  
		Last Modified: Wed, 31 Aug 2016 17:45:20 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d8c018fefffe786b5436881a1809ee6ab1eb288e9eee4db0f286bcdd401a61`  
		Last Modified: Wed, 31 Aug 2016 17:45:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c46d24437a5766e2e748443a48f613e2bbca7385e10d8b6d35ff328144519b`  
		Last Modified: Wed, 31 Aug 2016 17:46:10 GMT  
		Size: 96.3 MB (96304478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aece21a09abff3a125a613a7c64ff65a4ae86be133aefacf48fdf09a3f86e8d2`  
		Last Modified: Wed, 31 Aug 2016 17:45:20 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a92945c992b2223e764f323b509b6f293b862c392ecec52134d7f43319fcd9b`  
		Last Modified: Wed, 31 Aug 2016 17:45:21 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3`

```console
$ docker pull mongo@sha256:6cdbbad6be58293d9b6f83c819545fccb61c5934603d5465220b78714204b9c2
```

-	Platforms:
	-	linux; amd64

### `mongo:3.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149028028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f407cd5518ca06ed74eacb39415fbe8a79ce69a307cf8f41aa197bffbf4bd0f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:28:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 30 Aug 2016 23:28:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:28:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 23:28:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 23:28:40 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 30 Aug 2016 23:28:40 GMT
ENV MONGO_MAJOR=3.3
# Wed, 31 Aug 2016 17:40:58 GMT
ENV MONGO_VERSION=3.3.12
# Wed, 31 Aug 2016 17:41:01 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 31 Aug 2016 17:41:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org-unstable=$MONGO_VERSION 		mongodb-org-unstable-server=$MONGO_VERSION 		mongodb-org-unstable-shell=$MONGO_VERSION 		mongodb-org-unstable-mongos=$MONGO_VERSION 		mongodb-org-unstable-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 31 Aug 2016 17:41:23 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 31 Aug 2016 17:41:23 GMT
VOLUME [/data/db /data/configdb]
# Wed, 31 Aug 2016 17:41:24 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 31 Aug 2016 17:41:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 17:41:24 GMT
EXPOSE 27017/tcp
# Wed, 31 Aug 2016 17:41:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5947be99d359c4a05aa401e4a3bb8ade993af042f5a8a56a35afef44561ea12d`  
		Last Modified: Wed, 31 Aug 2016 17:43:59 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a4577c6007ca21e66ba21579d7f412bc58a5d7501808fb6e4e70e492774a4f`  
		Last Modified: Wed, 31 Aug 2016 17:43:58 GMT  
		Size: 134.5 KB (134535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb97586a2008734a873a81153699f1dd0aaabf98b1d4495751fc76e97ddad27`  
		Last Modified: Wed, 31 Aug 2016 17:43:59 GMT  
		Size: 1.2 MB (1217557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fcc9b0245bbceec6e964a5aa6d0c205ae2c4f549a398790bf9ca548cf61d96`  
		Last Modified: Wed, 31 Aug 2016 17:45:20 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d8c018fefffe786b5436881a1809ee6ab1eb288e9eee4db0f286bcdd401a61`  
		Last Modified: Wed, 31 Aug 2016 17:45:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c46d24437a5766e2e748443a48f613e2bbca7385e10d8b6d35ff328144519b`  
		Last Modified: Wed, 31 Aug 2016 17:46:10 GMT  
		Size: 96.3 MB (96304478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aece21a09abff3a125a613a7c64ff65a4ae86be133aefacf48fdf09a3f86e8d2`  
		Last Modified: Wed, 31 Aug 2016 17:45:20 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a92945c992b2223e764f323b509b6f293b862c392ecec52134d7f43319fcd9b`  
		Last Modified: Wed, 31 Aug 2016 17:45:21 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3.12-windowsservercore`

```console
$ docker pull mongo@sha256:9aa5eb04b0a2482eab295a6705fd733868feff0f53d669cfdc78f8b6b4e327c3
```

-	Platforms:
	-	windows; amd64

### `mongo:3.3.12-windowsservercore` - windows; amd64

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
