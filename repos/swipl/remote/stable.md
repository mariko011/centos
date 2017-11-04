## `swipl:stable`

```console
$ docker pull swipl@sha256:3501a658f22370670010b6f03800a4e911484e029025d6545d7a6f31df73ae3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swipl:stable` - linux; amd64

```console
$ docker pull swipl@sha256:1cf9087be8456c3cc3fcbce648646297dfbe6b2d6402c5ce4993a4e2c2757be4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50991858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc53b1333da343ddcf5413aa059c9161f27e89e5642cedbf8c87d995bc818ab`
-	Default Command: `["swipl"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:13:26 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Sat, 04 Nov 2017 09:18:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18 &&     rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:21:32 GMT
RUN SWIPL_VER=7.6.0 &&     SWIPL_CHECKSUM=591c76bdeff29ded4d1dbb009fcba1c51067a5f6f3a69fada7e4327fcef4b0ff &&     BUILD_DEPS='make gcc wget libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev libgeos-dev libspatialindex-dev unixodbc-dev' &&     apt-get update && apt-get install -y --no-install-recommends $BUILD_DEPS &&     mkdir /tmp/src &&     cd /tmp/src &&     wget http://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz &&     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     tar -xzf swipl-$SWIPL_VER.tar.gz &&     cd swipl-$SWIPL_VER &&     cp build.templ build &&     sed -i '/PREFIX=$HOME/c\PREFIX=/swipl' build &&     sed -i '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"' build &&     sed -i '/# export EXTRA_PKGS/c\export EXTRA_PKGS="db space"' build &&     chmod u+x build && ./build &&     apt-get purge -y --auto-remove $BUILD_DEPS &&     cd /usr/bin && rm -rf /tmp/src && ln -s /swipl/bin/swipl swipl && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:21:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 09:21:33 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd81b51bee78ca743f9be1094cdf73277de74738066a458ac43ce7d4d0c01e18`  
		Last Modified: Sat, 04 Nov 2017 09:22:06 GMT  
		Size: 22.0 MB (22015695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242317697975715321cf7cbd64337648586369be994dbfb512929332ed327711`  
		Last Modified: Sat, 04 Nov 2017 09:22:04 GMT  
		Size: 6.5 MB (6483813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
