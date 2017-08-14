<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swipl`

-	[`swipl:latest`](#swipllatest)
-	[`swipl:7.5.12`](#swipl7512)

## `swipl:latest`

```console
$ docker pull swipl@sha256:2ee9080ae7e2320da1f9b4c654322b15a958135f85d3d242507ab5ee4b0bdf72
```

-	Platforms:
	-	linux; amd64

### `swipl:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50763670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef66188fc92bd405f7e18eadafac3f1f2b9358b1f9fcac6734def8f2008a0b3a`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Thu, 10 Aug 2017 21:24:17 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Thu, 10 Aug 2017 21:24:34 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18 &&     rm -rf /var/lib/apt/lists/*
# Mon, 14 Aug 2017 17:11:20 GMT
RUN SWIPL_VER=7.5.12 &&     SWIPL_CHECKSUM=19564f75d1041e14c3f20d0bee70b90b420115819dd5876cbc9ade9c456a9708 &&     BUILD_DEPS='make gcc wget libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev libgeos-dev libspatialindex-dev unixodbc-dev' &&     apt-get update && apt-get install -y --no-install-recommends $BUILD_DEPS &&     mkdir /tmp/src &&     cd /tmp/src &&     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz &&     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     tar -xzf swipl-$SWIPL_VER.tar.gz &&     cd swipl-$SWIPL_VER &&     cp build.templ build &&     sed -i '/PREFIX=$HOME/c\PREFIX=/swipl' build &&     sed -i '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"' build &&     sed -i '/# export EXTRA_PKGS/c\export EXTRA_PKGS="db space"' build &&     chmod u+x build && ./build &&     apt-get purge -y --auto-remove $BUILD_DEPS &&     cd /usr/bin && rm -rf /tmp/src && ln -s /swipl/bin/swipl swipl && rm -rf /var/lib/apt/lists/*
# Mon, 14 Aug 2017 17:11:20 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b848d565addd78c396b9f35fde2c9f74ac99a7432544faee78501800a19c8b2c`  
		Last Modified: Thu, 10 Aug 2017 21:26:30 GMT  
		Size: 22.0 MB (22017037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed8d39a99026472a70ff6943d4d45ef323f3c58cdfcdb1d29d2f75c8d001df7`  
		Last Modified: Mon, 14 Aug 2017 17:11:28 GMT  
		Size: 6.3 MB (6254889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swipl:7.5.12`

```console
$ docker pull swipl@sha256:2ee9080ae7e2320da1f9b4c654322b15a958135f85d3d242507ab5ee4b0bdf72
```

-	Platforms:
	-	linux; amd64

### `swipl:7.5.12` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50763670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef66188fc92bd405f7e18eadafac3f1f2b9358b1f9fcac6734def8f2008a0b3a`
-	Default Command: `["swipl"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Thu, 10 Aug 2017 21:24:17 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Thu, 10 Aug 2017 21:24:34 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18 &&     rm -rf /var/lib/apt/lists/*
# Mon, 14 Aug 2017 17:11:20 GMT
RUN SWIPL_VER=7.5.12 &&     SWIPL_CHECKSUM=19564f75d1041e14c3f20d0bee70b90b420115819dd5876cbc9ade9c456a9708 &&     BUILD_DEPS='make gcc wget libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev libgeos-dev libspatialindex-dev unixodbc-dev' &&     apt-get update && apt-get install -y --no-install-recommends $BUILD_DEPS &&     mkdir /tmp/src &&     cd /tmp/src &&     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz &&     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     tar -xzf swipl-$SWIPL_VER.tar.gz &&     cd swipl-$SWIPL_VER &&     cp build.templ build &&     sed -i '/PREFIX=$HOME/c\PREFIX=/swipl' build &&     sed -i '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"' build &&     sed -i '/# export EXTRA_PKGS/c\export EXTRA_PKGS="db space"' build &&     chmod u+x build && ./build &&     apt-get purge -y --auto-remove $BUILD_DEPS &&     cd /usr/bin && rm -rf /tmp/src && ln -s /swipl/bin/swipl swipl && rm -rf /var/lib/apt/lists/*
# Mon, 14 Aug 2017 17:11:20 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b848d565addd78c396b9f35fde2c9f74ac99a7432544faee78501800a19c8b2c`  
		Last Modified: Thu, 10 Aug 2017 21:26:30 GMT  
		Size: 22.0 MB (22017037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed8d39a99026472a70ff6943d4d45ef323f3c58cdfcdb1d29d2f75c8d001df7`  
		Last Modified: Mon, 14 Aug 2017 17:11:28 GMT  
		Size: 6.3 MB (6254889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
