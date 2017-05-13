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

## `solr:5.5.4`

```console
$ docker pull solr@sha256:a498b37c258172f62c01c961a9a809273920572aefd6fcbacaf152ef362d44fa
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268819776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97758ba8f134d861b587a8e3d5f40c858ac2b9d5bfe489e9c2142453baabd68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 16:13:08 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 16:13:09 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 16:13:29 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 16:13:29 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 16:13:30 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 16:13:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 16:13:32 GMT
ENV SOLR_VERSION=5.5.4
# Wed, 10 May 2017 16:13:33 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Wed, 10 May 2017 16:13:34 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Wed, 10 May 2017 16:13:35 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 10 May 2017 16:13:37 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 16:13:52 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 16:13:53 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 16:13:55 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 16:13:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 16:13:56 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 16:13:57 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 16:13:57 GMT
USER [solr]
# Wed, 10 May 2017 16:13:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 16:13:59 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4353a1c36407cfaf667da7432fb24f4de3b457b00c2c096c0f4bc9ca038f5fa4`  
		Last Modified: Sat, 13 May 2017 18:43:01 GMT  
		Size: 10.1 MB (10100706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080eedc72284270c1f2597803a3a036ae031b18f1f05c0a584cb050abd899e65`  
		Last Modified: Sat, 13 May 2017 18:42:59 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c697250bad559b83c6981b049ba693e26046c8d19bf43f865bc8aca61a65bef2`  
		Last Modified: Sat, 13 May 2017 18:42:57 GMT  
		Size: 7.4 KB (7433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1758121eecc830a1a743d1cb4409421ba8dfe2d745c58dde53a73330b2372e27`  
		Last Modified: Sat, 13 May 2017 18:43:07 GMT  
		Size: 131.9 MB (131927064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f217d08758ec7c2f7fa172d66fdac1bc5be7205a4dea14960158cc3ee3801da`  
		Last Modified: Sat, 13 May 2017 18:42:57 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1412e4188f29224c08bd99811f71143fec3163eb6166ca0c987e44efdd8ba`  
		Last Modified: Sat, 13 May 2017 18:42:57 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:a498b37c258172f62c01c961a9a809273920572aefd6fcbacaf152ef362d44fa
```

-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268819776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97758ba8f134d861b587a8e3d5f40c858ac2b9d5bfe489e9c2142453baabd68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 16:13:08 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 16:13:09 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 16:13:29 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 16:13:29 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 16:13:30 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 16:13:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 16:13:32 GMT
ENV SOLR_VERSION=5.5.4
# Wed, 10 May 2017 16:13:33 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Wed, 10 May 2017 16:13:34 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Wed, 10 May 2017 16:13:35 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 10 May 2017 16:13:37 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 16:13:52 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 16:13:53 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 16:13:55 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 16:13:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 16:13:56 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 16:13:57 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 16:13:57 GMT
USER [solr]
# Wed, 10 May 2017 16:13:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 16:13:59 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4353a1c36407cfaf667da7432fb24f4de3b457b00c2c096c0f4bc9ca038f5fa4`  
		Last Modified: Sat, 13 May 2017 18:43:01 GMT  
		Size: 10.1 MB (10100706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080eedc72284270c1f2597803a3a036ae031b18f1f05c0a584cb050abd899e65`  
		Last Modified: Sat, 13 May 2017 18:42:59 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c697250bad559b83c6981b049ba693e26046c8d19bf43f865bc8aca61a65bef2`  
		Last Modified: Sat, 13 May 2017 18:42:57 GMT  
		Size: 7.4 KB (7433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1758121eecc830a1a743d1cb4409421ba8dfe2d745c58dde53a73330b2372e27`  
		Last Modified: Sat, 13 May 2017 18:43:07 GMT  
		Size: 131.9 MB (131927064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f217d08758ec7c2f7fa172d66fdac1bc5be7205a4dea14960158cc3ee3801da`  
		Last Modified: Sat, 13 May 2017 18:42:57 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1412e4188f29224c08bd99811f71143fec3163eb6166ca0c987e44efdd8ba`  
		Last Modified: Sat, 13 May 2017 18:42:57 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5`

```console
$ docker pull solr@sha256:a498b37c258172f62c01c961a9a809273920572aefd6fcbacaf152ef362d44fa
```

-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268819776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97758ba8f134d861b587a8e3d5f40c858ac2b9d5bfe489e9c2142453baabd68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 16:13:08 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 16:13:09 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 16:13:29 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 16:13:29 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 16:13:30 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 16:13:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 16:13:32 GMT
ENV SOLR_VERSION=5.5.4
# Wed, 10 May 2017 16:13:33 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Wed, 10 May 2017 16:13:34 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Wed, 10 May 2017 16:13:35 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 10 May 2017 16:13:37 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 16:13:52 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 16:13:53 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 16:13:55 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 16:13:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 16:13:56 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 16:13:57 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 16:13:57 GMT
USER [solr]
# Wed, 10 May 2017 16:13:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 16:13:59 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4353a1c36407cfaf667da7432fb24f4de3b457b00c2c096c0f4bc9ca038f5fa4`  
		Last Modified: Sat, 13 May 2017 18:43:01 GMT  
		Size: 10.1 MB (10100706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080eedc72284270c1f2597803a3a036ae031b18f1f05c0a584cb050abd899e65`  
		Last Modified: Sat, 13 May 2017 18:42:59 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c697250bad559b83c6981b049ba693e26046c8d19bf43f865bc8aca61a65bef2`  
		Last Modified: Sat, 13 May 2017 18:42:57 GMT  
		Size: 7.4 KB (7433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1758121eecc830a1a743d1cb4409421ba8dfe2d745c58dde53a73330b2372e27`  
		Last Modified: Sat, 13 May 2017 18:43:07 GMT  
		Size: 131.9 MB (131927064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f217d08758ec7c2f7fa172d66fdac1bc5be7205a4dea14960158cc3ee3801da`  
		Last Modified: Sat, 13 May 2017 18:42:57 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1412e4188f29224c08bd99811f71143fec3163eb6166ca0c987e44efdd8ba`  
		Last Modified: Sat, 13 May 2017 18:42:57 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.4-alpine`

```console
$ docker pull solr@sha256:f35085a3df77aa5f9498bfd3c8e6d3de1297ad764a9996ccb50dcf055300b740
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.4-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194107754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f594cb9420bcc565d26633c371b4d88d0c9843ca76f9edb0c24961894db9e6f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 May 2017 23:11:30 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 23:11:31 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 23:11:34 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 10 May 2017 23:11:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 23:11:39 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 23:11:39 GMT
ENV SOLR_VERSION=5.5.4
# Wed, 10 May 2017 23:11:40 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Wed, 10 May 2017 23:11:41 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Wed, 10 May 2017 23:11:41 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 10 May 2017 23:11:45 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 23:12:00 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 23:12:01 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 23:12:03 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 23:12:04 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 23:12:04 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 23:12:05 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 23:12:06 GMT
USER [solr]
# Wed, 10 May 2017 23:12:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 23:12:07 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f086983660ec731d8cdd974f0ad2815a619a607a8a8593019fca87d6f60f061`  
		Last Modified: Sat, 13 May 2017 18:44:25 GMT  
		Size: 5.3 MB (5337882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00105f936ad1b746bd483d43d62782245e001382192116167e57daeb98643a41`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 619.4 KB (619414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a110badf0266aa2c76ec5262f358e7b8fc1c45981da72b5abcf86aa341c8c9b`  
		Last Modified: Sat, 13 May 2017 18:44:22 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcad6de034f1054a8b1acb9704293abb38e327cbac839d15d94f223d612e55cf`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ddc44bad2dd85dbce994192980c0d5b17ec312625d81b03a8c520547c7212c`  
		Last Modified: Sat, 13 May 2017 18:44:31 GMT  
		Size: 131.9 MB (131926934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14729d825c8663fe39b38ac69e1bef988a07b1c1ea4091a154a3dc879854b576`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c2c45d645f2e9a4dc4273b8d3a15908a79fd84697358b29586af4e26c4f76`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:f35085a3df77aa5f9498bfd3c8e6d3de1297ad764a9996ccb50dcf055300b740
```

-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194107754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f594cb9420bcc565d26633c371b4d88d0c9843ca76f9edb0c24961894db9e6f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 May 2017 23:11:30 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 23:11:31 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 23:11:34 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 10 May 2017 23:11:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 23:11:39 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 23:11:39 GMT
ENV SOLR_VERSION=5.5.4
# Wed, 10 May 2017 23:11:40 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Wed, 10 May 2017 23:11:41 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Wed, 10 May 2017 23:11:41 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 10 May 2017 23:11:45 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 23:12:00 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 23:12:01 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 23:12:03 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 23:12:04 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 23:12:04 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 23:12:05 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 23:12:06 GMT
USER [solr]
# Wed, 10 May 2017 23:12:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 23:12:07 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f086983660ec731d8cdd974f0ad2815a619a607a8a8593019fca87d6f60f061`  
		Last Modified: Sat, 13 May 2017 18:44:25 GMT  
		Size: 5.3 MB (5337882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00105f936ad1b746bd483d43d62782245e001382192116167e57daeb98643a41`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 619.4 KB (619414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a110badf0266aa2c76ec5262f358e7b8fc1c45981da72b5abcf86aa341c8c9b`  
		Last Modified: Sat, 13 May 2017 18:44:22 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcad6de034f1054a8b1acb9704293abb38e327cbac839d15d94f223d612e55cf`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ddc44bad2dd85dbce994192980c0d5b17ec312625d81b03a8c520547c7212c`  
		Last Modified: Sat, 13 May 2017 18:44:31 GMT  
		Size: 131.9 MB (131926934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14729d825c8663fe39b38ac69e1bef988a07b1c1ea4091a154a3dc879854b576`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c2c45d645f2e9a4dc4273b8d3a15908a79fd84697358b29586af4e26c4f76`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5-alpine`

```console
$ docker pull solr@sha256:f35085a3df77aa5f9498bfd3c8e6d3de1297ad764a9996ccb50dcf055300b740
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194107754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f594cb9420bcc565d26633c371b4d88d0c9843ca76f9edb0c24961894db9e6f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 May 2017 23:11:30 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 23:11:31 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 23:11:34 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 10 May 2017 23:11:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 23:11:39 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 23:11:39 GMT
ENV SOLR_VERSION=5.5.4
# Wed, 10 May 2017 23:11:40 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.4/solr-5.5.4.tgz
# Wed, 10 May 2017 23:11:41 GMT
ENV SOLR_SHA256=c1528e4afc9a0b8e7e5be0a16f40bb4080f410d502cd63b4447d448c49e9f500
# Wed, 10 May 2017 23:11:41 GMT
ENV SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 10 May 2017 23:11:45 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 23:12:00 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 23:12:01 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 23:12:03 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 23:12:04 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 23:12:04 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 23:12:05 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 23:12:06 GMT
USER [solr]
# Wed, 10 May 2017 23:12:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 23:12:07 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f086983660ec731d8cdd974f0ad2815a619a607a8a8593019fca87d6f60f061`  
		Last Modified: Sat, 13 May 2017 18:44:25 GMT  
		Size: 5.3 MB (5337882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00105f936ad1b746bd483d43d62782245e001382192116167e57daeb98643a41`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 619.4 KB (619414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a110badf0266aa2c76ec5262f358e7b8fc1c45981da72b5abcf86aa341c8c9b`  
		Last Modified: Sat, 13 May 2017 18:44:22 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcad6de034f1054a8b1acb9704293abb38e327cbac839d15d94f223d612e55cf`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ddc44bad2dd85dbce994192980c0d5b17ec312625d81b03a8c520547c7212c`  
		Last Modified: Sat, 13 May 2017 18:44:31 GMT  
		Size: 131.9 MB (131926934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14729d825c8663fe39b38ac69e1bef988a07b1c1ea4091a154a3dc879854b576`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c2c45d645f2e9a4dc4273b8d3a15908a79fd84697358b29586af4e26c4f76`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0`

```console
$ docker pull solr@sha256:e32789e726068dd6b0025f1ce45766c26e4ceae1c78c901bd33b995450f4deff
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277448222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d467683702bdff76bf7d1745b8c5dc046f4fe7d61a175fe1725ab69572d2d7e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 16:13:08 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 16:13:09 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 16:13:29 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 16:13:29 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 16:13:30 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 16:13:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 16:14:19 GMT
ENV SOLR_VERSION=6.3.0
# Wed, 10 May 2017 16:14:20 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Wed, 10 May 2017 16:14:20 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Wed, 10 May 2017 16:14:21 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 10 May 2017 16:14:23 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 16:14:39 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 16:14:40 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 16:14:42 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 16:14:42 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 16:14:43 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 16:14:44 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 16:14:45 GMT
USER [solr]
# Wed, 10 May 2017 16:14:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 16:14:46 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4353a1c36407cfaf667da7432fb24f4de3b457b00c2c096c0f4bc9ca038f5fa4`  
		Last Modified: Sat, 13 May 2017 18:43:01 GMT  
		Size: 10.1 MB (10100706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080eedc72284270c1f2597803a3a036ae031b18f1f05c0a584cb050abd899e65`  
		Last Modified: Sat, 13 May 2017 18:42:59 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a012d5fe393012d53c872ba87d5b95eb56f32c21bb80ceb8eebb1b315332a53b`  
		Last Modified: Sat, 13 May 2017 18:45:43 GMT  
		Size: 6.8 KB (6824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c3df9796b0db2889ff2ba25e65ae47b3a84452a906bd5cd0750883a64f5988`  
		Last Modified: Sat, 13 May 2017 18:45:54 GMT  
		Size: 140.6 MB (140556119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7734cf297348e4740ce26cb2b408d3196f0f652a4a347effc5f214e08aa8a4ff`  
		Last Modified: Sat, 13 May 2017 18:45:43 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41ab09a6d63256262bb5cef7b8e4b5f40841a0470325141610b38b5fa315a1f`  
		Last Modified: Sat, 13 May 2017 18:45:43 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3`

```console
$ docker pull solr@sha256:e32789e726068dd6b0025f1ce45766c26e4ceae1c78c901bd33b995450f4deff
```

-	Platforms:
	-	linux; amd64

### `solr:6.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277448222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d467683702bdff76bf7d1745b8c5dc046f4fe7d61a175fe1725ab69572d2d7e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 16:13:08 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 16:13:09 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 16:13:29 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 16:13:29 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 16:13:30 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 16:13:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 16:14:19 GMT
ENV SOLR_VERSION=6.3.0
# Wed, 10 May 2017 16:14:20 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Wed, 10 May 2017 16:14:20 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Wed, 10 May 2017 16:14:21 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 10 May 2017 16:14:23 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 16:14:39 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 16:14:40 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 16:14:42 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 16:14:42 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 16:14:43 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 16:14:44 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 16:14:45 GMT
USER [solr]
# Wed, 10 May 2017 16:14:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 16:14:46 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4353a1c36407cfaf667da7432fb24f4de3b457b00c2c096c0f4bc9ca038f5fa4`  
		Last Modified: Sat, 13 May 2017 18:43:01 GMT  
		Size: 10.1 MB (10100706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080eedc72284270c1f2597803a3a036ae031b18f1f05c0a584cb050abd899e65`  
		Last Modified: Sat, 13 May 2017 18:42:59 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a012d5fe393012d53c872ba87d5b95eb56f32c21bb80ceb8eebb1b315332a53b`  
		Last Modified: Sat, 13 May 2017 18:45:43 GMT  
		Size: 6.8 KB (6824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c3df9796b0db2889ff2ba25e65ae47b3a84452a906bd5cd0750883a64f5988`  
		Last Modified: Sat, 13 May 2017 18:45:54 GMT  
		Size: 140.6 MB (140556119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7734cf297348e4740ce26cb2b408d3196f0f652a4a347effc5f214e08aa8a4ff`  
		Last Modified: Sat, 13 May 2017 18:45:43 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41ab09a6d63256262bb5cef7b8e4b5f40841a0470325141610b38b5fa315a1f`  
		Last Modified: Sat, 13 May 2017 18:45:43 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0-alpine`

```console
$ docker pull solr@sha256:eec2ec71a769eaba8fd676174d3ae91922811897915b272a78da3ceaf5744e5e
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 MB (202736368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ca1286a4118c9566f36b0c65d777a513b564117c4107887f14484c5f3868e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 May 2017 23:11:30 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 23:11:31 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 23:11:34 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 10 May 2017 23:11:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 23:11:39 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 23:12:27 GMT
ENV SOLR_VERSION=6.3.0
# Wed, 10 May 2017 23:12:28 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Wed, 10 May 2017 23:12:28 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Wed, 10 May 2017 23:12:29 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 10 May 2017 23:12:33 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 23:12:49 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 23:12:50 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 23:12:51 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 23:12:52 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 23:12:52 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 23:12:53 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 23:12:54 GMT
USER [solr]
# Wed, 10 May 2017 23:12:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 23:12:55 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f086983660ec731d8cdd974f0ad2815a619a607a8a8593019fca87d6f60f061`  
		Last Modified: Sat, 13 May 2017 18:44:25 GMT  
		Size: 5.3 MB (5337882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00105f936ad1b746bd483d43d62782245e001382192116167e57daeb98643a41`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 619.4 KB (619414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a110badf0266aa2c76ec5262f358e7b8fc1c45981da72b5abcf86aa341c8c9b`  
		Last Modified: Sat, 13 May 2017 18:44:22 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ca723d67bec55b6724d510384f53d6e8738850d5169f3bd2d354be55204e0d`  
		Last Modified: Sat, 13 May 2017 18:46:43 GMT  
		Size: 6.5 KB (6522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67550f90f70777e8159d0810be37c07fde38d83e0a3a4647078fda0ea85e3bac`  
		Last Modified: Sat, 13 May 2017 18:48:33 GMT  
		Size: 140.6 MB (140556121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71020fc0a6b839b5175a1a099b80b280c635823bafe456eb5a45082299b3a472`  
		Last Modified: Sat, 13 May 2017 18:46:43 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebc979335c3b7163cffefe74b24af510cf601eb89de5a290e163cb54b9ffc03`  
		Last Modified: Sat, 13 May 2017 18:46:43 GMT  
		Size: 3.0 KB (3022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3-alpine`

```console
$ docker pull solr@sha256:eec2ec71a769eaba8fd676174d3ae91922811897915b272a78da3ceaf5744e5e
```

-	Platforms:
	-	linux; amd64

### `solr:6.3-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 MB (202736368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ca1286a4118c9566f36b0c65d777a513b564117c4107887f14484c5f3868e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 May 2017 23:11:30 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 23:11:31 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 23:11:34 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 10 May 2017 23:11:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 23:11:39 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 23:12:27 GMT
ENV SOLR_VERSION=6.3.0
# Wed, 10 May 2017 23:12:28 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Wed, 10 May 2017 23:12:28 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Wed, 10 May 2017 23:12:29 GMT
ENV SOLR_KEYS=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 10 May 2017 23:12:33 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 23:12:49 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 23:12:50 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 23:12:51 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 23:12:52 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 23:12:52 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 23:12:53 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 23:12:54 GMT
USER [solr]
# Wed, 10 May 2017 23:12:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 23:12:55 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f086983660ec731d8cdd974f0ad2815a619a607a8a8593019fca87d6f60f061`  
		Last Modified: Sat, 13 May 2017 18:44:25 GMT  
		Size: 5.3 MB (5337882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00105f936ad1b746bd483d43d62782245e001382192116167e57daeb98643a41`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 619.4 KB (619414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a110badf0266aa2c76ec5262f358e7b8fc1c45981da72b5abcf86aa341c8c9b`  
		Last Modified: Sat, 13 May 2017 18:44:22 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ca723d67bec55b6724d510384f53d6e8738850d5169f3bd2d354be55204e0d`  
		Last Modified: Sat, 13 May 2017 18:46:43 GMT  
		Size: 6.5 KB (6522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67550f90f70777e8159d0810be37c07fde38d83e0a3a4647078fda0ea85e3bac`  
		Last Modified: Sat, 13 May 2017 18:48:33 GMT  
		Size: 140.6 MB (140556121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71020fc0a6b839b5175a1a099b80b280c635823bafe456eb5a45082299b3a472`  
		Last Modified: Sat, 13 May 2017 18:46:43 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebc979335c3b7163cffefe74b24af510cf601eb89de5a290e163cb54b9ffc03`  
		Last Modified: Sat, 13 May 2017 18:46:43 GMT  
		Size: 3.0 KB (3022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4.2`

```console
$ docker pull solr@sha256:6f27702a5cc34021f96df6f8708d3fdd6afb66ace065f3c13ee7928a32edcf45
```

-	Platforms:
	-	linux; amd64

### `solr:6.4.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278438912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac2ebc2c2a968154fa16c4d06da9092217f665aa9db96a436de02db494cff95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 16:13:08 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 16:13:09 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 16:13:29 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 16:13:29 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 16:13:30 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 16:13:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 16:15:05 GMT
ENV SOLR_VERSION=6.4.2
# Wed, 10 May 2017 16:15:06 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Wed, 10 May 2017 16:15:07 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Wed, 10 May 2017 16:15:08 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 10 May 2017 16:15:10 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 16:15:26 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 16:15:27 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 16:15:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 16:15:29 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 16:15:30 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 16:15:31 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 16:15:31 GMT
USER [solr]
# Wed, 10 May 2017 16:15:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 16:15:33 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4353a1c36407cfaf667da7432fb24f4de3b457b00c2c096c0f4bc9ca038f5fa4`  
		Last Modified: Sat, 13 May 2017 18:43:01 GMT  
		Size: 10.1 MB (10100706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080eedc72284270c1f2597803a3a036ae031b18f1f05c0a584cb050abd899e65`  
		Last Modified: Sat, 13 May 2017 18:42:59 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7d3169bc3a59aac08d4219803eb75847f2f2b8888e579386bc230364bb9c99`  
		Last Modified: Sat, 13 May 2017 18:49:24 GMT  
		Size: 7.4 KB (7414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac53dd76b5d5fcc7889d4e98f359a2e19064c16025478e40e33455f10fb6be6`  
		Last Modified: Sat, 13 May 2017 18:49:35 GMT  
		Size: 141.5 MB (141546222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8341ee2f856500427055daf027018d96fb7118922aacdc49d539375082e9d1`  
		Last Modified: Sat, 13 May 2017 18:49:23 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e63b61e9d0a8bcab041ca27a5d412230daa8e6190d14e860962ce9b39a65a78`  
		Last Modified: Sat, 13 May 2017 18:49:23 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4`

```console
$ docker pull solr@sha256:6f27702a5cc34021f96df6f8708d3fdd6afb66ace065f3c13ee7928a32edcf45
```

-	Platforms:
	-	linux; amd64

### `solr:6.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278438912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac2ebc2c2a968154fa16c4d06da9092217f665aa9db96a436de02db494cff95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 16:13:08 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 16:13:09 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 16:13:29 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 16:13:29 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 16:13:30 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 16:13:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 16:15:05 GMT
ENV SOLR_VERSION=6.4.2
# Wed, 10 May 2017 16:15:06 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Wed, 10 May 2017 16:15:07 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Wed, 10 May 2017 16:15:08 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 10 May 2017 16:15:10 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 16:15:26 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 16:15:27 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 16:15:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 16:15:29 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 16:15:30 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 16:15:31 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 16:15:31 GMT
USER [solr]
# Wed, 10 May 2017 16:15:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 16:15:33 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4353a1c36407cfaf667da7432fb24f4de3b457b00c2c096c0f4bc9ca038f5fa4`  
		Last Modified: Sat, 13 May 2017 18:43:01 GMT  
		Size: 10.1 MB (10100706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080eedc72284270c1f2597803a3a036ae031b18f1f05c0a584cb050abd899e65`  
		Last Modified: Sat, 13 May 2017 18:42:59 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7d3169bc3a59aac08d4219803eb75847f2f2b8888e579386bc230364bb9c99`  
		Last Modified: Sat, 13 May 2017 18:49:24 GMT  
		Size: 7.4 KB (7414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac53dd76b5d5fcc7889d4e98f359a2e19064c16025478e40e33455f10fb6be6`  
		Last Modified: Sat, 13 May 2017 18:49:35 GMT  
		Size: 141.5 MB (141546222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8341ee2f856500427055daf027018d96fb7118922aacdc49d539375082e9d1`  
		Last Modified: Sat, 13 May 2017 18:49:23 GMT  
		Size: 3.0 KB (3012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e63b61e9d0a8bcab041ca27a5d412230daa8e6190d14e860962ce9b39a65a78`  
		Last Modified: Sat, 13 May 2017 18:49:23 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4.2-alpine`

```console
$ docker pull solr@sha256:ed157d62db31cb3c592a7313a31a4a3e901659514c2bc05c4490218ed21969c6
```

-	Platforms:
	-	linux; amd64

### `solr:6.4.2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 MB (203726889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d614fd3c394f633ab45d389e7ee666c43f5cceb274e763b0c03f8f177efaee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 May 2017 23:11:30 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 23:11:31 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 23:11:34 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 10 May 2017 23:11:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 23:11:39 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 23:13:15 GMT
ENV SOLR_VERSION=6.4.2
# Wed, 10 May 2017 23:13:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Wed, 10 May 2017 23:13:16 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Wed, 10 May 2017 23:13:17 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 10 May 2017 23:13:21 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 23:13:38 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 23:13:39 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 23:13:40 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 23:13:41 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 23:13:42 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 23:13:42 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 23:13:43 GMT
USER [solr]
# Wed, 10 May 2017 23:13:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 23:13:44 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f086983660ec731d8cdd974f0ad2815a619a607a8a8593019fca87d6f60f061`  
		Last Modified: Sat, 13 May 2017 18:44:25 GMT  
		Size: 5.3 MB (5337882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00105f936ad1b746bd483d43d62782245e001382192116167e57daeb98643a41`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 619.4 KB (619414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a110badf0266aa2c76ec5262f358e7b8fc1c45981da72b5abcf86aa341c8c9b`  
		Last Modified: Sat, 13 May 2017 18:44:22 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff51880ebc76095974474333dbf3b24e201f026dd5143c6c9b6fa000554e2fc`  
		Last Modified: Sat, 13 May 2017 18:50:29 GMT  
		Size: 7.1 KB (7087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acebfd8c64e280d2c3d09c9f1eb74e84b00b379285da10f1e15dfca472fd5523`  
		Last Modified: Sat, 13 May 2017 18:50:40 GMT  
		Size: 141.5 MB (141546077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af3d788141aeb78c3135f4d2b669dbcd385ff63f5c86db25ecd13524a56fd1b`  
		Last Modified: Sat, 13 May 2017 18:50:29 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3a24ec0ba0ce07a959b22a55ce487f875ead0bf4f058995e238a4ea065375b`  
		Last Modified: Sat, 13 May 2017 18:50:29 GMT  
		Size: 3.0 KB (3022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4-alpine`

```console
$ docker pull solr@sha256:ed157d62db31cb3c592a7313a31a4a3e901659514c2bc05c4490218ed21969c6
```

-	Platforms:
	-	linux; amd64

### `solr:6.4-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 MB (203726889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d614fd3c394f633ab45d389e7ee666c43f5cceb274e763b0c03f8f177efaee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 May 2017 23:11:30 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 23:11:31 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 23:11:34 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 10 May 2017 23:11:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 23:11:39 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 23:13:15 GMT
ENV SOLR_VERSION=6.4.2
# Wed, 10 May 2017 23:13:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.2/solr-6.4.2.tgz
# Wed, 10 May 2017 23:13:16 GMT
ENV SOLR_SHA256=354e1affd9cad7d6e86cde8c03aaeb604876f0764129621d8e231cdb35b31c55
# Wed, 10 May 2017 23:13:17 GMT
ENV SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C
# Wed, 10 May 2017 23:13:21 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 23:13:38 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 23:13:39 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 23:13:40 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 23:13:41 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 23:13:42 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 23:13:42 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 23:13:43 GMT
USER [solr]
# Wed, 10 May 2017 23:13:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 23:13:44 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f086983660ec731d8cdd974f0ad2815a619a607a8a8593019fca87d6f60f061`  
		Last Modified: Sat, 13 May 2017 18:44:25 GMT  
		Size: 5.3 MB (5337882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00105f936ad1b746bd483d43d62782245e001382192116167e57daeb98643a41`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 619.4 KB (619414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a110badf0266aa2c76ec5262f358e7b8fc1c45981da72b5abcf86aa341c8c9b`  
		Last Modified: Sat, 13 May 2017 18:44:22 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff51880ebc76095974474333dbf3b24e201f026dd5143c6c9b6fa000554e2fc`  
		Last Modified: Sat, 13 May 2017 18:50:29 GMT  
		Size: 7.1 KB (7087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acebfd8c64e280d2c3d09c9f1eb74e84b00b379285da10f1e15dfca472fd5523`  
		Last Modified: Sat, 13 May 2017 18:50:40 GMT  
		Size: 141.5 MB (141546077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af3d788141aeb78c3135f4d2b669dbcd385ff63f5c86db25ecd13524a56fd1b`  
		Last Modified: Sat, 13 May 2017 18:50:29 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3a24ec0ba0ce07a959b22a55ce487f875ead0bf4f058995e238a4ea065375b`  
		Last Modified: Sat, 13 May 2017 18:50:29 GMT  
		Size: 3.0 KB (3022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5.1`

```console
$ docker pull solr@sha256:97d76e51d9b8af703fbe714a59fcc4f1687116369c40b2b574ed9a0c02e65d41
```

-	Platforms:
	-	linux; amd64

### `solr:6.5.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285698821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db258caaa044bf3ed30f260d56eecba476abbce7dc336d887e3bbdfed687cff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 16:13:08 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 16:13:09 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 16:13:29 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 16:13:29 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 16:13:30 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 16:13:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 16:15:52 GMT
ENV SOLR_VERSION=6.5.1
# Wed, 10 May 2017 16:15:53 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Wed, 10 May 2017 16:15:53 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Wed, 10 May 2017 16:15:54 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Wed, 10 May 2017 16:15:56 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 16:16:13 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 16:16:14 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 16:16:16 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 16:16:16 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 16:16:17 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 16:16:18 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 16:16:19 GMT
USER [solr]
# Wed, 10 May 2017 16:16:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 16:16:20 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4353a1c36407cfaf667da7432fb24f4de3b457b00c2c096c0f4bc9ca038f5fa4`  
		Last Modified: Sat, 13 May 2017 18:43:01 GMT  
		Size: 10.1 MB (10100706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080eedc72284270c1f2597803a3a036ae031b18f1f05c0a584cb050abd899e65`  
		Last Modified: Sat, 13 May 2017 18:42:59 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ee29455e826cf2f434a38b7b8c8792bd1cfb69da73c2dbf1f7a3bceb344fcb`  
		Last Modified: Sat, 13 May 2017 18:51:30 GMT  
		Size: 8.0 KB (8020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000088d168780350a2dae75414aaf49ec5bfc03cc65352371bad2356a37b71db`  
		Last Modified: Sat, 13 May 2017 18:51:42 GMT  
		Size: 148.8 MB (148805520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e14c935e644ee1345966474586d0dd8c69653e870595f984d271a72055cac0`  
		Last Modified: Sat, 13 May 2017 18:51:30 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00833b4f5364e8e08f8d79624323ba218e38d7c1b72dba378809afdb018022d`  
		Last Modified: Sat, 13 May 2017 18:51:30 GMT  
		Size: 3.0 KB (3025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5`

```console
$ docker pull solr@sha256:97d76e51d9b8af703fbe714a59fcc4f1687116369c40b2b574ed9a0c02e65d41
```

-	Platforms:
	-	linux; amd64

### `solr:6.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285698821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db258caaa044bf3ed30f260d56eecba476abbce7dc336d887e3bbdfed687cff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 16:13:08 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 16:13:09 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 16:13:29 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 16:13:29 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 16:13:30 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 16:13:32 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 16:15:52 GMT
ENV SOLR_VERSION=6.5.1
# Wed, 10 May 2017 16:15:53 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Wed, 10 May 2017 16:15:53 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Wed, 10 May 2017 16:15:54 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Wed, 10 May 2017 16:15:56 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 16:16:13 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 16:16:14 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 16:16:16 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 16:16:16 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 16:16:17 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 16:16:18 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 16:16:19 GMT
USER [solr]
# Wed, 10 May 2017 16:16:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 16:16:20 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4353a1c36407cfaf667da7432fb24f4de3b457b00c2c096c0f4bc9ca038f5fa4`  
		Last Modified: Sat, 13 May 2017 18:43:01 GMT  
		Size: 10.1 MB (10100706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080eedc72284270c1f2597803a3a036ae031b18f1f05c0a584cb050abd899e65`  
		Last Modified: Sat, 13 May 2017 18:42:59 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ee29455e826cf2f434a38b7b8c8792bd1cfb69da73c2dbf1f7a3bceb344fcb`  
		Last Modified: Sat, 13 May 2017 18:51:30 GMT  
		Size: 8.0 KB (8020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000088d168780350a2dae75414aaf49ec5bfc03cc65352371bad2356a37b71db`  
		Last Modified: Sat, 13 May 2017 18:51:42 GMT  
		Size: 148.8 MB (148805520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e14c935e644ee1345966474586d0dd8c69653e870595f984d271a72055cac0`  
		Last Modified: Sat, 13 May 2017 18:51:30 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00833b4f5364e8e08f8d79624323ba218e38d7c1b72dba378809afdb018022d`  
		Last Modified: Sat, 13 May 2017 18:51:30 GMT  
		Size: 3.0 KB (3025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5.1-alpine`

```console
$ docker pull solr@sha256:e0fbef7703ef520c040b6ae4030af7b4a4a7528bfaaf08bcb9962f7ab4bb089b
```

-	Platforms:
	-	linux; amd64

### `solr:6.5.1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (210986955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:791f467a8488711bafefab9260a050ba0d47f539984c61e8d7cd94fd2c24bf32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 May 2017 23:11:30 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 23:11:31 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 23:11:34 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 10 May 2017 23:11:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 23:11:39 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 23:14:05 GMT
ENV SOLR_VERSION=6.5.1
# Wed, 10 May 2017 23:14:05 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Wed, 10 May 2017 23:14:06 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Wed, 10 May 2017 23:14:07 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Wed, 10 May 2017 23:14:11 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 23:14:27 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 23:14:28 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 23:14:30 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 23:14:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 23:14:31 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 23:14:32 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 23:14:33 GMT
USER [solr]
# Wed, 10 May 2017 23:14:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 23:14:34 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f086983660ec731d8cdd974f0ad2815a619a607a8a8593019fca87d6f60f061`  
		Last Modified: Sat, 13 May 2017 18:44:25 GMT  
		Size: 5.3 MB (5337882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00105f936ad1b746bd483d43d62782245e001382192116167e57daeb98643a41`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 619.4 KB (619414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a110badf0266aa2c76ec5262f358e7b8fc1c45981da72b5abcf86aa341c8c9b`  
		Last Modified: Sat, 13 May 2017 18:44:22 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcde1581784aa48c39509b159b61b1816e34c94f581597a19c8e64395fc9f6e6`  
		Last Modified: Sat, 13 May 2017 18:52:35 GMT  
		Size: 7.7 KB (7673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c19a3fdd85eb8af76942a7c3fcf01399b948bd27046e7decff97f51c06a621c`  
		Last Modified: Sat, 13 May 2017 18:52:47 GMT  
		Size: 148.8 MB (148805555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b35b233fb97da0eee3d19cc03ef92216f747e503480c01b90f25b74be8f050`  
		Last Modified: Sat, 13 May 2017 18:52:35 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cc67a4b13e4b6696a6b6bff153da63b45569a9390084c7344b06c4fbbe9dc9`  
		Last Modified: Sat, 13 May 2017 18:52:35 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.5-alpine`

```console
$ docker pull solr@sha256:e0fbef7703ef520c040b6ae4030af7b4a4a7528bfaaf08bcb9962f7ab4bb089b
```

-	Platforms:
	-	linux; amd64

### `solr:6.5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (210986955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:791f467a8488711bafefab9260a050ba0d47f539984c61e8d7cd94fd2c24bf32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 May 2017 23:11:30 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 May 2017 23:11:31 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 10 May 2017 23:11:34 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 10 May 2017 23:11:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_USER=solr
# Wed, 10 May 2017 23:11:37 GMT
ENV SOLR_UID=8983
# Wed, 10 May 2017 23:11:39 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 10 May 2017 23:14:05 GMT
ENV SOLR_VERSION=6.5.1
# Wed, 10 May 2017 23:14:05 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.5.1/solr-6.5.1.tgz
# Wed, 10 May 2017 23:14:06 GMT
ENV SOLR_SHA256=7c6a7d4474d5e847a8ddd0a4717d33bf5db07adf17c3d36ad1532c72885bd5d3
# Wed, 10 May 2017 23:14:07 GMT
ENV SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8
# Wed, 10 May 2017 23:14:11 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 10 May 2017 23:14:27 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 10 May 2017 23:14:28 GMT
COPY dir:37fe27423809e9a020959b49d869a79285ab853758a6a8a6bfe8564dcdf7ff56 in /opt/docker-solr/scripts 
# Wed, 10 May 2017 23:14:30 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 10 May 2017 23:14:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 23:14:31 GMT
EXPOSE 8983/tcp
# Wed, 10 May 2017 23:14:32 GMT
WORKDIR /opt/solr
# Wed, 10 May 2017 23:14:33 GMT
USER [solr]
# Wed, 10 May 2017 23:14:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 23:14:34 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f086983660ec731d8cdd974f0ad2815a619a607a8a8593019fca87d6f60f061`  
		Last Modified: Sat, 13 May 2017 18:44:25 GMT  
		Size: 5.3 MB (5337882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00105f936ad1b746bd483d43d62782245e001382192116167e57daeb98643a41`  
		Last Modified: Sat, 13 May 2017 18:44:20 GMT  
		Size: 619.4 KB (619414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a110badf0266aa2c76ec5262f358e7b8fc1c45981da72b5abcf86aa341c8c9b`  
		Last Modified: Sat, 13 May 2017 18:44:22 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcde1581784aa48c39509b159b61b1816e34c94f581597a19c8e64395fc9f6e6`  
		Last Modified: Sat, 13 May 2017 18:52:35 GMT  
		Size: 7.7 KB (7673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c19a3fdd85eb8af76942a7c3fcf01399b948bd27046e7decff97f51c06a621c`  
		Last Modified: Sat, 13 May 2017 18:52:47 GMT  
		Size: 148.8 MB (148805555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b35b233fb97da0eee3d19cc03ef92216f747e503480c01b90f25b74be8f050`  
		Last Modified: Sat, 13 May 2017 18:52:35 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cc67a4b13e4b6696a6b6bff153da63b45569a9390084c7344b06c4fbbe9dc9`  
		Last Modified: Sat, 13 May 2017 18:52:35 GMT  
		Size: 3.0 KB (3023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
