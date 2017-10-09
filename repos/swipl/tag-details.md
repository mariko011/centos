<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swipl`

-	[`swipl:7.5.15`](#swipl7515)
-	[`swipl:7.7.0`](#swipl770)
-	[`swipl:latest`](#swipllatest)

## `swipl:7.5.15`

```console
$ docker pull swipl@sha256:357f621791e746ca90380a1c87b7496702bc6b0ac66515c5bf2d8a9ac61ac1c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swipl:7.5.15` - linux; amd64

```console
$ docker pull swipl@sha256:ddbf407d880c418feae2dbb1c890915779bfe95a98c4da3d310faba67c066498
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50987772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7242df3ff7907456aed423998d089c65217a42778921a7540b71718d72ac88f2`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:07:06 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 09 Oct 2017 22:07:21 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18 &&     rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:11:00 GMT
RUN SWIPL_VER=7.5.15 &&     SWIPL_CHECKSUM=aca07ce9c564e608586e7ae7b9a56c82ca5dd919cde1a1edf1121efa16bda568 &&     BUILD_DEPS='make gcc wget libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev libgeos-dev libspatialindex-dev unixodbc-dev' &&     apt-get update && apt-get install -y --no-install-recommends $BUILD_DEPS &&     mkdir /tmp/src &&     cd /tmp/src &&     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz &&     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     tar -xzf swipl-$SWIPL_VER.tar.gz &&     cd swipl-$SWIPL_VER &&     cp build.templ build &&     sed -i '/PREFIX=$HOME/c\PREFIX=/swipl' build &&     sed -i '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"' build &&     sed -i '/# export EXTRA_PKGS/c\export EXTRA_PKGS="db space"' build &&     chmod u+x build && ./build &&     apt-get purge -y --auto-remove $BUILD_DEPS &&     cd /usr/bin && rm -rf /tmp/src && ln -s /swipl/bin/swipl swipl && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:11:01 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:11:01 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8854d87cd19b64c25de150b939866ea8b1ab8178d6cb7a0fc12e94b548e9677c`  
		Last Modified: Mon, 09 Oct 2017 22:11:24 GMT  
		Size: 22.0 MB (22015622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11fcc7757bcdc118f2b2a9ae98235f0da370ac1e0dd05899292eb7b789c4a59f`  
		Last Modified: Mon, 09 Oct 2017 22:11:45 GMT  
		Size: 6.5 MB (6479800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swipl:7.7.0`

```console
$ docker pull swipl@sha256:e6d778d33cac51d82559bb47e6aa0ab3017a4bf1401db8273649b50e716b7aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swipl:7.7.0` - linux; amd64

```console
$ docker pull swipl@sha256:54211c294702aadfbf80f042ba239fd5a2d5dfc96ea78154df95b09c971e500e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50990553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8063308ec800b06d8e0bcf490228a844f84ff74a28fedda0b24960099735472e`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:07:06 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Mon, 09 Oct 2017 22:07:21 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18 &&     rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:09:01 GMT
RUN SWIPL_VER=7.7.0 &&     SWIPL_CHECKSUM=a1f603302fee12bfc390272ca76381401f5483c3a5521d391265404af58fdfcb &&     BUILD_DEPS='make gcc wget libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev libgeos-dev libspatialindex-dev unixodbc-dev' &&     apt-get update && apt-get install -y --no-install-recommends $BUILD_DEPS &&     mkdir /tmp/src &&     cd /tmp/src &&     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz &&     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     tar -xzf swipl-$SWIPL_VER.tar.gz &&     cd swipl-$SWIPL_VER &&     cp build.templ build &&     sed -i '/PREFIX=$HOME/c\PREFIX=/swipl' build &&     sed -i '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"' build &&     sed -i '/# export EXTRA_PKGS/c\export EXTRA_PKGS="db space"' build &&     chmod u+x build && ./build &&     apt-get purge -y --auto-remove $BUILD_DEPS &&     cd /usr/bin && rm -rf /tmp/src && ln -s /swipl/bin/swipl swipl && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:09:02 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:09:02 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8854d87cd19b64c25de150b939866ea8b1ab8178d6cb7a0fc12e94b548e9677c`  
		Last Modified: Mon, 09 Oct 2017 22:11:24 GMT  
		Size: 22.0 MB (22015622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ee62d57353f3e90564e6995a3da8bb89d6e72e7eb43cc0b17551bca3e4d02d`  
		Last Modified: Mon, 09 Oct 2017 22:11:22 GMT  
		Size: 6.5 MB (6482581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swipl:latest`

```console
$ docker pull swipl@sha256:cbfcf6976a86c76d73906ca10928ef9c32288ffdb1d5e91f17baf3ae9b202551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swipl:latest` - linux; amd64

```console
$ docker pull swipl@sha256:c4ffbdfe11b0412e98d8f00c4b3353c1e0077b55a5bcadb4a668abb252390751
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50985431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f2f02024c1cb4bde7b88320138b2b9f32b914ee6b4456ec2a1b627c8804a33`
-	Default Command: `["swipl"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:28:38 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Wed, 13 Sep 2017 21:28:51 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18 &&     rm -rf /var/lib/apt/lists/*
# Mon, 02 Oct 2017 17:57:09 GMT
RUN SWIPL_VER=7.7.0 &&     SWIPL_CHECKSUM=a1f603302fee12bfc390272ca76381401f5483c3a5521d391265404af58fdfcb &&     BUILD_DEPS='make gcc wget libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev libgeos-dev libspatialindex-dev unixodbc-dev' &&     apt-get update && apt-get install -y --no-install-recommends $BUILD_DEPS &&     mkdir /tmp/src &&     cd /tmp/src &&     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz &&     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     tar -xzf swipl-$SWIPL_VER.tar.gz &&     cd swipl-$SWIPL_VER &&     cp build.templ build &&     sed -i '/PREFIX=$HOME/c\PREFIX=/swipl' build &&     sed -i '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"' build &&     sed -i '/# export EXTRA_PKGS/c\export EXTRA_PKGS="db space"' build &&     chmod u+x build && ./build &&     apt-get purge -y --auto-remove $BUILD_DEPS &&     cd /usr/bin && rm -rf /tmp/src && ln -s /swipl/bin/swipl swipl && rm -rf /var/lib/apt/lists/*
# Mon, 02 Oct 2017 17:57:09 GMT
ENV LANG=C.UTF-8
# Mon, 02 Oct 2017 17:57:10 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67aa1f6eaa9c07a4bbe9bff22dcf3000f0a8361615de82ffbe8d4db9afea29d8`  
		Last Modified: Wed, 13 Sep 2017 21:30:39 GMT  
		Size: 22.0 MB (22014782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88891ad82967cb952a5db1f1f2888b507925f2943defbd3a5f9d621cf83445a5`  
		Last Modified: Mon, 02 Oct 2017 17:57:29 GMT  
		Size: 6.5 MB (6482592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
