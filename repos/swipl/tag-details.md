<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swipl`

-	[`swipl:7.6.3`](#swipl763)
-	[`swipl:7.7.7`](#swipl777)
-	[`swipl:latest`](#swipllatest)
-	[`swipl:stable`](#swiplstable)

## `swipl:7.6.3`

```console
$ docker pull swipl@sha256:4538f403a03ea5b6500b5edd5fe2c2d2a74958cbb4220c34d2d093e1736347ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swipl:7.6.3` - linux; amd64

```console
$ docker pull swipl@sha256:f29704f597bf7c7af785c42ace605a500738ba2c55755462560e3f4fd31a6e14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56198333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49c60b4647493ce16434340e7402c2d609c49703565e983a752ac471055f6c3f`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:33:42 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 12 Dec 2017 07:34:01 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     ca-certificates     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18     libsqlite3-0     librocksdb4.5     libserd-0-0     libraptor2-0 &&     rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:42:04 GMT
RUN set -eux;     SWIPL_VER=7.6.3;     SWIPL_CHECKSUM=9c0be513dc98e6ca420d109f7a455a6593840682cf1b0e21876d1e71e7f35d39;     BUILD_DEPS='make gcc g++ wget git autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev librocksdb-dev libserd-dev libraptor2-dev libgeos++-dev libspatialindex-dev';     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget http://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     cd swipl-$SWIPL_VER;     sed -e '/PREFIX=$HOME/c\PREFIX=/usr'         -e '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"'         -e 's/# *\(EXTRA.*--disable-libdirversion\)/\1/'            build.templ > build;     chmod u+x build; ./build;     mkdir -p /usr/lib/swipl/pack;     cd /usr/lib/swipl/pack;     rm -rf /tmp/src;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'space' ]; then (cd "$1"; ln -s configure.ac configure.in); fi;         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;     };     install_addin space https://github.com/JanWielemaker/space.git cd6fefa63317a7a6effb61a1c5aee634ebe2ca05;     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git a1d915d07933ece27ea5fd68f07c83d10583e7a0;     install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git 29eaee6fcdb6dce690ed187ef68b80ee94739412;     install_addin hdt https://github.com/JanWielemaker/hdt.git e0a0eff87fc3318434cb493690c570e1255ed30e;     install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git 72838bbfa3976a83d19fb38bdae04378e30f4b0d;     apt-get purge -y --auto-remove $BUILD_DEPS
# Tue, 12 Dec 2017 07:42:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 07:42:08 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ead40c825f731fefb2e847f46237e6c9825782229a3f73279cb7b1fe38c4be1`  
		Last Modified: Tue, 12 Dec 2017 07:42:39 GMT  
		Size: 26.3 MB (26259075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addb6d741a00d5ebd447b600d41a453cc6774bee0865ca47c5e62e8700a07c81`  
		Last Modified: Tue, 12 Dec 2017 07:43:00 GMT  
		Size: 7.5 MB (7453539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swipl:7.7.7`

```console
$ docker pull swipl@sha256:45ec56d704d024c095093591fedccaa8118f7ef5b9d85e308d6a5c0a3d66c492
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swipl:7.7.7` - linux; amd64

```console
$ docker pull swipl@sha256:a310272d143124d29845e9d122b7ac1f9646e3a859412a43948c624480c835f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56215398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc325a2f8086febece486d6062525048d11d47b041dcf6454124e02254a06edf`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:33:42 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Sat, 30 Dec 2017 20:55:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     ca-certificates     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18     libsqlite3-0     libserd-0-0     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     { [ "$dpkgArch" = 'armhf' ] || apt-get install -y --no-install-recommends librocksdb4.5; } &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Dec 2017 20:59:10 GMT
RUN set -eux;     SWIPL_VER=7.7.7;     SWIPL_CHECKSUM=0b0ca7832fcfebbf8b9d707aeccb13c926dc18ca7dd68dec206fb9868a75a232;     BUILD_DEPS='make gcc g++ wget git autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libgeos++-dev libspatialindex-dev';     dpkgArch="$(dpkg --print-architecture)";     [ "$dpkgArch" = 'armhf' ] || BUILD_DEPS="$BUILD_DEPS librocksdb-dev";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     cd swipl-$SWIPL_VER;     sed -e '/PREFIX=$HOME/c\PREFIX=/usr'         -e '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"'         -e 's/# *\(EXTRA.*--disable-libdirversion\)/\1/'            build.templ > build;     chmod u+x build; ./build;     mkdir -p /usr/lib/swipl/pack;     cd /usr/lib/swipl/pack;     rm -rf /tmp/src;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'space' ]; then (cd "$1"; ln -s configure.ac configure.in); fi;         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin space https://github.com/JanWielemaker/space.git cd6fefa63317a7a6effb61a1c5aee634ebe2ca05;     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git a1d915d07933ece27ea5fd68f07c83d10583e7a0;     [ "$dpkgArch" = 'armhf' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git 29eaee6fcdb6dce690ed187ef68b80ee94739412;     [ "$dpkgArch" = 'armhf' ] ||  install_addin hdt https://github.com/JanWielemaker/hdt.git e0a0eff87fc3318434cb493690c570e1255ed30e;     install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git 72838bbfa3976a83d19fb38bdae04378e30f4b0d;     apt-get purge -y --auto-remove $BUILD_DEPS
# Sat, 30 Dec 2017 20:59:10 GMT
ENV LANG=C.UTF-8
# Sat, 30 Dec 2017 20:59:10 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f162bd546d7f510d1d8e1d794e7086888f124e33aea105adfbdb49bcc379be49`  
		Last Modified: Sat, 30 Dec 2017 21:06:50 GMT  
		Size: 26.3 MB (26258967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa0ec28b672b2e4e6e5a5f975151f2a26582ce9720f36e4fc1077371fbca80e`  
		Last Modified: Sat, 30 Dec 2017 21:06:48 GMT  
		Size: 7.5 MB (7470712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swipl:latest`

```console
$ docker pull swipl@sha256:45ec56d704d024c095093591fedccaa8118f7ef5b9d85e308d6a5c0a3d66c492
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swipl:latest` - linux; amd64

```console
$ docker pull swipl@sha256:a310272d143124d29845e9d122b7ac1f9646e3a859412a43948c624480c835f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56215398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc325a2f8086febece486d6062525048d11d47b041dcf6454124e02254a06edf`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:33:42 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Sat, 30 Dec 2017 20:55:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     ca-certificates     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18     libsqlite3-0     libserd-0-0     libraptor2-0 &&     dpkgArch="$(dpkg --print-architecture)" &&     { [ "$dpkgArch" = 'armhf' ] || apt-get install -y --no-install-recommends librocksdb4.5; } &&     rm -rf /var/lib/apt/lists/*
# Sat, 30 Dec 2017 20:59:10 GMT
RUN set -eux;     SWIPL_VER=7.7.7;     SWIPL_CHECKSUM=0b0ca7832fcfebbf8b9d707aeccb13c926dc18ca7dd68dec206fb9868a75a232;     BUILD_DEPS='make gcc g++ wget git autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev libserd-dev libraptor2-dev libgeos++-dev libspatialindex-dev';     dpkgArch="$(dpkg --print-architecture)";     [ "$dpkgArch" = 'armhf' ] || BUILD_DEPS="$BUILD_DEPS librocksdb-dev";     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget http://www.swi-prolog.org/download/devel/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     cd swipl-$SWIPL_VER;     sed -e '/PREFIX=$HOME/c\PREFIX=/usr'         -e '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"'         -e 's/# *\(EXTRA.*--disable-libdirversion\)/\1/'            build.templ > build;     chmod u+x build; ./build;     mkdir -p /usr/lib/swipl/pack;     cd /usr/lib/swipl/pack;     rm -rf /tmp/src;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'space' ]; then (cd "$1"; ln -s configure.ac configure.in); fi;         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;     };     dpkgArch="$(dpkg --print-architecture)";     install_addin space https://github.com/JanWielemaker/space.git cd6fefa63317a7a6effb61a1c5aee634ebe2ca05;     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git a1d915d07933ece27ea5fd68f07c83d10583e7a0;     [ "$dpkgArch" = 'armhf' ] || install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git 29eaee6fcdb6dce690ed187ef68b80ee94739412;     [ "$dpkgArch" = 'armhf' ] ||  install_addin hdt https://github.com/JanWielemaker/hdt.git e0a0eff87fc3318434cb493690c570e1255ed30e;     install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git 72838bbfa3976a83d19fb38bdae04378e30f4b0d;     apt-get purge -y --auto-remove $BUILD_DEPS
# Sat, 30 Dec 2017 20:59:10 GMT
ENV LANG=C.UTF-8
# Sat, 30 Dec 2017 20:59:10 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f162bd546d7f510d1d8e1d794e7086888f124e33aea105adfbdb49bcc379be49`  
		Last Modified: Sat, 30 Dec 2017 21:06:50 GMT  
		Size: 26.3 MB (26258967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa0ec28b672b2e4e6e5a5f975151f2a26582ce9720f36e4fc1077371fbca80e`  
		Last Modified: Sat, 30 Dec 2017 21:06:48 GMT  
		Size: 7.5 MB (7470712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swipl:stable`

```console
$ docker pull swipl@sha256:4538f403a03ea5b6500b5edd5fe2c2d2a74958cbb4220c34d2d093e1736347ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swipl:stable` - linux; amd64

```console
$ docker pull swipl@sha256:f29704f597bf7c7af785c42ace605a500738ba2c55755462560e3f4fd31a6e14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56198333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49c60b4647493ce16434340e7402c2d609c49703565e983a752ac471055f6c3f`
-	Default Command: `["swipl"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:33:42 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Michael Hendricks <michael@ndrix.org>
# Tue, 12 Dec 2017 07:34:01 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends     libarchive13     libgmp10     libossp-uuid16     libssl1.1     ca-certificates     libdb5.3     libpcre3     libedit2     libgeos-c1v5     libspatialindex4v5     unixodbc     odbc-postgresql     tdsodbc     libmariadbclient18     libsqlite3-0     librocksdb4.5     libserd-0-0     libraptor2-0 &&     rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:42:04 GMT
RUN set -eux;     SWIPL_VER=7.6.3;     SWIPL_CHECKSUM=9c0be513dc98e6ca420d109f7a455a6593840682cf1b0e21876d1e71e7f35d39;     BUILD_DEPS='make gcc g++ wget git autoconf libarchive-dev libgmp-dev libossp-uuid-dev libpcre3-dev libreadline-dev libedit-dev libssl-dev zlib1g-dev libdb-dev unixodbc-dev libsqlite3-dev librocksdb-dev libserd-dev libraptor2-dev libgeos++-dev libspatialindex-dev';     apt-get update; apt-get install -y --no-install-recommends $BUILD_DEPS; rm -rf /var/lib/apt/lists/*;     mkdir /tmp/src;     cd /tmp/src;     wget http://www.swi-prolog.org/download/stable/src/swipl-$SWIPL_VER.tar.gz;     echo "$SWIPL_CHECKSUM  swipl-$SWIPL_VER.tar.gz" >> swipl-$SWIPL_VER.tar.gz-CHECKSUM;     sha256sum -c swipl-$SWIPL_VER.tar.gz-CHECKSUM;     tar -xzf swipl-$SWIPL_VER.tar.gz;     cd swipl-$SWIPL_VER;     sed -e '/PREFIX=$HOME/c\PREFIX=/usr'         -e '/# export DISABLE_PKGS/c\export DISABLE_PKGS="jpl xpce"'         -e 's/# *\(EXTRA.*--disable-libdirversion\)/\1/'            build.templ > build;     chmod u+x build; ./build;     mkdir -p /usr/lib/swipl/pack;     cd /usr/lib/swipl/pack;     rm -rf /tmp/src;     install_addin () {         git clone "$2" "$1";         git -C "$1" checkout -q "$3";         if [ "$1" = 'space' ]; then (cd "$1"; ln -s configure.ac configure.in); fi;         if [ "$1" = 'prosqlite' ]; then rm -rf "$1/lib"; fi;         swipl -g "pack_rebuild($1)" -t halt;         find "$1" -mindepth 1 -maxdepth 1 ! -name lib ! -name prolog ! -name pack.pl -exec rm -rf {} +;         find "$1" -name .git -exec rm -rf {} +;     };     install_addin space https://github.com/JanWielemaker/space.git cd6fefa63317a7a6effb61a1c5aee634ebe2ca05;     install_addin prosqlite https://github.com/nicos-angelopoulos/prosqlite.git a1d915d07933ece27ea5fd68f07c83d10583e7a0;     install_addin rocksdb https://github.com/JanWielemaker/rocksdb.git 29eaee6fcdb6dce690ed187ef68b80ee94739412;     install_addin hdt https://github.com/JanWielemaker/hdt.git e0a0eff87fc3318434cb493690c570e1255ed30e;     install_addin rserve_client https://github.com/JanWielemaker/rserve_client.git 72838bbfa3976a83d19fb38bdae04378e30f4b0d;     apt-get purge -y --auto-remove $BUILD_DEPS
# Tue, 12 Dec 2017 07:42:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 07:42:08 GMT
CMD ["swipl"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ead40c825f731fefb2e847f46237e6c9825782229a3f73279cb7b1fe38c4be1`  
		Last Modified: Tue, 12 Dec 2017 07:42:39 GMT  
		Size: 26.3 MB (26259075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addb6d741a00d5ebd447b600d41a453cc6774bee0865ca47c5e62e8700a07c81`  
		Last Modified: Tue, 12 Dec 2017 07:43:00 GMT  
		Size: 7.5 MB (7453539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
