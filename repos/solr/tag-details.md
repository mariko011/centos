<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `solr`

-	[`solr:5.5.4`](#solr554)
-	[`solr:5.5`](#solr55)
-	[`solr:5`](#solr5)
-	[`solr:5.5.4-alpine`](#solr554-alpine)
-	[`solr:5.5-alpine`](#solr55-alpine)
-	[`solr:5-alpine`](#solr5-alpine)
-	[`solr:6.3.0`](#solr630)
-	[`solr:6.3`](#solr63)
-	[`solr:6.3.0-alpine`](#solr630-alpine)
-	[`solr:6.3-alpine`](#solr63-alpine)
-	[`solr:6.4.2`](#solr642)
-	[`solr:6.4`](#solr64)
-	[`solr:6.4.2-alpine`](#solr642-alpine)
-	[`solr:6.4-alpine`](#solr64-alpine)
-	[`solr:6.5.1`](#solr651)
-	[`solr:6.5`](#solr65)
-	[`solr:6.5.1-alpine`](#solr651-alpine)
-	[`solr:6.5-alpine`](#solr65-alpine)
-	[`solr:6.6.0`](#solr660)
-	[`solr:6.6`](#solr66)
-	[`solr:6`](#solr6)
-	[`solr:latest`](#solrlatest)
-	[`solr:6.6.0-alpine`](#solr660-alpine)
-	[`solr:6.6-alpine`](#solr66-alpine)
-	[`solr:6-alpine`](#solr6-alpine)
-	[`solr:alpine`](#solralpine)

## `solr:5.5.4`

```console
$ docker pull solr@sha256:3506fe6d6c11dcbc8ef95bd9b4f7ebef6b2891b47429a1c4a71f1c7ece48dfc4
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.7 MB (360706539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596f669e356256a4c789fdb60f4abbd35707b67f664eaba554bd87d68794eac9`
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
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 15:40:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 11 Sep 2017 15:40:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 11 Sep 2017 15:40:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:40:33 GMT
ENV SOLR_USER=solr
# Mon, 11 Sep 2017 15:40:34 GMT
ENV SOLR_UID=8983
# Mon, 11 Sep 2017 15:40:34 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 11 Sep 2017 15:40:35 GMT
ENV SOLR_VERSION=5.5.4
# Mon, 11 Sep 2017 15:40:35 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Mon, 11 Sep 2017 15:40:35 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Mon, 11 Sep 2017 15:40:36 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Mon, 11 Sep 2017 15:40:39 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 11 Sep 2017 15:40:54 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 11 Sep 2017 15:40:55 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 11 Sep 2017 15:40:55 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 11 Sep 2017 15:40:56 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:40:56 GMT
EXPOSE 8983/tcp
# Mon, 11 Sep 2017 15:40:57 GMT
WORKDIR /opt/solr
# Mon, 11 Sep 2017 15:40:57 GMT
USER [solr]
# Mon, 11 Sep 2017 15:40:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 15:40:58 GMT
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
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67fc918b902215a1f31836939de97df36226ce0dfa43fc59d4c2cfd28f7d93c`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 1.0 MB (1045790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40089af5546bf159b254f6a6d6cba4f02bec73379eda3dc8f0e0dba2a6332a74`  
		Last Modified: Mon, 11 Sep 2017 15:43:09 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fcb4ab09f0156a2e4bce082b89190088dd90c8741ea7ea239008848a3a7512`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 7.2 KB (7161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d15e5dba5c2e7d7e18aa1a40492964bbb4afa15c304043965c80c44d1dbb05`  
		Last Modified: Mon, 11 Sep 2017 15:43:19 GMT  
		Size: 131.9 MB (131926962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d8261a5f4c351487249fb4a6c37d3625a470f40dab825529763c7ca0f75997`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e85ba15e33c277826d35c9e0a3df6be79843d487910b4df607acbb2b1ac7a2`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:3506fe6d6c11dcbc8ef95bd9b4f7ebef6b2891b47429a1c4a71f1c7ece48dfc4
```

-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.7 MB (360706539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596f669e356256a4c789fdb60f4abbd35707b67f664eaba554bd87d68794eac9`
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
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 15:40:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 11 Sep 2017 15:40:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 11 Sep 2017 15:40:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:40:33 GMT
ENV SOLR_USER=solr
# Mon, 11 Sep 2017 15:40:34 GMT
ENV SOLR_UID=8983
# Mon, 11 Sep 2017 15:40:34 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 11 Sep 2017 15:40:35 GMT
ENV SOLR_VERSION=5.5.4
# Mon, 11 Sep 2017 15:40:35 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Mon, 11 Sep 2017 15:40:35 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Mon, 11 Sep 2017 15:40:36 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Mon, 11 Sep 2017 15:40:39 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 11 Sep 2017 15:40:54 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 11 Sep 2017 15:40:55 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 11 Sep 2017 15:40:55 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 11 Sep 2017 15:40:56 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:40:56 GMT
EXPOSE 8983/tcp
# Mon, 11 Sep 2017 15:40:57 GMT
WORKDIR /opt/solr
# Mon, 11 Sep 2017 15:40:57 GMT
USER [solr]
# Mon, 11 Sep 2017 15:40:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 15:40:58 GMT
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
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67fc918b902215a1f31836939de97df36226ce0dfa43fc59d4c2cfd28f7d93c`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 1.0 MB (1045790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40089af5546bf159b254f6a6d6cba4f02bec73379eda3dc8f0e0dba2a6332a74`  
		Last Modified: Mon, 11 Sep 2017 15:43:09 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fcb4ab09f0156a2e4bce082b89190088dd90c8741ea7ea239008848a3a7512`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 7.2 KB (7161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d15e5dba5c2e7d7e18aa1a40492964bbb4afa15c304043965c80c44d1dbb05`  
		Last Modified: Mon, 11 Sep 2017 15:43:19 GMT  
		Size: 131.9 MB (131926962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d8261a5f4c351487249fb4a6c37d3625a470f40dab825529763c7ca0f75997`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e85ba15e33c277826d35c9e0a3df6be79843d487910b4df607acbb2b1ac7a2`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5`

```console
$ docker pull solr@sha256:3506fe6d6c11dcbc8ef95bd9b4f7ebef6b2891b47429a1c4a71f1c7ece48dfc4
```

-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.7 MB (360706539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596f669e356256a4c789fdb60f4abbd35707b67f664eaba554bd87d68794eac9`
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
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 15:40:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 11 Sep 2017 15:40:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 11 Sep 2017 15:40:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:40:33 GMT
ENV SOLR_USER=solr
# Mon, 11 Sep 2017 15:40:34 GMT
ENV SOLR_UID=8983
# Mon, 11 Sep 2017 15:40:34 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 11 Sep 2017 15:40:35 GMT
ENV SOLR_VERSION=5.5.4
# Mon, 11 Sep 2017 15:40:35 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Mon, 11 Sep 2017 15:40:35 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Mon, 11 Sep 2017 15:40:36 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Mon, 11 Sep 2017 15:40:39 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 11 Sep 2017 15:40:54 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 11 Sep 2017 15:40:55 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 11 Sep 2017 15:40:55 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 11 Sep 2017 15:40:56 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:40:56 GMT
EXPOSE 8983/tcp
# Mon, 11 Sep 2017 15:40:57 GMT
WORKDIR /opt/solr
# Mon, 11 Sep 2017 15:40:57 GMT
USER [solr]
# Mon, 11 Sep 2017 15:40:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 15:40:58 GMT
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
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67fc918b902215a1f31836939de97df36226ce0dfa43fc59d4c2cfd28f7d93c`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 1.0 MB (1045790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40089af5546bf159b254f6a6d6cba4f02bec73379eda3dc8f0e0dba2a6332a74`  
		Last Modified: Mon, 11 Sep 2017 15:43:09 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fcb4ab09f0156a2e4bce082b89190088dd90c8741ea7ea239008848a3a7512`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 7.2 KB (7161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d15e5dba5c2e7d7e18aa1a40492964bbb4afa15c304043965c80c44d1dbb05`  
		Last Modified: Mon, 11 Sep 2017 15:43:19 GMT  
		Size: 131.9 MB (131926962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d8261a5f4c351487249fb4a6c37d3625a470f40dab825529763c7ca0f75997`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e85ba15e33c277826d35c9e0a3df6be79843d487910b4df607acbb2b1ac7a2`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.4-alpine`

```console
$ docker pull solr@sha256:a037fa270249ef5ab1fbb3c20ccf85fe5006f9756d3cec3cbf06142515a6a8cd
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194403935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a23953c33c47e7ae9df130996edcbd1094e55b450473fa64d5d3e3ae6c1244`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:06:55 GMT
ENV SOLR_VERSION=5.5.4
# Wed, 28 Jun 2017 23:06:56 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Wed, 28 Jun 2017 23:06:57 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Wed, 28 Jun 2017 23:06:58 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 28 Jun 2017 23:07:02 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:07:17 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:07:19 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:07:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:07:21 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:07:22 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:07:23 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:07:24 GMT
USER [solr]
# Wed, 28 Jun 2017 23:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:07:26 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987c7e983d6fee693f192c68d98127c7f10ad3f929039a75caae74fdd7613f7d`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 7.2 KB (7176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54adf63254cacdf9919886f3d36e61259b68da698d6f9bb10a9a8efed285167`  
		Last Modified: Fri, 30 Jun 2017 01:24:26 GMT  
		Size: 131.9 MB (131926884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ddba25748ac21c56c1283816b70bc1becf7e01846e1e37fce666c406bbd989`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c652172d7a4232246090ff035985d54ba5104a16bd45b85d4c1496c687ea57a1`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 3.0 KB (3022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:a037fa270249ef5ab1fbb3c20ccf85fe5006f9756d3cec3cbf06142515a6a8cd
```

-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194403935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a23953c33c47e7ae9df130996edcbd1094e55b450473fa64d5d3e3ae6c1244`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:06:55 GMT
ENV SOLR_VERSION=5.5.4
# Wed, 28 Jun 2017 23:06:56 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Wed, 28 Jun 2017 23:06:57 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Wed, 28 Jun 2017 23:06:58 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 28 Jun 2017 23:07:02 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:07:17 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:07:19 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:07:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:07:21 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:07:22 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:07:23 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:07:24 GMT
USER [solr]
# Wed, 28 Jun 2017 23:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:07:26 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987c7e983d6fee693f192c68d98127c7f10ad3f929039a75caae74fdd7613f7d`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 7.2 KB (7176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54adf63254cacdf9919886f3d36e61259b68da698d6f9bb10a9a8efed285167`  
		Last Modified: Fri, 30 Jun 2017 01:24:26 GMT  
		Size: 131.9 MB (131926884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ddba25748ac21c56c1283816b70bc1becf7e01846e1e37fce666c406bbd989`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c652172d7a4232246090ff035985d54ba5104a16bd45b85d4c1496c687ea57a1`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 3.0 KB (3022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5-alpine`

```console
$ docker pull solr@sha256:a037fa270249ef5ab1fbb3c20ccf85fe5006f9756d3cec3cbf06142515a6a8cd
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194403935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66a23953c33c47e7ae9df130996edcbd1094e55b450473fa64d5d3e3ae6c1244`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:06:55 GMT
ENV SOLR_VERSION=5.5.4
# Wed, 28 Jun 2017 23:06:56 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Wed, 28 Jun 2017 23:06:57 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Wed, 28 Jun 2017 23:06:58 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 28 Jun 2017 23:07:02 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:07:17 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:07:19 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:07:20 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:07:21 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:07:22 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:07:23 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:07:24 GMT
USER [solr]
# Wed, 28 Jun 2017 23:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:07:26 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987c7e983d6fee693f192c68d98127c7f10ad3f929039a75caae74fdd7613f7d`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 7.2 KB (7176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54adf63254cacdf9919886f3d36e61259b68da698d6f9bb10a9a8efed285167`  
		Last Modified: Fri, 30 Jun 2017 01:24:26 GMT  
		Size: 131.9 MB (131926884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ddba25748ac21c56c1283816b70bc1becf7e01846e1e37fce666c406bbd989`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c652172d7a4232246090ff035985d54ba5104a16bd45b85d4c1496c687ea57a1`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 3.0 KB (3022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0`

```console
$ docker pull solr@sha256:4a20b2b0b166e7cf1eb96ed338a076c76af0d32f45a228aa3d3eb700ca37f4a8
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.3 MB (369335068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10af4fcdf17fc50755408ab904c9391d0b77f16336c2c9f0f5268bf9724d1bae`
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
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 15:40:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 11 Sep 2017 15:40:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 11 Sep 2017 15:40:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:40:33 GMT
ENV SOLR_USER=solr
# Mon, 11 Sep 2017 15:40:34 GMT
ENV SOLR_UID=8983
# Mon, 11 Sep 2017 15:40:34 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 11 Sep 2017 15:41:04 GMT
ENV SOLR_VERSION=6.3.0
# Mon, 11 Sep 2017 15:41:05 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Mon, 11 Sep 2017 15:41:05 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Mon, 11 Sep 2017 15:41:05 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Mon, 11 Sep 2017 15:41:08 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 11 Sep 2017 15:41:23 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 11 Sep 2017 15:41:24 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 11 Sep 2017 15:41:24 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 11 Sep 2017 15:41:25 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:41:25 GMT
EXPOSE 8983/tcp
# Mon, 11 Sep 2017 15:41:25 GMT
WORKDIR /opt/solr
# Mon, 11 Sep 2017 15:41:26 GMT
USER [solr]
# Mon, 11 Sep 2017 15:41:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 15:41:27 GMT
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
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67fc918b902215a1f31836939de97df36226ce0dfa43fc59d4c2cfd28f7d93c`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 1.0 MB (1045790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40089af5546bf159b254f6a6d6cba4f02bec73379eda3dc8f0e0dba2a6332a74`  
		Last Modified: Mon, 11 Sep 2017 15:43:09 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a3e416e7dd110c3ef6a3dbad30c5cffaa5764df90db5fde933efdf614b83bc`  
		Last Modified: Mon, 11 Sep 2017 15:43:51 GMT  
		Size: 6.6 KB (6582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d03777082002097e8db96565405bcfc096ae3c80a1c0bbad99560070f0b879`  
		Last Modified: Mon, 11 Sep 2017 15:44:01 GMT  
		Size: 140.6 MB (140556071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44085db784fc0d709f76994b3796515f308c3e21edc5da5090d442b08385959`  
		Last Modified: Mon, 11 Sep 2017 15:43:51 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d65b5a9351f5a0839d4a03561a3dde34d4d00d92e13ab7f39687df1f7efa75`  
		Last Modified: Mon, 11 Sep 2017 15:43:51 GMT  
		Size: 3.0 KB (3022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3`

```console
$ docker pull solr@sha256:4a20b2b0b166e7cf1eb96ed338a076c76af0d32f45a228aa3d3eb700ca37f4a8
```

-	Platforms:
	-	linux; amd64

### `solr:6.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.3 MB (369335068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10af4fcdf17fc50755408ab904c9391d0b77f16336c2c9f0f5268bf9724d1bae`
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
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 15:40:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 11 Sep 2017 15:40:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 11 Sep 2017 15:40:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:40:33 GMT
ENV SOLR_USER=solr
# Mon, 11 Sep 2017 15:40:34 GMT
ENV SOLR_UID=8983
# Mon, 11 Sep 2017 15:40:34 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 11 Sep 2017 15:41:04 GMT
ENV SOLR_VERSION=6.3.0
# Mon, 11 Sep 2017 15:41:05 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Mon, 11 Sep 2017 15:41:05 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Mon, 11 Sep 2017 15:41:05 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Mon, 11 Sep 2017 15:41:08 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 11 Sep 2017 15:41:23 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 11 Sep 2017 15:41:24 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 11 Sep 2017 15:41:24 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 11 Sep 2017 15:41:25 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:41:25 GMT
EXPOSE 8983/tcp
# Mon, 11 Sep 2017 15:41:25 GMT
WORKDIR /opt/solr
# Mon, 11 Sep 2017 15:41:26 GMT
USER [solr]
# Mon, 11 Sep 2017 15:41:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 15:41:27 GMT
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
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67fc918b902215a1f31836939de97df36226ce0dfa43fc59d4c2cfd28f7d93c`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 1.0 MB (1045790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40089af5546bf159b254f6a6d6cba4f02bec73379eda3dc8f0e0dba2a6332a74`  
		Last Modified: Mon, 11 Sep 2017 15:43:09 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a3e416e7dd110c3ef6a3dbad30c5cffaa5764df90db5fde933efdf614b83bc`  
		Last Modified: Mon, 11 Sep 2017 15:43:51 GMT  
		Size: 6.6 KB (6582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d03777082002097e8db96565405bcfc096ae3c80a1c0bbad99560070f0b879`  
		Last Modified: Mon, 11 Sep 2017 15:44:01 GMT  
		Size: 140.6 MB (140556071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44085db784fc0d709f76994b3796515f308c3e21edc5da5090d442b08385959`  
		Last Modified: Mon, 11 Sep 2017 15:43:51 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d65b5a9351f5a0839d4a03561a3dde34d4d00d92e13ab7f39687df1f7efa75`  
		Last Modified: Mon, 11 Sep 2017 15:43:51 GMT  
		Size: 3.0 KB (3022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0-alpine`

```console
$ docker pull solr@sha256:0697ee2e4759f09ce3bb6eddcb835826da8a8a956d2908ff3fe86ce581f989d8
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (203032480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:412a1bf194969ae592ec8c13308754c9ffafd355b636d1259da845208f5685ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:13:22 GMT
ENV SOLR_VERSION=6.3.0
# Wed, 28 Jun 2017 23:13:23 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Wed, 28 Jun 2017 23:13:24 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Wed, 28 Jun 2017 23:13:25 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 28 Jun 2017 23:13:53 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:14:34 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:14:46 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:14:48 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:14:48 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:15:14 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:15:15 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:15:16 GMT
USER [solr]
# Wed, 28 Jun 2017 23:15:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:15:42 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae38fba55f5972bfb0e7dfab13670629755213044089ad2fc068ad2f879a70d6`  
		Last Modified: Fri, 30 Jun 2017 01:26:44 GMT  
		Size: 6.6 KB (6595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f19500827e29d9e08489fe91383610fcd383b82a9d206b81f99c7b6bcf0352`  
		Last Modified: Fri, 30 Jun 2017 01:26:58 GMT  
		Size: 140.6 MB (140556000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad63f8d44a2b65d90abcc60b676bc0b7fc65b52a32b2fc0e4d48c5f00ef93bc2`  
		Last Modified: Fri, 30 Jun 2017 01:26:44 GMT  
		Size: 3.0 KB (3019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e325fe6e0482039c563aa9cdca74d2c82995c58d9858917a56f5ff01644f16`  
		Last Modified: Fri, 30 Jun 2017 01:26:44 GMT  
		Size: 3.0 KB (3025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3-alpine`

```console
$ docker pull solr@sha256:0697ee2e4759f09ce3bb6eddcb835826da8a8a956d2908ff3fe86ce581f989d8
```

-	Platforms:
	-	linux; amd64

### `solr:6.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (203032480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:412a1bf194969ae592ec8c13308754c9ffafd355b636d1259da845208f5685ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:13:22 GMT
ENV SOLR_VERSION=6.3.0
# Wed, 28 Jun 2017 23:13:23 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Wed, 28 Jun 2017 23:13:24 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Wed, 28 Jun 2017 23:13:25 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 28 Jun 2017 23:13:53 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:14:34 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:14:46 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:14:48 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:14:48 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:15:14 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:15:15 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:15:16 GMT
USER [solr]
# Wed, 28 Jun 2017 23:15:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:15:42 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae38fba55f5972bfb0e7dfab13670629755213044089ad2fc068ad2f879a70d6`  
		Last Modified: Fri, 30 Jun 2017 01:26:44 GMT  
		Size: 6.6 KB (6595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f19500827e29d9e08489fe91383610fcd383b82a9d206b81f99c7b6bcf0352`  
		Last Modified: Fri, 30 Jun 2017 01:26:58 GMT  
		Size: 140.6 MB (140556000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad63f8d44a2b65d90abcc60b676bc0b7fc65b52a32b2fc0e4d48c5f00ef93bc2`  
		Last Modified: Fri, 30 Jun 2017 01:26:44 GMT  
		Size: 3.0 KB (3019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e325fe6e0482039c563aa9cdca74d2c82995c58d9858917a56f5ff01644f16`  
		Last Modified: Fri, 30 Jun 2017 01:26:44 GMT  
		Size: 3.0 KB (3025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4.2`

```console
$ docker pull solr@sha256:2b1294c2de86008807e6816a9632ee35a74af6c3ffb7804ca833b55bac64d51e
```

-	Platforms:
	-	linux; amd64

### `solr:6.4.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.3 MB (370325624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93c8a003d74ba0ac1fe896448ed95c13cd7dd0ddfea216e9fb07b44b565f6b38`
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
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 15:40:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 11 Sep 2017 15:40:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 11 Sep 2017 15:40:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:40:33 GMT
ENV SOLR_USER=solr
# Mon, 11 Sep 2017 15:40:34 GMT
ENV SOLR_UID=8983
# Mon, 11 Sep 2017 15:40:34 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 11 Sep 2017 15:41:33 GMT
ENV SOLR_VERSION=6.4.2
# Mon, 11 Sep 2017 15:41:34 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Mon, 11 Sep 2017 15:41:34 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Mon, 11 Sep 2017 15:41:34 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Mon, 11 Sep 2017 15:41:38 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 11 Sep 2017 15:41:53 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 11 Sep 2017 15:41:54 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 11 Sep 2017 15:41:55 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 11 Sep 2017 15:41:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:41:55 GMT
EXPOSE 8983/tcp
# Mon, 11 Sep 2017 15:41:56 GMT
WORKDIR /opt/solr
# Mon, 11 Sep 2017 15:41:56 GMT
USER [solr]
# Mon, 11 Sep 2017 15:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 15:41:57 GMT
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
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67fc918b902215a1f31836939de97df36226ce0dfa43fc59d4c2cfd28f7d93c`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 1.0 MB (1045790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40089af5546bf159b254f6a6d6cba4f02bec73379eda3dc8f0e0dba2a6332a74`  
		Last Modified: Mon, 11 Sep 2017 15:43:09 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2b58ff8ea601cbddc1ab3737b9a782dd74f70e0a354f216e184938bbe39e85`  
		Last Modified: Mon, 11 Sep 2017 15:44:24 GMT  
		Size: 7.1 KB (7149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb61a15766dfe83f7f5d99bad573ca9e84ec7a9c31cd6df3daba5645738bc37`  
		Last Modified: Mon, 11 Sep 2017 15:44:34 GMT  
		Size: 141.5 MB (141546065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8d47d36df680bf63d1d5c5804addf60b378a54d51eb46fbdd8e50e0b6f3b54`  
		Last Modified: Mon, 11 Sep 2017 15:44:24 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117975bfa9fa6bb6b3ca192e9d0c5e2b58b423c7297522ced36a947aba683a7e`  
		Last Modified: Mon, 11 Sep 2017 15:44:24 GMT  
		Size: 3.0 KB (3020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4`

```console
$ docker pull solr@sha256:2b1294c2de86008807e6816a9632ee35a74af6c3ffb7804ca833b55bac64d51e
```

-	Platforms:
	-	linux; amd64

### `solr:6.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.3 MB (370325624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93c8a003d74ba0ac1fe896448ed95c13cd7dd0ddfea216e9fb07b44b565f6b38`
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
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 15:40:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 11 Sep 2017 15:40:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 11 Sep 2017 15:40:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:40:33 GMT
ENV SOLR_USER=solr
# Mon, 11 Sep 2017 15:40:34 GMT
ENV SOLR_UID=8983
# Mon, 11 Sep 2017 15:40:34 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 11 Sep 2017 15:41:33 GMT
ENV SOLR_VERSION=6.4.2
# Mon, 11 Sep 2017 15:41:34 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Mon, 11 Sep 2017 15:41:34 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Mon, 11 Sep 2017 15:41:34 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Mon, 11 Sep 2017 15:41:38 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 11 Sep 2017 15:41:53 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 11 Sep 2017 15:41:54 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 11 Sep 2017 15:41:55 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 11 Sep 2017 15:41:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:41:55 GMT
EXPOSE 8983/tcp
# Mon, 11 Sep 2017 15:41:56 GMT
WORKDIR /opt/solr
# Mon, 11 Sep 2017 15:41:56 GMT
USER [solr]
# Mon, 11 Sep 2017 15:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 15:41:57 GMT
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
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67fc918b902215a1f31836939de97df36226ce0dfa43fc59d4c2cfd28f7d93c`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 1.0 MB (1045790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40089af5546bf159b254f6a6d6cba4f02bec73379eda3dc8f0e0dba2a6332a74`  
		Last Modified: Mon, 11 Sep 2017 15:43:09 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2b58ff8ea601cbddc1ab3737b9a782dd74f70e0a354f216e184938bbe39e85`  
		Last Modified: Mon, 11 Sep 2017 15:44:24 GMT  
		Size: 7.1 KB (7149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb61a15766dfe83f7f5d99bad573ca9e84ec7a9c31cd6df3daba5645738bc37`  
		Last Modified: Mon, 11 Sep 2017 15:44:34 GMT  
		Size: 141.5 MB (141546065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8d47d36df680bf63d1d5c5804addf60b378a54d51eb46fbdd8e50e0b6f3b54`  
		Last Modified: Mon, 11 Sep 2017 15:44:24 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117975bfa9fa6bb6b3ca192e9d0c5e2b58b423c7297522ced36a947aba683a7e`  
		Last Modified: Mon, 11 Sep 2017 15:44:24 GMT  
		Size: 3.0 KB (3020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4.2-alpine`

```console
$ docker pull solr@sha256:106dc74390abeba74e7ae70ead975d1d55bd10310495d67b6ce0785653c1dd89
```

-	Platforms:
	-	linux; amd64

### `solr:6.4.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (204023052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc002d0e099c5d10e9ab73faef765803160e9e4d6b18fae0f1189b2800192df8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:16:32 GMT
ENV SOLR_VERSION=6.4.2
# Wed, 28 Jun 2017 23:16:33 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Wed, 28 Jun 2017 23:16:34 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Wed, 28 Jun 2017 23:16:35 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 28 Jun 2017 23:17:03 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:17:45 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:17:58 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:17:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:18:25 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:18:26 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:18:27 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:18:52 GMT
USER [solr]
# Wed, 28 Jun 2017 23:18:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:18:54 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537b69f9ce48a16804e4ea7934de2d9616d0fd5df8e3eb5f8095bfeeb48ff6bd`  
		Last Modified: Fri, 30 Jun 2017 01:28:27 GMT  
		Size: 7.2 KB (7161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4fb820f2abac4a4bdbb2bdc635d8c4528ce8fbf27e0566025a2d1537601140`  
		Last Modified: Fri, 30 Jun 2017 01:28:40 GMT  
		Size: 141.5 MB (141546010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa19291f9d5654ac94ca94f7f4a89db40a1a66798a1e4979ac2b49e7ebfa032`  
		Last Modified: Fri, 30 Jun 2017 01:28:27 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e27cfe07712900585a955d7aa56520f4a15a9e4a706ff9deadb960ee86e2594`  
		Last Modified: Fri, 30 Jun 2017 01:28:27 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4-alpine`

```console
$ docker pull solr@sha256:106dc74390abeba74e7ae70ead975d1d55bd10310495d67b6ce0785653c1dd89
```

-	Platforms:
	-	linux; amd64

### `solr:6.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (204023052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc002d0e099c5d10e9ab73faef765803160e9e4d6b18fae0f1189b2800192df8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:16:32 GMT
ENV SOLR_VERSION=6.4.2
# Wed, 28 Jun 2017 23:16:33 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Wed, 28 Jun 2017 23:16:34 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Wed, 28 Jun 2017 23:16:35 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 28 Jun 2017 23:17:03 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:17:45 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:17:58 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:17:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:18:25 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:18:26 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:18:27 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:18:52 GMT
USER [solr]
# Wed, 28 Jun 2017 23:18:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:18:54 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537b69f9ce48a16804e4ea7934de2d9616d0fd5df8e3eb5f8095bfeeb48ff6bd`  
		Last Modified: Fri, 30 Jun 2017 01:28:27 GMT  
		Size: 7.2 KB (7161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4fb820f2abac4a4bdbb2bdc635d8c4528ce8fbf27e0566025a2d1537601140`  
		Last Modified: Fri, 30 Jun 2017 01:28:40 GMT  
		Size: 141.5 MB (141546010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa19291f9d5654ac94ca94f7f4a89db40a1a66798a1e4979ac2b49e7ebfa032`  
		Last Modified: Fri, 30 Jun 2017 01:28:27 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e27cfe07712900585a955d7aa56520f4a15a9e4a706ff9deadb960ee86e2594`  
		Last Modified: Fri, 30 Jun 2017 01:28:27 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5.1`

```console
$ docker pull solr@sha256:0e92e5ae2b6cc6ff2f8b7840145b1d56065d36a1a3f5bf69adb8ba8f5045ace4
```

-	Platforms:
	-	linux; amd64

### `solr:6.5.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.6 MB (377585690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db063535675fab1c8d0c7ce2e01035af86cf2c8502cd6c708fa1c7411447b99c`
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
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 15:40:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 11 Sep 2017 15:40:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 11 Sep 2017 15:40:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:40:33 GMT
ENV SOLR_USER=solr
# Mon, 11 Sep 2017 15:40:34 GMT
ENV SOLR_UID=8983
# Mon, 11 Sep 2017 15:40:34 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 11 Sep 2017 15:42:03 GMT
ENV SOLR_VERSION=6.5.1
# Mon, 11 Sep 2017 15:42:04 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Mon, 11 Sep 2017 15:42:04 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Mon, 11 Sep 2017 15:42:04 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Mon, 11 Sep 2017 15:42:08 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 11 Sep 2017 15:42:23 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 11 Sep 2017 15:42:24 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 11 Sep 2017 15:42:25 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 11 Sep 2017 15:42:25 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:42:25 GMT
EXPOSE 8983/tcp
# Mon, 11 Sep 2017 15:42:26 GMT
WORKDIR /opt/solr
# Mon, 11 Sep 2017 15:42:26 GMT
USER [solr]
# Mon, 11 Sep 2017 15:42:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 15:42:27 GMT
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
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67fc918b902215a1f31836939de97df36226ce0dfa43fc59d4c2cfd28f7d93c`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 1.0 MB (1045790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40089af5546bf159b254f6a6d6cba4f02bec73379eda3dc8f0e0dba2a6332a74`  
		Last Modified: Mon, 11 Sep 2017 15:43:09 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cbd66eb0242c1bb9f7b85597ff387c75712711ec44b92d0b1d90511cb2528fc`  
		Last Modified: Mon, 11 Sep 2017 15:44:59 GMT  
		Size: 7.7 KB (7735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa90c5fc7fa7f4e993d519d17b1d72d7666f8eebf40bc2e1c9f4dc479fd1ab3`  
		Last Modified: Mon, 11 Sep 2017 15:45:11 GMT  
		Size: 148.8 MB (148805540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b369f19242c5d6933f2ee6fe67a7d64f70c77a8348c1a1ba33da47dd7d088`  
		Last Modified: Mon, 11 Sep 2017 15:44:59 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb4a9437b00fc2f3ee3eefd52282a595b92502e0586bef496aaac12e8463e11`  
		Last Modified: Mon, 11 Sep 2017 15:44:59 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5`

```console
$ docker pull solr@sha256:0e92e5ae2b6cc6ff2f8b7840145b1d56065d36a1a3f5bf69adb8ba8f5045ace4
```

-	Platforms:
	-	linux; amd64

### `solr:6.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.6 MB (377585690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db063535675fab1c8d0c7ce2e01035af86cf2c8502cd6c708fa1c7411447b99c`
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
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 15:40:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 11 Sep 2017 15:40:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 11 Sep 2017 15:40:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:40:33 GMT
ENV SOLR_USER=solr
# Mon, 11 Sep 2017 15:40:34 GMT
ENV SOLR_UID=8983
# Mon, 11 Sep 2017 15:40:34 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 11 Sep 2017 15:42:03 GMT
ENV SOLR_VERSION=6.5.1
# Mon, 11 Sep 2017 15:42:04 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Mon, 11 Sep 2017 15:42:04 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Mon, 11 Sep 2017 15:42:04 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Mon, 11 Sep 2017 15:42:08 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 11 Sep 2017 15:42:23 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 11 Sep 2017 15:42:24 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 11 Sep 2017 15:42:25 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 11 Sep 2017 15:42:25 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:42:25 GMT
EXPOSE 8983/tcp
# Mon, 11 Sep 2017 15:42:26 GMT
WORKDIR /opt/solr
# Mon, 11 Sep 2017 15:42:26 GMT
USER [solr]
# Mon, 11 Sep 2017 15:42:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 15:42:27 GMT
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
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67fc918b902215a1f31836939de97df36226ce0dfa43fc59d4c2cfd28f7d93c`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 1.0 MB (1045790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40089af5546bf159b254f6a6d6cba4f02bec73379eda3dc8f0e0dba2a6332a74`  
		Last Modified: Mon, 11 Sep 2017 15:43:09 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cbd66eb0242c1bb9f7b85597ff387c75712711ec44b92d0b1d90511cb2528fc`  
		Last Modified: Mon, 11 Sep 2017 15:44:59 GMT  
		Size: 7.7 KB (7735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa90c5fc7fa7f4e993d519d17b1d72d7666f8eebf40bc2e1c9f4dc479fd1ab3`  
		Last Modified: Mon, 11 Sep 2017 15:45:11 GMT  
		Size: 148.8 MB (148805540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32b369f19242c5d6933f2ee6fe67a7d64f70c77a8348c1a1ba33da47dd7d088`  
		Last Modified: Mon, 11 Sep 2017 15:44:59 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb4a9437b00fc2f3ee3eefd52282a595b92502e0586bef496aaac12e8463e11`  
		Last Modified: Mon, 11 Sep 2017 15:44:59 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5.1-alpine`

```console
$ docker pull solr@sha256:6b8051e9b9090078045cc8bc8e24893eb6211f4f343627ada10277a107a008be
```

-	Platforms:
	-	linux; amd64

### `solr:6.5.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211283257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb9b3f5d1909f7eed550bb1ccdb6f22ae4b9b85d1faa4c610308eff0404b862`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:19:45 GMT
ENV SOLR_VERSION=6.5.1
# Wed, 28 Jun 2017 23:19:46 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Wed, 28 Jun 2017 23:19:47 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Wed, 28 Jun 2017 23:19:48 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Wed, 28 Jun 2017 23:20:16 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:20:57 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:21:10 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:21:11 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:21:12 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:21:37 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:21:38 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:21:39 GMT
USER [solr]
# Wed, 28 Jun 2017 23:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:22:05 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c6b0a293b1388177cdb273229a4f855440ddb49a592b0d7f89c440368f1b35`  
		Last Modified: Fri, 30 Jun 2017 01:30:07 GMT  
		Size: 7.8 KB (7758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dc28f46c5d016d8aa287375b0996d97a626262d97210120337d63ab92b0682`  
		Last Modified: Fri, 30 Jun 2017 01:30:20 GMT  
		Size: 148.8 MB (148805618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba00ebd5393693be308c99f63f24d2f92a170893a95d452a7b0bebe75157498`  
		Last Modified: Fri, 30 Jun 2017 01:30:08 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e4948356a5e8927fd2f2627fbb85163357e1c94693689cd690aca763ef4d01`  
		Last Modified: Fri, 30 Jun 2017 01:30:08 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5-alpine`

```console
$ docker pull solr@sha256:6b8051e9b9090078045cc8bc8e24893eb6211f4f343627ada10277a107a008be
```

-	Platforms:
	-	linux; amd64

### `solr:6.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211283257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb9b3f5d1909f7eed550bb1ccdb6f22ae4b9b85d1faa4c610308eff0404b862`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:19:45 GMT
ENV SOLR_VERSION=6.5.1
# Wed, 28 Jun 2017 23:19:46 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Wed, 28 Jun 2017 23:19:47 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Wed, 28 Jun 2017 23:19:48 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Wed, 28 Jun 2017 23:20:16 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:20:57 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:21:10 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:21:11 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:21:12 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:21:37 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:21:38 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:21:39 GMT
USER [solr]
# Wed, 28 Jun 2017 23:21:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:22:05 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c6b0a293b1388177cdb273229a4f855440ddb49a592b0d7f89c440368f1b35`  
		Last Modified: Fri, 30 Jun 2017 01:30:07 GMT  
		Size: 7.8 KB (7758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dc28f46c5d016d8aa287375b0996d97a626262d97210120337d63ab92b0682`  
		Last Modified: Fri, 30 Jun 2017 01:30:20 GMT  
		Size: 148.8 MB (148805618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba00ebd5393693be308c99f63f24d2f92a170893a95d452a7b0bebe75157498`  
		Last Modified: Fri, 30 Jun 2017 01:30:08 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e4948356a5e8927fd2f2627fbb85163357e1c94693689cd690aca763ef4d01`  
		Last Modified: Fri, 30 Jun 2017 01:30:08 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6.0`

```console
$ docker pull solr@sha256:25d2a13fc3681e87612b824e50886396a9f712897a3bce4125493d8f258d310a
```

-	Platforms:
	-	linux; amd64

### `solr:6.6.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.3 MB (374289160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e975284610612762f6ce679f20cb343d2e25a5311c6ed167bef9a359aa3f5b5`
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
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 15:40:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 11 Sep 2017 15:40:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 11 Sep 2017 15:40:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:40:33 GMT
ENV SOLR_USER=solr
# Mon, 11 Sep 2017 15:40:34 GMT
ENV SOLR_UID=8983
# Mon, 11 Sep 2017 15:40:34 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 11 Sep 2017 15:42:33 GMT
ENV SOLR_VERSION=6.6.0
# Mon, 11 Sep 2017 15:42:34 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Mon, 11 Sep 2017 15:42:34 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Mon, 11 Sep 2017 15:42:34 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Mon, 11 Sep 2017 15:42:37 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 11 Sep 2017 15:42:53 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 11 Sep 2017 15:42:53 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 11 Sep 2017 15:42:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 11 Sep 2017 15:42:54 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:42:55 GMT
EXPOSE 8983/tcp
# Mon, 11 Sep 2017 15:42:55 GMT
WORKDIR /opt/solr
# Mon, 11 Sep 2017 15:42:55 GMT
USER [solr]
# Mon, 11 Sep 2017 15:42:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 15:42:56 GMT
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
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67fc918b902215a1f31836939de97df36226ce0dfa43fc59d4c2cfd28f7d93c`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 1.0 MB (1045790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40089af5546bf159b254f6a6d6cba4f02bec73379eda3dc8f0e0dba2a6332a74`  
		Last Modified: Mon, 11 Sep 2017 15:43:09 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc756aa476643e49ba8d1e472772724df4d013125282ca3ab57cf882f9e243e`  
		Last Modified: Mon, 11 Sep 2017 15:45:34 GMT  
		Size: 7.1 KB (7142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a8d13286d29e93e2ce5d3fc7d4f9a883091f7a3a3f831147439e03799708d9`  
		Last Modified: Mon, 11 Sep 2017 15:45:45 GMT  
		Size: 145.5 MB (145509605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb2a61a769977d70d63de8df81648efc88eb309fb7c231130233ed53a782e65`  
		Last Modified: Mon, 11 Sep 2017 15:45:34 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21398f6ce28d8ddb09695ec7df1b6d2fda753906fe010566f09549865ad531cc`  
		Last Modified: Mon, 11 Sep 2017 15:45:34 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6`

```console
$ docker pull solr@sha256:25d2a13fc3681e87612b824e50886396a9f712897a3bce4125493d8f258d310a
```

-	Platforms:
	-	linux; amd64

### `solr:6.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.3 MB (374289160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e975284610612762f6ce679f20cb343d2e25a5311c6ed167bef9a359aa3f5b5`
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
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 15:40:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 11 Sep 2017 15:40:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 11 Sep 2017 15:40:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:40:33 GMT
ENV SOLR_USER=solr
# Mon, 11 Sep 2017 15:40:34 GMT
ENV SOLR_UID=8983
# Mon, 11 Sep 2017 15:40:34 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 11 Sep 2017 15:42:33 GMT
ENV SOLR_VERSION=6.6.0
# Mon, 11 Sep 2017 15:42:34 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Mon, 11 Sep 2017 15:42:34 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Mon, 11 Sep 2017 15:42:34 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Mon, 11 Sep 2017 15:42:37 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 11 Sep 2017 15:42:53 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 11 Sep 2017 15:42:53 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 11 Sep 2017 15:42:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 11 Sep 2017 15:42:54 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:42:55 GMT
EXPOSE 8983/tcp
# Mon, 11 Sep 2017 15:42:55 GMT
WORKDIR /opt/solr
# Mon, 11 Sep 2017 15:42:55 GMT
USER [solr]
# Mon, 11 Sep 2017 15:42:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 15:42:56 GMT
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
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67fc918b902215a1f31836939de97df36226ce0dfa43fc59d4c2cfd28f7d93c`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 1.0 MB (1045790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40089af5546bf159b254f6a6d6cba4f02bec73379eda3dc8f0e0dba2a6332a74`  
		Last Modified: Mon, 11 Sep 2017 15:43:09 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc756aa476643e49ba8d1e472772724df4d013125282ca3ab57cf882f9e243e`  
		Last Modified: Mon, 11 Sep 2017 15:45:34 GMT  
		Size: 7.1 KB (7142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a8d13286d29e93e2ce5d3fc7d4f9a883091f7a3a3f831147439e03799708d9`  
		Last Modified: Mon, 11 Sep 2017 15:45:45 GMT  
		Size: 145.5 MB (145509605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb2a61a769977d70d63de8df81648efc88eb309fb7c231130233ed53a782e65`  
		Last Modified: Mon, 11 Sep 2017 15:45:34 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21398f6ce28d8ddb09695ec7df1b6d2fda753906fe010566f09549865ad531cc`  
		Last Modified: Mon, 11 Sep 2017 15:45:34 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6`

```console
$ docker pull solr@sha256:25d2a13fc3681e87612b824e50886396a9f712897a3bce4125493d8f258d310a
```

-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.3 MB (374289160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e975284610612762f6ce679f20cb343d2e25a5311c6ed167bef9a359aa3f5b5`
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
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 15:40:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 11 Sep 2017 15:40:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 11 Sep 2017 15:40:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:40:33 GMT
ENV SOLR_USER=solr
# Mon, 11 Sep 2017 15:40:34 GMT
ENV SOLR_UID=8983
# Mon, 11 Sep 2017 15:40:34 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 11 Sep 2017 15:42:33 GMT
ENV SOLR_VERSION=6.6.0
# Mon, 11 Sep 2017 15:42:34 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Mon, 11 Sep 2017 15:42:34 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Mon, 11 Sep 2017 15:42:34 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Mon, 11 Sep 2017 15:42:37 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 11 Sep 2017 15:42:53 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 11 Sep 2017 15:42:53 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 11 Sep 2017 15:42:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 11 Sep 2017 15:42:54 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:42:55 GMT
EXPOSE 8983/tcp
# Mon, 11 Sep 2017 15:42:55 GMT
WORKDIR /opt/solr
# Mon, 11 Sep 2017 15:42:55 GMT
USER [solr]
# Mon, 11 Sep 2017 15:42:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 15:42:56 GMT
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
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67fc918b902215a1f31836939de97df36226ce0dfa43fc59d4c2cfd28f7d93c`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 1.0 MB (1045790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40089af5546bf159b254f6a6d6cba4f02bec73379eda3dc8f0e0dba2a6332a74`  
		Last Modified: Mon, 11 Sep 2017 15:43:09 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc756aa476643e49ba8d1e472772724df4d013125282ca3ab57cf882f9e243e`  
		Last Modified: Mon, 11 Sep 2017 15:45:34 GMT  
		Size: 7.1 KB (7142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a8d13286d29e93e2ce5d3fc7d4f9a883091f7a3a3f831147439e03799708d9`  
		Last Modified: Mon, 11 Sep 2017 15:45:45 GMT  
		Size: 145.5 MB (145509605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb2a61a769977d70d63de8df81648efc88eb309fb7c231130233ed53a782e65`  
		Last Modified: Mon, 11 Sep 2017 15:45:34 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21398f6ce28d8ddb09695ec7df1b6d2fda753906fe010566f09549865ad531cc`  
		Last Modified: Mon, 11 Sep 2017 15:45:34 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:latest`

```console
$ docker pull solr@sha256:25d2a13fc3681e87612b824e50886396a9f712897a3bce4125493d8f258d310a
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.3 MB (374289160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e975284610612762f6ce679f20cb343d2e25a5311c6ed167bef9a359aa3f5b5`
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
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 15:40:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 11 Sep 2017 15:40:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 11 Sep 2017 15:40:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 15:40:33 GMT
ENV SOLR_USER=solr
# Mon, 11 Sep 2017 15:40:34 GMT
ENV SOLR_UID=8983
# Mon, 11 Sep 2017 15:40:34 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 11 Sep 2017 15:42:33 GMT
ENV SOLR_VERSION=6.6.0
# Mon, 11 Sep 2017 15:42:34 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Mon, 11 Sep 2017 15:42:34 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Mon, 11 Sep 2017 15:42:34 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Mon, 11 Sep 2017 15:42:37 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 11 Sep 2017 15:42:53 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 11 Sep 2017 15:42:53 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 11 Sep 2017 15:42:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 11 Sep 2017 15:42:54 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 15:42:55 GMT
EXPOSE 8983/tcp
# Mon, 11 Sep 2017 15:42:55 GMT
WORKDIR /opt/solr
# Mon, 11 Sep 2017 15:42:55 GMT
USER [solr]
# Mon, 11 Sep 2017 15:42:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 11 Sep 2017 15:42:56 GMT
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
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67fc918b902215a1f31836939de97df36226ce0dfa43fc59d4c2cfd28f7d93c`  
		Last Modified: Mon, 11 Sep 2017 15:43:08 GMT  
		Size: 1.0 MB (1045790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40089af5546bf159b254f6a6d6cba4f02bec73379eda3dc8f0e0dba2a6332a74`  
		Last Modified: Mon, 11 Sep 2017 15:43:09 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc756aa476643e49ba8d1e472772724df4d013125282ca3ab57cf882f9e243e`  
		Last Modified: Mon, 11 Sep 2017 15:45:34 GMT  
		Size: 7.1 KB (7142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a8d13286d29e93e2ce5d3fc7d4f9a883091f7a3a3f831147439e03799708d9`  
		Last Modified: Mon, 11 Sep 2017 15:45:45 GMT  
		Size: 145.5 MB (145509605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb2a61a769977d70d63de8df81648efc88eb309fb7c231130233ed53a782e65`  
		Last Modified: Mon, 11 Sep 2017 15:45:34 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21398f6ce28d8ddb09695ec7df1b6d2fda753906fe010566f09549865ad531cc`  
		Last Modified: Mon, 11 Sep 2017 15:45:34 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6.0-alpine`

```console
$ docker pull solr@sha256:44bfe38f626dba5303af94f64d4e26be4611d7ca0b4b97e9e09d2e53e5a99a2a
```

-	Platforms:
	-	linux; amd64

### `solr:6.6.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207986672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f86d8920155e18e7f23618d90249ff084fe71a7d4b6aba214f4f8f8e98ac2f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:08:16 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 28 Jun 2017 23:08:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 28 Jun 2017 23:08:18 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 28 Jun 2017 23:08:19 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 28 Jun 2017 23:08:48 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:09:28 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:09:30 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:09:31 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:09:32 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:09:33 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:09:34 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:09:34 GMT
USER [solr]
# Wed, 28 Jun 2017 23:09:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:09:36 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2b72773478138d8066fd6885d92f491f3c42bbc42f55e03bc44520bee9f6e`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 7.2 KB (7166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc9249090056f318adf6fba4f2221c1eabc632fabad0a1b466be46b05e5787f`  
		Last Modified: Fri, 30 Jun 2017 01:56:37 GMT  
		Size: 145.5 MB (145509629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0f25e9e76ca3043f32033fc32f1955e60d3789cb14b8340e57bcb409380204`  
		Last Modified: Fri, 30 Jun 2017 01:56:25 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029c624a49d6b152e3fc955d27a11e10ab209313b74dad6654482daaeb39cae3`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6-alpine`

```console
$ docker pull solr@sha256:44bfe38f626dba5303af94f64d4e26be4611d7ca0b4b97e9e09d2e53e5a99a2a
```

-	Platforms:
	-	linux; amd64

### `solr:6.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207986672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f86d8920155e18e7f23618d90249ff084fe71a7d4b6aba214f4f8f8e98ac2f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:08:16 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 28 Jun 2017 23:08:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 28 Jun 2017 23:08:18 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 28 Jun 2017 23:08:19 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 28 Jun 2017 23:08:48 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:09:28 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:09:30 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:09:31 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:09:32 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:09:33 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:09:34 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:09:34 GMT
USER [solr]
# Wed, 28 Jun 2017 23:09:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:09:36 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2b72773478138d8066fd6885d92f491f3c42bbc42f55e03bc44520bee9f6e`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 7.2 KB (7166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc9249090056f318adf6fba4f2221c1eabc632fabad0a1b466be46b05e5787f`  
		Last Modified: Fri, 30 Jun 2017 01:56:37 GMT  
		Size: 145.5 MB (145509629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0f25e9e76ca3043f32033fc32f1955e60d3789cb14b8340e57bcb409380204`  
		Last Modified: Fri, 30 Jun 2017 01:56:25 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029c624a49d6b152e3fc955d27a11e10ab209313b74dad6654482daaeb39cae3`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6-alpine`

```console
$ docker pull solr@sha256:44bfe38f626dba5303af94f64d4e26be4611d7ca0b4b97e9e09d2e53e5a99a2a
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207986672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f86d8920155e18e7f23618d90249ff084fe71a7d4b6aba214f4f8f8e98ac2f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:08:16 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 28 Jun 2017 23:08:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 28 Jun 2017 23:08:18 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 28 Jun 2017 23:08:19 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 28 Jun 2017 23:08:48 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:09:28 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:09:30 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:09:31 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:09:32 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:09:33 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:09:34 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:09:34 GMT
USER [solr]
# Wed, 28 Jun 2017 23:09:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:09:36 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2b72773478138d8066fd6885d92f491f3c42bbc42f55e03bc44520bee9f6e`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 7.2 KB (7166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc9249090056f318adf6fba4f2221c1eabc632fabad0a1b466be46b05e5787f`  
		Last Modified: Fri, 30 Jun 2017 01:56:37 GMT  
		Size: 145.5 MB (145509629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0f25e9e76ca3043f32033fc32f1955e60d3789cb14b8340e57bcb409380204`  
		Last Modified: Fri, 30 Jun 2017 01:56:25 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029c624a49d6b152e3fc955d27a11e10ab209313b74dad6654482daaeb39cae3`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:alpine`

```console
$ docker pull solr@sha256:44bfe38f626dba5303af94f64d4e26be4611d7ca0b4b97e9e09d2e53e5a99a2a
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207986672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f86d8920155e18e7f23618d90249ff084fe71a7d4b6aba214f4f8f8e98ac2f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:06:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 28 Jun 2017 23:06:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 23:06:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 28 Jun 2017 23:06:29 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 28 Jun 2017 23:06:52 GMT
ENV SOLR_USER=solr
# Wed, 28 Jun 2017 23:06:53 GMT
ENV SOLR_UID=8983
# Wed, 28 Jun 2017 23:06:54 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Wed, 28 Jun 2017 23:08:16 GMT
ENV SOLR_VERSION=6.6.0
# Wed, 28 Jun 2017 23:08:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Wed, 28 Jun 2017 23:08:18 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Wed, 28 Jun 2017 23:08:19 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 28 Jun 2017 23:08:48 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 28 Jun 2017 23:09:28 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 28 Jun 2017 23:09:30 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 28 Jun 2017 23:09:31 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 28 Jun 2017 23:09:32 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 23:09:33 GMT
EXPOSE 8983/tcp
# Wed, 28 Jun 2017 23:09:34 GMT
WORKDIR /opt/solr
# Wed, 28 Jun 2017 23:09:34 GMT
USER [solr]
# Wed, 28 Jun 2017 23:09:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 23:09:36 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bee44a48619df69bc2747bc29aa8a23c6e375f92bd5f5c2669e16ee4b4b2c13`  
		Last Modified: Fri, 30 Jun 2017 01:24:18 GMT  
		Size: 5.6 MB (5567994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc18143bdcee0ca7eb2bc94284a06f416acf5b3d8576c5a992f94f05b5c2eab`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 622.7 KB (622677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777287a19732ad4c43f1618b81f15fcb5037ad3bae7930bdf16d2ba0d4bce34`  
		Last Modified: Fri, 30 Jun 2017 01:24:13 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2b72773478138d8066fd6885d92f491f3c42bbc42f55e03bc44520bee9f6e`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 7.2 KB (7166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc9249090056f318adf6fba4f2221c1eabc632fabad0a1b466be46b05e5787f`  
		Last Modified: Fri, 30 Jun 2017 01:56:37 GMT  
		Size: 145.5 MB (145509629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0f25e9e76ca3043f32033fc32f1955e60d3789cb14b8340e57bcb409380204`  
		Last Modified: Fri, 30 Jun 2017 01:56:25 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029c624a49d6b152e3fc955d27a11e10ab209313b74dad6654482daaeb39cae3`  
		Last Modified: Fri, 30 Jun 2017 01:56:24 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
