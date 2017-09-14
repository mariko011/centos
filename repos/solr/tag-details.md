<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `solr`

-	[`solr:5`](#solr5)
-	[`solr:5.5`](#solr55)
-	[`solr:5.5.4`](#solr554)
-	[`solr:5.5.4-alpine`](#solr554-alpine)
-	[`solr:5.5-alpine`](#solr55-alpine)
-	[`solr:5-alpine`](#solr5-alpine)
-	[`solr:6`](#solr6)
-	[`solr:6.3`](#solr63)
-	[`solr:6.3.0`](#solr630)
-	[`solr:6.3.0-alpine`](#solr630-alpine)
-	[`solr:6.3-alpine`](#solr63-alpine)
-	[`solr:6.4`](#solr64)
-	[`solr:6.4.2`](#solr642)
-	[`solr:6.4.2-alpine`](#solr642-alpine)
-	[`solr:6.4-alpine`](#solr64-alpine)
-	[`solr:6.5`](#solr65)
-	[`solr:6.5.1`](#solr651)
-	[`solr:6.5.1-alpine`](#solr651-alpine)
-	[`solr:6.5-alpine`](#solr65-alpine)
-	[`solr:6.6`](#solr66)
-	[`solr:6.6.0`](#solr660)
-	[`solr:6.6.0-alpine`](#solr660-alpine)
-	[`solr:6.6-alpine`](#solr66-alpine)
-	[`solr:6-alpine`](#solr6-alpine)
-	[`solr:alpine`](#solralpine)
-	[`solr:latest`](#solrlatest)

## `solr:5`

```console
$ docker pull solr@sha256:45386aab9649f5c63b5c4e930dbcc1d7e5f601544506c454ac9325e1957fc57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

```console
$ docker pull solr@sha256:d4f32077e9a851f228c407a49c9e0602409eb98eca24d5e22355e1e6dd9b3fb0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.4 MB (361395108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb7ebd0aa997f66632d49bdf1e7b74f258bdded964a95b1e74ebddef53227a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:46:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 14 Sep 2017 07:46:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 07:46:43 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:46:43 GMT
ENV SOLR_USER=solr
# Thu, 14 Sep 2017 07:46:43 GMT
ENV SOLR_UID=8983
# Thu, 14 Sep 2017 07:46:44 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Thu, 14 Sep 2017 07:46:45 GMT
ENV SOLR_VERSION=5.5.4
# Thu, 14 Sep 2017 07:46:45 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Thu, 14 Sep 2017 07:46:45 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Thu, 14 Sep 2017 07:46:45 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 14 Sep 2017 07:46:58 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 14 Sep 2017 07:47:12 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 14 Sep 2017 07:47:12 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Thu, 14 Sep 2017 07:47:13 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 14 Sep 2017 07:47:13 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:47:13 GMT
EXPOSE 8983/tcp
# Thu, 14 Sep 2017 07:47:14 GMT
WORKDIR /opt/solr
# Thu, 14 Sep 2017 07:47:14 GMT
USER [solr]
# Thu, 14 Sep 2017 07:47:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:47:14 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee2d6f441bba0295906203ae3a878fbfdaba9a80571021ff79942d62777e4d`  
		Last Modified: Thu, 14 Sep 2017 07:52:34 GMT  
		Size: 1.3 MB (1291147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc36c0829b78149675a18690c40485038cfd17d19ef07cf3c1ea3bf8def77ef3`  
		Last Modified: Thu, 14 Sep 2017 07:52:32 GMT  
		Size: 4.3 KB (4330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47533e6cde6d14fae2ed38751c666848b29601cc03be915265bc749e118ee1e4`  
		Last Modified: Thu, 14 Sep 2017 07:52:32 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4821acfac857087e4281af730c77943e5a3e1522b4791ac0ef0b827ad63606`  
		Last Modified: Thu, 14 Sep 2017 07:52:54 GMT  
		Size: 131.9 MB (131927292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca631239a1bb6d7aaf1a59a5475280a0b0f4b89737f83a009bacb16a11a0f1d7`  
		Last Modified: Thu, 14 Sep 2017 07:52:33 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87aa8eb10a4babc6f3f99fa285a549e9396abf57d83f2d277c58f92d8f0095ba`  
		Last Modified: Thu, 14 Sep 2017 07:52:31 GMT  
		Size: 3.0 KB (3026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:45386aab9649f5c63b5c4e930dbcc1d7e5f601544506c454ac9325e1957fc57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

```console
$ docker pull solr@sha256:d4f32077e9a851f228c407a49c9e0602409eb98eca24d5e22355e1e6dd9b3fb0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.4 MB (361395108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb7ebd0aa997f66632d49bdf1e7b74f258bdded964a95b1e74ebddef53227a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:46:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 14 Sep 2017 07:46:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 07:46:43 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:46:43 GMT
ENV SOLR_USER=solr
# Thu, 14 Sep 2017 07:46:43 GMT
ENV SOLR_UID=8983
# Thu, 14 Sep 2017 07:46:44 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Thu, 14 Sep 2017 07:46:45 GMT
ENV SOLR_VERSION=5.5.4
# Thu, 14 Sep 2017 07:46:45 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Thu, 14 Sep 2017 07:46:45 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Thu, 14 Sep 2017 07:46:45 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 14 Sep 2017 07:46:58 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 14 Sep 2017 07:47:12 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 14 Sep 2017 07:47:12 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Thu, 14 Sep 2017 07:47:13 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 14 Sep 2017 07:47:13 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:47:13 GMT
EXPOSE 8983/tcp
# Thu, 14 Sep 2017 07:47:14 GMT
WORKDIR /opt/solr
# Thu, 14 Sep 2017 07:47:14 GMT
USER [solr]
# Thu, 14 Sep 2017 07:47:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:47:14 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee2d6f441bba0295906203ae3a878fbfdaba9a80571021ff79942d62777e4d`  
		Last Modified: Thu, 14 Sep 2017 07:52:34 GMT  
		Size: 1.3 MB (1291147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc36c0829b78149675a18690c40485038cfd17d19ef07cf3c1ea3bf8def77ef3`  
		Last Modified: Thu, 14 Sep 2017 07:52:32 GMT  
		Size: 4.3 KB (4330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47533e6cde6d14fae2ed38751c666848b29601cc03be915265bc749e118ee1e4`  
		Last Modified: Thu, 14 Sep 2017 07:52:32 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4821acfac857087e4281af730c77943e5a3e1522b4791ac0ef0b827ad63606`  
		Last Modified: Thu, 14 Sep 2017 07:52:54 GMT  
		Size: 131.9 MB (131927292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca631239a1bb6d7aaf1a59a5475280a0b0f4b89737f83a009bacb16a11a0f1d7`  
		Last Modified: Thu, 14 Sep 2017 07:52:33 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87aa8eb10a4babc6f3f99fa285a549e9396abf57d83f2d277c58f92d8f0095ba`  
		Last Modified: Thu, 14 Sep 2017 07:52:31 GMT  
		Size: 3.0 KB (3026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.4`

```console
$ docker pull solr@sha256:45386aab9649f5c63b5c4e930dbcc1d7e5f601544506c454ac9325e1957fc57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:5.5.4` - linux; amd64

```console
$ docker pull solr@sha256:d4f32077e9a851f228c407a49c9e0602409eb98eca24d5e22355e1e6dd9b3fb0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.4 MB (361395108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb7ebd0aa997f66632d49bdf1e7b74f258bdded964a95b1e74ebddef53227a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:46:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 14 Sep 2017 07:46:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 07:46:43 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:46:43 GMT
ENV SOLR_USER=solr
# Thu, 14 Sep 2017 07:46:43 GMT
ENV SOLR_UID=8983
# Thu, 14 Sep 2017 07:46:44 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Thu, 14 Sep 2017 07:46:45 GMT
ENV SOLR_VERSION=5.5.4
# Thu, 14 Sep 2017 07:46:45 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Thu, 14 Sep 2017 07:46:45 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Thu, 14 Sep 2017 07:46:45 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 14 Sep 2017 07:46:58 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 14 Sep 2017 07:47:12 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 14 Sep 2017 07:47:12 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Thu, 14 Sep 2017 07:47:13 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 14 Sep 2017 07:47:13 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:47:13 GMT
EXPOSE 8983/tcp
# Thu, 14 Sep 2017 07:47:14 GMT
WORKDIR /opt/solr
# Thu, 14 Sep 2017 07:47:14 GMT
USER [solr]
# Thu, 14 Sep 2017 07:47:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:47:14 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee2d6f441bba0295906203ae3a878fbfdaba9a80571021ff79942d62777e4d`  
		Last Modified: Thu, 14 Sep 2017 07:52:34 GMT  
		Size: 1.3 MB (1291147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc36c0829b78149675a18690c40485038cfd17d19ef07cf3c1ea3bf8def77ef3`  
		Last Modified: Thu, 14 Sep 2017 07:52:32 GMT  
		Size: 4.3 KB (4330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47533e6cde6d14fae2ed38751c666848b29601cc03be915265bc749e118ee1e4`  
		Last Modified: Thu, 14 Sep 2017 07:52:32 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4821acfac857087e4281af730c77943e5a3e1522b4791ac0ef0b827ad63606`  
		Last Modified: Thu, 14 Sep 2017 07:52:54 GMT  
		Size: 131.9 MB (131927292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca631239a1bb6d7aaf1a59a5475280a0b0f4b89737f83a009bacb16a11a0f1d7`  
		Last Modified: Thu, 14 Sep 2017 07:52:33 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87aa8eb10a4babc6f3f99fa285a549e9396abf57d83f2d277c58f92d8f0095ba`  
		Last Modified: Thu, 14 Sep 2017 07:52:31 GMT  
		Size: 3.0 KB (3026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.4-alpine`

```console
$ docker pull solr@sha256:ecc4de6cdf8f3b00d9384fbe03dceeec4129abc709692d7f995c41adc09d4640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:5.5.4-alpine` - linux; amd64

```console
$ docker pull solr@sha256:e38ba3c0fb3e09440486098eed46e8e6350dc77abb2ff83440cdea810d9f5560
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194406713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f723dd883162a8cdfb47cb69e019f26759f32484b9508c0c9adc81d340818f09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:47:28 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 14 Sep 2017 07:47:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 07:47:33 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 14 Sep 2017 07:47:37 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 14 Sep 2017 07:47:37 GMT
ENV SOLR_USER=solr
# Thu, 14 Sep 2017 07:47:37 GMT
ENV SOLR_UID=8983
# Thu, 14 Sep 2017 07:47:38 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Thu, 14 Sep 2017 07:47:38 GMT
ENV SOLR_VERSION=5.5.4
# Thu, 14 Sep 2017 07:47:38 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Thu, 14 Sep 2017 07:47:38 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Thu, 14 Sep 2017 07:47:39 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 14 Sep 2017 07:47:42 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 14 Sep 2017 07:47:58 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 14 Sep 2017 07:47:58 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Thu, 14 Sep 2017 07:47:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 14 Sep 2017 07:47:59 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 07:47:59 GMT
EXPOSE 8983/tcp
# Thu, 14 Sep 2017 07:47:59 GMT
WORKDIR /opt/solr
# Thu, 14 Sep 2017 07:48:00 GMT
USER [solr]
# Thu, 14 Sep 2017 07:48:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:48:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810c0661fe9b94017f9addf337e276483da0b92b6bc75062fcd86e3ccb63ae9a`  
		Last Modified: Thu, 14 Sep 2017 07:53:19 GMT  
		Size: 5.6 MB (5568529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6c2f1e8f188f9ea8b75f2577b93df88762497b6f4b41f5d725ce0622b7f40f`  
		Last Modified: Thu, 14 Sep 2017 07:53:17 GMT  
		Size: 622.9 KB (622893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449e20cf69b78ed842c1aecf7fcd29777a4f9f58105ba28cbc269d41270765cf`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816c4787e357a3fbd02a6d4eb1481c806cbd252b0b225850d893018409fc2978`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 7.2 KB (7172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8544a770ea67ddc3edb055898851d556ee3a6bd13f4e71e5324673118aabd723`  
		Last Modified: Thu, 14 Sep 2017 07:53:28 GMT  
		Size: 131.9 MB (131927299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7696dcf4c24501708ff1d97559751ada1d2de0c148a22e405a55341aec46d9a2`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aa8f18c53d17756f1910c5912dd65c4f40bf99dcd31c10ee34a52188b4f045`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 3.0 KB (3025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:ecc4de6cdf8f3b00d9384fbe03dceeec4129abc709692d7f995c41adc09d4640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

```console
$ docker pull solr@sha256:e38ba3c0fb3e09440486098eed46e8e6350dc77abb2ff83440cdea810d9f5560
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194406713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f723dd883162a8cdfb47cb69e019f26759f32484b9508c0c9adc81d340818f09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:47:28 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 14 Sep 2017 07:47:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 07:47:33 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 14 Sep 2017 07:47:37 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 14 Sep 2017 07:47:37 GMT
ENV SOLR_USER=solr
# Thu, 14 Sep 2017 07:47:37 GMT
ENV SOLR_UID=8983
# Thu, 14 Sep 2017 07:47:38 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Thu, 14 Sep 2017 07:47:38 GMT
ENV SOLR_VERSION=5.5.4
# Thu, 14 Sep 2017 07:47:38 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Thu, 14 Sep 2017 07:47:38 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Thu, 14 Sep 2017 07:47:39 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 14 Sep 2017 07:47:42 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 14 Sep 2017 07:47:58 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 14 Sep 2017 07:47:58 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Thu, 14 Sep 2017 07:47:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 14 Sep 2017 07:47:59 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 07:47:59 GMT
EXPOSE 8983/tcp
# Thu, 14 Sep 2017 07:47:59 GMT
WORKDIR /opt/solr
# Thu, 14 Sep 2017 07:48:00 GMT
USER [solr]
# Thu, 14 Sep 2017 07:48:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:48:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810c0661fe9b94017f9addf337e276483da0b92b6bc75062fcd86e3ccb63ae9a`  
		Last Modified: Thu, 14 Sep 2017 07:53:19 GMT  
		Size: 5.6 MB (5568529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6c2f1e8f188f9ea8b75f2577b93df88762497b6f4b41f5d725ce0622b7f40f`  
		Last Modified: Thu, 14 Sep 2017 07:53:17 GMT  
		Size: 622.9 KB (622893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449e20cf69b78ed842c1aecf7fcd29777a4f9f58105ba28cbc269d41270765cf`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816c4787e357a3fbd02a6d4eb1481c806cbd252b0b225850d893018409fc2978`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 7.2 KB (7172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8544a770ea67ddc3edb055898851d556ee3a6bd13f4e71e5324673118aabd723`  
		Last Modified: Thu, 14 Sep 2017 07:53:28 GMT  
		Size: 131.9 MB (131927299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7696dcf4c24501708ff1d97559751ada1d2de0c148a22e405a55341aec46d9a2`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aa8f18c53d17756f1910c5912dd65c4f40bf99dcd31c10ee34a52188b4f045`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 3.0 KB (3025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5-alpine`

```console
$ docker pull solr@sha256:ecc4de6cdf8f3b00d9384fbe03dceeec4129abc709692d7f995c41adc09d4640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

```console
$ docker pull solr@sha256:e38ba3c0fb3e09440486098eed46e8e6350dc77abb2ff83440cdea810d9f5560
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194406713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f723dd883162a8cdfb47cb69e019f26759f32484b9508c0c9adc81d340818f09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:47:28 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 14 Sep 2017 07:47:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 07:47:33 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 14 Sep 2017 07:47:37 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 14 Sep 2017 07:47:37 GMT
ENV SOLR_USER=solr
# Thu, 14 Sep 2017 07:47:37 GMT
ENV SOLR_UID=8983
# Thu, 14 Sep 2017 07:47:38 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Thu, 14 Sep 2017 07:47:38 GMT
ENV SOLR_VERSION=5.5.4
# Thu, 14 Sep 2017 07:47:38 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Thu, 14 Sep 2017 07:47:38 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Thu, 14 Sep 2017 07:47:39 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 14 Sep 2017 07:47:42 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 14 Sep 2017 07:47:58 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 14 Sep 2017 07:47:58 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Thu, 14 Sep 2017 07:47:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 14 Sep 2017 07:47:59 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 07:47:59 GMT
EXPOSE 8983/tcp
# Thu, 14 Sep 2017 07:47:59 GMT
WORKDIR /opt/solr
# Thu, 14 Sep 2017 07:48:00 GMT
USER [solr]
# Thu, 14 Sep 2017 07:48:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:48:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810c0661fe9b94017f9addf337e276483da0b92b6bc75062fcd86e3ccb63ae9a`  
		Last Modified: Thu, 14 Sep 2017 07:53:19 GMT  
		Size: 5.6 MB (5568529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6c2f1e8f188f9ea8b75f2577b93df88762497b6f4b41f5d725ce0622b7f40f`  
		Last Modified: Thu, 14 Sep 2017 07:53:17 GMT  
		Size: 622.9 KB (622893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449e20cf69b78ed842c1aecf7fcd29777a4f9f58105ba28cbc269d41270765cf`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816c4787e357a3fbd02a6d4eb1481c806cbd252b0b225850d893018409fc2978`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 7.2 KB (7172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8544a770ea67ddc3edb055898851d556ee3a6bd13f4e71e5324673118aabd723`  
		Last Modified: Thu, 14 Sep 2017 07:53:28 GMT  
		Size: 131.9 MB (131927299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7696dcf4c24501708ff1d97559751ada1d2de0c148a22e405a55341aec46d9a2`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aa8f18c53d17756f1910c5912dd65c4f40bf99dcd31c10ee34a52188b4f045`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 3.0 KB (3025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6`

```console
$ docker pull solr@sha256:27e9dcff9d6cfccac8788f2bb039a2bc86933ae95fc14e474c75cf7f4181b407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

```console
$ docker pull solr@sha256:d28b022abca6d7a8dac76d7982da0df763e789027dc7b0c864d0cccb56c1fd15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.8 MB (374754393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a47fef51b7cd79cfbe87be20784877cc0f50a6f7e4db97459a058b66487f49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 04:53:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:25 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:53:26 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 13 Sep 2017 04:56:45 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:57:00 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:57:00 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:57:01 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:57:01 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 04:57:01 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:57:01 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:57:01 GMT
USER [solr]
# Wed, 13 Sep 2017 04:57:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:57:01 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f739801b23185a4041b1b716a8ce37cb4853e69574c9fd5a603dff60762b917`  
		Last Modified: Wed, 13 Sep 2017 04:57:44 GMT  
		Size: 1.3 MB (1291094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5a48533f75fb0006a451efe4eff41d3e586b66ac4d8fa628558cadd93a2f9b`  
		Last Modified: Wed, 13 Sep 2017 04:57:36 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73824a3af0d7b62193d5e0d341d0a47531e823f911f7324e9bd78496829c9580`  
		Last Modified: Wed, 13 Sep 2017 05:10:30 GMT  
		Size: 7.1 KB (7147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e6420f8cee3b7fefa668009c5641137f466a2f5165bbc601e5b8ea5bce6c6d`  
		Last Modified: Wed, 13 Sep 2017 05:10:52 GMT  
		Size: 145.5 MB (145510032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93a67f932a1bf4f9a02810f7557aaf4a2c6b7606986332c7b90036847a6c4a5`  
		Last Modified: Wed, 13 Sep 2017 05:10:30 GMT  
		Size: 3.0 KB (3018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5832e0aea27b68959ca01d72d8e84018e10bd23e1b7c788effaa95da2705fa1`  
		Last Modified: Wed, 13 Sep 2017 05:10:29 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3`

```console
$ docker pull solr@sha256:85286e24bd27b5242e885d12b8f39faa29630ad0e70d00fb3c39cee1f69a769f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.3` - linux; amd64

```console
$ docker pull solr@sha256:631122a919734c432e531bfba5385b7a305d664a197d290c9d085b5a242b8842
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.0 MB (370023684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0652509c164a8a535be5b8f674c949c487099828ed50ca0c119eac7ba1f7ccba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:46:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 14 Sep 2017 07:46:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 07:46:43 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:46:43 GMT
ENV SOLR_USER=solr
# Thu, 14 Sep 2017 07:46:43 GMT
ENV SOLR_UID=8983
# Thu, 14 Sep 2017 07:46:44 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Thu, 14 Sep 2017 07:48:03 GMT
ENV SOLR_VERSION=6.3.0
# Thu, 14 Sep 2017 07:48:03 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Thu, 14 Sep 2017 07:48:04 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Thu, 14 Sep 2017 07:48:04 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Thu, 14 Sep 2017 07:48:11 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 14 Sep 2017 07:48:25 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 14 Sep 2017 07:48:28 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Thu, 14 Sep 2017 07:48:28 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 14 Sep 2017 07:48:28 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:48:29 GMT
EXPOSE 8983/tcp
# Thu, 14 Sep 2017 07:48:29 GMT
WORKDIR /opt/solr
# Thu, 14 Sep 2017 07:48:29 GMT
USER [solr]
# Thu, 14 Sep 2017 07:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:48:29 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee2d6f441bba0295906203ae3a878fbfdaba9a80571021ff79942d62777e4d`  
		Last Modified: Thu, 14 Sep 2017 07:52:34 GMT  
		Size: 1.3 MB (1291147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc36c0829b78149675a18690c40485038cfd17d19ef07cf3c1ea3bf8def77ef3`  
		Last Modified: Thu, 14 Sep 2017 07:52:32 GMT  
		Size: 4.3 KB (4330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af63daf007d68b2d8ea6a3f89ecd6b673a2d17159335f5b0725eb07b1f08c353`  
		Last Modified: Thu, 14 Sep 2017 07:53:49 GMT  
		Size: 6.6 KB (6588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55857d7dc95632036dfdb13f64a30d0be17d1ff557b153eac3f4614f216c6900`  
		Last Modified: Thu, 14 Sep 2017 07:54:02 GMT  
		Size: 140.6 MB (140556434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483c70a4b45aaa73abd22a71234656e7e0edad31af67226e764228a5ca3c6edd`  
		Last Modified: Thu, 14 Sep 2017 07:53:49 GMT  
		Size: 3.0 KB (3019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8c3d86894efd39d16b079436257968217592c5513413c5d3a567b84869ea43`  
		Last Modified: Thu, 14 Sep 2017 07:53:49 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0`

```console
$ docker pull solr@sha256:85286e24bd27b5242e885d12b8f39faa29630ad0e70d00fb3c39cee1f69a769f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.3.0` - linux; amd64

```console
$ docker pull solr@sha256:631122a919734c432e531bfba5385b7a305d664a197d290c9d085b5a242b8842
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.0 MB (370023684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0652509c164a8a535be5b8f674c949c487099828ed50ca0c119eac7ba1f7ccba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:46:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 14 Sep 2017 07:46:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 07:46:43 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 07:46:43 GMT
ENV SOLR_USER=solr
# Thu, 14 Sep 2017 07:46:43 GMT
ENV SOLR_UID=8983
# Thu, 14 Sep 2017 07:46:44 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Thu, 14 Sep 2017 07:48:03 GMT
ENV SOLR_VERSION=6.3.0
# Thu, 14 Sep 2017 07:48:03 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Thu, 14 Sep 2017 07:48:04 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Thu, 14 Sep 2017 07:48:04 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Thu, 14 Sep 2017 07:48:11 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 14 Sep 2017 07:48:25 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 14 Sep 2017 07:48:28 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Thu, 14 Sep 2017 07:48:28 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 14 Sep 2017 07:48:28 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:48:29 GMT
EXPOSE 8983/tcp
# Thu, 14 Sep 2017 07:48:29 GMT
WORKDIR /opt/solr
# Thu, 14 Sep 2017 07:48:29 GMT
USER [solr]
# Thu, 14 Sep 2017 07:48:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:48:29 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ee2d6f441bba0295906203ae3a878fbfdaba9a80571021ff79942d62777e4d`  
		Last Modified: Thu, 14 Sep 2017 07:52:34 GMT  
		Size: 1.3 MB (1291147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc36c0829b78149675a18690c40485038cfd17d19ef07cf3c1ea3bf8def77ef3`  
		Last Modified: Thu, 14 Sep 2017 07:52:32 GMT  
		Size: 4.3 KB (4330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af63daf007d68b2d8ea6a3f89ecd6b673a2d17159335f5b0725eb07b1f08c353`  
		Last Modified: Thu, 14 Sep 2017 07:53:49 GMT  
		Size: 6.6 KB (6588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55857d7dc95632036dfdb13f64a30d0be17d1ff557b153eac3f4614f216c6900`  
		Last Modified: Thu, 14 Sep 2017 07:54:02 GMT  
		Size: 140.6 MB (140556434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483c70a4b45aaa73abd22a71234656e7e0edad31af67226e764228a5ca3c6edd`  
		Last Modified: Thu, 14 Sep 2017 07:53:49 GMT  
		Size: 3.0 KB (3019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8c3d86894efd39d16b079436257968217592c5513413c5d3a567b84869ea43`  
		Last Modified: Thu, 14 Sep 2017 07:53:49 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0-alpine`

```console
$ docker pull solr@sha256:f4df34386f2e180cd5a7054fc3299ef2706967395c284277413e8ccd1ae9c5d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.3.0-alpine` - linux; amd64

```console
$ docker pull solr@sha256:bef0226e29218577fe6d20e30f9b7de8c06c9f47ce194926cb8ee2c0d7b2a97b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (203035196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e5b1ac1e9b587c2a961f01f7a608bd4489dca5ec771cadf9ade88e1dcd835e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:47:28 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 14 Sep 2017 07:47:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 07:47:33 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 14 Sep 2017 07:47:37 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 14 Sep 2017 07:47:37 GMT
ENV SOLR_USER=solr
# Thu, 14 Sep 2017 07:47:37 GMT
ENV SOLR_UID=8983
# Thu, 14 Sep 2017 07:47:38 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Thu, 14 Sep 2017 07:48:34 GMT
ENV SOLR_VERSION=6.3.0
# Thu, 14 Sep 2017 07:48:34 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Thu, 14 Sep 2017 07:48:34 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Thu, 14 Sep 2017 07:48:34 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Thu, 14 Sep 2017 07:48:37 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 14 Sep 2017 07:48:54 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 14 Sep 2017 07:48:55 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Thu, 14 Sep 2017 07:48:56 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 14 Sep 2017 07:48:56 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 07:48:56 GMT
EXPOSE 8983/tcp
# Thu, 14 Sep 2017 07:48:56 GMT
WORKDIR /opt/solr
# Thu, 14 Sep 2017 07:48:56 GMT
USER [solr]
# Thu, 14 Sep 2017 07:48:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:48:57 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810c0661fe9b94017f9addf337e276483da0b92b6bc75062fcd86e3ccb63ae9a`  
		Last Modified: Thu, 14 Sep 2017 07:53:19 GMT  
		Size: 5.6 MB (5568529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6c2f1e8f188f9ea8b75f2577b93df88762497b6f4b41f5d725ce0622b7f40f`  
		Last Modified: Thu, 14 Sep 2017 07:53:17 GMT  
		Size: 622.9 KB (622893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449e20cf69b78ed842c1aecf7fcd29777a4f9f58105ba28cbc269d41270765cf`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e9fded7bfce3fc8f16a0c216752389ce083c40860079131dc46ef2aa7f5f55`  
		Last Modified: Thu, 14 Sep 2017 07:54:33 GMT  
		Size: 6.6 KB (6592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa88985e47d069957771aa6639b7d34ad5e54cf3299ee15581ad3f035d2c6d32`  
		Last Modified: Thu, 14 Sep 2017 07:54:47 GMT  
		Size: 140.6 MB (140556357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1ca45994d125de7920cf9152c7ff8464bf39fcb3b0c0850441bbe35da58952`  
		Last Modified: Thu, 14 Sep 2017 07:54:33 GMT  
		Size: 3.0 KB (3017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c206c5fcf59216e66dbd3b65b6f59fefcc59a27c83264dbfee80855d03f2eaf7`  
		Last Modified: Thu, 14 Sep 2017 07:54:33 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3-alpine`

```console
$ docker pull solr@sha256:f4df34386f2e180cd5a7054fc3299ef2706967395c284277413e8ccd1ae9c5d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.3-alpine` - linux; amd64

```console
$ docker pull solr@sha256:bef0226e29218577fe6d20e30f9b7de8c06c9f47ce194926cb8ee2c0d7b2a97b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (203035196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e5b1ac1e9b587c2a961f01f7a608bd4489dca5ec771cadf9ade88e1dcd835e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:47:28 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 14 Sep 2017 07:47:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 07:47:33 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 14 Sep 2017 07:47:37 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 14 Sep 2017 07:47:37 GMT
ENV SOLR_USER=solr
# Thu, 14 Sep 2017 07:47:37 GMT
ENV SOLR_UID=8983
# Thu, 14 Sep 2017 07:47:38 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Thu, 14 Sep 2017 07:48:34 GMT
ENV SOLR_VERSION=6.3.0
# Thu, 14 Sep 2017 07:48:34 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Thu, 14 Sep 2017 07:48:34 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Thu, 14 Sep 2017 07:48:34 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Thu, 14 Sep 2017 07:48:37 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 14 Sep 2017 07:48:54 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 14 Sep 2017 07:48:55 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Thu, 14 Sep 2017 07:48:56 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 14 Sep 2017 07:48:56 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 07:48:56 GMT
EXPOSE 8983/tcp
# Thu, 14 Sep 2017 07:48:56 GMT
WORKDIR /opt/solr
# Thu, 14 Sep 2017 07:48:56 GMT
USER [solr]
# Thu, 14 Sep 2017 07:48:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Sep 2017 07:48:57 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810c0661fe9b94017f9addf337e276483da0b92b6bc75062fcd86e3ccb63ae9a`  
		Last Modified: Thu, 14 Sep 2017 07:53:19 GMT  
		Size: 5.6 MB (5568529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6c2f1e8f188f9ea8b75f2577b93df88762497b6f4b41f5d725ce0622b7f40f`  
		Last Modified: Thu, 14 Sep 2017 07:53:17 GMT  
		Size: 622.9 KB (622893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449e20cf69b78ed842c1aecf7fcd29777a4f9f58105ba28cbc269d41270765cf`  
		Last Modified: Thu, 14 Sep 2017 07:53:15 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e9fded7bfce3fc8f16a0c216752389ce083c40860079131dc46ef2aa7f5f55`  
		Last Modified: Thu, 14 Sep 2017 07:54:33 GMT  
		Size: 6.6 KB (6592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa88985e47d069957771aa6639b7d34ad5e54cf3299ee15581ad3f035d2c6d32`  
		Last Modified: Thu, 14 Sep 2017 07:54:47 GMT  
		Size: 140.6 MB (140556357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1ca45994d125de7920cf9152c7ff8464bf39fcb3b0c0850441bbe35da58952`  
		Last Modified: Thu, 14 Sep 2017 07:54:33 GMT  
		Size: 3.0 KB (3017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c206c5fcf59216e66dbd3b65b6f59fefcc59a27c83264dbfee80855d03f2eaf7`  
		Last Modified: Thu, 14 Sep 2017 07:54:33 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4`

```console
$ docker pull solr@sha256:ff11a6aa6a7d45c79f8b475c35e8c241ee0bdfc8f934bafe7c4480cdffe3fdd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.4` - linux; amd64

```console
$ docker pull solr@sha256:cfc8f7e2805822ec72d2652f41e6785a0a2d2adcc7a50c2b48d66189bee0341e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.8 MB (370790860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a87aa95fd448d4c6c629952d855c2ab986c4da764889c885d7d40f611b70a53a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 04:53:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:25 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:53:26 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:55:06 GMT
ENV SOLR_VERSION=6.4.2
# Wed, 13 Sep 2017 04:55:06 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Wed, 13 Sep 2017 04:55:07 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Wed, 13 Sep 2017 04:55:07 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 13 Sep 2017 04:55:13 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:55:28 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:55:28 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:55:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:55:29 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 04:55:29 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:55:29 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:55:29 GMT
USER [solr]
# Wed, 13 Sep 2017 04:55:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:55:30 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f739801b23185a4041b1b716a8ce37cb4853e69574c9fd5a603dff60762b917`  
		Last Modified: Wed, 13 Sep 2017 04:57:44 GMT  
		Size: 1.3 MB (1291094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5a48533f75fb0006a451efe4eff41d3e586b66ac4d8fa628558cadd93a2f9b`  
		Last Modified: Wed, 13 Sep 2017 04:57:36 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0a1cf68b8042fef4d3c2c113fca5b92e587005797cc022277cf84527db51b2`  
		Last Modified: Wed, 13 Sep 2017 05:08:37 GMT  
		Size: 7.1 KB (7146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa7fa0730a59750c1de26ac5ef0e45ea6ea09eeed044e7f43fe16275ae4124d`  
		Last Modified: Wed, 13 Sep 2017 05:08:49 GMT  
		Size: 141.5 MB (141546500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708239bcd478f78cfe2c23e75ad641f00f72672cfe1bb7d2f42fc57eca9dd3a5`  
		Last Modified: Wed, 13 Sep 2017 05:08:34 GMT  
		Size: 3.0 KB (3018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a90f36e7c516241fd19717ce2a17e62ad307e69fe02fa55a973c6b2213dfd8`  
		Last Modified: Wed, 13 Sep 2017 05:08:35 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4.2`

```console
$ docker pull solr@sha256:ff11a6aa6a7d45c79f8b475c35e8c241ee0bdfc8f934bafe7c4480cdffe3fdd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.4.2` - linux; amd64

```console
$ docker pull solr@sha256:cfc8f7e2805822ec72d2652f41e6785a0a2d2adcc7a50c2b48d66189bee0341e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.8 MB (370790860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a87aa95fd448d4c6c629952d855c2ab986c4da764889c885d7d40f611b70a53a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 04:53:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:25 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:53:26 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:55:06 GMT
ENV SOLR_VERSION=6.4.2
# Wed, 13 Sep 2017 04:55:06 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Wed, 13 Sep 2017 04:55:07 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Wed, 13 Sep 2017 04:55:07 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 13 Sep 2017 04:55:13 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:55:28 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:55:28 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:55:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:55:29 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 04:55:29 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:55:29 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:55:29 GMT
USER [solr]
# Wed, 13 Sep 2017 04:55:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:55:30 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f739801b23185a4041b1b716a8ce37cb4853e69574c9fd5a603dff60762b917`  
		Last Modified: Wed, 13 Sep 2017 04:57:44 GMT  
		Size: 1.3 MB (1291094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5a48533f75fb0006a451efe4eff41d3e586b66ac4d8fa628558cadd93a2f9b`  
		Last Modified: Wed, 13 Sep 2017 04:57:36 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0a1cf68b8042fef4d3c2c113fca5b92e587005797cc022277cf84527db51b2`  
		Last Modified: Wed, 13 Sep 2017 05:08:37 GMT  
		Size: 7.1 KB (7146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa7fa0730a59750c1de26ac5ef0e45ea6ea09eeed044e7f43fe16275ae4124d`  
		Last Modified: Wed, 13 Sep 2017 05:08:49 GMT  
		Size: 141.5 MB (141546500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708239bcd478f78cfe2c23e75ad641f00f72672cfe1bb7d2f42fc57eca9dd3a5`  
		Last Modified: Wed, 13 Sep 2017 05:08:34 GMT  
		Size: 3.0 KB (3018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a90f36e7c516241fd19717ce2a17e62ad307e69fe02fa55a973c6b2213dfd8`  
		Last Modified: Wed, 13 Sep 2017 05:08:35 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4.2-alpine`

```console
$ docker pull solr@sha256:8964bd174577544a8c7af9c6293b0ad08d442739c759d5ec5c75f6978be10d16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.4.2-alpine` - linux; amd64

```console
$ docker pull solr@sha256:0d744f9951e47ba3ad6dae989d71ecfe2caf4faf42a343b28321339789189ece
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (204025710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c21215e989f8b57559084bb5eb6c21700caec0cb64a11c97ddd2e761cc1b7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 04:53:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:52 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:56 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 13 Sep 2017 04:54:00 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:54:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:55:31 GMT
ENV SOLR_VERSION=6.4.2
# Wed, 13 Sep 2017 04:55:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Wed, 13 Sep 2017 04:55:31 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Wed, 13 Sep 2017 04:55:31 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 13 Sep 2017 04:55:34 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:55:51 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:55:51 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:55:52 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:55:52 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 04:55:52 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:55:52 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:55:52 GMT
USER [solr]
# Wed, 13 Sep 2017 04:55:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:55:52 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befec786ed826ba58085e60f69ea49eb0eefd2d044ed91fd890d9cc1591f3f1d`  
		Last Modified: Wed, 13 Sep 2017 05:07:25 GMT  
		Size: 5.6 MB (5568512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e2b94f1a6fcdc0687c6115d88f7d0d9e66f61ede0608e3307455e722ca74fe`  
		Last Modified: Wed, 13 Sep 2017 05:07:15 GMT  
		Size: 622.9 KB (622897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce728506da162d39e6597391ff8aaf392f8ce07ce6e8e6fa40f1ee5d5360094`  
		Last Modified: Wed, 13 Sep 2017 05:07:12 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b235ea640f999daf8fbb405b05aeaf28d41772b719761750f1729089debe32bb`  
		Last Modified: Wed, 13 Sep 2017 05:09:07 GMT  
		Size: 7.2 KB (7160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a79ac415a3acfeccdce67d0c117a31e77b0ffe3e68051621f3138a3a5bf81e5`  
		Last Modified: Wed, 13 Sep 2017 05:09:17 GMT  
		Size: 141.5 MB (141546440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a0ae6ddf79c89b13ff119965017972bfb53ac67c4ea61a90329c1f4a5da631`  
		Last Modified: Wed, 13 Sep 2017 05:09:02 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0b50ca77e1796512980a4502d023f47c0a8fdf0da18c4a5ab8f1c8332f5611`  
		Last Modified: Wed, 13 Sep 2017 05:09:02 GMT  
		Size: 3.0 KB (3026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4-alpine`

```console
$ docker pull solr@sha256:8964bd174577544a8c7af9c6293b0ad08d442739c759d5ec5c75f6978be10d16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.4-alpine` - linux; amd64

```console
$ docker pull solr@sha256:0d744f9951e47ba3ad6dae989d71ecfe2caf4faf42a343b28321339789189ece
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (204025710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c21215e989f8b57559084bb5eb6c21700caec0cb64a11c97ddd2e761cc1b7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 04:53:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:52 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:56 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 13 Sep 2017 04:54:00 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:54:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:55:31 GMT
ENV SOLR_VERSION=6.4.2
# Wed, 13 Sep 2017 04:55:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Wed, 13 Sep 2017 04:55:31 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Wed, 13 Sep 2017 04:55:31 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 13 Sep 2017 04:55:34 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:55:51 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:55:51 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:55:52 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:55:52 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 04:55:52 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:55:52 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:55:52 GMT
USER [solr]
# Wed, 13 Sep 2017 04:55:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:55:52 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befec786ed826ba58085e60f69ea49eb0eefd2d044ed91fd890d9cc1591f3f1d`  
		Last Modified: Wed, 13 Sep 2017 05:07:25 GMT  
		Size: 5.6 MB (5568512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e2b94f1a6fcdc0687c6115d88f7d0d9e66f61ede0608e3307455e722ca74fe`  
		Last Modified: Wed, 13 Sep 2017 05:07:15 GMT  
		Size: 622.9 KB (622897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce728506da162d39e6597391ff8aaf392f8ce07ce6e8e6fa40f1ee5d5360094`  
		Last Modified: Wed, 13 Sep 2017 05:07:12 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b235ea640f999daf8fbb405b05aeaf28d41772b719761750f1729089debe32bb`  
		Last Modified: Wed, 13 Sep 2017 05:09:07 GMT  
		Size: 7.2 KB (7160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a79ac415a3acfeccdce67d0c117a31e77b0ffe3e68051621f3138a3a5bf81e5`  
		Last Modified: Wed, 13 Sep 2017 05:09:17 GMT  
		Size: 141.5 MB (141546440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a0ae6ddf79c89b13ff119965017972bfb53ac67c4ea61a90329c1f4a5da631`  
		Last Modified: Wed, 13 Sep 2017 05:09:02 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0b50ca77e1796512980a4502d023f47c0a8fdf0da18c4a5ab8f1c8332f5611`  
		Last Modified: Wed, 13 Sep 2017 05:09:02 GMT  
		Size: 3.0 KB (3026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5`

```console
$ docker pull solr@sha256:af4155426386982b9a464d7bd76d96f6b7ad75a3f4403f508c6db5ce389e19c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.5` - linux; amd64

```console
$ docker pull solr@sha256:141bd372178a5a6018d1cf6d6c65ebcbcd3f4b6f36c9228765f403c47c00bafb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.1 MB (378050887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049f2c10b815b28152e4e3c796ed4d384702dfd03558b38d9f9e7eb1fc704032`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 04:53:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:25 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:53:26 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:55:53 GMT
ENV SOLR_VERSION=6.5.1
# Wed, 13 Sep 2017 04:55:53 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Wed, 13 Sep 2017 04:55:54 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Wed, 13 Sep 2017 04:55:54 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Wed, 13 Sep 2017 04:55:58 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:56:14 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:56:14 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:56:14 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:56:15 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 04:56:15 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:56:15 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:56:15 GMT
USER [solr]
# Wed, 13 Sep 2017 04:56:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:56:15 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f739801b23185a4041b1b716a8ce37cb4853e69574c9fd5a603dff60762b917`  
		Last Modified: Wed, 13 Sep 2017 04:57:44 GMT  
		Size: 1.3 MB (1291094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5a48533f75fb0006a451efe4eff41d3e586b66ac4d8fa628558cadd93a2f9b`  
		Last Modified: Wed, 13 Sep 2017 04:57:36 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5365cd3d3b9d95b059f57f5416a0b61098a3614bbd3a21f6d1389673c4ee72ee`  
		Last Modified: Wed, 13 Sep 2017 05:09:34 GMT  
		Size: 7.7 KB (7737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4438ea9a94d1c37b2b5edcb92f245206b3be53f1d657a385fd70c60f064c73e`  
		Last Modified: Wed, 13 Sep 2017 05:09:45 GMT  
		Size: 148.8 MB (148805935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f85c60c5dd7405a752b555f77f34e36324e98c1f00b1f9994468901d1292551`  
		Last Modified: Wed, 13 Sep 2017 05:09:32 GMT  
		Size: 3.0 KB (3019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca90ddb06328ef547babed08d36fe69fb02be365e5c4e1596700b0175a5ae167`  
		Last Modified: Wed, 13 Sep 2017 05:09:32 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5.1`

```console
$ docker pull solr@sha256:af4155426386982b9a464d7bd76d96f6b7ad75a3f4403f508c6db5ce389e19c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.5.1` - linux; amd64

```console
$ docker pull solr@sha256:141bd372178a5a6018d1cf6d6c65ebcbcd3f4b6f36c9228765f403c47c00bafb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.1 MB (378050887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049f2c10b815b28152e4e3c796ed4d384702dfd03558b38d9f9e7eb1fc704032`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 04:53:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:25 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:53:26 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:55:53 GMT
ENV SOLR_VERSION=6.5.1
# Wed, 13 Sep 2017 04:55:53 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Wed, 13 Sep 2017 04:55:54 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Wed, 13 Sep 2017 04:55:54 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Wed, 13 Sep 2017 04:55:58 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:56:14 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:56:14 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:56:14 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:56:15 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 04:56:15 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:56:15 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:56:15 GMT
USER [solr]
# Wed, 13 Sep 2017 04:56:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:56:15 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f739801b23185a4041b1b716a8ce37cb4853e69574c9fd5a603dff60762b917`  
		Last Modified: Wed, 13 Sep 2017 04:57:44 GMT  
		Size: 1.3 MB (1291094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5a48533f75fb0006a451efe4eff41d3e586b66ac4d8fa628558cadd93a2f9b`  
		Last Modified: Wed, 13 Sep 2017 04:57:36 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5365cd3d3b9d95b059f57f5416a0b61098a3614bbd3a21f6d1389673c4ee72ee`  
		Last Modified: Wed, 13 Sep 2017 05:09:34 GMT  
		Size: 7.7 KB (7737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4438ea9a94d1c37b2b5edcb92f245206b3be53f1d657a385fd70c60f064c73e`  
		Last Modified: Wed, 13 Sep 2017 05:09:45 GMT  
		Size: 148.8 MB (148805935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f85c60c5dd7405a752b555f77f34e36324e98c1f00b1f9994468901d1292551`  
		Last Modified: Wed, 13 Sep 2017 05:09:32 GMT  
		Size: 3.0 KB (3019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca90ddb06328ef547babed08d36fe69fb02be365e5c4e1596700b0175a5ae167`  
		Last Modified: Wed, 13 Sep 2017 05:09:32 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5.1-alpine`

```console
$ docker pull solr@sha256:ae6f2b8798892fe13909b59381dd2e4af5483644bb3643a02466632607c92971
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.5.1-alpine` - linux; amd64

```console
$ docker pull solr@sha256:593eaf4855eb16d1f5ae1c6ada8a72a5dcda2bc9600381f7cfad04ae39926461
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211285887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d56e89399f3522e2393ea962e17fe10b01d88f0091b49c42cf618ee33978ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 04:53:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:52 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:56 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 13 Sep 2017 04:54:00 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:54:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:56:16 GMT
ENV SOLR_VERSION=6.5.1
# Wed, 13 Sep 2017 04:56:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Wed, 13 Sep 2017 04:56:16 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Wed, 13 Sep 2017 04:56:17 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Wed, 13 Sep 2017 04:56:20 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:56:35 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:56:36 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:56:36 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:56:36 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 04:56:36 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:56:37 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:56:37 GMT
USER [solr]
# Wed, 13 Sep 2017 04:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:56:37 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befec786ed826ba58085e60f69ea49eb0eefd2d044ed91fd890d9cc1591f3f1d`  
		Last Modified: Wed, 13 Sep 2017 05:07:25 GMT  
		Size: 5.6 MB (5568512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e2b94f1a6fcdc0687c6115d88f7d0d9e66f61ede0608e3307455e722ca74fe`  
		Last Modified: Wed, 13 Sep 2017 05:07:15 GMT  
		Size: 622.9 KB (622897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce728506da162d39e6597391ff8aaf392f8ce07ce6e8e6fa40f1ee5d5360094`  
		Last Modified: Wed, 13 Sep 2017 05:07:12 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46de13591f80add8112fb23c38f29e811a34ef79483b4c16fe3e394696cb930`  
		Last Modified: Wed, 13 Sep 2017 05:10:04 GMT  
		Size: 7.8 KB (7754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca7a22a98228ce81115fdb37bf4ae9b48a8b3a0d1670965f1c372b4721348e0`  
		Last Modified: Wed, 13 Sep 2017 05:10:17 GMT  
		Size: 148.8 MB (148806020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be205c5fdc4b210cb1a9ca6252373d2bceda3a3ed212d1de808b1748362887e1`  
		Last Modified: Wed, 13 Sep 2017 05:10:03 GMT  
		Size: 3.0 KB (3018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa0b7bbb7ebcf6170f5a85482edd4cb31b099a32e7b1eefa0fd6318bb9132dd`  
		Last Modified: Wed, 13 Sep 2017 05:10:05 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5-alpine`

```console
$ docker pull solr@sha256:ae6f2b8798892fe13909b59381dd2e4af5483644bb3643a02466632607c92971
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.5-alpine` - linux; amd64

```console
$ docker pull solr@sha256:593eaf4855eb16d1f5ae1c6ada8a72a5dcda2bc9600381f7cfad04ae39926461
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211285887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d56e89399f3522e2393ea962e17fe10b01d88f0091b49c42cf618ee33978ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 04:53:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:52 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:56 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 13 Sep 2017 04:54:00 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:54:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:56:16 GMT
ENV SOLR_VERSION=6.5.1
# Wed, 13 Sep 2017 04:56:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Wed, 13 Sep 2017 04:56:16 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Wed, 13 Sep 2017 04:56:17 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Wed, 13 Sep 2017 04:56:20 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:56:35 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:56:36 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:56:36 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:56:36 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 04:56:36 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:56:37 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:56:37 GMT
USER [solr]
# Wed, 13 Sep 2017 04:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:56:37 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befec786ed826ba58085e60f69ea49eb0eefd2d044ed91fd890d9cc1591f3f1d`  
		Last Modified: Wed, 13 Sep 2017 05:07:25 GMT  
		Size: 5.6 MB (5568512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e2b94f1a6fcdc0687c6115d88f7d0d9e66f61ede0608e3307455e722ca74fe`  
		Last Modified: Wed, 13 Sep 2017 05:07:15 GMT  
		Size: 622.9 KB (622897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce728506da162d39e6597391ff8aaf392f8ce07ce6e8e6fa40f1ee5d5360094`  
		Last Modified: Wed, 13 Sep 2017 05:07:12 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46de13591f80add8112fb23c38f29e811a34ef79483b4c16fe3e394696cb930`  
		Last Modified: Wed, 13 Sep 2017 05:10:04 GMT  
		Size: 7.8 KB (7754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca7a22a98228ce81115fdb37bf4ae9b48a8b3a0d1670965f1c372b4721348e0`  
		Last Modified: Wed, 13 Sep 2017 05:10:17 GMT  
		Size: 148.8 MB (148806020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be205c5fdc4b210cb1a9ca6252373d2bceda3a3ed212d1de808b1748362887e1`  
		Last Modified: Wed, 13 Sep 2017 05:10:03 GMT  
		Size: 3.0 KB (3018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa0b7bbb7ebcf6170f5a85482edd4cb31b099a32e7b1eefa0fd6318bb9132dd`  
		Last Modified: Wed, 13 Sep 2017 05:10:05 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6`

```console
$ docker pull solr@sha256:27e9dcff9d6cfccac8788f2bb039a2bc86933ae95fc14e474c75cf7f4181b407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.6` - linux; amd64

```console
$ docker pull solr@sha256:d28b022abca6d7a8dac76d7982da0df763e789027dc7b0c864d0cccb56c1fd15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.8 MB (374754393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a47fef51b7cd79cfbe87be20784877cc0f50a6f7e4db97459a058b66487f49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 04:53:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:25 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:53:26 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 13 Sep 2017 04:56:45 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:57:00 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:57:00 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:57:01 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:57:01 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 04:57:01 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:57:01 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:57:01 GMT
USER [solr]
# Wed, 13 Sep 2017 04:57:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:57:01 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f739801b23185a4041b1b716a8ce37cb4853e69574c9fd5a603dff60762b917`  
		Last Modified: Wed, 13 Sep 2017 04:57:44 GMT  
		Size: 1.3 MB (1291094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5a48533f75fb0006a451efe4eff41d3e586b66ac4d8fa628558cadd93a2f9b`  
		Last Modified: Wed, 13 Sep 2017 04:57:36 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73824a3af0d7b62193d5e0d341d0a47531e823f911f7324e9bd78496829c9580`  
		Last Modified: Wed, 13 Sep 2017 05:10:30 GMT  
		Size: 7.1 KB (7147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e6420f8cee3b7fefa668009c5641137f466a2f5165bbc601e5b8ea5bce6c6d`  
		Last Modified: Wed, 13 Sep 2017 05:10:52 GMT  
		Size: 145.5 MB (145510032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93a67f932a1bf4f9a02810f7557aaf4a2c6b7606986332c7b90036847a6c4a5`  
		Last Modified: Wed, 13 Sep 2017 05:10:30 GMT  
		Size: 3.0 KB (3018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5832e0aea27b68959ca01d72d8e84018e10bd23e1b7c788effaa95da2705fa1`  
		Last Modified: Wed, 13 Sep 2017 05:10:29 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6.0`

```console
$ docker pull solr@sha256:27e9dcff9d6cfccac8788f2bb039a2bc86933ae95fc14e474c75cf7f4181b407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.6.0` - linux; amd64

```console
$ docker pull solr@sha256:d28b022abca6d7a8dac76d7982da0df763e789027dc7b0c864d0cccb56c1fd15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.8 MB (374754393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a47fef51b7cd79cfbe87be20784877cc0f50a6f7e4db97459a058b66487f49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 04:53:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:25 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:53:26 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 13 Sep 2017 04:56:45 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:57:00 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:57:00 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:57:01 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:57:01 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 04:57:01 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:57:01 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:57:01 GMT
USER [solr]
# Wed, 13 Sep 2017 04:57:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:57:01 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f739801b23185a4041b1b716a8ce37cb4853e69574c9fd5a603dff60762b917`  
		Last Modified: Wed, 13 Sep 2017 04:57:44 GMT  
		Size: 1.3 MB (1291094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5a48533f75fb0006a451efe4eff41d3e586b66ac4d8fa628558cadd93a2f9b`  
		Last Modified: Wed, 13 Sep 2017 04:57:36 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73824a3af0d7b62193d5e0d341d0a47531e823f911f7324e9bd78496829c9580`  
		Last Modified: Wed, 13 Sep 2017 05:10:30 GMT  
		Size: 7.1 KB (7147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e6420f8cee3b7fefa668009c5641137f466a2f5165bbc601e5b8ea5bce6c6d`  
		Last Modified: Wed, 13 Sep 2017 05:10:52 GMT  
		Size: 145.5 MB (145510032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93a67f932a1bf4f9a02810f7557aaf4a2c6b7606986332c7b90036847a6c4a5`  
		Last Modified: Wed, 13 Sep 2017 05:10:30 GMT  
		Size: 3.0 KB (3018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5832e0aea27b68959ca01d72d8e84018e10bd23e1b7c788effaa95da2705fa1`  
		Last Modified: Wed, 13 Sep 2017 05:10:29 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6.0-alpine`

```console
$ docker pull solr@sha256:0d8d150fdbf9641a2c3ac43b4423917f14db6d976104d2e40e34f1f019abb48d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.6.0-alpine` - linux; amd64

```console
$ docker pull solr@sha256:ea947e6a88bf7e1ad4ed8391e426057b74a9299311d126f126565579d8d993fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207989360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719afae41619cad886935ee501c97b1c83b9d4865c51c423a3a0b5e99d9d2296`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 04:53:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:52 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:56 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 13 Sep 2017 04:54:00 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:54:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:57:02 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 13 Sep 2017 04:57:06 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:57:21 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:57:22 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:57:22 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:57:22 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 04:57:23 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:57:23 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:57:23 GMT
USER [solr]
# Wed, 13 Sep 2017 04:57:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:57:23 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befec786ed826ba58085e60f69ea49eb0eefd2d044ed91fd890d9cc1591f3f1d`  
		Last Modified: Wed, 13 Sep 2017 05:07:25 GMT  
		Size: 5.6 MB (5568512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e2b94f1a6fcdc0687c6115d88f7d0d9e66f61ede0608e3307455e722ca74fe`  
		Last Modified: Wed, 13 Sep 2017 05:07:15 GMT  
		Size: 622.9 KB (622897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce728506da162d39e6597391ff8aaf392f8ce07ce6e8e6fa40f1ee5d5360094`  
		Last Modified: Wed, 13 Sep 2017 05:07:12 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3671e3ede691081d2320b9c4eed6519bd49b38c31cc254f85c42d276e1d546`  
		Last Modified: Wed, 13 Sep 2017 05:11:14 GMT  
		Size: 7.2 KB (7165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115eb8b9e3447ba1a0004c9a44944c563f9402940fa654555ddf0b766a1b3ea9`  
		Last Modified: Wed, 13 Sep 2017 05:11:37 GMT  
		Size: 145.5 MB (145510082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bfae5fa5d0335a04c6cf2b255cee065cc29b2179c110e159a725f248944bb4`  
		Last Modified: Wed, 13 Sep 2017 05:11:15 GMT  
		Size: 3.0 KB (3018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9812118e543b5085eac377d3956c1efe71fa1de339c709c704d2c9a92fbf4f61`  
		Last Modified: Wed, 13 Sep 2017 05:11:14 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6-alpine`

```console
$ docker pull solr@sha256:0d8d150fdbf9641a2c3ac43b4423917f14db6d976104d2e40e34f1f019abb48d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.6-alpine` - linux; amd64

```console
$ docker pull solr@sha256:ea947e6a88bf7e1ad4ed8391e426057b74a9299311d126f126565579d8d993fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207989360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719afae41619cad886935ee501c97b1c83b9d4865c51c423a3a0b5e99d9d2296`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 04:53:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:52 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:56 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 13 Sep 2017 04:54:00 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:54:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:57:02 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 13 Sep 2017 04:57:06 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:57:21 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:57:22 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:57:22 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:57:22 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 04:57:23 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:57:23 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:57:23 GMT
USER [solr]
# Wed, 13 Sep 2017 04:57:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:57:23 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befec786ed826ba58085e60f69ea49eb0eefd2d044ed91fd890d9cc1591f3f1d`  
		Last Modified: Wed, 13 Sep 2017 05:07:25 GMT  
		Size: 5.6 MB (5568512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e2b94f1a6fcdc0687c6115d88f7d0d9e66f61ede0608e3307455e722ca74fe`  
		Last Modified: Wed, 13 Sep 2017 05:07:15 GMT  
		Size: 622.9 KB (622897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce728506da162d39e6597391ff8aaf392f8ce07ce6e8e6fa40f1ee5d5360094`  
		Last Modified: Wed, 13 Sep 2017 05:07:12 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3671e3ede691081d2320b9c4eed6519bd49b38c31cc254f85c42d276e1d546`  
		Last Modified: Wed, 13 Sep 2017 05:11:14 GMT  
		Size: 7.2 KB (7165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115eb8b9e3447ba1a0004c9a44944c563f9402940fa654555ddf0b766a1b3ea9`  
		Last Modified: Wed, 13 Sep 2017 05:11:37 GMT  
		Size: 145.5 MB (145510082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bfae5fa5d0335a04c6cf2b255cee065cc29b2179c110e159a725f248944bb4`  
		Last Modified: Wed, 13 Sep 2017 05:11:15 GMT  
		Size: 3.0 KB (3018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9812118e543b5085eac377d3956c1efe71fa1de339c709c704d2c9a92fbf4f61`  
		Last Modified: Wed, 13 Sep 2017 05:11:14 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6-alpine`

```console
$ docker pull solr@sha256:0d8d150fdbf9641a2c3ac43b4423917f14db6d976104d2e40e34f1f019abb48d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

```console
$ docker pull solr@sha256:ea947e6a88bf7e1ad4ed8391e426057b74a9299311d126f126565579d8d993fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207989360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719afae41619cad886935ee501c97b1c83b9d4865c51c423a3a0b5e99d9d2296`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 04:53:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:52 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:56 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 13 Sep 2017 04:54:00 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:54:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:57:02 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 13 Sep 2017 04:57:06 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:57:21 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:57:22 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:57:22 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:57:22 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 04:57:23 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:57:23 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:57:23 GMT
USER [solr]
# Wed, 13 Sep 2017 04:57:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:57:23 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befec786ed826ba58085e60f69ea49eb0eefd2d044ed91fd890d9cc1591f3f1d`  
		Last Modified: Wed, 13 Sep 2017 05:07:25 GMT  
		Size: 5.6 MB (5568512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e2b94f1a6fcdc0687c6115d88f7d0d9e66f61ede0608e3307455e722ca74fe`  
		Last Modified: Wed, 13 Sep 2017 05:07:15 GMT  
		Size: 622.9 KB (622897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce728506da162d39e6597391ff8aaf392f8ce07ce6e8e6fa40f1ee5d5360094`  
		Last Modified: Wed, 13 Sep 2017 05:07:12 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3671e3ede691081d2320b9c4eed6519bd49b38c31cc254f85c42d276e1d546`  
		Last Modified: Wed, 13 Sep 2017 05:11:14 GMT  
		Size: 7.2 KB (7165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115eb8b9e3447ba1a0004c9a44944c563f9402940fa654555ddf0b766a1b3ea9`  
		Last Modified: Wed, 13 Sep 2017 05:11:37 GMT  
		Size: 145.5 MB (145510082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bfae5fa5d0335a04c6cf2b255cee065cc29b2179c110e159a725f248944bb4`  
		Last Modified: Wed, 13 Sep 2017 05:11:15 GMT  
		Size: 3.0 KB (3018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9812118e543b5085eac377d3956c1efe71fa1de339c709c704d2c9a92fbf4f61`  
		Last Modified: Wed, 13 Sep 2017 05:11:14 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:alpine`

```console
$ docker pull solr@sha256:0d8d150fdbf9641a2c3ac43b4423917f14db6d976104d2e40e34f1f019abb48d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

```console
$ docker pull solr@sha256:ea947e6a88bf7e1ad4ed8391e426057b74a9299311d126f126565579d8d993fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207989360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719afae41619cad886935ee501c97b1c83b9d4865c51c423a3a0b5e99d9d2296`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 04:53:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:52 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:56 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 13 Sep 2017 04:54:00 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:54:00 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:54:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:57:02 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 13 Sep 2017 04:57:03 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 13 Sep 2017 04:57:06 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:57:21 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:57:22 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:57:22 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:57:22 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Sep 2017 04:57:23 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:57:23 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:57:23 GMT
USER [solr]
# Wed, 13 Sep 2017 04:57:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:57:23 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befec786ed826ba58085e60f69ea49eb0eefd2d044ed91fd890d9cc1591f3f1d`  
		Last Modified: Wed, 13 Sep 2017 05:07:25 GMT  
		Size: 5.6 MB (5568512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e2b94f1a6fcdc0687c6115d88f7d0d9e66f61ede0608e3307455e722ca74fe`  
		Last Modified: Wed, 13 Sep 2017 05:07:15 GMT  
		Size: 622.9 KB (622897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce728506da162d39e6597391ff8aaf392f8ce07ce6e8e6fa40f1ee5d5360094`  
		Last Modified: Wed, 13 Sep 2017 05:07:12 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3671e3ede691081d2320b9c4eed6519bd49b38c31cc254f85c42d276e1d546`  
		Last Modified: Wed, 13 Sep 2017 05:11:14 GMT  
		Size: 7.2 KB (7165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115eb8b9e3447ba1a0004c9a44944c563f9402940fa654555ddf0b766a1b3ea9`  
		Last Modified: Wed, 13 Sep 2017 05:11:37 GMT  
		Size: 145.5 MB (145510082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bfae5fa5d0335a04c6cf2b255cee065cc29b2179c110e159a725f248944bb4`  
		Last Modified: Wed, 13 Sep 2017 05:11:15 GMT  
		Size: 3.0 KB (3018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9812118e543b5085eac377d3956c1efe71fa1de339c709c704d2c9a92fbf4f61`  
		Last Modified: Wed, 13 Sep 2017 05:11:14 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:latest`

```console
$ docker pull solr@sha256:27e9dcff9d6cfccac8788f2bb039a2bc86933ae95fc14e474c75cf7f4181b407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

```console
$ docker pull solr@sha256:d28b022abca6d7a8dac76d7982da0df763e789027dc7b0c864d0cccb56c1fd15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.8 MB (374754393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a47fef51b7cd79cfbe87be20784877cc0f50a6f7e4db97459a058b66487f49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:53:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:53:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:53:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:53:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:54:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 04:53:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Sep 2017 04:53:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Sep 2017 04:53:25 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_USER=solr
# Wed, 13 Sep 2017 04:53:26 GMT
ENV SOLR_UID=8983
# Wed, 13 Sep 2017 04:53:26 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 13 Sep 2017 04:56:38 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 13 Sep 2017 04:56:45 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Sep 2017 04:57:00 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 13 Sep 2017 04:57:00 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 13 Sep 2017 04:57:01 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 13 Sep 2017 04:57:01 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 04:57:01 GMT
EXPOSE 8983/tcp
# Wed, 13 Sep 2017 04:57:01 GMT
WORKDIR /opt/solr
# Wed, 13 Sep 2017 04:57:01 GMT
USER [solr]
# Wed, 13 Sep 2017 04:57:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 04:57:01 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3487c89e0c21dc6e7a75016fc54d96a8f15a127fd5bc8479b4e799c42bebad8`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 852.4 KB (852371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a369620f0b728dc16b819fbf85e060f505190b84cbf74c562c01f9412ed2ed86`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a900919ea30aac9f761d461dd4f124ce89d9519f9ab56a83c30acccc1eac05f`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b3b678fefc4d6c5d4d2903c12468910d3c092294dbcc5aa53fba8ca98bc92`  
		Last Modified: Wed, 13 Sep 2017 00:06:28 GMT  
		Size: 166.2 MB (166170914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984f5e016f481548ca039ae226b8a539482bc31e51e72f3825792de727dcae72`  
		Last Modified: Wed, 13 Sep 2017 00:05:54 GMT  
		Size: 272.0 KB (271996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f739801b23185a4041b1b716a8ce37cb4853e69574c9fd5a603dff60762b917`  
		Last Modified: Wed, 13 Sep 2017 04:57:44 GMT  
		Size: 1.3 MB (1291094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5a48533f75fb0006a451efe4eff41d3e586b66ac4d8fa628558cadd93a2f9b`  
		Last Modified: Wed, 13 Sep 2017 04:57:36 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73824a3af0d7b62193d5e0d341d0a47531e823f911f7324e9bd78496829c9580`  
		Last Modified: Wed, 13 Sep 2017 05:10:30 GMT  
		Size: 7.1 KB (7147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e6420f8cee3b7fefa668009c5641137f466a2f5165bbc601e5b8ea5bce6c6d`  
		Last Modified: Wed, 13 Sep 2017 05:10:52 GMT  
		Size: 145.5 MB (145510032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93a67f932a1bf4f9a02810f7557aaf4a2c6b7606986332c7b90036847a6c4a5`  
		Last Modified: Wed, 13 Sep 2017 05:10:30 GMT  
		Size: 3.0 KB (3018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5832e0aea27b68959ca01d72d8e84018e10bd23e1b7c788effaa95da2705fa1`  
		Last Modified: Wed, 13 Sep 2017 05:10:29 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
