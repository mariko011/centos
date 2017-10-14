## `swipl:stable`

```console
$ docker pull swipl@sha256:a95c5c40ee036e1a5b6b5855ffd68e986f042ec7888759758ea2d995a336d65c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swipl:stable` - linux; amd64

```console
$ docker pull swipl@sha256:699c8f00c8cb1cc5a6ffe326227751dce88700e43df23b659a1e2f573fad62f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50991800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c7595d2703b79cd211a1402362aeec105a215644ef56494d5cd964f24bc020f`
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
# Fri, 13 Oct 2017 23:57:04 GMT
RUN SWIPL_VER=7.6.0 &&     SWIPL_CHECKSUM=591c76bdeff29ded4d1dbb009fcba1c51067a5f6f3a69fada7e4327fcef4b0ff &&     BUILD_DEPS='make gcc wget libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev libgeos-dev libspatialindex-dev unixodbc-dev' &&     apt-get update && apt-get install -y --no-install-recommends $BUILD_DEPS &&     mkdir /tmp/src &&     cd /tmp/src &&     wget http://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz &&     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     tar -xzf swipl-$SWIPL_VER.tar.gz &&     cd swipl-$SWIPL_VER &&     cp build.templ build &&     sed -i '/PREFIX=$HOME/c\PREFIX=/swipl' build &&     sed -i '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"' build &&     sed -i '/# export EXTRA_PKGS/c\export EXTRA_PKGS="db space"' build &&     chmod u+x build && ./build &&     apt-get purge -y --auto-remove $BUILD_DEPS &&     cd /usr/bin && rm -rf /tmp/src && ln -s /swipl/bin/swipl swipl && rm -rf /var/lib/apt/lists/*
# Fri, 13 Oct 2017 23:57:04 GMT
ENV LANG=C.UTF-8
# Fri, 13 Oct 2017 23:57:05 GMT
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
	-	`sha256:400b027318767ea630443fe104820152a8d5ef39ac0a153fe024b979e9adf838`  
		Last Modified: Fri, 13 Oct 2017 23:57:18 GMT  
		Size: 6.5 MB (6483828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
