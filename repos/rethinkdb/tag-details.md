<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2.0.4`](#rethinkdb204)
-	[`rethinkdb:2.0`](#rethinkdb20)
-	[`rethinkdb:2.1.6`](#rethinkdb216)
-	[`rethinkdb:2.1`](#rethinkdb21)
-	[`rethinkdb:2.2.6`](#rethinkdb226)
-	[`rethinkdb:2.2`](#rethinkdb22)
-	[`rethinkdb:2.3.4`](#rethinkdb234)
-	[`rethinkdb:2.3.5`](#rethinkdb235)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2.0.4`

```console
$ docker pull rethinkdb@sha256:74d40200acebcc6062407b5237c9d0704af5e662a26e2ab8221908c83b4f173b
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80664808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd989b311fc4b86bd3d2c2cc5a69c98e16f88c096605e139ee8df49f23a1a29`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:10:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 30 Aug 2016 23:10:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 30 Aug 2016 23:10:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 30 Aug 2016 23:10:36 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Tue, 30 Aug 2016 23:10:52 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:10:52 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 23:10:52 GMT
WORKDIR /data
# Tue, 30 Aug 2016 23:10:53 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 30 Aug 2016 23:10:53 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfcd4f5772d6e3e4d5afec0fe010322a068ca00b1ad62504b92134d9970d513`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1b8deb49fa372e5cac1462a353ee5a06353461d89c0c88a53195d49352991`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc4aa1fde6308d13cb9cf8f72c8a35ac94e66434c887270f237e21699f7383f`  
		Last Modified: Tue, 30 Aug 2016 23:12:30 GMT  
		Size: 29.3 MB (29295794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1de9c58c254a95fc9436f44a736ddfa5bee5f786f9005779e0d5d9e19bef2a7`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.0`

```console
$ docker pull rethinkdb@sha256:74d40200acebcc6062407b5237c9d0704af5e662a26e2ab8221908c83b4f173b
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80664808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd989b311fc4b86bd3d2c2cc5a69c98e16f88c096605e139ee8df49f23a1a29`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:10:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 30 Aug 2016 23:10:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 30 Aug 2016 23:10:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 30 Aug 2016 23:10:36 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Tue, 30 Aug 2016 23:10:52 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:10:52 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 23:10:52 GMT
WORKDIR /data
# Tue, 30 Aug 2016 23:10:53 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 30 Aug 2016 23:10:53 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfcd4f5772d6e3e4d5afec0fe010322a068ca00b1ad62504b92134d9970d513`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1b8deb49fa372e5cac1462a353ee5a06353461d89c0c88a53195d49352991`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc4aa1fde6308d13cb9cf8f72c8a35ac94e66434c887270f237e21699f7383f`  
		Last Modified: Tue, 30 Aug 2016 23:12:30 GMT  
		Size: 29.3 MB (29295794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1de9c58c254a95fc9436f44a736ddfa5bee5f786f9005779e0d5d9e19bef2a7`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1.6`

```console
$ docker pull rethinkdb@sha256:bcd64fd8db1e872a528ec728c7e97f5e33fb3235e7aafe63575aace8595a514b
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75286811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:911a5846be5e360d9f3617aefdf6401d0f5938de6195bb3983b088277cf841f2`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:10:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 30 Aug 2016 23:10:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 30 Aug 2016 23:10:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 30 Aug 2016 23:10:53 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Tue, 30 Aug 2016 23:11:08 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:11:08 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 23:11:09 GMT
WORKDIR /data
# Tue, 30 Aug 2016 23:11:09 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 30 Aug 2016 23:11:09 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfcd4f5772d6e3e4d5afec0fe010322a068ca00b1ad62504b92134d9970d513`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1b8deb49fa372e5cac1462a353ee5a06353461d89c0c88a53195d49352991`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0c2351444bbde2dfd6e8f0281edcc138f0f818dfd91194201b93a914c56998`  
		Last Modified: Tue, 30 Aug 2016 23:12:53 GMT  
		Size: 23.9 MB (23917797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47c48c6686f7c44f7b15ffb926ab6c7cc6520a52e159804f5085f9764719f64`  
		Last Modified: Tue, 30 Aug 2016 23:11:17 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1`

```console
$ docker pull rethinkdb@sha256:bcd64fd8db1e872a528ec728c7e97f5e33fb3235e7aafe63575aace8595a514b
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75286811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:911a5846be5e360d9f3617aefdf6401d0f5938de6195bb3983b088277cf841f2`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:10:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 30 Aug 2016 23:10:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 30 Aug 2016 23:10:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 30 Aug 2016 23:10:53 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Tue, 30 Aug 2016 23:11:08 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:11:08 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 23:11:09 GMT
WORKDIR /data
# Tue, 30 Aug 2016 23:11:09 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 30 Aug 2016 23:11:09 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfcd4f5772d6e3e4d5afec0fe010322a068ca00b1ad62504b92134d9970d513`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1b8deb49fa372e5cac1462a353ee5a06353461d89c0c88a53195d49352991`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0c2351444bbde2dfd6e8f0281edcc138f0f818dfd91194201b93a914c56998`  
		Last Modified: Tue, 30 Aug 2016 23:12:53 GMT  
		Size: 23.9 MB (23917797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47c48c6686f7c44f7b15ffb926ab6c7cc6520a52e159804f5085f9764719f64`  
		Last Modified: Tue, 30 Aug 2016 23:11:17 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2.6`

```console
$ docker pull rethinkdb@sha256:c1d85001c00bdff21be1753c79ef3062d173783873a593f35204c8672a11897e
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75468247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:600ecc33bde007ddbc3a264ef9809512c2a6e88b1240bc0a94c6de71183f4c0c`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:10:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 30 Aug 2016 23:10:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 30 Aug 2016 23:10:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 30 Aug 2016 23:11:10 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Tue, 30 Aug 2016 23:11:39 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:11:40 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 23:11:40 GMT
WORKDIR /data
# Tue, 30 Aug 2016 23:11:40 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 30 Aug 2016 23:11:40 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfcd4f5772d6e3e4d5afec0fe010322a068ca00b1ad62504b92134d9970d513`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1b8deb49fa372e5cac1462a353ee5a06353461d89c0c88a53195d49352991`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63d00335d3f628cab12641d8b8a722b54a64497118fe709c8df63b2dbc665dc`  
		Last Modified: Tue, 30 Aug 2016 23:13:17 GMT  
		Size: 24.1 MB (24099233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578360959a88a57a52b34580b329fd0ea2f91aa8d2d0d15df4471fc165baedf8`  
		Last Modified: Tue, 30 Aug 2016 23:13:11 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2`

```console
$ docker pull rethinkdb@sha256:c1d85001c00bdff21be1753c79ef3062d173783873a593f35204c8672a11897e
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75468247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:600ecc33bde007ddbc3a264ef9809512c2a6e88b1240bc0a94c6de71183f4c0c`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:10:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 30 Aug 2016 23:10:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 30 Aug 2016 23:10:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 30 Aug 2016 23:11:10 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Tue, 30 Aug 2016 23:11:39 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:11:40 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 23:11:40 GMT
WORKDIR /data
# Tue, 30 Aug 2016 23:11:40 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 30 Aug 2016 23:11:40 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfcd4f5772d6e3e4d5afec0fe010322a068ca00b1ad62504b92134d9970d513`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1b8deb49fa372e5cac1462a353ee5a06353461d89c0c88a53195d49352991`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63d00335d3f628cab12641d8b8a722b54a64497118fe709c8df63b2dbc665dc`  
		Last Modified: Tue, 30 Aug 2016 23:13:17 GMT  
		Size: 24.1 MB (24099233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578360959a88a57a52b34580b329fd0ea2f91aa8d2d0d15df4471fc165baedf8`  
		Last Modified: Tue, 30 Aug 2016 23:13:11 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.4`

```console
$ docker pull rethinkdb@sha256:8f78a366244b1c33c48d270f96db60ca6adb8e963c364e3b69309dba9f04392f
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75967454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caae8de7e51e7fbf28a86ae183389edade28af446484537c845dd062706166fb`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:10:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 30 Aug 2016 23:10:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 30 Aug 2016 23:10:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 30 Aug 2016 23:11:41 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.4~0jessie
# Tue, 30 Aug 2016 23:11:56 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:11:56 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 23:11:57 GMT
WORKDIR /data
# Tue, 30 Aug 2016 23:11:57 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 30 Aug 2016 23:11:57 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfcd4f5772d6e3e4d5afec0fe010322a068ca00b1ad62504b92134d9970d513`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1b8deb49fa372e5cac1462a353ee5a06353461d89c0c88a53195d49352991`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145df49addd4a7ee47b039489aaf23d4b3ebeed1853e54207fbdcde11f437ee7`  
		Last Modified: Tue, 30 Aug 2016 23:13:41 GMT  
		Size: 24.6 MB (24598442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7164b2e48f9a68eeb26c27e9ac2f129aff05837bf3ab279c7cdad21874660d2`  
		Last Modified: Tue, 30 Aug 2016 23:12:04 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.5`

```console
$ docker pull rethinkdb@sha256:7689656221baf133abab96f887636afa35bae8ca28680de7ebb67b33771ab7d3
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75971785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30940c8232c8dace45d647308df2ae79100c2ea0951a29f352877db5b71e3d4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:10:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 30 Aug 2016 23:10:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 30 Aug 2016 23:10:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 30 Aug 2016 23:11:57 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 30 Aug 2016 23:12:15 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:12:15 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 23:12:16 GMT
WORKDIR /data
# Tue, 30 Aug 2016 23:12:16 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 30 Aug 2016 23:12:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfcd4f5772d6e3e4d5afec0fe010322a068ca00b1ad62504b92134d9970d513`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1b8deb49fa372e5cac1462a353ee5a06353461d89c0c88a53195d49352991`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6141c54ca574af470301edd84d94e2f07f05fcdd60b57bc8b81f7df9135e39d3`  
		Last Modified: Tue, 30 Aug 2016 23:13:59 GMT  
		Size: 24.6 MB (24602772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c7067e3c219d1aebc254560926b731c8ae47ea3ae20e7cf22a1265417b955f`  
		Last Modified: Tue, 30 Aug 2016 23:13:53 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:7689656221baf133abab96f887636afa35bae8ca28680de7ebb67b33771ab7d3
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75971785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30940c8232c8dace45d647308df2ae79100c2ea0951a29f352877db5b71e3d4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:10:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 30 Aug 2016 23:10:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 30 Aug 2016 23:10:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 30 Aug 2016 23:11:57 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 30 Aug 2016 23:12:15 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:12:15 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 23:12:16 GMT
WORKDIR /data
# Tue, 30 Aug 2016 23:12:16 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 30 Aug 2016 23:12:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfcd4f5772d6e3e4d5afec0fe010322a068ca00b1ad62504b92134d9970d513`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1b8deb49fa372e5cac1462a353ee5a06353461d89c0c88a53195d49352991`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6141c54ca574af470301edd84d94e2f07f05fcdd60b57bc8b81f7df9135e39d3`  
		Last Modified: Tue, 30 Aug 2016 23:13:59 GMT  
		Size: 24.6 MB (24602772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c7067e3c219d1aebc254560926b731c8ae47ea3ae20e7cf22a1265417b955f`  
		Last Modified: Tue, 30 Aug 2016 23:13:53 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:7689656221baf133abab96f887636afa35bae8ca28680de7ebb67b33771ab7d3
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75971785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30940c8232c8dace45d647308df2ae79100c2ea0951a29f352877db5b71e3d4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:10:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 30 Aug 2016 23:10:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 30 Aug 2016 23:10:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 30 Aug 2016 23:11:57 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 30 Aug 2016 23:12:15 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:12:15 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 23:12:16 GMT
WORKDIR /data
# Tue, 30 Aug 2016 23:12:16 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 30 Aug 2016 23:12:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfcd4f5772d6e3e4d5afec0fe010322a068ca00b1ad62504b92134d9970d513`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1b8deb49fa372e5cac1462a353ee5a06353461d89c0c88a53195d49352991`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6141c54ca574af470301edd84d94e2f07f05fcdd60b57bc8b81f7df9135e39d3`  
		Last Modified: Tue, 30 Aug 2016 23:13:59 GMT  
		Size: 24.6 MB (24602772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c7067e3c219d1aebc254560926b731c8ae47ea3ae20e7cf22a1265417b955f`  
		Last Modified: Tue, 30 Aug 2016 23:13:53 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:7689656221baf133abab96f887636afa35bae8ca28680de7ebb67b33771ab7d3
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75971785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30940c8232c8dace45d647308df2ae79100c2ea0951a29f352877db5b71e3d4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 23:10:33 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 30 Aug 2016 23:10:34 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 30 Aug 2016 23:10:35 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 30 Aug 2016 23:11:57 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 30 Aug 2016 23:12:15 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:12:15 GMT
VOLUME [/data]
# Tue, 30 Aug 2016 23:12:16 GMT
WORKDIR /data
# Tue, 30 Aug 2016 23:12:16 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 30 Aug 2016 23:12:16 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfcd4f5772d6e3e4d5afec0fe010322a068ca00b1ad62504b92134d9970d513`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1b8deb49fa372e5cac1462a353ee5a06353461d89c0c88a53195d49352991`  
		Last Modified: Tue, 30 Aug 2016 23:12:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6141c54ca574af470301edd84d94e2f07f05fcdd60b57bc8b81f7df9135e39d3`  
		Last Modified: Tue, 30 Aug 2016 23:13:59 GMT  
		Size: 24.6 MB (24602772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c7067e3c219d1aebc254560926b731c8ae47ea3ae20e7cf22a1265417b955f`  
		Last Modified: Tue, 30 Aug 2016 23:13:53 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
