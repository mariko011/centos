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
$ docker pull solr@sha256:4222397e067a918d0fae2069bc53a927b7cf21f2b646022fcbedef78e0f988fb
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249053602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ecad276c58d9468cf1a0a10b4dfce402c1e4f6f97e87f980b04f30acd3f6a0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:11:50 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:11:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 22:57:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 24 Jul 2017 22:57:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 24 Jul 2017 22:57:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_USER=solr
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_UID=8983
# Mon, 24 Jul 2017 22:57:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 24 Jul 2017 22:57:32 GMT
ENV SOLR_VERSION=5.5.4
# Mon, 24 Jul 2017 22:57:32 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Mon, 24 Jul 2017 22:57:33 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Mon, 24 Jul 2017 22:57:33 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Mon, 24 Jul 2017 22:57:36 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Jul 2017 22:57:50 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 24 Jul 2017 22:57:50 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 24 Jul 2017 22:57:51 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 24 Jul 2017 22:57:51 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 22:57:51 GMT
EXPOSE 8983/tcp
# Mon, 24 Jul 2017 22:57:52 GMT
WORKDIR /opt/solr
# Mon, 24 Jul 2017 22:57:52 GMT
USER [solr]
# Mon, 24 Jul 2017 22:57:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:57:52 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e542fdaf109acf49bcbe56a397a140be9ea9baf4f51e55f4160af86927840de`  
		Last Modified: Mon, 24 Jul 2017 18:24:34 GMT  
		Size: 54.4 MB (54420272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213d11280db267c1a51d9b9ee8b43bb6e6653ffb1f0e8dcb5b0b7f38aab96`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b6c5d2ab73637b254b9d37af097ba1bbad0bbac163dee09982a0c7d3f0a633`  
		Last Modified: Mon, 24 Jul 2017 22:59:32 GMT  
		Size: 1.1 MB (1125118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167dda7218ab9a3fbd202d039f5a43a82e840f612babff30df93d8d532482921`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd87f16481361e0c36f7670a7f9f3bf730fff2550ef3ad0222457b189f4314c`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 7.2 KB (7163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf9be6318d99e1402fa42559eb1c0cbd3604d4e3d74bd32782043e71332ab49`  
		Last Modified: Mon, 24 Jul 2017 22:59:42 GMT  
		Size: 131.9 MB (131926955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d992bb6e44799545e4b2295cb025c117c5a25b8df80da9d2f8e7d092425e6dc`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7a6895e1ad0fd5bba8379e51288e4419effad95e73fb19165da4e62975592b`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:4222397e067a918d0fae2069bc53a927b7cf21f2b646022fcbedef78e0f988fb
```

-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249053602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ecad276c58d9468cf1a0a10b4dfce402c1e4f6f97e87f980b04f30acd3f6a0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:11:50 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:11:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 22:57:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 24 Jul 2017 22:57:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 24 Jul 2017 22:57:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_USER=solr
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_UID=8983
# Mon, 24 Jul 2017 22:57:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 24 Jul 2017 22:57:32 GMT
ENV SOLR_VERSION=5.5.4
# Mon, 24 Jul 2017 22:57:32 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Mon, 24 Jul 2017 22:57:33 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Mon, 24 Jul 2017 22:57:33 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Mon, 24 Jul 2017 22:57:36 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Jul 2017 22:57:50 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 24 Jul 2017 22:57:50 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 24 Jul 2017 22:57:51 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 24 Jul 2017 22:57:51 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 22:57:51 GMT
EXPOSE 8983/tcp
# Mon, 24 Jul 2017 22:57:52 GMT
WORKDIR /opt/solr
# Mon, 24 Jul 2017 22:57:52 GMT
USER [solr]
# Mon, 24 Jul 2017 22:57:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:57:52 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e542fdaf109acf49bcbe56a397a140be9ea9baf4f51e55f4160af86927840de`  
		Last Modified: Mon, 24 Jul 2017 18:24:34 GMT  
		Size: 54.4 MB (54420272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213d11280db267c1a51d9b9ee8b43bb6e6653ffb1f0e8dcb5b0b7f38aab96`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b6c5d2ab73637b254b9d37af097ba1bbad0bbac163dee09982a0c7d3f0a633`  
		Last Modified: Mon, 24 Jul 2017 22:59:32 GMT  
		Size: 1.1 MB (1125118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167dda7218ab9a3fbd202d039f5a43a82e840f612babff30df93d8d532482921`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd87f16481361e0c36f7670a7f9f3bf730fff2550ef3ad0222457b189f4314c`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 7.2 KB (7163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf9be6318d99e1402fa42559eb1c0cbd3604d4e3d74bd32782043e71332ab49`  
		Last Modified: Mon, 24 Jul 2017 22:59:42 GMT  
		Size: 131.9 MB (131926955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d992bb6e44799545e4b2295cb025c117c5a25b8df80da9d2f8e7d092425e6dc`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7a6895e1ad0fd5bba8379e51288e4419effad95e73fb19165da4e62975592b`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5`

```console
$ docker pull solr@sha256:4222397e067a918d0fae2069bc53a927b7cf21f2b646022fcbedef78e0f988fb
```

-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249053602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ecad276c58d9468cf1a0a10b4dfce402c1e4f6f97e87f980b04f30acd3f6a0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:11:50 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:11:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 22:57:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 24 Jul 2017 22:57:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 24 Jul 2017 22:57:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_USER=solr
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_UID=8983
# Mon, 24 Jul 2017 22:57:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 24 Jul 2017 22:57:32 GMT
ENV SOLR_VERSION=5.5.4
# Mon, 24 Jul 2017 22:57:32 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Mon, 24 Jul 2017 22:57:33 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Mon, 24 Jul 2017 22:57:33 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Mon, 24 Jul 2017 22:57:36 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Jul 2017 22:57:50 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 24 Jul 2017 22:57:50 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 24 Jul 2017 22:57:51 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 24 Jul 2017 22:57:51 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 22:57:51 GMT
EXPOSE 8983/tcp
# Mon, 24 Jul 2017 22:57:52 GMT
WORKDIR /opt/solr
# Mon, 24 Jul 2017 22:57:52 GMT
USER [solr]
# Mon, 24 Jul 2017 22:57:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:57:52 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e542fdaf109acf49bcbe56a397a140be9ea9baf4f51e55f4160af86927840de`  
		Last Modified: Mon, 24 Jul 2017 18:24:34 GMT  
		Size: 54.4 MB (54420272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213d11280db267c1a51d9b9ee8b43bb6e6653ffb1f0e8dcb5b0b7f38aab96`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b6c5d2ab73637b254b9d37af097ba1bbad0bbac163dee09982a0c7d3f0a633`  
		Last Modified: Mon, 24 Jul 2017 22:59:32 GMT  
		Size: 1.1 MB (1125118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167dda7218ab9a3fbd202d039f5a43a82e840f612babff30df93d8d532482921`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd87f16481361e0c36f7670a7f9f3bf730fff2550ef3ad0222457b189f4314c`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 7.2 KB (7163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf9be6318d99e1402fa42559eb1c0cbd3604d4e3d74bd32782043e71332ab49`  
		Last Modified: Mon, 24 Jul 2017 22:59:42 GMT  
		Size: 131.9 MB (131926955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d992bb6e44799545e4b2295cb025c117c5a25b8df80da9d2f8e7d092425e6dc`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7a6895e1ad0fd5bba8379e51288e4419effad95e73fb19165da4e62975592b`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 3.0 KB (3023 bytes)  
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
$ docker pull solr@sha256:3f47ef0ff2513f38e605493a1c3b2a75ff2ec03fb60ab5729452ffef4975efb4
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257682157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd839043989e3cdf6edb016ce1d8b46fb472a1e960371cead83ae28975806df3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:11:50 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:11:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 22:57:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 24 Jul 2017 22:57:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 24 Jul 2017 22:57:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_USER=solr
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_UID=8983
# Mon, 24 Jul 2017 22:57:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 24 Jul 2017 22:57:55 GMT
ENV SOLR_VERSION=6.3.0
# Mon, 24 Jul 2017 22:57:55 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Mon, 24 Jul 2017 22:57:55 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Mon, 24 Jul 2017 22:57:55 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Mon, 24 Jul 2017 22:57:58 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Jul 2017 22:58:13 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 24 Jul 2017 22:58:14 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 24 Jul 2017 22:58:14 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 24 Jul 2017 22:58:14 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 22:58:15 GMT
EXPOSE 8983/tcp
# Mon, 24 Jul 2017 22:58:15 GMT
WORKDIR /opt/solr
# Mon, 24 Jul 2017 22:58:15 GMT
USER [solr]
# Mon, 24 Jul 2017 22:58:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:58:15 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e542fdaf109acf49bcbe56a397a140be9ea9baf4f51e55f4160af86927840de`  
		Last Modified: Mon, 24 Jul 2017 18:24:34 GMT  
		Size: 54.4 MB (54420272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213d11280db267c1a51d9b9ee8b43bb6e6653ffb1f0e8dcb5b0b7f38aab96`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b6c5d2ab73637b254b9d37af097ba1bbad0bbac163dee09982a0c7d3f0a633`  
		Last Modified: Mon, 24 Jul 2017 22:59:32 GMT  
		Size: 1.1 MB (1125118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167dda7218ab9a3fbd202d039f5a43a82e840f612babff30df93d8d532482921`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52524f96ef63be8af72ddf0ffde396cd8781600c794d440589f3a6ea7071253a`  
		Last Modified: Mon, 24 Jul 2017 23:00:18 GMT  
		Size: 6.6 KB (6584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f429a231cbd626ea2772fe292ad530a924f702a8b16254b525836316ce134`  
		Last Modified: Mon, 24 Jul 2017 23:00:37 GMT  
		Size: 140.6 MB (140556084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822315d21bc2182eac5b75cf01342fcac951c2d1ea1e9aba70e708d7e0e9a040`  
		Last Modified: Mon, 24 Jul 2017 23:00:18 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718f1a3915e13e80f710a5aac448fc0a5d8a724e84e6176448196109fa52a68d`  
		Last Modified: Mon, 24 Jul 2017 23:00:18 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3`

```console
$ docker pull solr@sha256:3f47ef0ff2513f38e605493a1c3b2a75ff2ec03fb60ab5729452ffef4975efb4
```

-	Platforms:
	-	linux; amd64

### `solr:6.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257682157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd839043989e3cdf6edb016ce1d8b46fb472a1e960371cead83ae28975806df3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:11:50 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:11:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 22:57:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 24 Jul 2017 22:57:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 24 Jul 2017 22:57:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_USER=solr
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_UID=8983
# Mon, 24 Jul 2017 22:57:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 24 Jul 2017 22:57:55 GMT
ENV SOLR_VERSION=6.3.0
# Mon, 24 Jul 2017 22:57:55 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Mon, 24 Jul 2017 22:57:55 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Mon, 24 Jul 2017 22:57:55 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Mon, 24 Jul 2017 22:57:58 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Jul 2017 22:58:13 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 24 Jul 2017 22:58:14 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 24 Jul 2017 22:58:14 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 24 Jul 2017 22:58:14 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 22:58:15 GMT
EXPOSE 8983/tcp
# Mon, 24 Jul 2017 22:58:15 GMT
WORKDIR /opt/solr
# Mon, 24 Jul 2017 22:58:15 GMT
USER [solr]
# Mon, 24 Jul 2017 22:58:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:58:15 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e542fdaf109acf49bcbe56a397a140be9ea9baf4f51e55f4160af86927840de`  
		Last Modified: Mon, 24 Jul 2017 18:24:34 GMT  
		Size: 54.4 MB (54420272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213d11280db267c1a51d9b9ee8b43bb6e6653ffb1f0e8dcb5b0b7f38aab96`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b6c5d2ab73637b254b9d37af097ba1bbad0bbac163dee09982a0c7d3f0a633`  
		Last Modified: Mon, 24 Jul 2017 22:59:32 GMT  
		Size: 1.1 MB (1125118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167dda7218ab9a3fbd202d039f5a43a82e840f612babff30df93d8d532482921`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52524f96ef63be8af72ddf0ffde396cd8781600c794d440589f3a6ea7071253a`  
		Last Modified: Mon, 24 Jul 2017 23:00:18 GMT  
		Size: 6.6 KB (6584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f429a231cbd626ea2772fe292ad530a924f702a8b16254b525836316ce134`  
		Last Modified: Mon, 24 Jul 2017 23:00:37 GMT  
		Size: 140.6 MB (140556084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822315d21bc2182eac5b75cf01342fcac951c2d1ea1e9aba70e708d7e0e9a040`  
		Last Modified: Mon, 24 Jul 2017 23:00:18 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718f1a3915e13e80f710a5aac448fc0a5d8a724e84e6176448196109fa52a68d`  
		Last Modified: Mon, 24 Jul 2017 23:00:18 GMT  
		Size: 3.0 KB (3024 bytes)  
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
$ docker pull solr@sha256:ab6cc2c275245421de9b6fee556f642360945d3159f572b99315fb858482c656
```

-	Platforms:
	-	linux; amd64

### `solr:6.4.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258672801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12e6f6b9883a5e6ca2b66addb776079a2a99b5e1b5f2bb2fbc009143ecdeeac5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:11:50 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:11:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 22:57:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 24 Jul 2017 22:57:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 24 Jul 2017 22:57:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_USER=solr
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_UID=8983
# Mon, 24 Jul 2017 22:57:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 24 Jul 2017 22:58:18 GMT
ENV SOLR_VERSION=6.4.2
# Mon, 24 Jul 2017 22:58:18 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Mon, 24 Jul 2017 22:58:18 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Mon, 24 Jul 2017 22:58:18 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Mon, 24 Jul 2017 22:58:22 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Jul 2017 22:58:36 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 24 Jul 2017 22:58:37 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 24 Jul 2017 22:58:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 24 Jul 2017 22:58:38 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 22:58:38 GMT
EXPOSE 8983/tcp
# Mon, 24 Jul 2017 22:58:38 GMT
WORKDIR /opt/solr
# Mon, 24 Jul 2017 22:58:38 GMT
USER [solr]
# Mon, 24 Jul 2017 22:58:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:58:39 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e542fdaf109acf49bcbe56a397a140be9ea9baf4f51e55f4160af86927840de`  
		Last Modified: Mon, 24 Jul 2017 18:24:34 GMT  
		Size: 54.4 MB (54420272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213d11280db267c1a51d9b9ee8b43bb6e6653ffb1f0e8dcb5b0b7f38aab96`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b6c5d2ab73637b254b9d37af097ba1bbad0bbac163dee09982a0c7d3f0a633`  
		Last Modified: Mon, 24 Jul 2017 22:59:32 GMT  
		Size: 1.1 MB (1125118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167dda7218ab9a3fbd202d039f5a43a82e840f612babff30df93d8d532482921`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744380d410ae14b4bd868e404b062c46173bb4345bbcc18a2ea66d3f95cf19ff`  
		Last Modified: Mon, 24 Jul 2017 23:01:01 GMT  
		Size: 7.1 KB (7141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3d549729dbe77f2df1f92abdddf2627a5062436eced2d46178b49e0301b6f4`  
		Last Modified: Mon, 24 Jul 2017 23:01:13 GMT  
		Size: 141.5 MB (141546174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffe3c93e06e6a8458f99a406c22ebf750f0757de14c042c35495c3faf3912fc`  
		Last Modified: Mon, 24 Jul 2017 23:01:01 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae759c7a784c7756a0680f3ab7ae4db57d43e2daa9b9217618f03b5f1b5be7b`  
		Last Modified: Mon, 24 Jul 2017 23:01:00 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4`

```console
$ docker pull solr@sha256:ab6cc2c275245421de9b6fee556f642360945d3159f572b99315fb858482c656
```

-	Platforms:
	-	linux; amd64

### `solr:6.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258672801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12e6f6b9883a5e6ca2b66addb776079a2a99b5e1b5f2bb2fbc009143ecdeeac5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:11:50 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:11:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 22:57:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 24 Jul 2017 22:57:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 24 Jul 2017 22:57:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_USER=solr
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_UID=8983
# Mon, 24 Jul 2017 22:57:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 24 Jul 2017 22:58:18 GMT
ENV SOLR_VERSION=6.4.2
# Mon, 24 Jul 2017 22:58:18 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Mon, 24 Jul 2017 22:58:18 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Mon, 24 Jul 2017 22:58:18 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Mon, 24 Jul 2017 22:58:22 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Jul 2017 22:58:36 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 24 Jul 2017 22:58:37 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 24 Jul 2017 22:58:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 24 Jul 2017 22:58:38 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 22:58:38 GMT
EXPOSE 8983/tcp
# Mon, 24 Jul 2017 22:58:38 GMT
WORKDIR /opt/solr
# Mon, 24 Jul 2017 22:58:38 GMT
USER [solr]
# Mon, 24 Jul 2017 22:58:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:58:39 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e542fdaf109acf49bcbe56a397a140be9ea9baf4f51e55f4160af86927840de`  
		Last Modified: Mon, 24 Jul 2017 18:24:34 GMT  
		Size: 54.4 MB (54420272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213d11280db267c1a51d9b9ee8b43bb6e6653ffb1f0e8dcb5b0b7f38aab96`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b6c5d2ab73637b254b9d37af097ba1bbad0bbac163dee09982a0c7d3f0a633`  
		Last Modified: Mon, 24 Jul 2017 22:59:32 GMT  
		Size: 1.1 MB (1125118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167dda7218ab9a3fbd202d039f5a43a82e840f612babff30df93d8d532482921`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744380d410ae14b4bd868e404b062c46173bb4345bbcc18a2ea66d3f95cf19ff`  
		Last Modified: Mon, 24 Jul 2017 23:01:01 GMT  
		Size: 7.1 KB (7141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3d549729dbe77f2df1f92abdddf2627a5062436eced2d46178b49e0301b6f4`  
		Last Modified: Mon, 24 Jul 2017 23:01:13 GMT  
		Size: 141.5 MB (141546174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffe3c93e06e6a8458f99a406c22ebf750f0757de14c042c35495c3faf3912fc`  
		Last Modified: Mon, 24 Jul 2017 23:01:01 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae759c7a784c7756a0680f3ab7ae4db57d43e2daa9b9217618f03b5f1b5be7b`  
		Last Modified: Mon, 24 Jul 2017 23:01:00 GMT  
		Size: 3.0 KB (3024 bytes)  
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
$ docker pull solr@sha256:62665ea54059ec5e26ec87e35e3c024e26ab76538e347d63b5cfb32b827ede9f
```

-	Platforms:
	-	linux; amd64

### `solr:6.5.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.9 MB (265932764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb16527047451e69d827ab737d9a63cf68b9da1ed2a999fb8a4fc3e4af87cc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:11:50 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:11:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 22:57:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 24 Jul 2017 22:57:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 24 Jul 2017 22:57:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_USER=solr
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_UID=8983
# Mon, 24 Jul 2017 22:57:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 24 Jul 2017 22:58:41 GMT
ENV SOLR_VERSION=6.5.1
# Mon, 24 Jul 2017 22:58:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Mon, 24 Jul 2017 22:58:42 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Mon, 24 Jul 2017 22:58:42 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Mon, 24 Jul 2017 22:58:45 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Jul 2017 22:58:59 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 24 Jul 2017 22:59:00 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 24 Jul 2017 22:59:00 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 24 Jul 2017 22:59:01 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 22:59:01 GMT
EXPOSE 8983/tcp
# Mon, 24 Jul 2017 22:59:01 GMT
WORKDIR /opt/solr
# Mon, 24 Jul 2017 22:59:01 GMT
USER [solr]
# Mon, 24 Jul 2017 22:59:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:59:02 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e542fdaf109acf49bcbe56a397a140be9ea9baf4f51e55f4160af86927840de`  
		Last Modified: Mon, 24 Jul 2017 18:24:34 GMT  
		Size: 54.4 MB (54420272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213d11280db267c1a51d9b9ee8b43bb6e6653ffb1f0e8dcb5b0b7f38aab96`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b6c5d2ab73637b254b9d37af097ba1bbad0bbac163dee09982a0c7d3f0a633`  
		Last Modified: Mon, 24 Jul 2017 22:59:32 GMT  
		Size: 1.1 MB (1125118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167dda7218ab9a3fbd202d039f5a43a82e840f612babff30df93d8d532482921`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92de6bf660c018f0d8d598922194f99cb59768992a3c2f491016b1a45ee0c253`  
		Last Modified: Mon, 24 Jul 2017 23:01:38 GMT  
		Size: 7.7 KB (7734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9d7c2b3459689f5e741430f568654a1250e204ae36bfc53e70a9e30e9ba934`  
		Last Modified: Mon, 24 Jul 2017 23:01:49 GMT  
		Size: 148.8 MB (148805546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26790b0e4796cbedb5693de4d043328a6876a5fd409ffe3d4aeaa437f314c13`  
		Last Modified: Mon, 24 Jul 2017 23:01:38 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c7bfdcd58fedfa802e413f13d48c6b4cdf027a541f115bf49e193061c66f85`  
		Last Modified: Mon, 24 Jul 2017 23:01:37 GMT  
		Size: 3.0 KB (3021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5`

```console
$ docker pull solr@sha256:62665ea54059ec5e26ec87e35e3c024e26ab76538e347d63b5cfb32b827ede9f
```

-	Platforms:
	-	linux; amd64

### `solr:6.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.9 MB (265932764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb16527047451e69d827ab737d9a63cf68b9da1ed2a999fb8a4fc3e4af87cc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:11:50 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:11:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 22:57:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 24 Jul 2017 22:57:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 24 Jul 2017 22:57:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_USER=solr
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_UID=8983
# Mon, 24 Jul 2017 22:57:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 24 Jul 2017 22:58:41 GMT
ENV SOLR_VERSION=6.5.1
# Mon, 24 Jul 2017 22:58:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Mon, 24 Jul 2017 22:58:42 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Mon, 24 Jul 2017 22:58:42 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Mon, 24 Jul 2017 22:58:45 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Jul 2017 22:58:59 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 24 Jul 2017 22:59:00 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 24 Jul 2017 22:59:00 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 24 Jul 2017 22:59:01 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 22:59:01 GMT
EXPOSE 8983/tcp
# Mon, 24 Jul 2017 22:59:01 GMT
WORKDIR /opt/solr
# Mon, 24 Jul 2017 22:59:01 GMT
USER [solr]
# Mon, 24 Jul 2017 22:59:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:59:02 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e542fdaf109acf49bcbe56a397a140be9ea9baf4f51e55f4160af86927840de`  
		Last Modified: Mon, 24 Jul 2017 18:24:34 GMT  
		Size: 54.4 MB (54420272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213d11280db267c1a51d9b9ee8b43bb6e6653ffb1f0e8dcb5b0b7f38aab96`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b6c5d2ab73637b254b9d37af097ba1bbad0bbac163dee09982a0c7d3f0a633`  
		Last Modified: Mon, 24 Jul 2017 22:59:32 GMT  
		Size: 1.1 MB (1125118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167dda7218ab9a3fbd202d039f5a43a82e840f612babff30df93d8d532482921`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92de6bf660c018f0d8d598922194f99cb59768992a3c2f491016b1a45ee0c253`  
		Last Modified: Mon, 24 Jul 2017 23:01:38 GMT  
		Size: 7.7 KB (7734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9d7c2b3459689f5e741430f568654a1250e204ae36bfc53e70a9e30e9ba934`  
		Last Modified: Mon, 24 Jul 2017 23:01:49 GMT  
		Size: 148.8 MB (148805546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26790b0e4796cbedb5693de4d043328a6876a5fd409ffe3d4aeaa437f314c13`  
		Last Modified: Mon, 24 Jul 2017 23:01:38 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c7bfdcd58fedfa802e413f13d48c6b4cdf027a541f115bf49e193061c66f85`  
		Last Modified: Mon, 24 Jul 2017 23:01:37 GMT  
		Size: 3.0 KB (3021 bytes)  
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
$ docker pull solr@sha256:6156ce5794c13b348bbee7fb243da90ca8b2452d361671255c5fa61c4cb01ac8
```

-	Platforms:
	-	linux; amd64

### `solr:6.6.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262636238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d572396a047bdfc3be248e5a98c9721d3961c32aecfb1e4a82d368480053b26d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:11:50 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:11:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 22:57:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 24 Jul 2017 22:57:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 24 Jul 2017 22:57:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_USER=solr
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_UID=8983
# Mon, 24 Jul 2017 22:57:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 24 Jul 2017 22:59:04 GMT
ENV SOLR_VERSION=6.6.0
# Mon, 24 Jul 2017 22:59:04 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Mon, 24 Jul 2017 22:59:05 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Mon, 24 Jul 2017 22:59:05 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Mon, 24 Jul 2017 22:59:07 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Jul 2017 22:59:23 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 24 Jul 2017 22:59:23 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 24 Jul 2017 22:59:24 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 24 Jul 2017 22:59:24 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 22:59:24 GMT
EXPOSE 8983/tcp
# Mon, 24 Jul 2017 22:59:24 GMT
WORKDIR /opt/solr
# Mon, 24 Jul 2017 22:59:24 GMT
USER [solr]
# Mon, 24 Jul 2017 22:59:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:59:25 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e542fdaf109acf49bcbe56a397a140be9ea9baf4f51e55f4160af86927840de`  
		Last Modified: Mon, 24 Jul 2017 18:24:34 GMT  
		Size: 54.4 MB (54420272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213d11280db267c1a51d9b9ee8b43bb6e6653ffb1f0e8dcb5b0b7f38aab96`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b6c5d2ab73637b254b9d37af097ba1bbad0bbac163dee09982a0c7d3f0a633`  
		Last Modified: Mon, 24 Jul 2017 22:59:32 GMT  
		Size: 1.1 MB (1125118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167dda7218ab9a3fbd202d039f5a43a82e840f612babff30df93d8d532482921`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000d807f15441c6169014f18daad7b1aaef085c02d2330a97ccd652b1ba7c974`  
		Last Modified: Mon, 24 Jul 2017 23:02:14 GMT  
		Size: 7.1 KB (7145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4314d53cd2523e8e6e288701a135cbea95f324392d68294f4e94658e6dc846d3`  
		Last Modified: Mon, 24 Jul 2017 23:02:32 GMT  
		Size: 145.5 MB (145509604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a1506871af29887adf69e59e2e31da8679f2a025f70ae59bf315f2724ed2d`  
		Last Modified: Mon, 24 Jul 2017 23:02:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56f9b70499559c382a75606ca418eccea514d483dcff3d5a0244bb080414d38`  
		Last Modified: Mon, 24 Jul 2017 23:02:14 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6`

```console
$ docker pull solr@sha256:6156ce5794c13b348bbee7fb243da90ca8b2452d361671255c5fa61c4cb01ac8
```

-	Platforms:
	-	linux; amd64

### `solr:6.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262636238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d572396a047bdfc3be248e5a98c9721d3961c32aecfb1e4a82d368480053b26d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:11:50 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:11:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 22:57:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 24 Jul 2017 22:57:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 24 Jul 2017 22:57:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_USER=solr
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_UID=8983
# Mon, 24 Jul 2017 22:57:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 24 Jul 2017 22:59:04 GMT
ENV SOLR_VERSION=6.6.0
# Mon, 24 Jul 2017 22:59:04 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Mon, 24 Jul 2017 22:59:05 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Mon, 24 Jul 2017 22:59:05 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Mon, 24 Jul 2017 22:59:07 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Jul 2017 22:59:23 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 24 Jul 2017 22:59:23 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 24 Jul 2017 22:59:24 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 24 Jul 2017 22:59:24 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 22:59:24 GMT
EXPOSE 8983/tcp
# Mon, 24 Jul 2017 22:59:24 GMT
WORKDIR /opt/solr
# Mon, 24 Jul 2017 22:59:24 GMT
USER [solr]
# Mon, 24 Jul 2017 22:59:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:59:25 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e542fdaf109acf49bcbe56a397a140be9ea9baf4f51e55f4160af86927840de`  
		Last Modified: Mon, 24 Jul 2017 18:24:34 GMT  
		Size: 54.4 MB (54420272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213d11280db267c1a51d9b9ee8b43bb6e6653ffb1f0e8dcb5b0b7f38aab96`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b6c5d2ab73637b254b9d37af097ba1bbad0bbac163dee09982a0c7d3f0a633`  
		Last Modified: Mon, 24 Jul 2017 22:59:32 GMT  
		Size: 1.1 MB (1125118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167dda7218ab9a3fbd202d039f5a43a82e840f612babff30df93d8d532482921`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000d807f15441c6169014f18daad7b1aaef085c02d2330a97ccd652b1ba7c974`  
		Last Modified: Mon, 24 Jul 2017 23:02:14 GMT  
		Size: 7.1 KB (7145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4314d53cd2523e8e6e288701a135cbea95f324392d68294f4e94658e6dc846d3`  
		Last Modified: Mon, 24 Jul 2017 23:02:32 GMT  
		Size: 145.5 MB (145509604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a1506871af29887adf69e59e2e31da8679f2a025f70ae59bf315f2724ed2d`  
		Last Modified: Mon, 24 Jul 2017 23:02:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56f9b70499559c382a75606ca418eccea514d483dcff3d5a0244bb080414d38`  
		Last Modified: Mon, 24 Jul 2017 23:02:14 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6`

```console
$ docker pull solr@sha256:6156ce5794c13b348bbee7fb243da90ca8b2452d361671255c5fa61c4cb01ac8
```

-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262636238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d572396a047bdfc3be248e5a98c9721d3961c32aecfb1e4a82d368480053b26d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:11:50 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:11:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 22:57:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 24 Jul 2017 22:57:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 24 Jul 2017 22:57:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_USER=solr
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_UID=8983
# Mon, 24 Jul 2017 22:57:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 24 Jul 2017 22:59:04 GMT
ENV SOLR_VERSION=6.6.0
# Mon, 24 Jul 2017 22:59:04 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Mon, 24 Jul 2017 22:59:05 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Mon, 24 Jul 2017 22:59:05 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Mon, 24 Jul 2017 22:59:07 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Jul 2017 22:59:23 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 24 Jul 2017 22:59:23 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 24 Jul 2017 22:59:24 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 24 Jul 2017 22:59:24 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 22:59:24 GMT
EXPOSE 8983/tcp
# Mon, 24 Jul 2017 22:59:24 GMT
WORKDIR /opt/solr
# Mon, 24 Jul 2017 22:59:24 GMT
USER [solr]
# Mon, 24 Jul 2017 22:59:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:59:25 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e542fdaf109acf49bcbe56a397a140be9ea9baf4f51e55f4160af86927840de`  
		Last Modified: Mon, 24 Jul 2017 18:24:34 GMT  
		Size: 54.4 MB (54420272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213d11280db267c1a51d9b9ee8b43bb6e6653ffb1f0e8dcb5b0b7f38aab96`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b6c5d2ab73637b254b9d37af097ba1bbad0bbac163dee09982a0c7d3f0a633`  
		Last Modified: Mon, 24 Jul 2017 22:59:32 GMT  
		Size: 1.1 MB (1125118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167dda7218ab9a3fbd202d039f5a43a82e840f612babff30df93d8d532482921`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000d807f15441c6169014f18daad7b1aaef085c02d2330a97ccd652b1ba7c974`  
		Last Modified: Mon, 24 Jul 2017 23:02:14 GMT  
		Size: 7.1 KB (7145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4314d53cd2523e8e6e288701a135cbea95f324392d68294f4e94658e6dc846d3`  
		Last Modified: Mon, 24 Jul 2017 23:02:32 GMT  
		Size: 145.5 MB (145509604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a1506871af29887adf69e59e2e31da8679f2a025f70ae59bf315f2724ed2d`  
		Last Modified: Mon, 24 Jul 2017 23:02:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56f9b70499559c382a75606ca418eccea514d483dcff3d5a0244bb080414d38`  
		Last Modified: Mon, 24 Jul 2017 23:02:14 GMT  
		Size: 3.0 KB (3024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:latest`

```console
$ docker pull solr@sha256:6156ce5794c13b348bbee7fb243da90ca8b2452d361671255c5fa61c4cb01ac8
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262636238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d572396a047bdfc3be248e5a98c9721d3961c32aecfb1e4a82d368480053b26d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:11:47 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:11:49 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:11:50 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:11:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 24 Jul 2017 22:57:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 24 Jul 2017 22:57:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 24 Jul 2017 22:57:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps &&   rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_USER=solr
# Mon, 24 Jul 2017 22:57:31 GMT
ENV SOLR_UID=8983
# Mon, 24 Jul 2017 22:57:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -G $SOLR_USER -g $SOLR_USER $SOLR_USER
# Mon, 24 Jul 2017 22:59:04 GMT
ENV SOLR_VERSION=6.6.0
# Mon, 24 Jul 2017 22:59:04 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz
# Mon, 24 Jul 2017 22:59:05 GMT
ENV SOLR_SHA256=6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e
# Mon, 24 Jul 2017 22:59:05 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Mon, 24 Jul 2017 22:59:07 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Jul 2017 22:59:23 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 24 Jul 2017 22:59:23 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Mon, 24 Jul 2017 22:59:24 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 24 Jul 2017 22:59:24 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 22:59:24 GMT
EXPOSE 8983/tcp
# Mon, 24 Jul 2017 22:59:24 GMT
WORKDIR /opt/solr
# Mon, 24 Jul 2017 22:59:24 GMT
USER [solr]
# Mon, 24 Jul 2017 22:59:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:59:25 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac59510475a8880f4ff04bf6d3d244871a23c5c965fe9e3391577a5d762fc0`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 629.4 KB (629408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01db8bd8540d151ef6f022f3168624a9557d8049432032d137b3bed4c4f02ac`  
		Last Modified: Mon, 24 Jul 2017 18:24:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f398af5feaa5fd612e1a0dbb93ffe5785e2a8e2e1bda89e5a398a27cf505a1`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e542fdaf109acf49bcbe56a397a140be9ea9baf4f51e55f4160af86927840de`  
		Last Modified: Mon, 24 Jul 2017 18:24:34 GMT  
		Size: 54.4 MB (54420272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213d11280db267c1a51d9b9ee8b43bb6e6653ffb1f0e8dcb5b0b7f38aab96`  
		Last Modified: Mon, 24 Jul 2017 18:24:24 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b6c5d2ab73637b254b9d37af097ba1bbad0bbac163dee09982a0c7d3f0a633`  
		Last Modified: Mon, 24 Jul 2017 22:59:32 GMT  
		Size: 1.1 MB (1125118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167dda7218ab9a3fbd202d039f5a43a82e840f612babff30df93d8d532482921`  
		Last Modified: Mon, 24 Jul 2017 22:59:31 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000d807f15441c6169014f18daad7b1aaef085c02d2330a97ccd652b1ba7c974`  
		Last Modified: Mon, 24 Jul 2017 23:02:14 GMT  
		Size: 7.1 KB (7145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4314d53cd2523e8e6e288701a135cbea95f324392d68294f4e94658e6dc846d3`  
		Last Modified: Mon, 24 Jul 2017 23:02:32 GMT  
		Size: 145.5 MB (145509604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a1506871af29887adf69e59e2e31da8679f2a025f70ae59bf315f2724ed2d`  
		Last Modified: Mon, 24 Jul 2017 23:02:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56f9b70499559c382a75606ca418eccea514d483dcff3d5a0244bb080414d38`  
		Last Modified: Mon, 24 Jul 2017 23:02:14 GMT  
		Size: 3.0 KB (3024 bytes)  
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
