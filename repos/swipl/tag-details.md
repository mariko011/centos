<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swipl`

-	[`swipl:latest`](#swipllatest)
-	[`swipl:7.5.14`](#swipl7514)

## `swipl:latest`

```console
$ docker pull swipl@sha256:b3d828b18bfbc083f9312db6f261a0649aa4146e8f6e4badb9014b602541b0b0
```

-	Platforms:
	-	linux; amd64

### `swipl:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50772601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea7123fff84d33944d0d70b234c3f2c986765505de8f51dc9627ca461bf280e9`
-	Default Command: `["swipl"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 11:06:47 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Fri, 08 Sep 2017 11:07:00 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18 &&     rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 11:08:37 GMT
RUN SWIPL_VER=7.5.14 &&     SWIPL_CHECKSUM=2e83e96a0eace037da3f75fc44e9c8f4e3b2cf8fd3c27f8f05ff489276aec572 &&     BUILD_DEPS='make gcc wget libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev libgeos-dev libspatialindex-dev unixodbc-dev' &&     apt-get update && apt-get install -y --no-install-recommends $BUILD_DEPS &&     mkdir /tmp/src &&     cd /tmp/src &&     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz &&     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     tar -xzf swipl-$SWIPL_VER.tar.gz &&     cd swipl-$SWIPL_VER &&     cp build.templ build &&     sed -i '/PREFIX=$HOME/c\PREFIX=/swipl' build &&     sed -i '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"' build &&     sed -i '/# export EXTRA_PKGS/c\export EXTRA_PKGS="db space"' build &&     chmod u+x build && ./build &&     apt-get purge -y --auto-remove $BUILD_DEPS &&     cd /usr/bin && rm -rf /tmp/src && ln -s /swipl/bin/swipl swipl && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 11:08:37 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051c74447fb80c3721849a66164cd0adbb3f32824998f722f87931a20fb7d6d7`  
		Last Modified: Mon, 11 Sep 2017 15:52:12 GMT  
		Size: 22.0 MB (22014743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b948a2f83e5419b42d2bf2bc322842dcf9a430309b5316d2b8fc4acb446ab92`  
		Last Modified: Mon, 11 Sep 2017 15:52:09 GMT  
		Size: 6.3 MB (6269801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swipl:7.5.14`

```console
$ docker pull swipl@sha256:b3d828b18bfbc083f9312db6f261a0649aa4146e8f6e4badb9014b602541b0b0
```

-	Platforms:
	-	linux; amd64

### `swipl:7.5.14` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50772601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea7123fff84d33944d0d70b234c3f2c986765505de8f51dc9627ca461bf280e9`
-	Default Command: `["swipl"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 11:06:47 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Fri, 08 Sep 2017 11:07:00 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18 &&     rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 11:08:37 GMT
RUN SWIPL_VER=7.5.14 &&     SWIPL_CHECKSUM=2e83e96a0eace037da3f75fc44e9c8f4e3b2cf8fd3c27f8f05ff489276aec572 &&     BUILD_DEPS='make gcc wget libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev libgeos-dev libspatialindex-dev unixodbc-dev' &&     apt-get update && apt-get install -y --no-install-recommends $BUILD_DEPS &&     mkdir /tmp/src &&     cd /tmp/src &&     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz &&     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     tar -xzf swipl-$SWIPL_VER.tar.gz &&     cd swipl-$SWIPL_VER &&     cp build.templ build &&     sed -i '/PREFIX=$HOME/c\PREFIX=/swipl' build &&     sed -i '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"' build &&     sed -i '/# export EXTRA_PKGS/c\export EXTRA_PKGS="db space"' build &&     chmod u+x build && ./build &&     apt-get purge -y --auto-remove $BUILD_DEPS &&     cd /usr/bin && rm -rf /tmp/src && ln -s /swipl/bin/swipl swipl && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 11:08:37 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051c74447fb80c3721849a66164cd0adbb3f32824998f722f87931a20fb7d6d7`  
		Last Modified: Mon, 11 Sep 2017 15:52:12 GMT  
		Size: 22.0 MB (22014743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b948a2f83e5419b42d2bf2bc322842dcf9a430309b5316d2b8fc4acb446ab92`  
		Last Modified: Mon, 11 Sep 2017 15:52:09 GMT  
		Size: 6.3 MB (6269801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
