<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.6`](#rethinkdb236)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:68a025ae16ab062d6b25b2704359d227f63123a592f04883f7ec73da0b842675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

```console
$ docker pull rethinkdb@sha256:7d4c107604445d650206bb2441155a53052bc7b2e8fc99d4f3b1226aa9079cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a2bb809ce9c394c1ceeb56859d6ba4d3829a1a9a04536596d67cae1f5763e4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 23:23:44 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 04 Oct 2017 16:16:03 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Wed, 04 Oct 2017 16:16:03 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 04 Oct 2017 16:16:04 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Wed, 04 Oct 2017 16:16:28 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 16:16:29 GMT
VOLUME [/data]
# Wed, 04 Oct 2017 16:16:29 GMT
WORKDIR /data
# Wed, 04 Oct 2017 16:16:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 04 Oct 2017 16:16:29 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35437d1e465f7ab1f66dd2e4910f9af6e9b6c022af2d8f952946b0e086694e4`  
		Last Modified: Wed, 04 Oct 2017 16:16:45 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0861769af6987ff0f8aa75320b1f7a5346f3320c84abc071964b1c8776a7b5cc`  
		Last Modified: Wed, 04 Oct 2017 16:16:44 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16df324bde7866ffb5bb3f5a610fe9b61eae9078d69431df8c5414aad073f1e4`  
		Last Modified: Wed, 04 Oct 2017 16:16:49 GMT  
		Size: 25.3 MB (25273764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d81702995ff1c77db9a8ee7ce83494326626128d440b655aea5a0d169f91ea`  
		Last Modified: Wed, 04 Oct 2017 16:16:44 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:68a025ae16ab062d6b25b2704359d227f63123a592f04883f7ec73da0b842675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

```console
$ docker pull rethinkdb@sha256:7d4c107604445d650206bb2441155a53052bc7b2e8fc99d4f3b1226aa9079cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a2bb809ce9c394c1ceeb56859d6ba4d3829a1a9a04536596d67cae1f5763e4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 23:23:44 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 04 Oct 2017 16:16:03 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Wed, 04 Oct 2017 16:16:03 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 04 Oct 2017 16:16:04 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Wed, 04 Oct 2017 16:16:28 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 16:16:29 GMT
VOLUME [/data]
# Wed, 04 Oct 2017 16:16:29 GMT
WORKDIR /data
# Wed, 04 Oct 2017 16:16:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 04 Oct 2017 16:16:29 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35437d1e465f7ab1f66dd2e4910f9af6e9b6c022af2d8f952946b0e086694e4`  
		Last Modified: Wed, 04 Oct 2017 16:16:45 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0861769af6987ff0f8aa75320b1f7a5346f3320c84abc071964b1c8776a7b5cc`  
		Last Modified: Wed, 04 Oct 2017 16:16:44 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16df324bde7866ffb5bb3f5a610fe9b61eae9078d69431df8c5414aad073f1e4`  
		Last Modified: Wed, 04 Oct 2017 16:16:49 GMT  
		Size: 25.3 MB (25273764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d81702995ff1c77db9a8ee7ce83494326626128d440b655aea5a0d169f91ea`  
		Last Modified: Wed, 04 Oct 2017 16:16:44 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.6`

```console
$ docker pull rethinkdb@sha256:68a025ae16ab062d6b25b2704359d227f63123a592f04883f7ec73da0b842675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.6` - linux; amd64

```console
$ docker pull rethinkdb@sha256:7d4c107604445d650206bb2441155a53052bc7b2e8fc99d4f3b1226aa9079cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a2bb809ce9c394c1ceeb56859d6ba4d3829a1a9a04536596d67cae1f5763e4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 23:23:44 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 04 Oct 2017 16:16:03 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Wed, 04 Oct 2017 16:16:03 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 04 Oct 2017 16:16:04 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Wed, 04 Oct 2017 16:16:28 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 16:16:29 GMT
VOLUME [/data]
# Wed, 04 Oct 2017 16:16:29 GMT
WORKDIR /data
# Wed, 04 Oct 2017 16:16:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 04 Oct 2017 16:16:29 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35437d1e465f7ab1f66dd2e4910f9af6e9b6c022af2d8f952946b0e086694e4`  
		Last Modified: Wed, 04 Oct 2017 16:16:45 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0861769af6987ff0f8aa75320b1f7a5346f3320c84abc071964b1c8776a7b5cc`  
		Last Modified: Wed, 04 Oct 2017 16:16:44 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16df324bde7866ffb5bb3f5a610fe9b61eae9078d69431df8c5414aad073f1e4`  
		Last Modified: Wed, 04 Oct 2017 16:16:49 GMT  
		Size: 25.3 MB (25273764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d81702995ff1c77db9a8ee7ce83494326626128d440b655aea5a0d169f91ea`  
		Last Modified: Wed, 04 Oct 2017 16:16:44 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:68a025ae16ab062d6b25b2704359d227f63123a592f04883f7ec73da0b842675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:7d4c107604445d650206bb2441155a53052bc7b2e8fc99d4f3b1226aa9079cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77873733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a2bb809ce9c394c1ceeb56859d6ba4d3829a1a9a04536596d67cae1f5763e4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 23:23:44 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 04 Oct 2017 16:16:03 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Wed, 04 Oct 2017 16:16:03 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 04 Oct 2017 16:16:04 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Wed, 04 Oct 2017 16:16:28 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 04 Oct 2017 16:16:29 GMT
VOLUME [/data]
# Wed, 04 Oct 2017 16:16:29 GMT
WORKDIR /data
# Wed, 04 Oct 2017 16:16:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 04 Oct 2017 16:16:29 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35437d1e465f7ab1f66dd2e4910f9af6e9b6c022af2d8f952946b0e086694e4`  
		Last Modified: Wed, 04 Oct 2017 16:16:45 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0861769af6987ff0f8aa75320b1f7a5346f3320c84abc071964b1c8776a7b5cc`  
		Last Modified: Wed, 04 Oct 2017 16:16:44 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16df324bde7866ffb5bb3f5a610fe9b61eae9078d69431df8c5414aad073f1e4`  
		Last Modified: Wed, 04 Oct 2017 16:16:49 GMT  
		Size: 25.3 MB (25273764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d81702995ff1c77db9a8ee7ce83494326626128d440b655aea5a0d169f91ea`  
		Last Modified: Wed, 04 Oct 2017 16:16:44 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
