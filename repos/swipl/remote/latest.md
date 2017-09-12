## `swipl:latest`

```console
$ docker pull swipl@sha256:8cd8b240ce17659076ce3fba46614f7b6e666de9093153db165ac2fa3d175589
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swipl:latest` - linux; amd64

```console
$ docker pull swipl@sha256:3f7f0ca1c7a82e5ad29fd8332be31c2ffb119880d3d3e19eb1389d35ec66a170
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50976142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1184113466ff0525b7b77e81ab953e8d160b071ea01b6d7468c49766118e009a`
-	Default Command: `["swipl"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:55:16 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 12 Sep 2017 21:55:30 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18 &&     rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:57:09 GMT
RUN SWIPL_VER=7.5.14 &&     SWIPL_CHECKSUM=2e83e96a0eace037da3f75fc44e9c8f4e3b2cf8fd3c27f8f05ff489276aec572 &&     BUILD_DEPS='make gcc wget libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev libgeos-dev libspatialindex-dev unixodbc-dev' &&     apt-get update && apt-get install -y --no-install-recommends $BUILD_DEPS &&     mkdir /tmp/src &&     cd /tmp/src &&     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz &&     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM &&     tar -xzf swipl-$SWIPL_VER.tar.gz &&     cd swipl-$SWIPL_VER &&     cp build.templ build &&     sed -i '/PREFIX=$HOME/c\PREFIX=/swipl' build &&     sed -i '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"' build &&     sed -i '/# export EXTRA_PKGS/c\export EXTRA_PKGS="db space"' build &&     chmod u+x build && ./build &&     apt-get purge -y --auto-remove $BUILD_DEPS &&     cd /usr/bin && rm -rf /tmp/src && ln -s /swipl/bin/swipl swipl && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:57:09 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911171b759b9e595c68bad06486ff7791cc240ae70e8ca38b9310f45c6ed7843`  
		Last Modified: Tue, 12 Sep 2017 21:57:30 GMT  
		Size: 22.0 MB (22014797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78170681dd2e683e9184915e592ab162eb0e748dab142dbea548334950a9ce38`  
		Last Modified: Tue, 12 Sep 2017 21:57:28 GMT  
		Size: 6.5 MB (6473288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
